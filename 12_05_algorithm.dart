// #13

class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000};
    int result=0;
    // IV : 5-1 = 4
    // IX : 10-1 = 9
    // VI : 5+1 = 6
    // 큰 숫자 -> 작은 숫자 흐름이 아니면 특이케이스

    if(s==''){return 0;}

    for(int i=1;i<s.length;i++){
      // 이전 < 현재
      if(roman[s[i-1]]!<roman[s[i]]!){
        result-=roman[s[i-1]]!;
      }
      // 이전 > 현재
      else{
        result+=roman[s[i-1]]!;
      }
    }
    // 마지막 인덱스 더하고 반환
    return result+roman[s[s.length-1]]!;
  }
}