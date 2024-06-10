class Factorial {
  
  int fact(int n) 
  {
    return (n == 0) ? 1 : n * fact(n - 1);
  }
}

void main() {
  Factorial f = new Factorial();

  int num = 5;
  int result = f.fact(num);

  print("Factorial of $num is $result");
}
