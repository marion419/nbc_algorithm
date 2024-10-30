// 392 _ 부분 수열

class Solution {
  bool isSubsequence(String s, String t) {
    //s가 t보다 긴 경우 부분 수열이 아님
    if(s.length>t.length){
        return false;
    }
    //string s의 몇 번째 글자를 검사하고 있는지 정하는 변수
    int sPointer=0;

    for(int i=0;i<t.length;i++){
        if(sPointer>=s.length) break;
        if(t[i]==s[sPointer]){
            sPointer++;
        }
    }

    if(sPointer==s.length){
        return true;
    }
    else return false;
  }
}

// 283 _ 0 이동시키기

class Solution {

  void moveZeroes(List<int> nums) {
    //뒤에서부터 0발견->발견한 위치에서부터 한칸씩 당기고 맨뒤에 0넣기

    int zeroPointer=nums.length-1; //0을 넣을 위치
    
    for(int i=nums.length-2;i>=0;i--){
      if(nums[i]==0){
          for(int j=i;j<zeroPointer;j++){
              // swap(nums[j], nums[j+1]);
              int temp=nums[j];
              nums[j]=nums[j+1];
              nums[j+1]=temp;
          }
          zeroPointer-=1;
      }
    }
    print(nums);
  }
}