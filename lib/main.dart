import 'package:flutter/material.dart';
import 'package:myapp/education.dart';
import 'fadeIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucas Bourne',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new MyHomePage(title: 'Lucas Bourne'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Size screenSize;
  final educationKey = new GlobalKey();

  scrollToSection(selectedIndex) {
    if (selectedIndex == 0) {
      Scrollable.ensureVisible(
        educationKey.currentContext,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
    /*
    else if (_selectedIndex == 1) 
    {
      Scrollable.ensureVisible(projectKey.currentContext,
          alignment: 0.0,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut);
    } 
    */
    else {
      Scrollable.ensureVisible(
        educationKey.currentContext,
        alignment: 0.0,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Material(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  automaticallyImplyLeading: false,
                  centerTitle: false,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  actions: [
                    FadeIn(
                      2,
                      MaterialButton(
                        padding: EdgeInsets.only(right: 25, left: 25),
                        child: Text(
                          "Education",
                        ),
                        onPressed: () {
                          scrollToSection(0);
                        },
                        autofocus: true,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      "right",
                    ),
                  ],
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                    // Need to set width & height of container to image dimensions
                    child: Image.network(
                        "https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1307&q=80"),
                  ),
                ),
                Image.network(
                    "https://www.ilovewallpaper.co.uk/images/zara-shimmer-metallic-wallpaper-soft-pink-rose-gold-p4928-21149_image.jpg"),
                SizedBox(height: 25),
                EducationSection(educationKey),
                Image.network(
                    "https://www.ilovewallpaper.co.uk/images/zara-shimmer-metallic-wallpaper-soft-pink-rose-gold-p4928-21149_image.jpg"),
                SizedBox(height: 25),
                Image.network(
                    "https://www.ilovewallpaper.co.uk/images/zara-shimmer-metallic-wallpaper-soft-pink-rose-gold-p4928-21149_image.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
