import 'dart:io';

void main(){
    stdout.write("Enter a value:");
    int a=int.parse(stdin.readLineSync()!);
    stdout.write("Enter b value:");
    int b=int.parse(stdin.readLineSync()!);
    stdout.write("Enter c value:");
    int c=int.parse(stdin.readLineSync()!);
    int largest = (((a > b) ? a : b) > c) ? ((a > b) ? a : b) : c;
    print('$largest is largest element');
}