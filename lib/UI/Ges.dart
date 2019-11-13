import 'package:flutter/material.dart';

class Ges extends StatelessWidget {
  final String title;

  Ges({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Gaurav kumar",
        ),
      ),
      body: new Center(
        child: new CustomButton(),
          ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: () {
        final snackbar = new SnackBar(content: new Text("Gaurav Kumar"),
        backgroundColor: Theme.of(context).backgroundColor,
        duration: new Duration(hours: 0,minutes: 0,seconds: 0,milliseconds: 5000,microseconds: 0),);
        Scaffold.of(context).showSnackBar(snackbar);
      },

      // The Actual Button

      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(5.5)),
        child: new Text("Click Here"),
      ),
    );
  }
}
