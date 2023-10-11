class Solution {
  int sumOddLengthSubarrays(List<int> arr) {
       int n = arr.length;
  int ans = 0;
  
  for (int l = 0; l < n; l++) {
    for (int r = l; r < n; r++) {
      if ((r - l + 1) % 2 == 1) {
        int sum = 0;
        for (int i = l; i <= r; i++) {
          sum += arr[i];
        }
        ans += sum;
      }
    }
  }
  
  return ans;
  }
}