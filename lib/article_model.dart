class NewsModel {
  final String title;
  final String? description;
  final String? urlToImage;
  final String? url;

  NewsModel({
    required this.title,
    this.description,
    this.urlToImage,
    this.url,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'] as String,
      description: json['description'] as String?,
      urlToImage: json['urlToImage'] as String?,
      url: json['url'] as String?,
    );
  }
}
