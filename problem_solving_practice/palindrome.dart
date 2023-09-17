bool isPalindrome(int number) {
  int rem, sum = 0, temp = 0;
  temp = number;
  while (number != 0) {
    rem = number % 10;
    sum = (sum * 10) + rem;
    number ~/= 10;
  }
  if (sum == temp) {
    return true;
  } else {
    return false;
  }
}

void main() {
  int number = 121;
  bool result = isPalindrome(number);
  print(result);
}
