import 'dart:math';

// 55
class Solution {
  bool canJump(List<int> nums) {
    // i번째 인덱스에서 1~k까지 점프할 수 있으면
    // i+1 ~ i+k 까지 검사
    // i+k 안에 마지막 인덱스가 들어있으면 점프 가능

    // 1. 현재 위치(i)까지 도달할 수 있는지 확인한다
    // 2. 갈 수 있는 거리를 새로고침한다
    // 3. 갈 수 있는 거리 안에 last가 있으면 true 리턴
    if(nums.length==1){return true;}

    int curJump=0;
    
    for(int i=0;i<nums.length;i++){
      if(curJump>=i&&curJump<i+nums[i]){
        curJump=i+nums[i];
        if(curJump>=nums.length-1) {return true;}
      }
    }
    return false;
  }
}

// 45

class Solution {
  int jump(List<int> nums) {
    int curJump=0;
    List<int> jumps=List.filled(nums.length, -1);
    jumps[0]=0;

    for(int i=0;i<nums.length;i++){
      if(curJump<i){ // 해당 위치로 점프 못하는 경우 패스
        continue;
      }
      if(nums[i]==0){ // 점프 가능 범위가 0일 경우 패스
        continue;
      }
      if(curJump<i+nums[i]){
        curJump=i+nums[i];
      }
      for(int j=1;j<=nums[i];j++){
        if(i+j<nums.length&&jumps[i+j]==-1){
          jumps[i+j]=1+jumps[i];
        }
        else if(i+j<nums.length&&jumps[i+j]!=-1){
          jumps[i+j]=min(jumps[i+j],1+jumps[i]);
        }
      }
    }
    return jumps[nums.length-1];
  }
}