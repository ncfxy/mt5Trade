//+------------------------------------------------------------------+
//|                                                sTestFileRead.mq5 |
//|                             Copyright 2018, Ncfxy Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Ncfxy Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---

   //--- ReadFileToAlert();
   //--- WriteToFile();
   //--- WriteToFileEnd();
   changeFile();
  }
//+------------------------------------------------------------------+
//| Read File Content and Alert
//+------------------------------------------------------------------+
void ReadFileToAlert(){
  int h = FileOpen("test_file.txt", FILE_READ | FILE_ANSI | FILE_TXT);
  if(h == INVALID_HANDLE){
    Alert("Open File Error!");
    return;
  }
  while(!FileIsEnding(h)){
    string str = FileReadString(h);
    Alert(str);
  }
  FileClose(h);
}
//+------------------------------------------------------------------+
//| Write some content to File
//+------------------------------------------------------------------+
void WriteToFile(){
  int h = FileOpen("test_write.txt", FILE_WRITE | FILE_ANSI | FILE_TXT);
  if(h == INVALID_HANDLE){
    Alert("Open File Error!");
    return;
  }
  for(int i = 0;i < 10;i++){
   FileWrite(h, "Line-", IntegerToString(i));
  }
  FileClose(h);
  Alert("File has created");
}
//+------------------------------------------------------------------+
//| Add content after file end.
//+------------------------------------------------------------------+
void WriteToFileEnd() {
   int h = FileOpen("test_write.txt", FILE_READ | FILE_WRITE | FILE_ANSI | FILE_TXT);
   if(h == INVALID_HANDLE){
      Alert("Open File Error!");
      return;
   }
   FileSeek(h, 0, SEEK_END);
   FileWrite(h, "Add a new line.");
   FileClose(h);
   Alert("A Line has added to file");
}
//+------------------------------------------------------------------+
//| Change Files. We need a tmp file.
//+------------------------------------------------------------------+
void changeFile() {
   int h = FileOpen("test_write.txt", FILE_READ | FILE_ANSI | FILE_TXT);
   string tmpName = getTmpFileName("test_write", "txt");
   int tmpH = FileOpen(tmpName, FILE_WRITE | FILE_ANSI | FILE_TXT);
   int cnt = 0;
   while(!FileIsEnding(h)){
      cnt++;
      string str = FileReadString(h);
      if(cnt == 2){
         FileWrite(tmpH, "New Line-2");
      }else{
         FileWrite(tmpH, str);
      }
   }
   FileClose(h);
   FileClose(tmpH);
   FileDelete("test_write.txt");
   FileMove(tmpName, 0, "test_write.txt", 0);
}
string getTmpFileName(string name, string ext) {
   string fn = name + "." + ext;
   int n = 0;
   while(FileIsExist(fn)){
      n++;
      fn = name + IntegerToString(n) + "." + ext;
   }
   return fn;
}