// #724 _ pivot index

class Solution {
  int pivotIndex(List<int> nums) {
    int left=0;
    int right=0;
    int? pivot;
    for(int i=nums.length-1;i>0;i--){
        right+=nums[i];
    }

    for(int i=0;i<nums.length;i++){
        // pivot인 경우
        if(left==right){
            pivot=i;
            break;
        }
        // List의 마지막 인덱스일 경우
        else if(i==nums.length-1){
            if(left==right) {pivot=i;}
        }
        // pivot을 못 찾았을 경우
        else{
            left+=nums[i];
            right-=nums[i+1];
        }
    }
    if(pivot==null){
        return -1;
    }
    else{
        return pivot;
    }
  }
}

// #1207 _ number occurrences

class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> numMap={};
    List<int> numList=[];
    var numSet=<int>{};
    // key : array의 요소 value : 등장 횟수
    for(int i=0;i<arr.length;i++){
        if(numMap.containsKey(arr[i])){
            numMap[arr[i]]=1+numMap[arr[i]]!;
        }
        else{
            numMap[arr[i]]=1;
        }
    }
    // map 순회
    for(var entry in numMap.entries){
        numList.add(entry.value);
        numSet.add(entry.value);
    }
    return(numList.length==numSet.length);
  }
}