class MaaModel {
  final String name;

  final String imageurl;

  final double initialprice;

  MaaModel(
      {required this.name, required this.imageurl, required this.initialprice});
  static List<MaaModel> p1 = [
    MaaModel(
        name: "Hair-Oil",
        imageurl:
            "https://image.shutterstock.com/image-photo/beauty-concept-brunette-woman-closed-260nw-1069883897.jpg",
        initialprice: 300),
    MaaModel(
        name: "Face -Wash",
        imageurl:
            "https://image.shutterstock.com/image-photo/beauty-concept-brunette-woman-closed-260nw-1069883897.jpg",
        initialprice: 300),
    MaaModel(
        name: "Hair-Oil",
        imageurl:
            "https://image.shutterstock.com/image-photo/beauty-concept-brunette-woman-closed-260nw-1069883897.jpg",
        initialprice: 300),
  ];
}
