// 394

class Solution {
  String decodeString(String s) {
    // add와 removeLast만 사용
    List<String> stack = [];
    List<int> count = [];
    String current='';
    int k=0;

    for(int i=0;i<s.length;i++){
      // 현재 index가 숫자 (==다음이'[')
      if(s[i].contains(RegExp(r'[0-9]'))){
        k = k*10 + int.parse(s[i]);
      }
      // 현재 index가 '['
      else if(s[i]=='['){
        count.add(k);
        stack.add(current);
        current = '';
        k=0;
      }
      // 현재 index가 ']'
      else if(s[i]==']'){
        int curNum = count.removeLast();
        String decode = stack.removeLast();
        current = decode + current * curNum;
      }
      // 알파벳
      else{
        current += s[i];
      }
    }
    return current;
  }
}