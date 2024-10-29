class Solution {
  String reverseVowels(String s) {
    // 1 모음만 추려낸 List를 만든다
    // 2 뒤집는다
    // 3 원래 리스트에서 모음이 있는 곳에만 하나씩 집어넣는다

    Set<String> vowels={'a', 'e', 'o', 'i', 'u', 'A', 'E', 'I', 'O', 'U'};
    List<String> vowelList=[];
    for(int i=0;i<s.length;i++){
        if(vowels.contains(s[i])) vowelList.add(s[i]);
    }

    List<String> reversedList=[];
    for(int i=vowelList.length-1;i>=0;i--){
        reversedList.add(vowelList[i]);
    }
    
    int t=0;
    String resultS='';
    
    for(int i=0;i<s.length;i++){
        if(vowels.contains(s[i])){
            resultS+=reversedList[t];
            t++;
        }
        else resultS+=s[i];
    }
    return resultS;
  }
}