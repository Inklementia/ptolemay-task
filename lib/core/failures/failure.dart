import 'package:testtask/config/values/strings.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class TimeoutFailure extends Failure {
  TimeoutFailure({required String message})
      : super(message: MyStrings.timeoutError);
}

class ServerFailure extends Failure {
  ServerFailure({required String message})
      : super(message: MyStrings.serverError);
}

class NetworkFailure extends Failure {
  NetworkFailure({required String message})
      : super(message: MyStrings.noConnectionError);
}

class GeneralFailure extends Failure {
  GeneralFailure({required String message})
      : super(message: MyStrings.someError);
}
