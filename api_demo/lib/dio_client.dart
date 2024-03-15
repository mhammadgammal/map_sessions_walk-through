import 'package:api_demo/post_model.dart';
import 'package:dio/dio.dart';

class DioClient {
  static final _dio = Dio()..options.baseUrl = 'https://jsonplaceholder.typicode.com/';

  static Future<List<PostModel>> getPosts() async {
    var response = await _dio.get('posts');
    var postsListResponse = response.data;
    List<PostModel> posts = [];
    for (var post in postsListResponse) {
      posts.add(PostModel.fromJson(post));
    }
    return posts;
  }
}
