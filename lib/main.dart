import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Statefull app example",
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  String nameCity = " ";
  var _currencies = ['Rupees','Dollar','Pounds','Others'];
  var _currentItemSelected = 'Rupees';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugPrint("Favourite city widget is created");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful APP Example"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),

            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),

                );
              }).toList(),

              onChanged: (String newValueSelected){
               setState(() {
                 this._currentItemSelected = newValueSelected;
               });
              },

              value: _currentItemSelected,
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
