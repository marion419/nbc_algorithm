// #49

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    List<String> pattern = []; // 패턴
    List<List<String>> result = [];

    for(int i=0;i<strs.length;i++){
      // 현재 문자열 정렬
      List<String> temp = strs[i].split('');
      temp.sort();
      String tempString = temp.join('');
      
      if(pattern.contains(tempString)){
        int tempIndex = pattern.indexOf(tempString);
        result[tempIndex].add(strs[i]);
      }
      else{
        pattern.add(tempString);
        result.add([strs[i]]);
      }
    }

    return result;
  }
}