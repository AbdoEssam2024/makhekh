class RegisterRequestModel {
  String fullName;
  String email;
  String password;
  int userType;

  RegisterRequestModel({
    required this.fullName,
    required this.email,
    required this.password,
    required this.userType,
  });

  static Map<String, dynamic> toJson(RegisterRequestModel instance) {
    return {
      'email': instance.email,
      'fullName': instance.fullName,
      'password': instance.password,
      'userType': instance.userType,
    };
  }
}
