class LoginRequestModel {
  final String email;
  final String password;

  LoginRequestModel({required this.email, required this.password});


  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    return LoginRequestModel(
      email: json['email'],
      password: json['password'],
    );
  }

  static Map<String, dynamic> toJson(LoginRequestModel instance) {
    return {
      'email': instance.email,
      'password': instance.password,
    };
  }
}