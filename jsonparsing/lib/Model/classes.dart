
class Images {
  final int id;
  final String name;
  Images({this.id, this.name});
  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(id: json['id'], name: json['name']);
  }
}

// For address

class Details {
  final int house_no;
  final String town;
  Details({this.house_no, this.town});

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(house_no: json['house_no'], town: json['town']);
  }
}

class Address {
  final int street_no;
  final Details details;
  Address({this.street_no, this.details});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street_no: json['street_no'],
      details: Details.fromJson(json['details']),
    );
  }
}