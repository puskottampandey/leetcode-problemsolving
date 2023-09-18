int romanToInt(String s) {
  int result = 0;

  Map<String, int> value = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
  };
  for (int i = 0; i < s.length; i++) {
    if (i < s.length - 1 && value[s[i]]! < value[s[i + 1]]!) {
      result -= value[s[i]]!;
    } else {
      result += value[s[i]]!;
    }
  }
  return result;
}

void main() {
  String s = "LVIII";
  int result = romanToInt(s);
  print(result);
}
