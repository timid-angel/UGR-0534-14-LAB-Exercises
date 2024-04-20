class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

// void main() async {
//   const String url = "https://jsonplaceholder.typicode.com/posts";
//   Response response = await get(Uri.parse(url));
//   List<dynamic> jsonData = await jsonDecode(response.body);

//   List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();
// }
