class ResetPasswordRequest {
  String? code;
  String? email;
  String? newPassword;

  ResetPasswordRequest({this.code, this.email, this.newPassword});

  ResetPasswordRequest.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    email = json['email'];
    newPassword = json['newPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['email'] = email;
    data['newPassword'] = newPassword;
    return data;
  }
}
