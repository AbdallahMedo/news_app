class HorizontalModel {
  final String image;
  final String ctegoryName;

  HorizontalModel({required this.image, required this.ctegoryName});
}

final List<HorizontalModel> imageList = [
  HorizontalModel(
    image: "assets/business.avif",
    ctegoryName: "Business",
  ),
  HorizontalModel(
    image: "assets/entertaiment.avif",
    ctegoryName: "Entertainment",
  ),
  HorizontalModel(
    image: "assets/general.avif",
    ctegoryName: "General",
  ),
  HorizontalModel(
    image: "assets/health.avif",
    ctegoryName: "Health",
  ),
  HorizontalModel(
    image: "assets/science.avif",
    ctegoryName: "Science",
  ),
  HorizontalModel(
    image: "assets/sports.avif",
    ctegoryName: "Sports",
  ),
  HorizontalModel(
    image: "assets/technology.jpeg",
    ctegoryName: "Technology",
  ),
];
