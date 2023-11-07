import 'package:blog_app/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Reusable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PostController postController = Get.put(PostController());

  @override
  void initState() {
    super.initState();
    postController.fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(11, 20, 143, 1),
        title: const Text("My Blogs"),
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return const Center(
              child: CircularProgressIndicator(
                  color: Color.fromRGBO(11, 20, 143, 1)));
        } else {
          return ListView.builder(
            itemCount: postController.postList.length,
            itemBuilder: (context, index) {
              return blog(postController.postList[index].title,
                  postController.postList[index].body);
            },
          );
        }
      }),
    );
  }
}
