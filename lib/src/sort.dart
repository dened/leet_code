class Sort {
  List<int> selection(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      int minIndex = i;
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[minIndex] > nums[j]) {
          minIndex = j;
        }
      }

      if (minIndex != i) {
        int temp = nums[i];
        nums[i] = nums[minIndex];
        nums[minIndex] = temp;
      }
    }

    return nums;
  }

  List<int> bubble(List<int> nums) {
    int sortedIndex = nums.length;

    while (true) {
      int swapCount = 0;
      for (int i = 0; i < sortedIndex - 1; i++) {
        if (nums[i] > nums[i + 1]) {
          int temp = nums[i];
          nums[i] = nums[i + 1];
          nums[i + 1] = temp;
          swapCount++;
        }
      }
      sortedIndex--;
      if (swapCount == 0) break;
    }

    return nums;
  }

  List<int> shell(List<int> nums) {
    int n = nums.length;
    int step = n ~/ 2;

    while (step > 0) {
      for (int i = step; i < n; i++) {
        int j = i;
        while (j >= step && nums[j] < nums[j - step]) {
          int temp = nums[j];
          nums[j] = nums[j - step];
          nums[j - step] = temp;
          j -= step;
        }
      }
      step = step ~/ 2;
    }

    return nums;
  }
}
