
import 'dart:io';

class Customer {
  String? cust_id;
  String? cust_name;
  String? cust_contact;
  String? cust_address;
  List<Product> products = [];

  Customer(this.cust_id, this.cust_name, this.cust_contact, this.cust_address,
      this.products);
}

class Product {
  String? pro_id;
  String? pro_name;
  double? pro_price;
  int? pro_quantity;

  Product(this.pro_id, this.pro_name, this.pro_price, this.pro_quantity);
}

void main() {
  List<Customer> customers = [];
  int? choice;

  do {
    print("\n--- Customer Management System ---");
    print("1. Add Customer");
    print("2. View Customers");
    print("3. Calculate Bill");
    print("4. Search Customer by ID"); // Added option
    print("5. Exit");
    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addCustomer(customers);
        break;
      case 2:
        viewCustomers(customers);
        break;
      case 3:
        calculateBill(customers);
        break;
      case 4:
        searchCustomerById(customers); 
        break;
      case 5:
        print("Exiting... Thank you!");
        break;
      default:
        print("Invalid choice. Please try again.");
    }
  } while (choice != 5);
}

void addCustomer(List<Customer> customers) {
  stdout.write("\nEnter customer ID: ");
  String cust_id = stdin.readLineSync()!;
  stdout.write("Enter customer name: ");
  String cust_name = stdin.readLineSync()!;
  stdout.write("Enter customer contact: ");
  String cust_contact = stdin.readLineSync()!;
  stdout.write("Enter customer address: ");
  String cust_address = stdin.readLineSync()!;

  stdout.write("Enter number of products: ");
  int numProducts = int.parse(stdin.readLineSync()!);

  List<Product> products = [];
  for (int i = 0; i < numProducts; i++) {
    stdout.write("\nEnter product ID: ");
    String pro_id = stdin.readLineSync()!;
    stdout.write("Enter product name: ");
    String pro_name = stdin.readLineSync()!;
    stdout.write("Enter product price: ");
    double pro_price = double.parse(stdin.readLineSync()!);
    stdout.write("Enter product quantity: ");
    int pro_quantity = int.parse(stdin.readLineSync()!);
    products.add(Product(pro_id, pro_name, pro_price, pro_quantity));
  }

  customers.add(Customer(cust_id, cust_name, cust_contact, cust_address, products));
  print("\nCustomer added successfully!");
}

void viewCustomers(List<Customer> customers) {
  print("\n--- Customer List ---");
  for (int i = 0; i < customers.length; i++) {
    print("Customer id: ${customers[i].cust_id}");
    print("Customer name: ${customers[i].cust_name}");
    print("Customer contact: ${customers[i].cust_contact}");
    print("Customer address: ${customers[i].cust_address}");
    print("Products: ");
    for (int j = 0; j < customers[i].products.length; j++) {
      print("Product id: ${customers[i].products[j].pro_id}");
      print("Product name: ${customers[i].products[j].pro_name}");
      print("Product price: ${customers[i].products[j].pro_price}");
    }
    print("-------------------------------");
  }
}

void searchCustomerById(List<Customer> customers) {
  stdout.write("\nEnter customer ID to search: ");
  String cust_id = stdin.readLineSync()!;
  calculateBill(customers, cust_id);
}

void calculateBill(List<Customer> customers, [String? cust_id]) {
  print("\n--- Bill Calculation ---");
  for (int i = 0; i < customers.length; i++) {
    double total_amount = 0;
    for (int j = 0; j < customers[i].products.length; j++) {
      total_amount = total_amount + customers[i].products[j].pro_price!;
    }
    double discount = 0;
    if (total_amount >= 500 && total_amount <= 1500) {
      discount = total_amount * 0.1;
    } else if (total_amount > 1500 && total_amount <= 3500) {
      discount = total_amount * 0.2;
    } else if (total_amount > 3500 && total_amount <= 6500) {
      discount = total_amount * 0.25;
    } else if (total_amount > 6500) {
      discount = total_amount * 0.3;
    }
    double final_amount = total_amount - discount;
    print("Customer name: ${customers[i].cust_name}");
    print("Total amount: \$${total_amount}");
    print("Discount: \$${discount}");
    print("Final amount: \$${final_amount}");
    print("-------------------------------");
  }
}

