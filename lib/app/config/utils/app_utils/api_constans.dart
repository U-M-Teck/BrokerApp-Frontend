class ApiConstans {
  static const String baseUrl = 'http://62.146.178.31:9100';
  static const String loginUser = '/api/TokenAuth/AuthenticateInMobile';
  static const String checkOtp = '/api/TokenAuth/CheckPhoneNumberOtp';
  static const String verifyOtp = '/api/TokenAuth/CheckPhoneNumberOtp';
  static const String changePassword = '/api/services/app/User/ResetPasswordForForget';
  static const String forgetPassword = '/api/services/app/User/ForgetPassword';
  static const String createOwner = '/api/Owner/CreateOwner';
  static const String createSeeker = '/api/Seeker/CreateSeeker';
  static const String createBroker = '/api/BrokerPerson/CreateBrokerPerson';
}