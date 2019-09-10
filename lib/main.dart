import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
     title: "Statefull app example",
     home: FavouriteCity(),
  ));
}
class FavouriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavouriteCityState();
  }
}
class _FavouriteCityState extends State<FavouriteCity>{

   String nameCity=" ";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful APP Example"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                "Your favourite city is  $nameCity",
                 style: TextStyle(fontSize: 20.0),
            ))
          ],
        ),
      ),
    );
  }

}