import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:world_breaking_news/function/appSettings.dart';
import 'package:world_breaking_news/function/customfun.dart';
import 'package:world_breaking_news/pages/search/country_search.dart';
import 'google_signin.dart/google_func.dart';

class MainPage extends StatefulWidget {
  final MyAppSettings myAppSettings;
  MainPage({Key key, @required this.myAppSettings}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState(myAppSettings: myAppSettings);
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final MyAppSettings myAppSettings;
  _MainPageState({@required this.myAppSettings});
  TabController _nestedTabController;
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  bool chinternet = true;
  String namei = 'Anonymous', emaili = '', userImg = 'assets/user.png';

  @override
  void initState() {
    _nestedTabController = TabController(length: 5, vsync: this);
    setState(() {
      Future<int> a = CustomFunction().checkInternetConnection();
      a.then((value) {
        print(value);
        if (value == 0) {
          setState(() {
            chinternet = false;
          });
        } else {
          setState(() {
            chinternet = true;
          });
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('World Breaking News'),
        //centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CountrySearch());
            },
          ),
          // IconButton(
          //   icon: Icon(Icons.more_vert),
          //   onPressed: () {},
          // ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.share,
              size: 25,
            ),
            onPressed: () {
              Share.share('Kindly download this app and make serious money!!!');
            },
          ),
        ],
        bottom: TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              child: Text('Breaking News', style: GoogleFonts.openSans()),
            ),
            Tab(
              child: Text('Sport', style: GoogleFonts.openSans()),
            ),
            Tab(
              child: Text('Entertainment', style: GoogleFonts.openSans()),
            ),
            Tab(
              child: Text('Politics', style: GoogleFonts.openSans()),
            ),
            Tab(
              child: Text('Technology', style: GoogleFonts.openSans()),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('$imageUrl'),
                foregroundColor: Colors.black,
              ),
              accountName:
                  Text("Good day, $namei", style: GoogleFonts.righteous()),
              accountEmail: Text("$emaili", style: GoogleFonts.righteous()),
              decoration: BoxDecoration(
                color: Colors.blue,
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   image: AssetImage("image here"),
                // ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Home',
                  style:
                      GoogleFonts.aBeeZee(fontSize: 17, color: Colors.green)),
              onTap: () {
                print('$imageUrl ****');
                print('$name *****');
                print('$email  ---');
                imageUrl == ''
                    ? print('go to   8**')
                    : print('don\'t know what is really happening');
              },
            ),
            ListTile(
              title:
                  Text('Bookmarks', style: GoogleFonts.aBeeZee(fontSize: 17)),
              onTap: () {},
            ),
            ListTile(
              title: Text('Settings', style: GoogleFonts.aBeeZee(fontSize: 17)),
              onTap: () {
                signOutGoogle();
                Navigator.pop(context);
              },
            ),
            Divider(),
            Card(
              color: Colors.blue,
              child: ListTile(
                title: Text('Continue with google',
                    style:
                        GoogleFonts.aBeeZee(fontSize: 17, color: Colors.white)),
                onTap: () {
                  signInWithGoogle().whenComplete(() {
                    setState(() {
                      namei = name;
                      emaili = email;
                      userImg = imageUrl;
                    });
                  });
                },
                trailing: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.amber,
                ),
              ),
            ),
            ListTile(
              title: Text('Watch promotions',
                  style: GoogleFonts.aBeeZee(fontSize: 17)),
              onTap: () {},
              trailing: FaIcon(
                FontAwesomeIcons.ad,
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('Rate Us', style: GoogleFonts.aBeeZee(fontSize: 17)),
              onTap: () {},
              trailing: FaIcon(
                FontAwesomeIcons.star,
                color: Colors.amber,
              ),
            ),
            ListTile(
              title: Text('Share with friends',
                  style: GoogleFonts.aBeeZee(fontSize: 17)),
              onTap: () {
                Share.share('hello');
              },
              trailing: FaIcon(
                FontAwesomeIcons.share,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Contact Developer',
                  style: GoogleFonts.aBeeZee(fontSize: 17)),
              onTap: () {},
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
      body: (chinternet
          ? TabBarView(
              controller: _nestedTabController,
              children: <Widget>[
                Container(color: Colors.red),
                Container(color: Colors.yellow),
                Container(color: Colors.green),
                Container(color: Colors.pink[900]),
                Container(color: Colors.amber),
              ],
            )
          : Center(
              child: Container(
                height: 160,
                width: 280,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(children: <Widget>[
                  SizedBox(height: 4),
                  Icon(
                    Icons.signal_wifi_off,
                    size: 40,
                    color: Colors.red,
                  ),
                  SizedBox(height: 16),
                  Text('No Internet connection Please retry.',
                      style: GoogleFonts.openSans(
                        fontStyle: FontStyle.italic,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 22),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    onPressed: () {
                      retry();
                    },
                    //height: 50,
                    child: Text(
                      'Retry'.toUpperCase(),
                    ),
                    color: Colors.teal,
                    textColor: Colors.white,
                  ),
                ]),
              ),
            )),
    );
  }

  retry() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MainPage(
                  myAppSettings: myAppSettings,
                )));
  }
}
