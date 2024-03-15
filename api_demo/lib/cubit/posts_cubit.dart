import 'package:api_demo/cubit/posts_states.dart';
import 'package:api_demo/dio_client.dart';
import 'package:api_demo/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit() : super(PostsInitial());

  static PostsCubit get(BuildContext context) => BlocProvider.of(context);
  List<PostModel> posts = [];

  void getAllPosts() async {
    posts = await DioClient.getPosts();
    emit(PostsLoadedSuccessfullyState());
  }

}
