// #189

class Solution {
  void rotate(List<int> nums, int k) {
    List<int> temp=[];
    // k가 배열 길이보다 큰 경우
    // ex ) 배열의 길이가 3인데 4번 회전하면 1번 회전한 것과 같음
    while(nums.length<k){
      k-=nums.length;
    }
    // 뒤에서 k번째 숫자까지 저장
    for(int i=nums.length-k;i<nums.length;i++){
      temp.add(nums[i]);
    }
    for(int i=nums.length-k-1;i>=0;i--){
      nums[i+k]=nums[i];
    }
    for(int i=0;i<k;i++){
      nums[i]=temp[i];
    }
  }
}