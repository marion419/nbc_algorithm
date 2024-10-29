// 345 _ reversedVowels

class Solution {
  String reverseVowels(String s) {
    // 1 모음 set을 만든다
    // 2 뒤집는다
    // 3 원래 리스트에서 모음이 있는 곳에만 하나씩 집어넣는다

    Set<String> vowels={'a', 'e', 'o', 'i', 'u', 'A', 'E', 'I', 'O', 'U'};
    List<String> vowelList=[];
    for(int i=0;i<s.length;i++){
        if(vowels.contains(s[i])) vowelList.add(s[i]);
    }

    List<String> reversedList=[];
    for(int i=vowelList.length-1;i>=0;i--){
        reversedList.add(vowelList[i]);
    }
    
    int t=0;
    String resultS='';
    
    for(int i=0;i<s.length;i++){
        if(vowels.contains(s[i])){
            resultS+=reversedList[t];
            t++;
        }
        else resultS+=s[i];
    }
    return resultS;
  }
}

// *****************************************************************************

// 605 _ flowerbeds

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