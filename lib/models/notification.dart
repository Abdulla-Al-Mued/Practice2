class Noti {
  final String content;
  final List<String>? bold;
  final String image;
  final String time;
  final String type;
  final bool? seen;
  Noti(
      {required this.content,
        this.bold,
        required this.image,
        required this.time,
        required this.type,
        this.seen});
}