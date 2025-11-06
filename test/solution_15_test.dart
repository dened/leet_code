import 'package:collection/collection.dart';
import 'package:leet_code/src/solution_15.dart';
import 'package:test/test.dart';

void main() {
  group('3Sum', () {
    final solution = Solution();

    // Вспомогательная функция для сравнения списков списков без учета порядка.
    // Сначала сортируются элементы внутри каждого триплета,
    // затем сортируется сам список триплетов.
    bool areListsOfListsEqual(List<List<int>> list1, List<List<int>> list2) {
      if (list1.length != list2.length) return false;

      final sortedList1 = list1.map((triplet) => triplet..sort()).toList();
      final sortedList2 = list2.map((triplet) => triplet..sort()).toList();

      sortedList1.sort((a, b) {
        for (int i = 0; i < a.length; i++) {
          if (a[i] != b[i]) return a[i].compareTo(b[i]);
        }
        return 0;
      });
      sortedList2.sort((a, b) {
        for (int i = 0; i < a.length; i++) {
          if (a[i] != b[i]) return a[i].compareTo(b[i]);
        }
        return 0;
      });

      return const DeepCollectionEquality().equals(sortedList1, sortedList2);
    }

    test('Example 1: nums = [-1,0,1,2,-1,-4]', () {
      final result = solution.threeSum([-1, 0, 1, 2, -1, -4]);
      final expected = <List<int>>[
        [-1, -1, 2],
        [-1, 0, 1]
      ];
      expect(areListsOfListsEqual(result, expected), isTrue);
    });

    test('Example 2: nums = [0,1,1]', () {
      final result = solution.threeSum([0, 1, 1]);
      final expected = <List<int>>[];
      expect(areListsOfListsEqual(result, expected), isTrue);
    });

    test('Example 3: nums = [0,0,0]', () {
      final result = solution.threeSum([0, 0, 0]);
      final expected = <List<int>>[
        [0, 0, 0]
      ];
      expect(areListsOfListsEqual(result, expected), isTrue);
    });

    test('nums = [0,0,0,0]', () {
      final result = solution.threeSum([0, 0, 0, 0]);
      final expected = <List<int>>[
        [0, 0, 0]
      ];
      expect(areListsOfListsEqual(result, expected), isTrue);
    });

    test('nums = [-2,0,1,1,2]', () {
      final result = solution.threeSum([-2, 0, 1, 1, 2]);
      final expected = <List<int>>[
        [-2, 0, 2],
        [-2, 1, 1]
      ];
      expect(areListsOfListsEqual(result, expected), isTrue);
    });
  });
}
