import 'package:flutter/material.dart';
import 'package:news_app/article_detail_page.dart';
import 'package:news_app/article_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Article> articles = [
    Article(
      title: 'Sample Article 1',
      description: 'This is a description for article 1.',
      urlToImage: 'https://example.com/image1.jpg',
      url: 'https://example.com/article1',
    ),
    Article(
      title: 'Sample Article 2',
      description: 'This is a description for article 2.',
      urlToImage: 'https://example.com/image2.jpg',
      url: 'https://example.com/article2',
    ),
    Article(
      title: 'Sample Article 3',
      description: 'This is a description for article 3.',
      urlToImage: 'https://example.com/image3.jpg',
      url: 'https://example.com/article3',
    ),
    Article(
      title: 'Sample Article 4',
      description: 'This is a description for article 4.',
      urlToImage: 'https://example.com/image4.jpg',
      url: 'https://example.com/article4',
    ),
    Article(
      title: 'Sample Article 5',
      description: 'This is a description for article 5.',
      urlToImage: 'https://example.com/image5.jpg',
      url: 'https://example.com/article5',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticleDetailPage(article: article),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (article.urlToImage != null)
                      Image.network(article.urlToImage!),
                    const SizedBox(height: 8.0),
                    Text(
                      article.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    if (article.description != null)
                      Text(article.description!),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}