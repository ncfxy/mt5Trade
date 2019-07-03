import { TextDocument, Connection, Diagnostic, DiagnosticSeverity, Position } from "vscode-languageserver";
import { exec, execSync } from "child_process";
import { readFileSync } from "fs";

export class Mql5Validate {

    private connection: Connection;

    constructor(connection: Connection) {
        this.connection = connection;
    }

    public async validateMql5Document(textDocument: TextDocument): Promise<void> {

        if(textDocument.uri.endsWith('.mq5') || textDocument.uri.endsWith('.mqh')){
            this.checkMql5File(textDocument);
            return;
        }
    }

    public checkMql5File(textDocument: TextDocument){
        let filePath = unescape(textDocument.uri).replace('file:///', '');
        let logPath = 'c:/Users/fan_x/Desktop/cpp/abc/test.log';
        let cmdStr: string = '"C:/Program Files/XM Global MT5/metaeditor64.exe" /compile:"' + filePath + '" /s /log:"' + logPath + '"';
        try{
            let result = execSync(cmdStr);
            console.log(result);
        }catch(error){
            console.log(error);
        }
        let compileLog = readFileSync(logPath, 'utf16le');
        console.log(compileLog);

        let text = textDocument.getText();
        let pattern = /(.*)\((\d*),(\d*)\) : error [0-9]*: (.*)/g;
        let m: RegExpExecArray | null;

        let diagnostics: Diagnostic[] = [];
        while ((m = pattern.exec(compileLog))) {
            let errorFilePath = m[1];
            if(filePath != errorFilePath){
                continue;
            }
            let line:number = parseInt(m[2]);
            let column:number = parseInt(m[3]);
            let message:string = m[4];
            let diagnostic: Diagnostic = {
                severity: DiagnosticSeverity.Error,
                range: {
                    start: {line: line-1, character: column-1},
                    end: {line: line-1, character: 100}
                },
                message: message,
                source: 'ex'
            };
            diagnostic.relatedInformation = [
                {
                    location: {
                        uri: textDocument.uri,
                        range: Object.assign({}, diagnostic.range)
                    },
                    message: message
                }
            ];
            diagnostics.push(diagnostic);
        }

        // Send the computed diagnostics to VSCode.
        this.connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
    }
}