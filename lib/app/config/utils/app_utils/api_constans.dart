class ApiConstans {
  static const String baseUrl = 'http://62.146.178.31:9100';
  static const String mapKey = 'AIzaSyASFpQ0BJ99BZ-b19_2tGAka4sdB8E7tkE';
  
  //Auth Endpoints
  static const String loginUser = '/api/TokenAuth/AuthenticateInMobile';
  static const String checkOtp = '/api/TokenAuth/CheckPhoneNumberOtp';
  static const String checkPhoneNumber = '/api/TokenAuth/CheckPhoneNumberOtpForUpdatePhone';
  static const String verifyOtp = '/api/TokenAuth/CheckPhoneNumberOtp';
  static const String changePassword = '/api/services/app/User/ResetPasswordForForget';
  static const String forgetPassword = '/api/services/app/User/ForgetPassword';
  static const String createOwner = '/api/Owner/CreateOwner';
  static const String createSeeker = '/api/Seeker/CreateSeeker';
  static const String createBroker = '/api/BrokerPerson/CreateBrokerPerson';

  //User Endpoints
  static const String getFavorites = '/api/Advertisement/GetAllFavoritesForUser';
  static const String createFavorite = '/api/Advertisement/CreateFavoriteApi';
  static const String deleteFavorite = '/api/Advertisement/DeleteFavorite';
  static const String deleteFavoriteByAdId = '/api/Advertisement/DeleteFavoriteByAdId';

  //Common Endpoints
  static const String getAllGovernates = '/api/Common/GetAllGovernorates';
  static const String getAllPackages = '/api/Common/GetAllPackages';
  static const String uploadImage = '/api/Upload/UploadMobile';
  static const String uploadBase64 = '/api/Upload/UploadBase64';
  static const String getPaymentUrl = '/api/TokenAuth/GetPaymentUrl';
  static const String getUserNotifications = '/api/Common/GetAllNotificationsForUserApi';
  static const String addRate = '/api/RateUs/CreateRate';
  static const String addContactUs = '/api/ContactUs/CreateContactUs';
  static const String deleteAccount = '/api/Common/DeleteAccountApi';
  static const String getAllDurations = '/api/Common/GetAllDurations';
  static const String checkCoupon = '/api/Common/GetDiscountPrecentageAndFixedAmount';
  static const String changeActiveStatus = '/api/Advertisement/ChangeActiveStatus';

  //Advertisement Endpoints
  static const String createAdvertisement = '/api/Advertisement/CreateAdvertisement';
  static const String editAdvertisement = '/api/services/app/Advertisement/Manage';
  static const String getAllAdvertisement = '/api/Advertisement/GetAllAdvertisements';
  static const String getAllAdvertisementForUser = '/api/Advertisement/GetAllAdsByUserIdApi';
  static const String getAdvDetails = '/api/Advertisement/GetAdvertiseDetails';
  static const String getAdvDetailsForEdit = '/api/Advertisement/GetAdvertiseDetailsForEdit';
  static const String deleteAdvertisement = '/api/Advertisement/DeleteAdById';
  static const String deleteAllByUserIdAdvertisement = '/api/Advertisement/ClearAllByUserId';
  static const String createViewForAdvertisement = '/api/Advertisement/CreateViewApi';
  static const String searchByFilter = '/api/Advertisement/SearchAdvertisements';

  //Get User Type
  static const String getSeekerDetails = '/api/Seeker/GetSeekerDetails';
  static const String getBrokerDetails = '/api/BrokerPerson/GetBrokerPersonDetails';
  static const String getOwnerDetails = '/api/Owner/GetOwnerDetails';
}