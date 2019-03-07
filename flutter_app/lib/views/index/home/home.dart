import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../details/detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("$index"),
          onTap: () => {
                Fluttertoast.showToast(msg: "click::: $index"),
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {

                  return new Detail("$index");
                })),
              },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;
}
