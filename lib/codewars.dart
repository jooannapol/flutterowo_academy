void main() {
  int squareSum(List numbers)
  {
    int sum = 0;
    for (int number in numbers) {
      sum += (number * number);
    }
    return sum;
  }
  
  print(squareSum([1,2,2]));
}
