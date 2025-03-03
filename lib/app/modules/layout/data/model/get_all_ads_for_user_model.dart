class GetAllAdsForUserModel {
  List<Advertisements>? advertisements;
  bool? success;
  String? error;

  GetAllAdsForUserModel({this.advertisements, this.success, this.error});

  GetAllAdsForUserModel.fromJson(Map<String, dynamic> json) {
    if (json['advertisements'] != null) {
      advertisements = <Advertisements>[];
      json['advertisements'].forEach((v) {
        advertisements!.add(Advertisements.fromJson(v));
      });
    }
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (advertisements != null) {
      data['advertisements'] =
          advertisements!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}

class Advertisements {
  String? title;
  dynamic longitude;
  dynamic latitude;
  String? from;
  String? to;
  bool? isPublish;
  bool? isApproved;
  dynamic viewCount;
  List<String>? photos;
  String? type;
  int? typeId;
  int? expireStatus;
  bool? featuredAd;
  int? id;

  Advertisements(
      {this.title,
      this.longitude,
      this.latitude,
      this.from,
      this.to,
      this.isPublish,
      this.isApproved,
      this.viewCount,
      this.photos,
      this.type,
      this.typeId,
      this.expireStatus,
      this.featuredAd,
      this.id});

  Advertisements.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    from = json['from'];
    to = json['to'];
    isPublish = json['isPublish'];
    isApproved = json['isApproved'];
    viewCount = json['viewCount'];
    photos = json['photos'].cast<String>();
    type = json['type'];
    typeId = json['typeId'];
    expireStatus = json['expireStatus'];
    featuredAd = json['featuredAd'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['from'] = from;
    data['to'] = to;
    data['isPublish'] = isPublish;
    data['isApproved'] = isApproved;
    data['viewCount'] = viewCount;
    data['photos'] = photos;
    data['type'] = type;
    data['typeId'] = typeId;
    data['expireStatus'] = expireStatus;
    data['featuredAd'] = featuredAd;
    data['id'] = id;
    return data;
  }
}
