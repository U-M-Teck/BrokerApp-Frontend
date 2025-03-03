class AllAdsModel {
  List<Advertisements>? advertisements;
  bool? success;
  dynamic error;

  AllAdsModel({this.advertisements, this.success, this.error});

  AllAdsModel.fromJson(Map<String, dynamic> json) {
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
  double? longitude;
  double? latitude;
  String? from;
  String? to;
  bool? isPublish;
  dynamic viewCount;
  List<String>? photos;
  String? price;
  bool? featuredAd;
  bool? isCompany;
  String? companyLogo;
  int? id;

  Advertisements(
      {this.title,
      this.longitude,
      this.latitude,
      this.from,
      this.to,
      this.isPublish,
      this.viewCount,
      this.photos,
      this.price,
      this.featuredAd,
      this.isCompany,
      this.companyLogo,
      this.id});

  Advertisements.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    from = json['from'];
    to = json['to'];
    isPublish = json['isPublish'];
    viewCount = json['viewCount'];
    photos = json['photos'].cast<String>();
    price = json['price'];
    featuredAd = json['featuredAd'];
    isCompany = json['isCompany'];
    companyLogo = json['companyLogo'];
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
    data['viewCount'] = viewCount;
    data['photos'] = photos;
    data['price'] = price;
    data['featuredAd'] = featuredAd;
    data['isCompany'] = isCompany;
    data['companyLogo'] = companyLogo;
    data['id'] = id;
    return data;
  }
}
