
import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';
import 'app_screens/home.dart';
/*void main() {
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello Flutter",
        home: Scaffold(
          appBar: AppBar(
            title: Text("My first screen"),
          ),
          body: FirstScreen()
        ));
  }
}*/
void main()
{

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home:Scaffold(
     appBar: AppBar(
       title: InkWell(child: Text("My First List View"), onTap: (){},),
     ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          debugPrint("Clicked");
        },
        child: Icon(Icons.add),
        tooltip: "Add one more item",

      ),

    ),
  ));
}
/*Widget getListView ()
{
  var listView = ListView(
    children: <Widget> [

      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text("Ac Unit"),
        subtitle: Text("Ac unit good"),
      ),

      ListTile(
        leading: Icon(Icons.add),
        title: Text("Add "),
        subtitle: Text("good"),
      ),

      ListTile(
        leading: Icon(Icons.backup),
        title: Text("backup data"),
        subtitle: Text("good going")
      )

    ],
  );
  return listView;
}*/
List<String> getListElements()
{
  var items=List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}
void _showToast(BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Added to favorite'),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
Widget getListView()

{
  var listItems=getListElements();
  var listView =ListView.builder(
      itemBuilder: (context,index)
          {
            return ListTile(
              title: Text(listItems[index]),
              leading: Icon(Icons.add_location),
              onTap: (){_showToast(context);},
            );
          }
  );
return listView;

}
