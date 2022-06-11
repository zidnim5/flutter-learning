import 'package:get/get.dart';
import 'package:learning/data/data.dart';
import 'package:learning/model/product.dart';
import 'dart:developer';

class ProductController extends GetxController {
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] == 1;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    for (var item in Data.products) {
      log(item.name);
      // _products.add(item);
    }
    super.onInit();
  }
}
