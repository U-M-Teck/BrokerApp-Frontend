class GetAdvDetailsForEditModel {
  String? title;
  int? type;
  dynamic cityId;
  int? governorateId;
  String? compound;
  String? street;
  String? buildingNumber;
  double? latitude;
  double? longitude;
  int? floorsNumber;
  String? area;
  dynamic buildingArea;
  dynamic chaletType;
  int? agreementStatus;
  int? buildingStatus;
  int? landingStatus;
  dynamic usingFor;
  dynamic streetWidth;
  dynamic width;
  dynamic length;
  dynamic buildingDate;
  int? rooms;
  int? reception;
  int? balcony;
  int? kitchen;
  int? toilet;
  int? numUnits;
  int? numPartitions;
  dynamic officesNum;
  dynamic officesFloors;
  dynamic durationId;
  int? seekerId;
  dynamic ownerId;
  dynamic companyId;
  dynamic brokerPersonId;
  bool? isPublish;
  dynamic isApprove;
  String? description;
  bool? featuredAd;
  dynamic price;
  int? paymentFacility;
  dynamic mrMrs;
  String? advertiseMakerName;
  dynamic advertiseMaker;
  String? mobileNumber;
  bool? isWhatsApped;
  String? secondMobileNumber;
  bool? contactRegisterInTheAccount;
  bool? furnished;
  bool? elevator;
  bool? parking;
  dynamic parkingSpace;
  bool? garden;
  dynamic gardenArea;
  bool? pool;
  dynamic shop;
  dynamic shopsNumber;
  int? decoration;
  int? document;
  int? chaletRentType;
  dynamic chaletRentValue;
  int? numOfMonths;
  int? minTimeToBookForChaletId;
  String? minTimeToBookName;
  bool? showChalet;
  int? dinning;
  int? rent;
  dynamic diningRoom;
  dynamic officies;
  List<dynamic>? layoutsList;
  List<String>? photosList;
  dynamic advertisementFacilitesList;
  List<dynamic>? advertisementBookings;
  List<FacilitesApi>? facilitesApi;
  dynamic downPayment;
  dynamic monthlyInstallment;
  dynamic yearlyInstallment;
  dynamic numOfYears;
  dynamic deliveryDate;
  dynamic airConditioner;
  bool? isEdited;
  dynamic projectId;
  int? id;

  GetAdvDetailsForEditModel(
      {this.title,
      this.type,
      this.cityId,
      this.governorateId,
      this.compound,
      this.street,
      this.buildingNumber,
      this.latitude,
      this.longitude,
      this.floorsNumber,
      this.area,
      this.buildingArea,
      this.chaletType,
      this.agreementStatus,
      this.buildingStatus,
      this.landingStatus,
      this.usingFor,
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
      this.mrMrs,
      this.advertiseMakerName,
      this.advertiseMaker,
      this.mobileNumber,
      this.isWhatsApped,
      this.secondMobileNumber,
      this.contactRegisterInTheAccount,
      this.furnished,
      this.elevator,
      this.parking,
      this.parkingSpace,
      this.garden,
      this.gardenArea,
      this.pool,
      this.shop,
      this.shopsNumber,
      this.decoration,
      this.document,
      this.chaletRentType,
      this.chaletRentValue,
      this.numOfMonths,
      this.minTimeToBookForChaletId,
      this.minTimeToBookName,
      this.showChalet,
      this.dinning,
      this.rent,
      this.diningRoom,
      this.officies,
      this.layoutsList,
      this.photosList,
      this.advertisementFacilitesList,
      this.advertisementBookings,
      this.facilitesApi,
      this.downPayment,
      this.monthlyInstallment,
      this.yearlyInstallment,
      this.numOfYears,
      this.deliveryDate,
      this.airConditioner,
      this.isEdited,
      this.projectId,
      this.id});

  GetAdvDetailsForEditModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    cityId = json['cityId'];
    governorateId = json['governorateId'];
    compound = json['compound'];
    street = json['street'];
    buildingNumber = json['buildingNumber'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    floorsNumber = json['floorsNumber'];
    area = json['area'];
    buildingArea = json['buildingArea'];
    chaletType = json['chaletType'];
    agreementStatus = json['agreementStatus'];
    buildingStatus = json['buildingStatus'];
    landingStatus = json['landingStatus'];
    usingFor = json['usingFor'];
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
    mrMrs = json['mrMrs'];
    advertiseMakerName = json['advertiseMakerName'];
    advertiseMaker = json['advertiseMaker'];
    mobileNumber = json['mobileNumber'];
    isWhatsApped = json['isWhatsApped'];
    secondMobileNumber = json['secondMobileNumber'];
    contactRegisterInTheAccount = json['contactRegisterInTheAccount'];
    furnished = json['furnished'];
    elevator = json['elevator'];
    parking = json['parking'];
    parkingSpace = json['parkingSpace'];
    garden = json['garden'];
    gardenArea = json['gardenArea'];
    pool = json['pool'];
    shop = json['shop'];
    shopsNumber = json['shopsNumber'];
    decoration = json['decoration'];
    document = json['document'];
    chaletRentType = json['chaletRentType'];
    chaletRentValue = json['chaletRentValue'];
    numOfMonths = json['numOfMonths'];
    minTimeToBookForChaletId = json['minTimeToBookForChaletId'];
    minTimeToBookName = json['minTimeToBookName'];
    showChalet = json['showChalet'];
    dinning = json['dinning'];
    rent = json['rent'];
    diningRoom = json['diningRoom'];
    officies = json['officies'];

    photosList = json['photosList'].cast<String>();
    advertisementFacilitesList = json['advertisementFacilitesList'];
    if (json['facilitesApi'] != null) {
      facilitesApi = <FacilitesApi>[];
      json['facilitesApi'].forEach((v) {
        facilitesApi!.add(FacilitesApi.fromJson(v));
      });
    }
    downPayment = json['downPayment'];
    monthlyInstallment = json['monthlyInstallment'];
    yearlyInstallment = json['yearlyInstallment'];
    numOfYears = json['numOfYears'];
    deliveryDate = json['deliveryDate'];
    airConditioner = json['airConditioner'];
    isEdited = json['isEdited'];
    projectId = json['projectId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['type'] = type;
    data['cityId'] = cityId;
    data['governorateId'] = governorateId;
    data['compound'] = compound;
    data['street'] = street;
    data['buildingNumber'] = buildingNumber;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['floorsNumber'] = floorsNumber;
    data['area'] = area;
    data['buildingArea'] = buildingArea;
    data['chaletType'] = chaletType;
    data['agreementStatus'] = agreementStatus;
    data['buildingStatus'] = buildingStatus;
    data['landingStatus'] = landingStatus;
    data['usingFor'] = usingFor;
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
    data['mrMrs'] = mrMrs;
    data['advertiseMakerName'] = advertiseMakerName;
    data['advertiseMaker'] = advertiseMaker;
    data['mobileNumber'] = mobileNumber;
    data['isWhatsApped'] = isWhatsApped;
    data['secondMobileNumber'] = secondMobileNumber;
    data['contactRegisterInTheAccount'] = contactRegisterInTheAccount;
    data['furnished'] = furnished;
    data['elevator'] = elevator;
    data['parking'] = parking;
    data['parkingSpace'] = parkingSpace;
    data['garden'] = garden;
    data['gardenArea'] = gardenArea;
    data['pool'] = pool;
    data['shop'] = shop;
    data['shopsNumber'] = shopsNumber;
    data['decoration'] = decoration;
    data['document'] = document;
    data['chaletRentType'] = chaletRentType;
    data['chaletRentValue'] = chaletRentValue;
    data['numOfMonths'] = numOfMonths;
    data['minTimeToBookForChaletId'] = minTimeToBookForChaletId;
    data['minTimeToBookName'] = minTimeToBookName;
    data['showChalet'] = showChalet;
    data['dinning'] = dinning;
    data['rent'] = rent;
    data['diningRoom'] = diningRoom;
    data['officies'] = officies;
    if (layoutsList != null) {
      data['layoutsList'] = layoutsList!.map((v) => v.toJson()).toList();
    }
    data['photosList'] = photosList;
    data['advertisementFacilitesList'] = advertisementFacilitesList;
    if (advertisementBookings != null) {
      data['advertisementBookings'] =
          advertisementBookings!.map((v) => v.toJson()).toList();
    }
    if (facilitesApi != null) {
      data['facilitesApi'] = facilitesApi!.map((v) => v.toJson()).toList();
    }
    data['downPayment'] = downPayment;
    data['monthlyInstallment'] = monthlyInstallment;
    data['yearlyInstallment'] = yearlyInstallment;
    data['numOfYears'] = numOfYears;
    data['deliveryDate'] = deliveryDate;
    data['airConditioner'] = airConditioner;
    data['isEdited'] = isEdited;
    data['projectId'] = projectId;
    data['id'] = id;
    return data;
  }
}

class FacilitesApi {
  int? id;
  String? name;
  dynamic description;
  String? avatar;
  bool? isSelected;

  FacilitesApi(
      {this.id, this.name, this.description, this.avatar, this.isSelected});

  FacilitesApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    avatar = json['avatar'];
    isSelected = json['isSelected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['avatar'] = avatar;
    data['isSelected'] = isSelected;
    return data;
  }
}
