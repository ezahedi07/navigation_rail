class Puzzle1 {
  String imageUrl;
  String name;
  String price;
  int color;
  String description;

  Puzzle1({
    this.imageUrl,
    this.name,
    this.price,
    this.color,
    this.description,

  });
}
List<Puzzle1> puzzleList = [
  Puzzle1(
      imageUrl: 'assets/images/p1.png',
      name: ' Cube',
      color: 0xFF5B89F2,
      price: '5',
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
  Puzzle1(
      imageUrl: 'assets/images/p2.png',
      name: ' Blocks',
      price: '5',
      color: 0xFFF2CF5B,
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
  Puzzle1(
      imageUrl: 'assets/images/p3.png',
      name: 'Blocks',
      price: '5',
      color: 0xFF36ba5e,
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
];