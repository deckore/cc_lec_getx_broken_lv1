import 'package:get/get.dart';

import '../model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 2));

    var productData = [
      Product(
        id: 1,
        price: 10,
        productDescription: "ID-1 Description",
        productName: "ID-1",
      ),
      Product(
        id: 2,
        price: 20,
        productDescription: "ID-2 Description",
        productName: "ID-2",
      ),
      Product(
        id: 3,
        price: 30,
        productDescription: "ID-3 Description",
        productName: "ID-3",
      ),
      Product(
        id: 4,
        price: 40,
        productDescription: "ID-4 Description",
        productName: "ID-4",
      ),
      Product(
        id: 5,
        price: 50,
        productDescription: "ID-5 Description",
        productName: "ID-5",
      ),
    ];

    products.assignAll(productData);
  }
}