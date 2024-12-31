// #54

class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    List<int> result = [];

    int top=0;
    int left=0;
    int bottom=matrix.length-1;
    int right=matrix[0].length-1;

    // if(matrix[0].length==1){
    //   List<int> result = [];
    //   for(List<int> list in matrix){
    //     result.add(list[0]);
    //   }
    //   return result;
    // }

    // 포인터 없이 배열을 지워가면서 나선 그리기 시도
    // 탐색 중에 변하는 배열을 제어하기 어려워서 실패
    // while(result.length<n*m){
    //   result.addAll(matrix.removeAt(0));
    //   if(matrix.isEmpty) break;

    //   for(int i=0;i<matrix.length;i++){
    //     result.add(matrix[i].removeLast());
    //   }
    //   while(matrix.contains([])){
    //     result.remove([]);
    //   }
    //   if(matrix.isEmpty) break;

    //   result.addAll(List.from(matrix.removeLast().reversed));
    //   if(matrix.isEmpty) break;
      
    //   for(int i=matrix.length-1;i>=0;i--){
    //     result.add(matrix[i].removeAt(0));
    //   }
    //   while(matrix.contains([])){
    //     result.remove([]);
    //   }
    //   if(matrix.isEmpty) break;
    // }

    // 상하좌우 패딩 포인터를 두고 탐색
    while (top<=bottom&&left<=right) {
    for (int i=left;i<=right;i++) {
      result.add(matrix[top][i]);
    }
    top++;

    for (int i=top;i<=bottom;i++) {
      result.add(matrix[i][right]);
    }
    right--;

    if (top<=bottom) {
      for (int i=right;i>=left;i--) {
        result.add(matrix[bottom][i]);
      }
      bottom--;
    }

    if (left<=right) {
      for (int i=bottom;i>=top;i--) {
        result.add(matrix[i][left]);
      }
      left++;
    }
  }

    return result;
  }
}