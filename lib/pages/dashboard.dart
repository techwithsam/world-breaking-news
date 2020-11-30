import 'dart:math';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_info/package_info.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:share/share.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:world_breaking_news/function/ads.dart';
import 'package:world_breaking_news/function/appSettings.dart';
import 'package:world_breaking_news/function/customfun.dart';
import 'package:world_breaking_news/function/locator.dart';
import 'package:world_breaking_news/pages/search/country_search.dart';
import 'package:world_breaking_news/pages/widgets/contact.dart';
import 'package:world_breaking_news/pages/widgets/entertainment.dart';
import '../ad_manager.dart';
import 'google_signin.dart/google_func.dart';
import 'widgets/breaking_news.dart';
import 'widgets/sport_news.dart';
import 'widgets/tech.dart';

var callFun = locator<CustomFunction>();

const playStoreUrl =
    'https://play.google.com/store/apps/details?id=com.acctgen1.breakingnews';

class MainPage extends StatefulWidget {
  final MyAppSettings myAppSettings;
  MainPage({Key key, @required this.myAppSettings}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState(myAppSettings: myAppSettings);
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final MyAppSettings myAppSettings;
  _MainPageState({@required this.myAppSettings});

  var _scaffoldKey = GlobalKey<ScaffoldState>();
  var messtitle;
  var messbody;
  var imageurl;

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final ams = AdManager();

  _register() {
    _firebaseMessaging.getToken().then((token) => print(token));
  }

  //creating a function that configure the notification actions
  void getMessage() {
    //calling d configure actions
    _firebaseMessaging.configure(
        //on message is when the application is in foreground
        onMessage: (Map<String, dynamic> message) async {
      //onMessage starts
      //getting all data sent
      messtitle = message["data"]["title"];
      messbody = message["data"]["body"];
      imageurl = message["data"]["image"];
      //once the app is opened and notification enters, it should pop up
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      //checking if input sent is not null
                      title: Center(
                        child: Text(
                          (messtitle == null ? ' ' : messtitle),
                          style: GoogleFonts.aBeeZee(
                              color: Colors.pink[900],
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Text(
                        messbody == null ? ' ' : messbody,
                        style: GoogleFonts.aBeeZee(fontSize: 14),
                      ),
                    ),
                    SizedBox(height: 5),
                    Image.network(imageurl == null ? ' ' : imageurl)
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Close'),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              ));
    }, //on message end here
        onResume: (Map<String, dynamic> message) async {
      //on resume starts
      //this called wen app is minimized, it in background
      //getting all data sent
      messtitle = message["data"]["title"];
      messbody = message["data"]["body"];
      imageurl = message["data"]["image"];
      // once the notification is clicked, it should pop up
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                        //checking if input sent is not null
                        title: Center(
                          child: Text(
                            (messtitle == null ? ' ' : messtitle),
                            style: TextStyle(
                                color: Color(0xff0f356d),
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          messbody == null ? ' ' : messbody,
                          style: TextStyle(fontSize: 14),
                        )),
                    Image.network(imageurl == null ? ' ' : imageurl)
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('OK'),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              ));
    }, //on resume end here
        onLaunch: (Map<String, dynamic> message) async {
      //on lunch starts here
      //this called when app is killed
      //getting all data sent
      messtitle = message["data"]["title"];
      messbody = message["data"]["body"];
      imageurl = message["data"]["image"];
      //once the notification is clicked, it should pop up
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                        //checking if input sent is not null
                        title: Center(
                          child: Text(
                            (messtitle == null ? ' ' : messtitle),
                            style: TextStyle(
                                color: Color(0xff0f356d),
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          messbody == null ? ' ' : messbody,
                          style: TextStyle(fontSize: 14),
                        )),
                    Image.network(imageurl == null ? ' ' : imageurl)
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('OK'),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              ));
    } //on launch ends here
        );
  }

  void versionCheck() async {
    //Get Current installed version of app
    final PackageInfo info = await PackageInfo.fromPlatform();
    double currentVersion =
        double.parse(info.version.trim().replaceAll(".", ""));

    //Get Latest version info from firebase config
    final RemoteConfig remoteConfig = await RemoteConfig.instance;
    try {
      // Using default duration to force fetching from remote server.

      await remoteConfig.fetch(); // expiration: const Duration(seconds: 1)
      await remoteConfig.activateFetched();
      remoteConfig.getString('force_update_current_version');
      double newVersion = double.parse(remoteConfig
          .getString('force_update_current_version')
          .trim()
          .replaceAll(".", ""));

      if (newVersion > currentVersion) {
        _showVersionDialog(context);
      }
    } on FetchThrottledException catch (exception) {
      // Fetch throttled.
      print('$exception - ****************exception check');
    } catch (exception) {}
  }

  _showVersionDialog(context) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String title = "App Update Alert";
        String message =
            "There is a newer version of this app available please update it now and enjoy more news 😍.";
        String btnLabel = "Update Now";
        String btnLabelCancel = "Later";
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text(btnLabel),
              onPressed: () => _launchURL(playStoreUrl),
            ),
            FlatButton(
              child: Text(btnLabelCancel),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  RateMyApp _rateMyApp = RateMyApp(
    preferencesPrefix: 'rateMyApp_',
    minDays: 12,
    minLaunches: 2,
    remindDays: 12,
    remindLaunches: 6,
    googlePlayIdentifier: 'com.acctgen1.breakingnews',
    //appStoreIdentifier: '1517497322',
  );

  BannerAd myBanner;
  InterstitialAd myInterstitial;

  BannerAd buildBannerAd() {
    return BannerAd(
        // adUnitId: BannerAd.testAdUnitId,
        adUnitId: 'ca-app-pub-4759407370315106/2763568679',
        size: AdSize.smartBanner,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.loaded) {
            myBanner..show(anchorType: AnchorType.bottom);
          }
        });
  }

  // BannerAd buildLargeBannerAd() {
  //   return BannerAd(
  //       // adUnitId: BannerAd.testAdUnitId,
  //       adUnitId: 'ca-app-pub-4759407370315106/2763568679',
  //       size: AdSize.largeBanner,
  //       listener: (MobileAdEvent event) {
  //         if (event == MobileAdEvent.loaded) {
  //           myBanner
  //             ..show(
  //                 anchorType: AnchorType.bottom,
  //                 anchorOffset: MediaQuery.of(context).size.height * 0.15);
  //         }
  //       });
  // }

  InterstitialAd buildInterstitialAd() {
    return InterstitialAd(
      // adUnitId: InterstitialAd.testAdUnitId,
      adUnitId: 'ca-app-pub-4759407370315106/2297391163',
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.failedToLoad) {
          myInterstitial..load();
        } else if (event == MobileAdEvent.closed) {
          myInterstitial = buildInterstitialAd()..load();
        }
        print(event);
      },
    );
  }

  void showInterstitialAd() {
    myInterstitial..show();
  }

  void showRandomInterstitialAd() {
    Random r = new Random();
    bool value = r.nextBool();

    if (value == true) {
      myInterstitial..show();
    }
  }

  @override
  void initState() {
    super.initState();
    userinfo();
    Admob.initialize();
    myInterstitial = buildInterstitialAd()..load();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-4759407370315106~5115126190');
    myBanner = buildBannerAd()..load();
    _nestedTabController = TabController(length: 4, vsync: this);
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
    versionCheck();
    _register();
    getMessage();
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, alert: true, badge: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings setting) {});
    _rateMyApp.init().then((_) {
      if (_rateMyApp.shouldOpenDialog) {
        _rateMyApp.showStarRateDialog(
          context,
          title: 'Enjoying this app?',
          message:
              'If you like this app, please take a little bit of your time to review it !\nIt really helps us and it shouldn\'t take you more than one minute.',
          actionsBuilder: (context, stars) {
            return [
              FlatButton(
                  onPressed: () async {
                    launch(playStoreUrl);
                  },
                  child: Text('Rate on Play Store',
                      style: TextStyle(color: Colors.pink[900]))),
              FlatButton(
                onPressed: () {
                  if (stars != null) {
                    _rateMyApp.save().then((v) => Navigator.pop(context));

                    if (stars <= 2.0) {
                      _showInSnackBar();
                    } else if (stars >= 2.1) {
                      launch(playStoreUrl);
                    }
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text('Rate', style: TextStyle(color: Colors.pink[900])),
              ),
            ];
          },
          onDismissed: () =>
              _rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
          ignoreIOS: false,
          dialogStyle: DialogStyle(
            messageStyle: GoogleFonts.openSans(),
            titleAlign: TextAlign.center,
            messageAlign: TextAlign.center,
            messagePadding: EdgeInsets.only(bottom: 20.0),
          ),
          starRatingOptions: StarRatingOptions(
            allowHalfRating: false,
            starsFillColor: Colors.amber,
            starsSize: 40,
            starsBorderColor: Colors.yellow[600],
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    myInterstitial.dispose();
    myBanner.dispose();
    _nestedTabController.dispose();
  }

  TabController _nestedTabController;
  bool chinternet = true;
  String namei = 'Anonymous',
      emaili = '',
      userImgi =
          'https://res.cloudinary.com/acctgen1/image/upload/v1600385303/logo_ovivma.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Breaking News'),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: CountrySearch());
              },
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.share,
                size: 25,
              ),
              onPressed: () {
                Share.share(
                    'Hi Friend, Kindly download this app, you receive all trending news!!! kindly check it out now $playStoreUrl');
                // Share.share(
                //     'Kindly download this app, you receive all trending news!!!');
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
                child: Text('Top News', style: GoogleFonts.openSans()),
              ),
              Tab(
                child: Text('Sport News', style: GoogleFonts.openSans()),
              ),
              Tab(
                child:
                    Text('Entertainment News', style: GoogleFonts.openSans()),
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
                  backgroundImage: NetworkImage('$userImgi'),
                  foregroundColor: Colors.black,
                ),
                accountName:
                    Text("Good day, $namei", style: GoogleFonts.righteous()),
                accountEmail: Text("$emaili", style: GoogleFonts.righteous()),
                decoration: BoxDecoration(
                  color: Color(0xff0f356d),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text('Home',
                    style:
                        GoogleFonts.aBeeZee(fontSize: 15, color: Colors.green)),
                onTap: () {},
              ),
              // ListTile(
              //   title:
              //       Text('Bookmarks', style: GoogleFonts.righteous(fontSize: 15)),
              //   onTap: () {},
              // ),
              // ListTile(
              //   title:
              //       Text('Settings', style: GoogleFonts.righteous(fontSize: 15)),
              //   onTap: () {
              //     signOutGoogle();
              //     Navigator.pop(context);
              //   },
              // ),
              // Divider(),

              emaili == ''
                  ? Card(
                      color: Color(0xff0f356d),
                      child: ListTile(
                        title: Text('Sign in with Google',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            )),
                        onTap: () {
                          signInWithGoogle().whenComplete(() {
                            setState(() {
                              namei = name;
                              emaili = email;
                              userImgi = imageUrl;
                              // storeDetails();
                              print('$name **' ' $email ***' ' $imageUrl ****');
                              callFun.saveStaticInfo(
                                email: email,
                                name: name,
                                imgUrl: imageUrl,
                              );
                            });
                          });
                        },
                      ),
                    )
                  : ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.signOutAlt,
                        color: Colors.red,
                      ),
                      title: Text('Sign Out ',
                          style: GoogleFonts.righteous(
                              fontSize: 15, color: Colors.red)),
                      onTap: () async {
                        final prefs = await StreamingSharedPreferences.instance;
                        prefs.clear();
                        signOutGoogle();
                        callFun.showToast(message: 'User signed out');
                        Navigator.pop(context);
                      },
                    ),
              ListTile(
                title: Text('Watch Promotions',
                    style: GoogleFonts.righteous(fontSize: 15)),
                onTap: () {
                  // showInterstitialAd();
                  // showRandomInterstitialAd();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              WatchPromotions(myAppSettings: myAppSettings)));
                },
                trailing: FaIcon(
                  FontAwesomeIcons.ad,
                  color: Colors.red,
                ),
              ),
              ListTile(
                title:
                    Text('Rate Us', style: GoogleFonts.righteous(fontSize: 15)),
                onTap: () {
                  launch('$playStoreUrl');
                },
              ),
              ListTile(
                title: Text('Share with friends',
                    style: GoogleFonts.righteous(fontSize: 15)),
                onTap: () {
                  Share.share(
                      'Hi Friend, this app is awesome i read every news update i need. kindly check it out now $playStoreUrl.'
                      'Rate and download');
                },
                trailing: FaIcon(
                  FontAwesomeIcons.share,
                  color: Color(0xff0f356d),
                ),
              ),
              ListTile(
                title: Text('Contact Developer',
                    style: GoogleFonts.righteous(fontSize: 15)),
                onTap: () {
                  // showInterstitialAd();
                  // showRandomInterstitialAd();
                  Navigator.of(context).push(
                    PageTransition(
                      child: ContactDev(),
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 800),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Submit Suggestions',
                    style: GoogleFonts.righteous(fontSize: 15)),
                onTap: () {
                  launch('mailto:samuelbeebest@gmail.com');
                },
              ),
              SizedBox(height: 47),
            ],
          ),
        ),
        body: TabBarView(
          controller: _nestedTabController,
          children: <Widget>[
            BreakingNew(), 
            Sportnews(),
            EntertainmentNews(),
            TechnologyNews(),
          ],
        ));
  }

  Future<void> userinfo() async {
    final prefs = await StreamingSharedPreferences.instance;
    var details = MyAppSettings(prefs);
    setState(() {
      namei = details.dname.getValue();
      emaili = details.demail.getValue();
      userImgi = details.dimageUrl.getValue();
      print('$name ***************** '
          ' $email ******************'
          ' $userImgi **************8');
    });
  }

  // storeDetails({String email, name, img}) async {
  //   final prefs = await StreamingSharedPreferences.instance;
  //   prefs.setString('name', name);
  //   prefs.setString('email', email);
  //   prefs.setString('imageUrl', img);
  //   print('$name ***************** '
  //       ' $email ******************'
  //       ' $img **************8');
  // }

  void _showInSnackBar() {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: GestureDetector(
          onTap: () {
            launch('mailto:samuelbeebest@gmail.com');
          },
          child: Text(
            'Kindly Contact Us!',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
        duration: (Duration(seconds: 8)),
        elevation: 10,
        backgroundColor: Colors.black,
        action: SnackBarAction(
            label: 'Contact Us',
            textColor: Color(0xff0f356d),
            onPressed: () {
              launch('mailto:samuelbeebest@gmail.com');
            }),
      ),
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


/*
Center(
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
            )
*/