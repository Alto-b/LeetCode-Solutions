class Solution {
  bool halvesAreAlike(String s) {
    int midpoint = s.length ~/ 2;
    return vowel(s.substring(0, midpoint)) == vowel(s.substring(midpoint));
  }
}

int vowel(String s) {
  int count = 0;
  List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  for (var i = 0; i < s.length; i++) {
    if (vowels.contains(s[i])) {
      count++;
    }
  }
  return count;
}