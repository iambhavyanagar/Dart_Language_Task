class Book {
  int book_id = 0;
  String title = "Untitled";
  String author = "Unknown";


  Book();


  Book.withDetails(this.book_id, this.title, this.author);
}

void main() {

  Book book1 = new Book();
  book1.book_id = 1;
  book1.title = "Dart";
  book1.author = "Google";

 
  print("Book 1 Details");
  print("Book ID: ${book1.book_id}");
  print("Title: ${book1.title}");
  print("Author: ${book1.author}");

  Book book2 = new Book.withDetails(2, "python", "Guido Van Rossoum");

  
  print("\nBook 2 Details");
  print("Book ID: ${book2.book_id}");
  print("Title: ${book2.title}");
  print("Author: ${book2.author}");
}
