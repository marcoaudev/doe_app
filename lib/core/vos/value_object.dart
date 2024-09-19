abstract class ValueObject<T> {
  final T value;

  ValueObject({required this.value});

  String? validate();

  @override
  String toString();
} 