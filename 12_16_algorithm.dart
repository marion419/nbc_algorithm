// 6

// 6

String convert(String s, int numRows) {
  if (numRows == 1) return s;

  List<StringBuffer> rows = List.generate(
      numRows, (index) => StringBuffer());
  int currentRow = 0;
  bool goingDown = false;

  for (var char in s.split('')) {
    rows[currentRow].write(char);
    if (currentRow == 0 || currentRow == numRows - 1) {
      goingDown = !goingDown;
    }
    currentRow += goingDown ? 1 : -1;
  }

  return rows.join('');
}
