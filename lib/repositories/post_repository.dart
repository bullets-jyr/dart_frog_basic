import 'dart:convert';

import 'package:dart_frog_basic/models/post.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  const PostRepository(this.client);

  final http.Client client;

  Future<Post> getPost(int id) async {
    try {
      final response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
      );

      if (response.statusCode != 200) {
        throw Exception('Fail to fetch post');
      }

      final jsonPost = jsonDecode(response.body) as Map<String, dynamic>;

      final post = Post.fromJson(jsonPost);

      return post;
    } catch (e) {
      rethrow;
    }
  }
}
