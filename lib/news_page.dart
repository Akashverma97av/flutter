import 'package:flutter/material.dart';
import 'package:news_api/news_model.dart';
import 'api_service.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsModel? _newsModel;

  @override
  void initState() {
    super.initState();
    _getNewsData();
  }

  void _getNewsData() async {
    _newsModel = (await ApiService().getTopNews())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today News'),
      ),
      body: _newsModel?.articles == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _newsModel!.articles.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          _newsModel!.articles[index].urlToImage.toString(),
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Expanded(
                        child: Text(_newsModel!.articles[index].title
                            .toString(),
                          softWrap: false,
                          maxLines: 3,overflow: TextOverflow.ellipsis,),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
