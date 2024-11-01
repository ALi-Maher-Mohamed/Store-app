import 'package:store_app/helper/api.dart';
import 'package:store_app/models/all_product_model.dart';

class CategoriesServices {
  Future<List<dynamic>> getCategoryServices(
      {required String cateegoryName}) async {
    List<dynamic> data = await Api().get(
        url: 'https://fakestoreapi.com/products/category/$cateegoryName',
        token: 'testtoken');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
