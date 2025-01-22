class CheckPhoneNumberResponseModel {
  String? message;
  String? otp;
  bool? isSuccess;

  CheckPhoneNumberResponseModel({this.message, this.otp, this.isSuccess});

  CheckPhoneNumberResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    otp = json['otp'];
    isSuccess = json['isSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['otp'] = otp;
    data['isSuccess'] = isSuccess;
    return data;
  }
}
