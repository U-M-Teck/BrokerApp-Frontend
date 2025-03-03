class GetDiscountModel {
  dynamic discount;
  String? error;
  bool? success;

  GetDiscountModel({this.discount, this.error, this.success});

  GetDiscountModel.fromJson(Map<String, dynamic> json) {
    discount = json['discount'];
    error = json['error'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['discount'] = discount;
    data['error'] = error;
    data['success'] = success;
    return data;
  }
}
