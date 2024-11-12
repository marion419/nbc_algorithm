// #443 _ 문자열 압축

class Solution {
  int compress(List<String> chars) {
    if(chars.isEmpty){chars.clear(); return 0;}

    int range=chars.length;
    String temp='';
    int tempCount=0;
    
    for(int i=0;i<range+1;i++){
      if(chars[i]!=temp){
        chars.add(temp);
        if(tempCount!=1){
          List<String> countList = tempCount.toString().split('');
          for(String i in countList){chars.add(i);}
        }
        temp=chars[i];
        tempCount=1;
      }
      else{tempCount++;}
    }
    chars.removeRange(0, range+2);
    return chars.length;
  }
}