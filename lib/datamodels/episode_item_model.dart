class EpisodeItemModel {
  final int id;
  final String title;
  final double duration;
  final String imageUrl;

  EpisodeItemModel({
    required this.id,
    required this.title,
    required this.duration,
    required this.imageUrl,
  });

  EpisodeItemModel.fromJson(Map<String, dynamic> map)
    : title = map['title'],
      id = map['id'],
      duration = map['duration'],
      imageUrl = map['imageUrl'];
}
