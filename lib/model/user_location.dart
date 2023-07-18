class UserLocation{
  final String city;
  final String state;
  final String country;
  final LocationStreed street;
  final String postcode;
  final Locationcoordinate coordinates;
  final Locationtimezone timezoone;
  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.street,
    required this.postcode,
    required this.coordinates,
    required this.timezoone,
  });
  factory UserLocation.fromMap(Map<String,dynamic>json) {
    final street=LocationStreed.fromMap(json['street']);
    final coordinates=Locationcoordinate.fromMap(json['coordinates']);
    final timezone=Locationtimezone.fromMap(json['timezone']);
    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      street: street,
      postcode: json['postcode'].toString(),
      coordinates: coordinates,
      timezoone: timezone,
    );
  }
}
class Locationcoordinate{
  final String latitude;
  final String longitude;
  Locationcoordinate({
    required this.latitude,
    required this.longitude,
  });
  factory Locationcoordinate.fromMap(Map<String,dynamic>json){
    return Locationcoordinate(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
class Locationtimezone{
  final String offset;
  final String description;
  Locationtimezone({
    required this.offset,
    required this.description,
  });
  factory Locationtimezone.fromMap(Map<String,dynamic>json){
    return Locationtimezone(
      offset: json['offset'],
      description: json['description'],
    );
  }
}
class LocationStreed{
  final int number;
  final String name;
  LocationStreed({
    required this.number,
    required this.name,
  });
  factory LocationStreed.fromMap(Map<String,dynamic>json){
    return LocationStreed(
      number: json['number'],
      name: json['name'],
    );
  }

}