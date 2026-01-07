class Failure {
  int code;
  String message;

  Failure({required this.code, required this.message});
}

class DefaultFailure extends Failure {
  DefaultFailure()
    : super(code: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT);
}

class ResponseCode {
  //Api status code
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int FORBIDDEN = 403;
  static const int UNAUTHORISED = 401;
  static const int NOT_FOUND = 404;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int BAD_CERTIFICATION = 495;
  static const int CONNECT_ERROR = 502;
  static const int BAD_RESPONSE = 500;

  //Local status code
  static const int UNKNOWN = -1;
  static const int CONNECT_TIMEOUT = -3;
  static const int CANCEL = -3;
  static const int RECIEVE_TIMEOUT = -4;
  static const int SEND_TIMEOUT = -5;
  static const int CACHE_ERROR = -6;
  static const int NO_INTERNET_CONNECTION = -7;
  static const int DEFAULT = 200;
}

class ResponseMessage {
  //Api status code
  static const String SUCCESS = "success";
  static const String NO_CONTENT = "success with no contenString";
  static const String BAD_REQUEST = "bad request, try again later";
  static const String FORBIDDEN = "forbidden request, try again later";
  static const String UNAUTHORISED = "user is unauthorised, try again later";
  static const String NOT_FOUND = "Url is not fund, try again later";
  static const String INTERNAL_SERVER_ERROR = "Some thing, try again later";
  static const String BAD_CERTIFICATION = "bad certificate";
  static const String CONNECT_ERROR = "connction error";
  static const String BAD_RESPONSE = "bad response";

  //Local status code
  static const String UNKNOWN = "some thing went wrong, try again later";
  static const String CONNECT_TIMEOUT = "time out error, try again later";
  static const String CANCEL = "request was cancelled, try again later";
  static const String RECIEVE_TIMEOUT = "time out error, try again later";
  static const String SEND_TIMEOUT = "time out error, try again later";
  static const String CACHE_ERROR = "cache error, try again later";
  static const String NO_INTERNET_CONNECTION =
      "please check your internet connection";
  static const String DEFAULT = "Logic Error from Api side";
  static const String USER_NOT_FOUND = "User not found";
}
