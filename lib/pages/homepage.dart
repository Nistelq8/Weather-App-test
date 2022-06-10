import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String location = 'Kuwait';
    currentLocation(location);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Center(child: Text("Weather"))),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text("Todays forecast"),
                      Text("10/6/2022"),
                      Text('Location: $location')
                    ],
                  ),
                  Image.asset('assets/images/Sunny.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(50),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "46C Max temp",
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                          padding: EdgeInsets.all(50),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.lightBlue),
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "32C Min temp",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Wind.gif',
                    height: 100,
                  ),
                  Text("25 - 55"),
                  Text("Wind Speed"),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("50%"),
                  Text("Humidity"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void currentLocation(String location) {
  if (location == "Kuwait") {
    print("Kuwait");
  } else {
    print("Current Location");
  }
}
