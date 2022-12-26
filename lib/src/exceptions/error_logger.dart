import 'package:ecommerce_app/src/exceptions/app_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorLogger {
  void logError(Object error, StackTrace? stackTrace) {
    // * This can ber replace with a call to a crash reporting
    debugPrint('$error, $stackTrace');
  }

  void logAppException(AppException exception) {
    // * This can ber replace with a call to a crash reporting
    debugPrint('$exception');
  }
}

final errorLoggerProvider = Provider<ErrorLogger>((ref) {
  return ErrorLogger();
});
