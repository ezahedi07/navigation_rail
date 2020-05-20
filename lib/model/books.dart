class Book {
  String imageUrl;
  String name;
  String price;
  int color;
  String description;

  Book({
    this.imageUrl,
    this.name,
    this.price,
    this.color,
    this.description,

  });
}
List<Book> books = [
  Book(
      imageUrl: 'assets/images/book1.png',
      name: 'Book1',
      color: 0xFF5B89F2,
      price: '5',
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
  Book(
      imageUrl: 'assets/images/book2.png',
      name: 'Book2',
      price: '5',
      color: 0xFFF2CF5B,
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
  Book(
      imageUrl: 'assets/images/book3.png',
      name: 'Book3',
      price: '5',
      color: 0xFF36ba5e,
      description:"Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

  ),
];