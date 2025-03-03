class GetUrlModel {
  String? url;
  bool? isSuccess;

  GetUrlModel({this.url, this.isSuccess});

  GetUrlModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    isSuccess = json['isSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['isSuccess'] = isSuccess;
    return data;
  }
}
