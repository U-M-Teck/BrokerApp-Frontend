class GetAdvDetailsModel {
  Details? details;
  bool? success;
  String? error;

  GetAdvDetailsModel({this.details, this.success, this.error});

  GetAdvDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? title;
  int? type;
  dynamic cityId;
  int? governorateId;
  String? governorateName;
  String? compound;
  String? street;
  String? buildingNumber;
  double? latitude;
  double? longitude;
  int? floorsNumber;
  String? area;
  double? buildingArea;
  int? chaletType;
  String? buildingStatus;
  String? landingStatus;
  int? usingFor;
  String? usingForString;
  double? streetWidth;
  double? width;
  double? length;
  dynamic buildingDate;
  int? rooms;
  int? reception;
  int? balcony;
  int? kitchen;
  int? toilet;
  int? numUnits;
  int? numPartitions;
  int? officesNum;
  int? officesFloors;
  int? durationId;
  int? seekerId;
  int? ownerId;
  int? companyId;
  int? brokerPersonId;
  bool? isPublish;
  bool? isApprove;
  String? description;
  bool? featuredAd;
  String? price;
  int? paymentFacility;
  String? advertiseMakerName;
  String? advertiseMaker;
  String? mobileNumber;
  String? isWhatsApped;
  bool? whatsApped;
  String? secondMobileNumber;
  bool? contactRegisterInTheAccount;
  dynamic parkingSpace;
  String? garden;
  dynamic gardenArea;
  String? pool;
  String? shop;
  dynamic shopsNumber;
  int? dinning;
  int? rent;
  String? rentValue;
  String? diningRoom;
  List<Facilites>? facilites;
  List<String>? photos;
  List<String>? layouts;
  String? decoration;
  String? document;
  double? viewsCount;
  String? agreementStatus;
  int? agreementStatusId;
  String? furnished;
  String? elevator;
  String? parking;
  String? propertyFor;
  int? chaletRentType;
  String? chaletRentTypeString;
  int? numOfMonths;
  double? chaletRentValue;
  int? minTimeToBookForChaletId;
  String? minTimeToBookName;
  bool? showChalet;
  int? officies;
  List<String>? advertisementBookings;
  String? downPayment;
  String? monthlyInstallment;
  String? yearlyInstallment;
  String? numOfYears;
  String? deliveryDate;
  bool? isEdited;
  bool? isCompany;
  String? companyLogo;
  String? companyAbout;
  String? companyFacebook;
  String? companyInstagram;
  String? companySnapchat;
  String? companyTiktok;
  String? companyWebsite;
  String? companyName;
  String? companyLatitude;
  String? companyLongitude;
  String? projectName;
  bool? isFavourite;
  int? id;

  Details(
      {this.title,
      this.type,
      this.cityId,
      this.governorateId,
      this.governorateName,
      this.compound,
      this.street,
      this.buildingNumber,
      this.latitude,
      this.longitude,
      this.floorsNumber,
      this.area,
      this.buildingArea,
      this.chaletType,
      this.buildingStatus,
      this.landingStatus,
      this.usingFor,
      this.usingForString,
      this.streetWidth,
      this.width,
      this.length,
      this.buildingDate,
      this.rooms,
      this.reception,
      this.balcony,
      this.kitchen,
      this.toilet,
      this.numUnits,
      this.numPartitions,
      this.officesNum,
      this.officesFloors,
      this.durationId,
      this.seekerId,
      this.ownerId,
      this.companyId,
      this.brokerPersonId,
      this.isPublish,
      this.isApprove,
      this.description,
      this.featuredAd,
      this.price,
      this.paymentFacility,
      this.advertiseMakerName,
      this.advertiseMaker,
      this.mobileNumber,
      this.isWhatsApped,
      this.whatsApped,
      this.secondMobileNumber,
      this.contactRegisterInTheAccount,
      this.parkingSpace,
      this.garden,
      this.gardenArea,
      this.pool,
      this.shop,
      this.shopsNumber,
      this.dinning,
      this.rent,
      this.rentValue,
      this.diningRoom,
      this.facilites,
      this.photos,
      this.layouts,
      this.decoration,
      this.document,
      this.viewsCount,
      this.agreementStatus,
      this.agreementStatusId,
      this.furnished,
      this.elevator,
      this.parking,
      this.propertyFor,
      this.chaletRentType,
      this.chaletRentTypeString,
      this.numOfMonths,
      this.chaletRentValue,
      this.minTimeToBookForChaletId,
      this.minTimeToBookName,
      this.showChalet,
      this.officies,
      this.advertisementBookings,
      this.downPayment,
      this.monthlyInstallment,
      this.yearlyInstallment,
      this.numOfYears,
      this.deliveryDate,
      this.isEdited,
      this.isCompany,
      this.companyLogo,
      this.companyAbout,
      this.companyFacebook,
      this.companyInstagram,
      this.companySnapchat,
      this.companyTiktok,
      this.companyWebsite,
      this.companyName,
      this.companyLatitude,
      this.companyLongitude,
      this.projectName,
      this.isFavourite,
      this.id});

  Details.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    cityId = json['cityId'];
    governorateId = json['governorateId'];
    governorateName = json['governorateName'];
    compound = json['compound'];
    street = json['street'];
    buildingNumber = json['buildingNumber'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    floorsNumber = json['floorsNumber'];
    area = json['area'];
    buildingArea = json['buildingArea'];
    chaletType = json['chaletType'];
    buildingStatus = json['buildingStatus'];
    landingStatus = json['landingStatus'];
    usingFor = json['usingFor'];
    usingForString = json['usingForString'];
    streetWidth = json['streetWidth'];
    width = json['width'];
    length = json['length'];
    buildingDate = json['buildingDate'];
    rooms = json['rooms'];
    reception = json['reception'];
    balcony = json['balcony'];
    kitchen = json['kitchen'];
    toilet = json['toilet'];
    numUnits = json['numUnits'];
    numPartitions = json['numPartitions'];
    officesNum = json['officesNum'];
    officesFloors = json['officesFloors'];
    durationId = json['durationId'];
    seekerId = json['seekerId'];
    ownerId = json['ownerId'];
    companyId = json['companyId'];
    brokerPersonId = json['brokerPersonId'];
    isPublish = json['isPublish'];
    isApprove = json['isApprove'];
    description = json['description'];
    featuredAd = json['featuredAd'];
    price = json['price'];
    paymentFacility = json['paymentFacility'];
    advertiseMakerName = json['advertiseMakerName'];
    advertiseMaker = json['advertiseMaker'];
    mobileNumber = json['mobileNumber'];
    isWhatsApped = json['isWhatsApped'];
    whatsApped = json['whatsApped'];
    secondMobileNumber = json['secondMobileNumber'];
    contactRegisterInTheAccount = json['contactRegisterInTheAccount'];
    parkingSpace = json['parkingSpace'];
    garden = json['garden'];
    gardenArea = json['gardenArea'];
    pool = json['pool'];
    shop = json['shop'];
    shopsNumber = json['shopsNumber'];
    dinning = json['dinning'];
    rent = json['rent'];
    rentValue = json['rentValue'];
    diningRoom = json['diningRoom'];
    if (json['facilites'] != null) {
      facilites = <Facilites>[];
      json['facilites'].forEach((v) {
        facilites!.add(Facilites.fromJson(v));
      });
    }
    photos = json['photos'].cast<String>();
    layouts = json['layouts'].cast<String>();
    decoration = json['decoration'];
    document = json['document'];
    viewsCount = json['viewsCount'];
    agreementStatus = json['agreementStatus'];
    agreementStatusId = json['agreementStatusId'];
    furnished = json['furnished'];
    elevator = json['elevator'];
    parking = json['parking'];
    propertyFor = json['propertyFor'];
    chaletRentType = json['chaletRentType'];
    chaletRentTypeString = json['chaletRentTypeString'];
    numOfMonths = json['numOfMonths'];
    chaletRentValue = json['chaletRentValue'];
    minTimeToBookForChaletId = json['minTimeToBookForChaletId'];
    minTimeToBookName = json['minTimeToBookName'];
    showChalet = json['showChalet'];
    officies = json['officies'];

    downPayment = json['downPayment'];
    monthlyInstallment = json['monthlyInstallment'];
    yearlyInstallment = json['yearlyInstallment'];
    numOfYears = json['numOfYears'];
    deliveryDate = json['deliveryDate'];
    isEdited = json['isEdited'];
    isCompany = json['isCompany'];
    companyLogo = json['companyLogo'];
    companyAbout = json['companyAbout'];
    companyFacebook = json['companyFacebook'];
    companyInstagram = json['companyInstagram'];
    companySnapchat = json['companySnapchat'];
    companyTiktok = json['companyTiktok'];
    companyWebsite = json['companyWebsite'];
    companyName = json['companyName'];
    companyLatitude = json['companyLatitude'];
    companyLongitude = json['companyLongitude'];
    projectName = json['projectName'];
    isFavourite = json['isFavourite'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['type'] = type;
    data['cityId'] = cityId;
    data['governorateId'] = governorateId;
    data['governorateName'] = governorateName;
    data['compound'] = compound;
    data['street'] = street;
    data['buildingNumber'] = buildingNumber;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['floorsNumber'] = floorsNumber;
    data['area'] = area;
    data['buildingArea'] = buildingArea;
    data['chaletType'] = chaletType;
    data['buildingStatus'] = buildingStatus;
    data['landingStatus'] = landingStatus;
    data['usingFor'] = usingFor;
    data['usingForString'] = usingForString;
    data['streetWidth'] = streetWidth;
    data['width'] = width;
    data['length'] = length;
    data['buildingDate'] = buildingDate;
    data['rooms'] = rooms;
    data['reception'] = reception;
    data['balcony'] = balcony;
    data['kitchen'] = kitchen;
    data['toilet'] = toilet;
    data['numUnits'] = numUnits;
    data['numPartitions'] = numPartitions;
    data['officesNum'] = officesNum;
    data['officesFloors'] = officesFloors;
    data['durationId'] = durationId;
    data['seekerId'] = seekerId;
    data['ownerId'] = ownerId;
    data['companyId'] = companyId;
    data['brokerPersonId'] = brokerPersonId;
    data['isPublish'] = isPublish;
    data['isApprove'] = isApprove;
    data['description'] = description;
    data['featuredAd'] = featuredAd;
    data['price'] = price;
    data['paymentFacility'] = paymentFacility;
    data['advertiseMakerName'] = advertiseMakerName;
    data['advertiseMaker'] = advertiseMaker;
    data['mobileNumber'] = mobileNumber;
    data['isWhatsApped'] = isWhatsApped;
    data['whatsApped'] = whatsApped;
    data['secondMobileNumber'] = secondMobileNumber;
    data['contactRegisterInTheAccount'] = contactRegisterInTheAccount;
    data['parkingSpace'] = parkingSpace;
    data['garden'] = garden;
    data['gardenArea'] = gardenArea;
    data['pool'] = pool;
    data['shop'] = shop;
    data['shopsNumber'] = shopsNumber;
    data['dinning'] = dinning;
    data['rent'] = rent;
    data['rentValue'] = rentValue;
    data['diningRoom'] = diningRoom;
    if (facilites != null) {
      data['facilites'] = facilites!.map((v) => v.toJson()).toList();
    }
    data['photos'] = photos;
    data['layouts'] = layouts;
    data['decoration'] = decoration;
    data['document'] = document;
    data['viewsCount'] = viewsCount;
    data['agreementStatus'] = agreementStatus;
    data['agreementStatusId'] = agreementStatusId;
    data['furnished'] = furnished;
    data['elevator'] = elevator;
    data['parking'] = parking;
    data['propertyFor'] = propertyFor;
    data['chaletRentType'] = chaletRentType;
    data['chaletRentTypeString'] = chaletRentTypeString;
    data['numOfMonths'] = numOfMonths;
    data['chaletRentValue'] = chaletRentValue;
    data['minTimeToBookForChaletId'] = minTimeToBookForChaletId;
    data['minTimeToBookName'] = minTimeToBookName;
    data['showChalet'] = showChalet;
    data['officies'] = officies;

    data['downPayment'] = downPayment;
    data['monthlyInstallment'] = monthlyInstallment;
    data['yearlyInstallment'] = yearlyInstallment;
    data['numOfYears'] = numOfYears;
    data['deliveryDate'] = deliveryDate;
    data['isEdited'] = isEdited;
    data['isCompany'] = isCompany;
    data['companyLogo'] = companyLogo;
    data['companyAbout'] = companyAbout;
    data['companyFacebook'] = companyFacebook;
    data['companyInstagram'] = companyInstagram;
    data['companySnapchat'] = companySnapchat;
    data['companyTiktok'] = companyTiktok;
    data['companyWebsite'] = companyWebsite;
    data['companyName'] = companyName;
    data['companyLatitude'] = companyLatitude;
    data['companyLongitude'] = companyLongitude;
    data['projectName'] = projectName;
    data['isFavourite'] = isFavourite;
    data['id'] = id;
    return data;
  }
}

class Facilites {
  String? name;
  String? description;
  String? avatar;
  String? isChecked;

  Facilites({this.name, this.description, this.avatar, this.isChecked});

  Facilites.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    avatar = json['avatar'];
    isChecked = json['isChecked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['avatar'] = avatar;
    data['isChecked'] = isChecked;
    return data;
  }
}
