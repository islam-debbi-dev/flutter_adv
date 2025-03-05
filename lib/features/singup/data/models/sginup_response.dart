import 'package:json_annotation/json_annotation.dart';
part 'sginup_response.g.dart';

@JsonSerializable()
class SginupResponse {
  String? message;
  @JsonKey(name: "data")
  UserData? userData;
  bool? status;
  int? code;
  SginupResponse({this.message, this.userData, this.status, this.code});
  factory SginupResponse.fromJson(Map<String, dynamic> json) =>
      _$SginupResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: "username")
  String? userName;
  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
