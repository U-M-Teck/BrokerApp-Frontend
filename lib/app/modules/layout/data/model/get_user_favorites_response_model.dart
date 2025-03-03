class GetUserFavoritesResponseModel {
  List<Favorites>? favorites;
  bool? success;
  String? error;

  GetUserFavoritesResponseModel({this.favorites, this.success, this.error});

  GetUserFavoritesResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['favorites'] != null) {
      favorites = <Favorites>[];
      json['favorites'].forEach((v) {
        favorites!.add(Favorites.fromJson(v));
      });
    }
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (favorites != null) {
      data['favorites'] = favorites!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}

class Favorites {
  int? advertisementId;
  String? title;
  int? buildingType;
  double? longitude;
  double? latitude;
  String? cityName;
  String? governorateName;
  bool? isPublish;
  String? price;
  String? mobileNumber;
  bool? isWhatsApped;
  List<String>? photos;
  int? id;

  Favorites(
      {this.advertisementId,
      this.title,
      this.buildingType,
      this.longitude,
      this.latitude,
      this.cityName,
      this.governorateName,
      this.isPublish,
      this.price,
      this.mobileNumber,
      this.isWhatsApped,
      this.photos,
      this.id});

  Favorites.fromJson(Map<String, dynamic> json) {
    advertisementId = json['advertisementId'];
    title = json['title'];
    buildingType = json['buildingType'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    cityName = json['cityName'];
    governorateName = json['governorateName'];
    isPublish = json['isPublish'];
    price = json['price'];
    mobileNumber = json['mobileNumber'];
    isWhatsApped = json['isWhatsApped'];
    photos = json['photos'].cast<String>();
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['advertisementId'] = advertisementId;
    data['title'] = title;
    data['buildingType'] = buildingType;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['cityName'] = cityName;
    data['governorateName'] = governorateName;
    data['isPublish'] = isPublish;
    data['price'] = price;
    data['mobileNumber'] = mobileNumber;
    data['isWhatsApped'] = isWhatsApped;
    data['photos'] = photos;
    data['id'] = id;
    return data;
  }
}
