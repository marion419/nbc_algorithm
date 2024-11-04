// #1732 _ 가장 높은 고도 찾기

class Solution {
  int largestAltitude(List<int> gain) {
    List<int> altitude=[0];
    int maxAlt=0;
    
    for(int i=0;i<gain.length;i++){
        if(altitude[i]+gain[i]>maxAlt){maxAlt=altitude[i]+gain[i];}
      altitude.add(altitude[i]+gain[i]);
    }
    return maxAlt;
  }
}

// #2215 _ 두 배열의 차이점

class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    // Set(중복제거용)과 List 두 개 선언
    List<Set<int>> diff=[{}, {}];
    List<List<int>> result=[[], []];

    // nums2에 속하지 않는 nums1의 원소 걸러내기
    for(int i in nums1){
        if(!nums2.contains(i)){
            diff[0].add(i);
        }
    }
    // Set의 데이터를 List로 옮김
    for(int i in diff[0]){
        result[0].add(i);
    }
    // nums1에 속하지 않는 nums2의 원소 걸러내기
    for(int i in nums2){
        if(!nums1.contains(i)){
            diff[1].add(i);
        }
    }
    // Set의 데이터를 List로 옮김
    for(int i in diff[1]){
        result[1].add(i);
    }
    // List 반환
    return result;
  }
}