class PostModel {
  int userId;
  int postId;
  String title;
  String body;

  PostModel(
      {required this.userId,
      required this.postId,
      required this.title,
      required this.body});

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
      userId: json['userId'],
      postId: json['id'],
      title: json['title'],
      body: json['body']);
}
