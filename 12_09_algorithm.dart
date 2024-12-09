// 80

class Solution {
  int removeDuplicates(List<int> nums) {
    // <숫자, 등장횟수>
    Map<int, int> numsCheck={};
    // 유효숫자(집어넣는 인덱스)
    int input=0;

    for(int i=0;i<nums.length;i++){
      // map에 key 존재 + 2번 미만으로 등장했음
      if(numsCheck.containsKey(nums[i])&&numsCheck[nums[i]]!<2){
        numsCheck[nums[i]]=1+numsCheck[nums[i]]!;
        nums[input]=nums[i];
        input++;
      }
      // map에 key 존재하지 않음(0회 등장)
      else if(!numsCheck.containsKey(nums[i])){
        numsCheck[nums[i]]=1;
        nums[input]=nums[i];
        input++;
      }
    }
    return input;
  }
}