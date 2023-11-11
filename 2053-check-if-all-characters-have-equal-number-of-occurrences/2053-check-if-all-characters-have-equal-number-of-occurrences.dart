class Solution {
  bool areOccurrencesEqual(String s) {
    Map<String, int> charCount = {};

    for (int i = 0; i < s.length; i++) {
      var char = s[i];
      charCount[char] = (charCount[char] ?? 0) + 1;
    }

    int occurrences = charCount[s[0]]!;

    for (int count in charCount.values) {
      if (count != occurrences) {
        return false;
      }
    }

    return true;
  }
}