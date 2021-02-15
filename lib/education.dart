import 'package:flutter/material.dart';

//import 'FadeIn.dart';
class EducationSection extends StatefulWidget {
  static const String routeName = "/projects";
  final Key educationKey;

  EducationSection(this.educationKey);

  EducationSectionState createState() => EducationSectionState();
}

class EducationSectionState extends State<EducationSection> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ExpansionTile(
        title: Text("Education"),
        children: <Widget>[
          Text("Line one here"),
          Text("Line two here"),
        ],
      ),
    );
  }
}
