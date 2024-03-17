import 'package:api_demo/cubit/posts_cubit.dart';
import 'package:api_demo/cubit/posts_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PostsCubit()..getAllPosts(),
        child: BlocConsumer<PostsCubit, PostsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            var cubit = PostsCubit.get(context);
            return Scaffold(
              // body: Center(child: Image.network('https://cdn.dummyjson.com/product-images/9/thumbnail.jpg'))
              body: ListView.builder(
                  itemCount: cubit.posts.length,
                  itemBuilder: (context, index) => Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cubit.posts[index].title),
                            Text(cubit.posts[index].title),
                          ],
                        ),
                      )),
            );
          },
        ),
      ),
    );
  }
}
