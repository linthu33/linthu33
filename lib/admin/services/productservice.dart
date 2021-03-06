import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mystore/admin/models/ProductsModel.dart';

abstract class ProductServiceApi {
  Future<List<ProductsModel>> getProduct();
  Future<int> createProduct(ProductsModel product);
}

class ProductService extends ProductServiceApi {
  @override
  Future<List<ProductsModel>> getProduct() async {
    try {
      var uri = Uri.parse("http://localhost:3000/findAllprod");
      var response =
          await http.get(uri, headers: {"ContentType": "application/json"});

      var resultsObjsJson = jsonDecode(response.body)['product'] as List;
      //print(resultsObjsJson);
      List<ProductsModel> plist = resultsObjsJson
          .map((resultJson) => ProductsModel.fromJson(resultJson))
          .toList();

      //print(plist[0]);
      return plist;
    } catch (err) {
      return List<ProductsModel>.empty();
    }
  }

  @override
  Future<int> createProduct(ProductsModel product) async {
    try {
      var uri = Uri.parse("http://192.168.25.29:3000/createprod");
      //Map data = {'title': product.title, 'color': product.color};
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(product),
      );
      print('serer response code \t' + response.statusCode.toString());
      return response.statusCode;
    } catch (err) {
      return 0;
    }
  }
}
