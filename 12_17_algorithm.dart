// 48

class Solution {
  void rotate(List<List<int>> matrix) {
    // transpose 1회
    // 1  4  7
    // 2  5  8
    // 3  6  9
    for(int i=0;i<matrix.length;i++){
      for(int j=0;j<matrix.length;j++){
        if(i>j) {continue;}
        int temp = matrix[i][j];
        matrix[i][j]=matrix[j][i];
        matrix[j][i]=temp;
      }
    }
    for(int i=0;i<matrix.length;i++){
      matrix[i]=matrix[i].reversed.toList();
    }
  }
}