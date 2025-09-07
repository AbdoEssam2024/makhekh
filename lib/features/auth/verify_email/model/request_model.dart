class VerifyEmailRequestModel {
  String code;
  String email;

  VerifyEmailRequestModel({required this.code, required this.email});

  static Map<String, dynamic> toJson(VerifyEmailRequestModel instance) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = instance.code;
    data['email'] = instance.email;
    return data;
  }
}
