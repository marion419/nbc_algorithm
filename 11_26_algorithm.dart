// #290 문자열이 패턴과 일치하는지

import 'dart:convert';

class Solution {
  bool wordPattern(String pattern, String s) {
    // 검사할 단어 목록
    List<String> words=s.trim().split(' ');
    List<String> patternList=pattern.split('');
    // key:word / value : pattern
    Map<String, String> patternCheck={};
    // 검사해서 나온 결과 패턴
    String result='';
    String patternResult='';

    var asciiEncoder=AsciiEncoder();
    var asciiDecoder=AsciiDecoder();

    // 패턴을 ascii로 저장하기 위한 인덱스
    List<int> idx=[97];

    for(int i=0;i<words.length;i++){
      // patternCheck에 해당 요소가 있는 경우
      if(patternCheck.containsKey(words[i])){
        result+=patternCheck[words[i]]!;
      }
      // patternCheck에 해당 요소가 없는 경우(새 패턴)
      else{
        patternCheck[words[i]]=asciiDecoder.convert(idx);
        idx[0]++;
        result+=patternCheck[words[i]]!;
      }
    }

    patternCheck={};
    idx=[97];

    for(int i=0;i<patternList.length;i++){
      // patternCheck에 해당 요소가 있는 경우
      if(patternCheck.containsKey(patternList[i])){
        patternResult+=patternCheck[patternList[i]]!;
      }
      // patternCheck에 해당 요소가 없는 경우(새 패턴)
      else{
        patternCheck[patternList[i]]=asciiDecoder.convert(idx);
        idx[0]++;
        patternResult+=patternCheck[patternList[i]]!;
      }
    }
    
    if(result==patternResult) return true;
    else return false;
  }
}

// #392 부분집합인지 판별

class Solution {
  bool isSubsequence(String s, String t) {
    //s가 t보다 긴 경우 부분 수열이 아님
    if(s.length>t.length){
        return false;
    }
    //string s의 몇 번째 글자를 검사하고 있는지 정하는 변수
    int sPointer=0;

    for(int i=0;i<t.length;i++){
        if(sPointer>=s.length) break;
        if(t[i]==s[sPointer]){
            sPointer++;
        }
    }

    if(sPointer==s.length){
        return true;
    }
    else return false;
  }
}