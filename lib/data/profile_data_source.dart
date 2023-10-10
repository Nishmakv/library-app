import 'package:dio/dio.dart';
import 'package:figma_app/model/profile_model.dart';
import 'package:figma_app/utils/url.dart';

class ProfileDataSource {
  Dio client = Dio();   
  Future<List<ProfileModel>> profileLogin() async {
    List<ProfileModel> profileListData = [];
    final response = await client.get(
      FigmaUrl1.profileUrl,
    );
    (response.data['data'] as List).forEach((element) {
      profileListData.add(ProfileModel.fromJson(element));
    });
    return profileListData;
   
  }

}
