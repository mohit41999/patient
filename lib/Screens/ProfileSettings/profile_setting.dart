import 'package:flutter/material.dart';
import 'package:patient/Screens/ProfileSettings/personal_tab.dart';

import 'lifestyle_tab.dart';
import 'medical_tab.dart';

class ProfileSetting extends StatefulWidget {
  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('back button'),
                  SizedBox(width: 60),
                  Text(
                    'Profile Setting',
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              color: Colors.white,
              child: TabBar(
                labelPadding: EdgeInsets.only(right: 4, left: 0),
                labelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0),
                    insets: EdgeInsets.all(-1)),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Personal',
                  ),
                  Tab(
                    text: 'Medical',
                  ),
                  Tab(
                    text: 'Lifestyle',
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 0,
              color: Colors.grey.withOpacity(0.5),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  Personal(),
                  Medical(),
                  Lifestyle()
                  // second tab bar view widget
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
