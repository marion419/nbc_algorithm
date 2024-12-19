// #279

class Solution {
  int hIndex(List<int> citations) {
    // 다음 인용수가 H보다 작거나 같으면 무시
    // 다음 인용수가 H보다 크고 &&
    // 지금까지의 유효 인용수가 모두 H보다 크면 H++
    int H = 0;
    
    // 배열 정렬(내림차순) 이유 : 오름차순이면 작은 숫자를 제외하면서 세야 함
    citations.sort();
    citations=List.from(citations.reversed);

    for(int i=0;i<citations.length;i++){
      if(citations[i]>H){
        H++;
      }
    }
    return H;
  }
}