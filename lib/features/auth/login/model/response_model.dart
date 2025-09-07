class LoginResponse {
	bool? success;
	Data? data;
	String? message;
	int? statusCode;
	Errors? errors;

	LoginResponse({success, data, message, statusCode, errors});

	LoginResponse.fromJson(Map<String, dynamic> json) {
		success = json['success'];
		data = json['data'] != null ? Data.fromJson(json['data']) : null;
		message = json['message'];
		statusCode = json['statusCode'];
		errors = json['errors'] != null ? Errors.fromJson(json['errors']) : null;
	}
}

class Data {
	String? userId;
	String? fullName;
	int? userType;
	String? token;
	String? expiration;

	Data({this.userId, this.fullName, this.userType, this.token, this.expiration});

	Data.fromJson(Map<String, dynamic> json) {
		userId = json['userId'];
		fullName = json['fullName'];
		userType = json['userType'];
		token = json['token'];
		expiration = json['expiration'];
	}
}

class Errors {
	Errors();
	Errors.fromJson(Map<String, dynamic> json);
}
