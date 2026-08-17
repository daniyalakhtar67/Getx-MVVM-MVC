
class AppExceptions implements Exception{
  final message, prefix;
  AppExceptions([this.message, this.prefix]);
  String toString(){
    return '$message$prefix';
  }
}
class InternetException extends AppExceptions{
  InternetException([String? message]):super (message, 'No Internet');
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String? message]):super(message, 'Request Time out');
}

class ServerException extends AppExceptions{
  ServerException([String? message]):super(message, 'Internet time Out');
}

class InvalidUrl extends AppExceptions{
  InvalidUrl([String?message]) : super(message, 'Invalid Url');
}

class FetchDataException extends AppExceptions{
  FetchDataException([String?message]):super(message, '');
}