class SignUpResponseModel {
  int? ownerId;
  String? owner;
  bool? success;
  String? error;

  SignUpResponseModel({this.ownerId, this.owner, this.success, this.error});

  SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    ownerId = json['ownerId'];
    owner = json['owner'];
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ownerId'] = ownerId;
    data['owner'] = owner;
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}
