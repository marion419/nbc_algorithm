// #383
class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<String> magazineList=magazine.split('');
    for(int i=0;i<ransomNote.length;i++){
      int idx = magazineList.indexOf(ransomNote[i]);
      if(idx==-1){
        return false;
      }
      else{
        magazineList[idx]='0';
      }
    }
    return true;
  }
}

// #228
class Solution {
  List<String> summaryRanges(List<int> nums) {
    if(nums.length==0){return [];}
    if(nums.length==1){return ['${nums[0]}'];}

    List<String> result=[];
    int curStart=nums[0];
    int curEnd=nums[0];

    for(int i=1;i<nums.length;i++){
      // 현재 인덱스와 이전 인덱스가 연속이 아닌 경우
      if(nums[i]-nums[i-1]!=1){
        if(curStart==curEnd){
          result.add(curStart.toString());
        }
        else{
          result.add('$curStart->$curEnd');
        }
        curStart=nums[i];
        curEnd=nums[i];
        if(i==nums.length-1){
          result.add(curStart.toString());
        }
      }
      // 현재 인덱스와 이전 인덱스가 연속인 경우
      else{
        curEnd=nums[i];
        if(i==nums.length-1){
          result.add('$curStart->$curEnd');
        }
      }
    }
    return result;
  }
}