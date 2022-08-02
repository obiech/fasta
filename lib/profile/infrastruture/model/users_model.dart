import 'package:fasta/profile/domain/entity/user.dart';

class UserModel extends User {
  UserModel(
      {required String fullName,
      required String email,
      required String state,
      required String city,
      required String phoneNumber,
      required int fastaUserId,
      String? avatarUrl,
      String? gender,
      String? dateOfBirth,
      bool? suspended,
      bool? addressKycVerified,
      bool? emailVerified,
      bool? kycVerified,
      bool? phoneNumberVerified,
      required int id})
      : super(
            fullName: fullName,
            email: email,
            state: state,
            city: city,
            avatarUrl: avatarUrl,
            userId: fastaUserId,
            phoneNumber: phoneNumber,
            emailVerified:emailVerified?? false,
            id: id);

  @Deprecated('Use fromMap instead.')
  factory UserModel.fromJson(Map<String, dynamic> json) {
    json = json['data'];
    return UserModel( 
      fullName:
          json['profile']['firstName'] + ' ' + json['profile']['lastName'],
      email: json['email'],
      state: json['profile']['state']??'',
      city: json['profile']['city']??"",
      fastaUserId: json['profile']['userId'],
      phoneNumber: json['phoneNumber'],
      id: json['profile']['id'],
      emailVerified: json['emailVerified'],
      phoneNumberVerified: json['phoneNumberVerified'],
      suspended: json['suspended'],
      kycVerified: json['kycVerified'],
      addressKycVerified: json['addressKycVerified'],
      gender: json['profile']['gender']??'',
      dateOfBirth: json['profile']['dateOfBirth']??"",
      avatarUrl: json['profile']['avatarUrl']??"",
    );
  }

  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      fullName:
          json['profile']['firstName'] + ' ' + json['profile']['lastName'],
      email: json['email'],
      state: json['profile']['state']??"",
      city: json['profile']['city']??"",
      fastaUserId: json['profile']['userId'],
      phoneNumber: json['phoneNumber'],
      id: json['profile']['id'],
      emailVerified: json['emailVerified'],
      phoneNumberVerified: json['phoneNumberVerified'],
      suspended: json['suspended'],
      kycVerified: json['kycVerified'],
      addressKycVerified: json['addressKycVerified'],
      gender: json['profile']['gender']??"",
      dateOfBirth: json['profile']['dateOfBirth']??"",
      avatarUrl: json['profile']['avatarUrl']??"",
    );
  }
}
