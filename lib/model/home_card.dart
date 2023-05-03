class HomeCard {
  final String id;
  final String imageUrl;
  final String title;
  final String subTitle;
  final String stock;
  final double value;

  HomeCard({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.stock,
    required this.value,
  });
}

class Justwin {
  final String id;
  final String image;

  Justwin({required this.id, required this.image});
}

class SoldOutCash {
  final String id;
  final String image;
  final String name;

  SoldOutCash({required this.id, required this.image, required this.name});
}
