import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class ArticlePage extends StatefulWidget {
  final String blogURL;

  ArticlePage({this.blogURL});

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.blogURL,
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Flutter"),
            Text("News", style: TextStyle(color: Colors.blue),)
          ],
        ),
      ),
      mediaPlaybackRequiresUserGesture: false,
      hidden: true,
    );
  }
}
