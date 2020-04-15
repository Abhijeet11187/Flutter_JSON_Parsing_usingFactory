import 'classes.dart';

class Person {
  final String firstName;
  final String lastName;
  final String gender;
  final int age;
  final List<String> places;
  final List<Images> images;
  final Address address;

  Person(
      {this.firstName,
      this.lastName,
      this.gender,
      this.age,
      this.places,
      this.images,
      this.address});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        firstName: json['firstName'],
        lastName: json['lastName'],
        gender: json['gender'],
        age: json['age'],
        places: parsePlaces(json['places']),
        images: parseImages(json),
        address: Address.fromJson(json['address']));
  }
//Function to return a PlacesList
  static List<String> parsePlaces(placesJson) {
    List<String> placesList = new List<String>.from(placesJson);
    return placesList;
  }

//Method to create a list of Image class objects
  static List<Images> parseImages(imageJson) {
    var list = imageJson['images'] as List;
    List<Images> imagesList =
        list.map((data) => Images.fromJson(data)).toList();
    return imagesList;
  }
}

