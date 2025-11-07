import 'package:leet_code/src/sort.dart';
import 'package:test/test.dart';

typedef SortFunction = List<int> Function(List<int> list);

void main() {
  void runSortTests(SortFunction sortFunction) {
    test('should sort a simple unsorted list', () {
      final list = [5, 2, 8, 1, 9, 4];
      sortFunction(list);
      expect(list, [1, 2, 4, 5, 8, 9]);
    });

    test('should handle an empty list', () {
      final list = <int>[];
      sortFunction(list);
      expect(list, []);
    });

    test('should handle a list with one element', () {
      final list = [42];
      sortFunction(list);
      expect(list, [42]);
    });

    test('should handle a list that is already sorted', () {
      final list = [1, 2, 3, 4, 5];
      sortFunction(list);
      expect(list, [1, 2, 3, 4, 5]);
    });

    test('should handle a list sorted in reverse order', () {
      final list = [5, 4, 3, 2, 1];
      sortFunction(list);
      expect(list, [1, 2, 3, 4, 5]);
    });

    test('should handle a list with duplicate elements', () {
      final list = [5, 2, 8, 2, 9, 5];
      sortFunction(list);
      expect(list, [2, 2, 5, 5, 8, 9]);
    });

    test('should handle a list with negative numbers', () {
      final list = [-5, 2, -8, 1, 0, -4];
      sortFunction(list);
      expect(list, [-8, -5, -4, 0, 1, 2]);
    });
  }

  group('Selection sort', () {
    final sorter = Sort();

    runSortTests(sorter.selection);
  });

  group('Bubble sort', () {
    final sorter = Sort();
    runSortTests(sorter.bubble);
  });

    group('Shell sort', () {
    final sorter = Sort();
    runSortTests(sorter.shell);
  });
}
