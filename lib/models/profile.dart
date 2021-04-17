class Profile {
  final List<String> photos;
  final String name;
  final int age;
  final String breed;
  final String bio;
  final String owner;
  final int distance;

  Profile(
      {required this.distance,
      required this.owner,
      required this.breed,
      required this.age,
      required this.photos,
      required this.name,
      required this.bio});
}
