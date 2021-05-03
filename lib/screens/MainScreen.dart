import 'package:flutter/material.dart';
import '../models/drawerItemModel.dart';
import '../models/emailModel.dart';
import '../data/dummyEmailData.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    _currentIndex = 1;
    _currentScreen = drawerItemData[_currentIndex].title;
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _currentScreen;
  int _currentIndex;

  Future<void> _refreshLocalGallery() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 18, top: 13),
                    child: Text(
                      'Gmail',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.redAccent[400],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Divider(),
                  DrawerItem(
                      drawerItemModel: drawerItemData[0],
                      curInx: _currentIndex,
                      inx: 0),
                  Divider(),
                  DrawerItem(
                      drawerItemModel: drawerItemData[1],
                      curInx: _currentIndex,
                      inx: 1),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 15),
                    child: Text(
                      "ALL LABELS",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  DrawerItem(
                      drawerItemModel: drawerItemData[2],
                      curInx: _currentIndex,
                      inx: 2),
                  DrawerItem(
                      drawerItemModel: drawerItemData[3],
                      curInx: _currentIndex,
                      inx: 3),
                  DrawerItem(
                      drawerItemModel: drawerItemData[4],
                      curInx: _currentIndex,
                      inx: 4),
                  DrawerItem(
                      drawerItemModel: drawerItemData[5],
                      curInx: _currentIndex,
                      inx: 5),
                  DrawerItem(
                      drawerItemModel: drawerItemData[6],
                      curInx: _currentIndex,
                      inx: 6),
                  DrawerItem(
                      drawerItemModel: drawerItemData[7],
                      curInx: _currentIndex,
                      inx: 7),
                  DrawerItem(
                      drawerItemModel: drawerItemData[8],
                      curInx: _currentIndex,
                      inx: 8),
                  DrawerItem(
                      drawerItemModel: drawerItemData[9],
                      curInx: _currentIndex,
                      inx: 9),
                  DrawerItem(
                      drawerItemModel: drawerItemData[10],
                      curInx: _currentIndex,
                      inx: 10),
                  DrawerItem(
                      drawerItemModel: drawerItemData[11],
                      curInx: _currentIndex,
                      inx: 11),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 15),
                    child: Text(
                      "GOOGLE APPS",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  DrawerItem(
                      drawerItemModel: drawerItemData[12],
                      curInx: _currentIndex,
                      inx: 12),
                  DrawerItem(
                      drawerItemModel: drawerItemData[13],
                      curInx: _currentIndex,
                      inx: 13),
                  Divider(),
                  DrawerItem(
                      drawerItemModel: drawerItemData[14],
                      curInx: _currentIndex,
                      inx: 14),
                  DrawerItem(
                      drawerItemModel: drawerItemData[15],
                      curInx: _currentIndex,
                      inx: 15),
                  SizedBox(height: 2),
                ],
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        color: Colors.green,
        displacement: size.height * 0.15,
        onRefresh: _refreshLocalGallery,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                SearchAppBar(scaffoldKey: _scaffoldKey),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: size.width,
                  height: 20,
                  child: Text(
                    _currentScreen,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black45,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
                ..._buildEmailList(size),
                ..._buildEmailList(size),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FAB(),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red[600],
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: 'Mail',
            icon: Icon(Icons.mail),
          ),
          BottomNavigationBarItem(
            label: 'Meet',
            icon: Icon(Icons.videocam_outlined, size: 30),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key key,
    @required this.drawerItemModel,
    @required this.curInx,
    @required this.inx,
  }) : super(key: key);

  final DrawerItemModel drawerItemModel;
  final int curInx;
  final int inx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Material(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: inx == curInx ? Colors.red[50] : Colors.white,
        child: InkWell(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          onTap: () {},
          child: Container(
            height: 45,
            child: Row(
              children: [
                SizedBox(width: 25),
                Icon(
                  drawerItemModel.icon,
                  color: inx == curInx ? Colors.redAccent[400] : Colors.black87,
                ),
                SizedBox(width: 20),
                Text(
                  drawerItemModel.title,
                  style: TextStyle(
                    fontSize: 15,
                    color:
                        inx == curInx ? Colors.redAccent[400] : Colors.black87,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<EmailCard> _buildEmailList(Size size) {
  List<EmailCard> _emailList = [];
  for (var emailData in dummyEmailData) {
    _emailList.add(EmailCard(size: size, emailModel: emailData));
  }
  return _emailList;
}

class EmailCard extends StatelessWidget {
  const EmailCard({
    Key key,
    @required this.size,
    @required this.emailModel,
  }) : super(key: key);

  final Size size;
  final EmailModel emailModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[50],
        child: Container(
          width: size.width,
          height: 90,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 15),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: emailModel.backgroundColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    emailModel.emailFrom[0],
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        emailModel.isImportant
                            ? Icon(
                                Icons.label_important,
                                color: Colors.yellow[600],
                              )
                            : Container(),
                        Text(
                          emailModel.emailFrom,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: size.width * 0.65,
                      child: Text(
                        emailModel.emailSubject,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 3),
                    Container(
                      width: size.width * 0.65,
                      child: Text(
                        emailModel.emailContent,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    emailModel.emailDatetime.day.toString() +
                        ' ' +
                        monthsName[emailModel.emailDatetime.month - 1],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FAB extends StatelessWidget {
  const FAB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(40),
      elevation: 5,
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: () {},
        splashColor: Colors.red[100],
        child: Container(
          color: Colors.transparent,
          height: 50,
          width: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Icon(
                Icons.mode_outlined,
                color: Colors.red[600],
              ),
              SizedBox(width: 10),
              Text(
                'Compose',
                style: TextStyle(
                  color: Colors.red[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        elevation: 2,
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 45,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
                Text(
                  'Search in emails',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: CircleAvatar(
                    maxRadius: 14,
                    backgroundImage: NetworkImage(
                      'https://lh3.google.com/u/0/ogw/ADGmqu_pZa2ciAXAGiBk0TMQw38V5woRaHDfmL0rXBMV=s32-c-mo',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
