
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
          alignment: Alignment.center,
          color: Colors.brown,
          child: Column(
            children: <Widget>[
              Text("My Text",
                  textDirection: TextDirection.ltr),
              ImageAsset(),
              Button()
            ],
          )
      );
  }
}
  class ImageAsset extends StatelessWidget
  {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage('images/nature1.jfif');
    Image image=Image(image: assetImage);
    return Container(child: image);
  }
  }
  class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.amber,
        child: Text("My button"),
        elevation: 6.0,
        onPressed: () {
          alertdilog(context);
        }),
    );
  }

  void alertdilog(BuildContext context) {
    var alertdilog=AlertDialog(
      title: Text("Button Pressed Successfully"),
      content: Text("Okay!"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context){
          return alertdilog;
        }
    );
  }
  }

