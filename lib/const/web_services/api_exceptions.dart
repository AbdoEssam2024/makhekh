class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException({required this.message, this.statusCode});

  @override
  String toString() => 'ApiException: $message (Status: $statusCode)';
}

class BadRequestException extends ApiException {
  BadRequestException(String message, {super.statusCode})
      : super(message: message);
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(String message, {super.statusCode})
      : super(message: message);
}

class NotFoundException extends ApiException {
  NotFoundException(String message, {super.statusCode})
      : super(message: message);
}

class FetchDataException extends ApiException {
  FetchDataException(String message, {super.statusCode})
      : super(message: message);
}
