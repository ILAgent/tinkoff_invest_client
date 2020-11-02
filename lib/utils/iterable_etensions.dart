extension ListExtensions<T> on Iterable<T> {
  Future<double> sumAsync(Future<double> extract(T item)) async {
    double result = 0.0;
    for (T element in this) {
      result += await extract(element);
    }
    return result;
  }
}
