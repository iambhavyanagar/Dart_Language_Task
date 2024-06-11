//  WAP to generate FormatException and use of try catch and finally block. in dart

void main()
{
  try{
    String str = "123";
    int num = int.parse(str);
    print("Parsed Number is $num");
    String str2 = "abc";
    int num2 = int.parse(str2);
    print("Parsed Number is $num2");
  }
  on FormatException catch(e)
  {
    print("FormatException Caught: $e");
  }
  catch(e)
  {
    print("Caught Exception: $e");
  }
  finally
  {
    print("Finally Block Executed");
  }
}