// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileGetModel _$ProfileGetModelFromJson(Map<String, dynamic> json) =>
    ProfileGetModel(
      id: json['id'] as int?,
      fname: json['f_name'] as String?,
      lname: json['l_name'] as String?,
      contact: json['contact'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProfileGetModelToJson(ProfileGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'f_name': instance.fname,
      'l_name': instance.lname,
      'contact': instance.contact,
      'email': instance.email,
      'image': instance.image,
    };
