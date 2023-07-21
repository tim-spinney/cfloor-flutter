
class ExecutionException implements Exception {
  final String message;

  ExecutionException(this.message);

  @override
  String toString() => message;
}