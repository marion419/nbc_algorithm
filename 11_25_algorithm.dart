// #14
class Solution {
  String longestCommonPrefix(List<String> strs) {
    // 1번 문자열부터 시작해서 점점 줄이기
    String init=strs[0];
    bool isPrefix=false;
    for(int i=0;i<strs[0].length;i++){
      for(String str in strs){
        if(!str.startsWith(init)){
          init=init.substring(0, init.length-1);
          break;
        }
      }
    }
    return init;
  }
}

// #1
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result=[];
    Map<int, int> numMap={};

    for(int i=0; i<nums.length;i++){
        numMap[nums[i]]=i;
    }
    
    for(int i=0;i<nums.length;i++){
      // 
      if(numMap.containsKey(target-nums[i])&&i!=numMap[target-nums[i]]){
        result.add(i);
        result.add(numMap[target-nums[i]]!);
        return result;
      }
    }
    return result;
  }
}