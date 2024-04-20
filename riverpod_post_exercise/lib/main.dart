import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_post_exercise/post_model.dart';

void main() async {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeWidget(title: "Riverpod Posts"),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 148, 14, 14),
          ),
        ),
      ),
    ),
  );
}

Future<List<Post>> getPosts() async {
  const String url = "https://jsonplaceholder.typicode.com/posts";
  Response response = await get(Uri.parse(url));
  List<dynamic> jsonData = await jsonDecode(response.body);
  List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();

  return posts;
}

final postProvider = StateProvider<List<Post>>((ref) => []);

class HomeWidget extends StatelessWidget {
  final String title;
  const HomeWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            backgroundColor: Theme.of(context).colorScheme.primary,
            pinned: false,
            title: Text(title, style: const TextStyle(color: Colors.white)),
          ),
          const PostListWidget(),
        ],
      ),
    );
  }
}

class PostListWidget extends ConsumerWidget {
  const PostListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postProvider);
    if (posts.isEmpty) {
      getPosts().then(
        (val) {
          ref.read(postProvider.notifier).state = val;
        },
      );
      return SliverToBoxAdapter(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Center(
            child: Text(
              "Loading...",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
            ),
          ),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: posts.length,
        (context, index) => PostWidget(post: posts[index]),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final Post post;
  const PostWidget({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[50],
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              blurStyle: BlurStyle.normal,
              offset: Offset(2, 2),
              spreadRadius: 1)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            padding: const EdgeInsets.fromLTRB(20, 5, 30, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.message_rounded,
                        color: Colors.white, size: 14),
                    const SizedBox(width: 10),
                    Text(
                      "Post ID: ${post.id}",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "User ID: ${post.userId}",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Divider(height: 4),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
                    child: Text(post.body))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
