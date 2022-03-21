class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    required this.authorName,
    required this.authorImageUrl,
    required this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'images/8.png',
    text: 'Loving this photo!!',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'images/4.jpg',
    text: 'One of the best photos of you...',
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'images/6.jpg',
    text: 'Can\'t wait for you to post more!',
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'images/7.jpg',
    text: 'Nice job',
  ),
  Comment(
    authorName: 'Sam Martin',
    authorImageUrl: 'images/post1.jpg',
    text: 'Thanks everyone :)',
  ),
];