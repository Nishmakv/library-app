import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'profile_get_model.g.dart';


@JsonSerializable()
class ProfileGetModel extends Equatable{
 @JsonKey(name: "id")
 final int? id;
 @JsonKey(name: "f_name")
 final String? fname;
 @JsonKey(name: "l_name")
 final String? lname;
 @JsonKey(name: "contact")
 final String? contact;
 @JsonKey(name: "email")
 final String? email;
 @JsonKey(name: "image")
 final String? image;


 
 

 const ProfileGetModel({this.id,this.fname,this.lname,this.contact,this.email,this.image});
 
 @override
 List<Object> get props => [];
 
 factory ProfileGetModel.fromJson(Map<String, dynamic> json) =>
 _$ProfileGetModelFromJson(json);
 
 Map<String, dynamic> toJson() => _$ProfileGetModelToJson(this);
}