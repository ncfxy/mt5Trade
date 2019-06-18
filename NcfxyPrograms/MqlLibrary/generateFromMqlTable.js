
function generateEnumFromElement(selector){
    var $ele = document.querySelector(selector)
    var enumName = $ele.previousElementSibling.textContent.trim();
    var result = 'enum ' + enumName + '{\n';
    var $lines = $ele.getElementsByTagName('tr');
    for(var index = 0;index < $lines.length;index++){
        var $line = $lines[index];
        if(index > 0){
            var $tds = $line.getElementsByTagName('td');
            var identifier = $tds[0] && $tds[0].textContent.trim();
            var description = $tds[1] && $tds[1].textContent.trim();
            var type = $tds[2] && $tds[2].textContent.trim();
            type = type ? '    ' + type : ''
            result += '    ' + identifier + ',    ' + '//' + description + type + '\n';
        }
    }
    result += '};'
    console.log(result);
}