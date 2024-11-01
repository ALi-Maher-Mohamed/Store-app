import 'package:store_app/helper/api.dart';
import 'package:store_app/models/all_product_model.dart';
import 'package:store_app/models/product_model.dart';

class AllProuductServices {
  Future<List<ProductModel2>> getAllProduct() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProductModel2> prodctList = [];
    for (int i = 0; i < data.length; i++) {
      prodctList.add(
        ProductModel2.fromJson(data[i]),
      );
    }

    return prodctList;
  }
}
