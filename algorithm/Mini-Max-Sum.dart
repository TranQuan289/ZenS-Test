void main(List<String> args) {
  List<int> arr = [1, 3, 5, 7, 9];
  miniMaxSum(arr);
}

void miniMaxSum(List<int> arr) {
  arr.sort();
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }

  print("${sum - arr[arr.length - 1]} ${sum - arr[0]}");
}
