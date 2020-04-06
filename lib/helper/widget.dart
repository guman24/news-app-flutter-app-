import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/article_view.dart';
import 'package:newsapp/views/category_news.dart';

class CategoryTile extends StatelessWidget {
  final String imageURL;
  final String categoryName;

  CategoryTile({this.imageURL, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>CategoryNewsView(
            category: categoryName ,
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: CachedNetworkImage(
                imageUrl: imageURL,
                height: 70.0,
                width: 110.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                alignment: Alignment.center,
                height: 70.0,
                width: 110.0,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Text(
                  categoryName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ),
    );
  }
}

class NewsTile extends StatelessWidget {
  final String imageURL, title, desc,url;

  NewsTile(
      {@required this.imageURL, @required this.title, @required this.desc,@required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ArticlePage(
            blogURL: url,
          ),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(imageURL)),
            SizedBox(
              height: 8.0,
            ),
            Text(
              title,
              style: TextStyle(color:Colors.black87,fontSize: 20.0,),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(desc,style: TextStyle(color: Colors.black54),),
          ],
        ),
      ),
    );
  }
}