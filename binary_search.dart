import 'dart:io';

void main(List<String> args) {
  List<int> numberList = [2, 5, 11, 19, 24, 35, 59, 76, 59, 99];
  print("Enter the element to find : ");
  int? findNum = int.parse(stdin.readLineSync()!);
  int foundAt = binarySearch(numberList, findNum);

  if (foundAt == -1) {
    // That means number does not exist in the list
    print("Element not found");
  } else {
    print("Element found at index : $foundAt");
  }
}

int binarySearch(List<int> numberList, int targetElement) {
  int start = 0;
  int end = numberList.length - 1; // This is for index
  while (start <= end) {
    int mid = ((start - (end - start)) / 2).round();
    if (targetElement < numberList[mid]) {
      end = mid - 1;
    } else if (targetElement > numberList[mid]) {
      start = mid + 1;
    } else {
      return mid;
    }
  }

  // If nothing is found in the above loop then that means there is no such element in the list
  // So now returning -1 as a sign of 'nothing found'
  return -1;
}
