class Solution {
  bool canFormArray(List<int> arr, List<List<int>> pieces) {
  Map<int, List<int>> poss = {};
  for (var piece in pieces) {
    int first = piece[0];
    poss[first] = List.from(piece);
  }
  List<int> collect = [];
  int ans = 0;
  while (ans < arr.length) {
    int val = arr[ans];
    List<int>? piece = poss[val];
    if (piece == null) {
      return false;
    }
    collect.addAll(piece);
    ans += piece.length;
  }
  return collect.join() == arr.join();
}

void Main() {
  List<int> arr = [23, 34, 14];
  List<List<int>> pieces = [[23, 34],[14] ];
  bool result = canFormArray(arr, pieces);
  print(result); 
}


  }