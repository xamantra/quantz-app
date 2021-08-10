import 'package:flutter/material.dart';

import '../index.dart';
import '../tabview.dart';
import 'index.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with SingleTickerProviderStateMixin {
  double statusBar = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    statusBar = MediaQuery.of(context).padding.top;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: statusBar,
            width: double.infinity,
            color: secondaryBackground,
          ),
          SafeArea(
            child: Container(
              color: background,
              child: TabviewWidget(
                views: [
                  LibraryPage(),
                  NewsPage(),
                  MorePage(),
                ],
                tabs: [
                  Tab(
                    icon: Icon(Icons.collections_bookmark),
                    iconMargin: EdgeInsets.zero,
                    text: 'Library',
                  ),
                  Tab(
                    icon: Icon(Icons.new_releases),
                    iconMargin: EdgeInsets.zero,
                    text: 'News',
                  ),
                  Tab(
                    icon: Icon(Icons.more_horiz),
                    iconMargin: EdgeInsets.zero,
                    text: 'More',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
