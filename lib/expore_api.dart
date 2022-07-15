import 'dart:convert';
import 'package:flutter_tests/explore_model.dart';
import 'package:http/http.dart' as http;



class FoodBank {
  static FoodBank? _instance;
  FoodBank._();
  static FoodBank? get instance {
    _instance ??= FoodBank._();
    return _instance;
  }

  Future<dynamic> getFoodBank() async {
    
    final response = await http.get(Uri.parse('https://storage.googleapis.com/ember-deploy.appspot.com/images/open-source.json'),
        ).catchError((e){
        print(e);
      });
     if (response.statusCode == 200) {
      final result = json.decode(response.body);
      print('checking $result');
      List<ExploreModel> addressList = (result["data"] as List).map((e) => ExploreModel.fromJson(e)).toList();
      print(addressList);
      return addressList;
    } else {
      print(response.statusCode);
      throw Exception('Failed to load post');
    }   
  }

}

