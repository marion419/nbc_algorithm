// #27

class Solution {
  int removeElement(List<int> nums, int val) {
    int deleteCount=0;
    if(nums.length==0){return 0;}
    if(nums.indexOf(val)==-1){return nums.length;}

    for(int i=0;i<nums.length;i++){
      if(nums[i]!=val){
        nums[deleteCount]=nums[i];
        deleteCount++;
      }
    }
    return deleteCount; 

  }
}

// #242

class Solution {
  bool isAnagram(String s, String t) {
    if(s.length!=t.length){return false;}
    Map<String, int> sMap={};
    Map<String, int> tMap={};

    for(int i=0;i<s.length;i++){
      if(sMap.containsKey(s[i])){
        sMap[s[i]]=1+sMap[s[i]]!; // = sMap[s[i]]++;
      }
      else{
        sMap[s[i]]=1;
      }
      if(tMap.containsKey(t[i])){
        tMap[t[i]]=1+tMap[t[i]]!;
      }
      else{
        tMap[t[i]]=1;
      }
    }

    for(var entry in sMap.entries){
      if(!tMap.containsKey(entry.key)){
        return false;
      }
      if(tMap[entry.key]!=entry.value){
        return false;
      }
    }

    return true;
  }
}