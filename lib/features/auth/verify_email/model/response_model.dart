class VerifyEmailResponseModel {
	bool? success;
	String? data;
	String? message;
	int? statusCode;
	Errors? errors;

	VerifyEmailResponseModel({this.success, this.data, this.message, this.statusCode, this.errors});

	VerifyEmailResponseModel.fromJson(Map<String, dynamic> json) {
		success = json['success'];
		data = json['data'];
		message = json['message'];
		statusCode = json['statusCode'];
		errors = json['errors'] != null ? Errors.fromJson(json['errors']) : null;
	}
}

class Errors {


	Errors();

	Errors.fromJson(Map<String, dynamic> json);
}
