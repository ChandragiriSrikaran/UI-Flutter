import 'dart:io';

int sum (int x, int y)=> (x+y);

int sub (int x, int y)=> (x-y);

int mul (int x, int y)=> (x*y);

double div (int x, int y)=> (x/y);

void main(){
    stdout.write("Enter a value:");
    int a=int.parse(stdin.readLineSync()!);
    stdout.write("Enter b value:");
    int b=int.parse(stdin.readLineSync()!);;
    stdout.writeln('the sum of $a and $b is ${sum(a,b)}');
    stdout.writeln('the sub of $a and $b is ${sub(a,b)}');
    stdout.writeln('the mul of $a and $b is ${mul(a,b)}');
    stdout.writeln('the div of $a and $b is ${div(a,b)}');
}