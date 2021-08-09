import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:banai_tabbar/banai_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  with AutomaticKeepAliveClientMixin,SingleTickerProviderStateMixin{
  @override
  bool get wantKeepAlive => true;
  late TabController _tabConroller;
  List tablist = [
    '推荐',
    '娱乐',
    '体育',
    '军事',
    '国际',
    '科技',
    '汽车',
    '我关注的',
  ];

  @override
  void initState() {
    super.initState();
    _tabConroller = TabController(vsync: this,length: tablist.length,initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin Banai_Appbar Example'),
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: MediaQueryData.fromWindow(window).size.width,
              child: BanaiTabbar(
                controller: _tabConroller,
                isScrollable: true,
                indicator: const BoxDecoration(),
                unselectedLabelColor:Colors.black38,
                labelColor:Colors.pinkAccent,
                unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                ),
                labelFontSize: 30,
                onChange: (int currentIndex){
                  print(currentIndex);
                },
                onAnimatedChange: (double animatedValue,double diff){
                  print("animatedValue:$animatedValue   diff:$diff");
                },
                tabs: [
                  for (var i = 0; i < tablist.length; i++) 
                    Text(tablist[i])
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabConroller,
                children: [
                  for (var i = 0; i < tablist.length; i++) 
                    Text(tablist[i])
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
