import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  final String indStr;

  Detail(this.indStr);

  @override
  State<StatefulWidget> createState() => _DetailState();

}


class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("detail"),
      ),
      
      body: Text("detail${widget.indStr}"),
    );
  }

}