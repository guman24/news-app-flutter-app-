import 'package:flutter/material.dart';
import 'package:newsapp/helper/news.dart';
import 'package:newsapp/helper/widget.dart';
import 'package:newsapp/models/news_model.dart';

class CategoryNewsView extends StatefulWidget {
  final String category;
  CategoryNewsView({this.category});

  @override
  _CategoryNewsViewState createState() => _CategoryNewsViewState();
}

class _CategoryNewsViewState extends State<CategoryNewsView> {
  List<NewsModel> news=List<NewsModel>();
  bool _loading=true;

  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async{
    CategoryNews categoryNews=CategoryNews();
    await categoryNews.getNews(widget.category);
    print(categoryNews);
    news=categoryNews.categoryNewsList;
    setState(() {
      _loading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Flutter"),
            Text("News",style: TextStyle(color: Colors.blue),)
          ],
        ),
      ),
      body: _loading? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ):SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
              itemCount: news.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return NewsTile(
                  imageURL: news[index].urlToImage,
                  title: news[index].title,
                  desc: news[index].description,
                  url: news[index].url,
                );
              })
        ),
      ),
    );
  }
}
