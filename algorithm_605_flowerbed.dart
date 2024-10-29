class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int lengthOfBed=flowerbed.length;
    //배열의 크기가 1인 경우
    if(lengthOfBed==1){
        if(flowerbed[0]==0 && n<=1) return true;
        else if(flowerbed[0]!=0 && n==0) return true;
        else return false;
    }

    for(int i=0;i<lengthOfBed;i++){
        //0번 인덱스인 경우
        if(i==0 && flowerbed[i]==0){
            if(flowerbed[i+1]==0){
            flowerbed[i]=1;
            n-=1;
            }
        }
        //마지막 인덱스인 경우
        else if(i==lengthOfBed-1 && flowerbed[i]==0){
            if(flowerbed[i-1]==0){
            flowerbed[i]=1;
            n-=1;
            }
        }
        //현재 자리가 차있는 경우 다음칸 건너뛰기
        // else if(flowerbed[i]==1) i+=1;

        else if(flowerbed[i]==0 && flowerbed[i+1]==0){ 
            if(flowerbed[i-1]==0){ 
                n-=1;
                flowerbed[i]=1;
            }
        }
    }
    if(n<=0) return true;
    else return false;
  }
}