class GetUserTypeResponseModel {
  Details? details;
  bool? success;
  String? error;

  GetUserTypeResponseModel({this.details, this.success, this.error});

  GetUserTypeResponseModel.fromJson(Map<String, dynamic> json) {
    details =
        json['details'] != null ? Details.fromJson(json['details']) : null;
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (details != null) {
      data['details'] = details!.toJson();
    }
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}

class Details {
  String? secondMobile;
  bool? isWhatsApped;
  int? id;
  String? name;
  String? phoneNumber;
  String? emailAddress;
  String? avatar;

  Details(
      {this.secondMobile,
      this.isWhatsApped,
      this.id,
      this.name,
      this.phoneNumber,
      this.emailAddress,
      this.avatar});

  Details.fromJson(Map<String, dynamic> json) {
    secondMobile = json['secondMobile'];
    isWhatsApped = json['isWhatsApped'];
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    emailAddress = json['emailAddress'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['secondMobile'] = secondMobile;
    data['isWhatsApped'] = isWhatsApped;
    data['id'] = id;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    data['emailAddress'] = emailAddress;
    data['avatar'] = avatar;
    return data;
  }
}
