// #338 _ 비트의 개수

class Solution {
  List<int> countBits(int n) {
    List<int> bitsList=[];
    int bit=0;
    for(int i=0;i<n+1;i++){
      bitsList.add(bit);
      bitsList[i] = bitsList[i >> 1] + (i & 1);
    }

    return bitsList;
  }
}

// #136 _ 한 번만 등장하는 숫자

class Solution {
  int singleNumber(List<int> nums) {
    Map<int, bool> single={};

    for(int num in nums){
        if(single.containsKey(num)){
            single[num]=false;
        }
        else{
            single[num]=true;
        }
    }

    for(var entry in single.entries){
        if(entry.value==true){return entry.key;}
    }
    return 0;
  }
}