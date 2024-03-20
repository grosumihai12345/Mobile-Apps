class Location {
  final int id;
  final String name;
  final double latitude;
  final double longitude;
  final int countryId;
  final String country;

  Location(
      {required this.country,
      required this.countryId,
      required this.id,
      required this.latitude,
      required this.longitude,
      required this.name});
}
