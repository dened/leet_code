import 'package:leet_code/src/solution_11.dart';
import 'package:test/test.dart';

void main() {
  group('Container With Most Water', () {
    final solution = Solution();

    test('Example 1: height = [1,8,6,2,5,4,8,3,7]', () {
      // Максимальная площадь достигается между индексами 1 (высота 8) и 8 (высота 7).
      // Площадь = min(8, 7) * (8 - 1) = 7 * 7 = 49.
      expect(solution.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49);
    });

    test('Example 2: height = [1,1]', () {
      // Две линии одинаковой высоты.
      // Площадь = min(1, 1) * (1 - 0) = 1 * 1 = 1.
      expect(solution.maxArea([1, 1]), 1);
    });

    test('Ascending heights: height = [1,2,3,4,5]', () {
      // Максимальная площадь будет между первой и последней линией.
      // min(1, 5) * 4 = 4.
      // Другие варианты: min(2,5)*3=6, min(3,5)*2=6, min(4,5)*1=4.
      // Максимум = 6.
      expect(solution.maxArea([1, 2, 3, 4, 5]), 6);
    });

    test('Descending heights: height = [5,4,3,2,1]', () {
      // Аналогично предыдущему, но в обратном порядке.
      // min(5,1)*4=4, min(5,2)*3=6, min(5,3)*2=6, min(5,4)*1=4.
      // Максимум = 6.
      expect(solution.maxArea([5, 4, 3, 2, 1]), 6);
    });

    test('Two tall bars far apart: height = [1,100,100,1]', () {
      // Максимальная площадь между двумя высокими центральными линиями.
      // min(100, 100) * (2 - 1) = 100.
      expect(solution.maxArea([1, 100, 100, 1]), 100);
    });
  });
}
