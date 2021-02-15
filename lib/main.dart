import 'package:flutter/material.dart';
import 'education.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucas Bourne',
      theme: ThemeData(
        primarySwatch: Colors.grey,
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

  scrollToSection(String selection) {
    if (selection == "education") {
      Scrollable.ensureVisible(
        educationKey.currentContext,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
    // repeat for other sections as necessary
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
            preferredSize: Size.fromHeight(60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FadeIn(
                        2,
                        Text(
                          widget.title,
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                          ),
                        ),
                        "right",
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
                          "Work",
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                        onPressed: () {
                          scrollToSection("work");
                        },
                        autofocus: true,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      "right",
                    ),
                    FadeIn(
                      2,
                      MaterialButton(
                        padding: EdgeInsets.only(right: 25, left: 25),
                        child: Text(
                          "Education",
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                        onPressed: () {
                          scrollToSection("education");
                        },
                        autofocus: true,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      "right",
                    ),
                    FadeIn(
                      2,
                      MaterialButton(
                        padding: EdgeInsets.only(right: 25, left: 25),
                        child: Text(
                          "Projects",
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                        onPressed: () {
                          scrollToSection("education");
                        },
                        autofocus: true,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      "right",
                    ),
                    FadeIn(
                      2,
                      MaterialButton(
                        padding: EdgeInsets.only(right: 25, left: 25),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                        onPressed: () {
                          scrollToSection("contact");
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
                    child: Image.network(
                        "https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1307&q=80"),
                  ),
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1052&q=80"),
                SizedBox(height: 25),
                EducationSection(educationKey),
                Image.network(
                    "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80"),
                SizedBox(height: 25),
                Image.network(
                    "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1052&q=80"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
