import 'package:flutter/cupertino.dart';

void main() {
  String location = 'Kuwait';
  currentLocation(location);
}

void currentLocation(String location) {
  if (location == "Kuwait") {
    print("Kuwait");
  } else {
    print("Current Location");
  }
}
