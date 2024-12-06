// #3

class Solution {
  int lengthOfLongestSubstring(String s) {
    // 0번부터 출발
    // 한글자씩 콜렉션에 추가
    // 중복 글자가 나오면 앞에 나온 중복 글자 바로 뒤 인덱스부터 시작
    int start=0;
    int end=0;
    int maxlength=0;

    // 중복 저장용 Map
    // <글자, 인덱스>
    Map<String, int> components = {};

    for(int i=0;i<s.length;i++){
      // 중복 없을 때
      if(!components.containsKey(s[i])){
        components[s[i]]=i;
        end=i;
        if(components.length>maxlength){
          maxlength=components.length;
        }
      }
      // 중복이 발생했을 때
      else{
        // start부터 중복 인덱스까지 map을 비워야 함
        int temp = start;
        int recall = components[s[i]]!;
        start=1+components[s[i]]!;
        end=i;

        for(int k=temp;k<=recall;k++){
          components.remove(s[k]);
        }
        components[s[i]]=i;

        if(components.length>maxlength){
          maxlength=components.length;
        }
      }
    }
    return maxlength;
  }
}