class Solution {
  int totalMoney(int n) {
  int ans = 0;
  for (int i = 1; i <= n ~/ 7; i++) {
    for (int j = i; j < i + 7; j++) {
      ans += j;
    }
  }
  int base = (n + 7) ~/ 7;
  for (int i = 0; i < n % 7; i++, base++) {
    ans += base;
  }
  return ans;
}

}