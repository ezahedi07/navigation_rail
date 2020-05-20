class Toy {
  String imageUrl;
  String name;
  String price;
  int color;
  String description;

  Toy({
    this.imageUrl,
    this.name,
    this.price,
    this.color,
    this.description,

  });
}
List<Toy> toys = [
  Toy(
imageUrl: 'assets/images/toy2.png',
name: 'Bear',
      color: 0xFF5B89F2,
price: '5',
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

),
  Toy(
      imageUrl: 'assets/images/toy1.png',
      name: 'Robot',
      price: '5',
      color: 0xFFF2CF5B,
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
  Toy(
      imageUrl: 'assets/images/toy3.png',
      name: 'Doll',
      price: '5',
      color: 0xFF36ba5e,
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
];