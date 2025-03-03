class CreateFavoriteResponseModel {
  int? favoriteId;
  String? adFavorite;
  bool? success;
  String? error;

  CreateFavoriteResponseModel(
      {this.favoriteId, this.adFavorite, this.success, this.error});

  CreateFavoriteResponseModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favoriteId'];
    adFavorite = json['adFavorite'];
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['favoriteId'] = favoriteId;
    data['adFavorite'] = adFavorite;
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}
