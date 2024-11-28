// #205

class Solution {
  bool isIsomorphic(String s, String t) {
    List<int> sCode=[];
    List<int> tCode=[];

    Map<String, int> sMap={};
    Map<String, int> tMap={};
    
    int sCount=0;
    int tCount=0;

    // s.length == t.length
    for(int i=0;i<s.length;i++){
      if(sMap.containsKey(s[i])){
        sCode.add(sMap[s[i]]!);
      }
      else{
        sMap[s[i]]=sCount;
        sCode.add(sMap[s[i]]!);
        sCount++;
      }

      if(tMap.containsKey(t[i])){
        tCode.add(tMap[t[i]]!);
      }
      else{
        tMap[t[i]]=tCount;
        tCode.add(tMap[t[i]]!);
        tCount++;
      }
    }

    for(int i=0;i<sCode.length;i++){
      if(sCode[i]!=tCode[i]){
        return false;
      }
    }
    return true;
  }
}

// #88
class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if(n==0){return;}
    
    int input=0;
    for(int i=0;i<nums1.length;i++){
      if(nums1[i]==0){
        nums1[i]=nums2[input];
        input++;
      }
      if(input==nums2.length){
        break;
      }
    }

    nums1.sort();
    return;
  }
}