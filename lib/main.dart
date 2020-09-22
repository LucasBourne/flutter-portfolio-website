import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Size screenSize;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucas Bourne',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Lucas Bourne'),
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
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
              Image.network(
                  "https://www.ilovewallpaper.co.uk/images/zara-shimmer-metallic-wallpaper-soft-pink-rose-gold-p4928-21149_image.jpg"),
              SizedBox(height: 25),
              Image.network(
                  "https://www.ilovewallpaper.co.uk/images/zara-shimmer-metallic-wallpaper-soft-pink-rose-gold-p4928-21149_image.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
