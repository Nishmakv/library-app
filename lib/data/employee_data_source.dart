import 'package:dio/dio.dart';
import 'package:figma_app/model/profile_get_model.dart';
import 'package:figma_app/utils/url.dart';

class EmployeeDataSource {
  Dio client = Dio();

  Future<ProfileGetModel> employeeDetails({required int? id}) async {
    ProfileGetModel? employeeData ;
    final response = await client.get(
      FigmaUrl1.profileGetUrl + id.toString(),
    );

    employeeData = ProfileGetModel.fromJson(response.data['data']);
    return employeeData;
  }
}
