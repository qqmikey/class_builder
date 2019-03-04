import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Settings page'),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  var _className;

  @override
  void initState() {
    super.initState();
    _className = 'HomePage'; // or get it from backend

    ClassBuilder.register<HomePage>(() => HomePage());
    ClassBuilder.register<SettingPage>(() => SettingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClassBuilder.fromString(_className),
    );
  }
}
