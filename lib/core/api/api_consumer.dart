abstract class ApiConsumer {
  get(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}
