class LoginResponseModel {
  String? accessToken;
  String? encryptedAccessToken;
  int? expireInSeconds;
  int? userId;
  int? loginType;

  LoginResponseModel(
      {this.accessToken,
      this.encryptedAccessToken,
      this.expireInSeconds,
      this.userId,
      this.loginType});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    encryptedAccessToken = json['encryptedAccessToken'];
    expireInSeconds = json['expireInSeconds'];
    userId = json['userId'];
    loginType = json['loginType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['encryptedAccessToken'] = encryptedAccessToken;
    data['expireInSeconds'] = expireInSeconds;
    data['userId'] = userId;
    data['loginType'] = loginType;
    return data;
  }
}
