import 'package:flutter/material.dart';
import './home/home.dart';
import './cart/cart.dart';
import './category/category.dart';
import './service/service.dart';
import './my/my.dart';

class Index extends StatefulWidget {
  final String title;

  Index(this.title);

  @override
  _MyIndexPageState createState() => _MyIndexPageState();
}

class _MyIndexPageState extends State<Index>
    with AutomaticKeepAliveClientMixin<Index> {
  int _selectedIndex = 0;

  PageController _controller;

  final _pageList = [Home(), Category(), Service(), Cart(), My()];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView.builder(
        // physics: NeverScrollableScrollPhysics(),
        onPageChanged: _pageChange, // 页面切换事件
        controller: _controller, // controller
        itemCount: _pageList.length, // 设置页面个数
        itemBuilder: (context, index) => _pageList[index], // 设置页面
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          getItem("首页", Icons.home),
          getItem("分类", Icons.sort),
          getItem("在线客服", Icons.local_laundry_service),
          getItem("采购单", Icons.shopping_cart),
          getItem("我的", Icons.person)
        ],
        currentIndex: _selectedIndex,
        // fixedColor: Colors.orangeAccent,
        iconSize: 24.0,
        type: BottomNavigationBarType.fixed,
        onTap: _selectTab,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _controller = new PageController(initialPage: _selectedIndex);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// tab 点击事件
  void _selectTab(ind) {
    _controller.jumpToPage(ind);
  }

  void _pageChange(int ind) {
    setState(() {
      this._selectedIndex = ind;
    });
  }

  /// 获取页面
  BottomNavigationBarItem getItem(String txt, IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(txt),
      // activeIcon: Icon(
      //   icon,
      //   color: Color(0xFFFFFF),
      // ),
     backgroundColor: Color(0x2E3034),
    );
  }
}
