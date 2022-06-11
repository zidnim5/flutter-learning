import 'package:learning/model/menu.dart';
import 'package:learning/model/product.dart';

class Data {
  static List<Menu> listMenu = [
    Menu("Page 1", "page_one"),
    Menu("Page 2", "page_two"),
    Menu("Page 3", "page_three"),
    Menu("page 4", "page_four"),
    Menu("page 5", "page_five"),
    Menu("page 6", "page_six")
  ];

  static List<Product> products = <Product>[
    Product(name: "Apel", quantity: 10.0),
    Product(name: "Timun", quantity: 10.0),
    Product(name: "Pir", quantity: 10.0),
    Product(name: "Strawbery", quantity: 10.0),
  ];
}
