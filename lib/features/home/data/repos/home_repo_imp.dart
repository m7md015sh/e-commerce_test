
import 'package:test1/core/api_service.dart';
import 'package:test1/features/home/data/models/home_models.dart';

class HomeLogic {
  final ApiService apiService;
  HomeLogic(this.apiService);
  @override
  Future<HomeModel> fetchProduct() async{
      Map<String,dynamic>data=await apiService.get(endPoint: 'home');
      var products=HomeModel.fromMap(data);
      return products;
     }
  }

