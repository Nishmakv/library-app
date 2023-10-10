import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel extends Equatable{
 @JsonKey(name: "id")
 final int? id;
 @JsonKey(name: "name")
 final String? name;
 @JsonKey(name: "image")
 final String? image;
 
 

 const ProfileModel({this.id,this.name,this.image});
 
 @override
 List<Object> get props => [];
 
 factory ProfileModel.fromJson(Map<String, dynamic> json) =>
 _$ProfileModelFromJson(json);
 
 Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}