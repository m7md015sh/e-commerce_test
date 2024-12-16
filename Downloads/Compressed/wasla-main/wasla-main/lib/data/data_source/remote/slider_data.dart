import 'package:wasla/core/constant/app_constants.dart';
import 'package:wasla/data/model/SlidersModel.dart';
import 'package:http/http.dart'as http;
class GetMySlidersService {
  static Future<SlidersModel> getAllSliders() async {


    var response = await http.get(

        Uri.parse('${AppConstants.SLIDER}'),headers: {

      "Accept":"application/json",
    });
    if (response.statusCode == 200) {
      var jsonData = response.body;

      return slidersModelFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}