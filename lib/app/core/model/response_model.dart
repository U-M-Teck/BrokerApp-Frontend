


class ResponseModel {
  dynamic success;
  dynamic message;
  dynamic messageAr;
   dynamic data={};

  ResponseModel.fromJson(dynamic json) {
    if (json is Map) {
      success = json['success'];
    message = json['message'];
    messageAr = json['messageAR'];
    data = json;
    }else{
      data = json;
    }
    
  }
}
