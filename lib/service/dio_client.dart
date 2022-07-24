import 'package:adscase/models/carts/carts.dart';
import 'package:adscase/models/products/products.dart';
import 'package:adscase/models/users/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';

class DioClient {
  final Dio dio = Dio();

  static const baseURL = "https://fakestoreapi.com"; // initial url

  // products url
  static const prodURL = baseURL + "/products"; // show all products

  // categories url
  static const catsURL = baseURL + "/products/categories"; // all list category
  static const catURL = baseURL + "/products/category"; // show by category

  // user carts
  static const carURL = baseURL + "/carts/user";

  // all users
  static const userURL = baseURL + "/users";

  // get user account
  Future<User> fetchUser({required int id}) async {
    try {
      // get a user
      final response = await dio.get("$userURL/$id");

      // print response data
      debugPrint(response.data.toString());

      // return data
      return User.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception("status code: ${e.response?.statusCode.toString()}");
    }
  }

  // show all product
  Future<Products> fetchProducts() async {
    try {
      // get all product
      final response = await dio.get(prodURL);

      // how to use data
      Products products = Products.fromJson(response.data);

      // print response data
      debugPrint(products.toString());

      // return data
      return Products.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception("status code: ${e.response?.statusCode.toString()}");
    }
  }

  // get user account
  Future<Carts> fetchCarts({required int id}) async {
    try {
      // get a user
      final response = await dio.get("$carURL/$id");

      // how to use data
      Carts carts = Carts.fromJson(response.data);

      // print response data
      debugPrint(carts.toString());

      // return data
      return Carts.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception("status code: ${e.response?.statusCode.toString()}");
    }
  }
}
