import 'dart:math';
import 'package:characters/characters.dart';

void main(List<String> arguments) {
  // arithmeticOperations();
  // mathFunctions();
  // variables();
  // strings();
  // teacherGrading();
  // sameSame();
  // howMany();
  // inSummary();
  // booleans();
  // ifStatements();
  // scopes();
  // enums();
  // loops();
  nextPowerOfTwo(23);
  print(fibonacci(3));
  print(fibonacciLoop(3));

  for (var i = 10; i >= 0; i--) {
    print(i);
  }

  for (var i = 0; i <= 10; i++) {
    print(i / 10);
  }
}

int fibonacci(int n) {
  if (n <= 2) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

int fibonacciLoop(int n) {
  if (n <= 2) return 1;
  int i = 3;
  int prev = 1;
  int next = 1;
  int curr;
  while (i <= n) {
    curr = prev + next;
    prev = next;
    next = curr;
    i++;
  }
  return next;
}

void nextPowerOfTwo(int number) {
  num i = pow(2, 0);

  while (i < number) {
    i *= 2;
  }
  print('Next power of two above or equal to $number is $i');
}

void loops() {
  // while loops
  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }

  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while (sum < 10);

  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('Finally, you got a six');

  // for loop
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  // for-in loop
  const myString = 'I ❤️ Dart';
  print(myString.runes);
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  // for-each loop
  const myNumbers = [1, 2, 3];
  myNumbers.forEach((number) => print(number));

  int counter = 0;
  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }

  for (var i = 1; i <= 10; i++) {
    print(i * i);
  }

  const numbers = [1, 2, 4, 7];
  for (var num in numbers) {
    print(sqrt(num));
  }
  numbers.forEach((element) {
    print(sqrt(element));
  });
}

void comments() {
  // This is a comment

  /*
  This is also a comment. Over many...
  many...
  many lines. 
  */

  /// I am a documentation comment
  /// at your service

  /**
   * Me too
   */
}

void arithmeticOperations() {
  print(2 + 6);
  print(10 - 2);
  print(2 * 4);
  print(24 / 3);
  print(22 / 7);

  // integer division
  print(22 ~/ 7);

  // modulo operator
  print(10 % 3);
  print(28 % 10);

  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));

  print(350 / 5 + 2);
  print(350 / (5 + 2));
}

void mathFunctions() {
  print(sin(45 * pi / 180));
  print(cos(135 * pi / 180));
  print(sqrt(25));
  print(max(5, 10));
  print(min(-5, -10));
  print(max(sqrt(2), pi / 2));
  print(1 / sqrt2);
}

void variables() {
  num number = 10;
  print(number);
  number = 15;
  print(number);

  double apple = 3.14159;

  print(10.isEven);
  print(apple.round());

  var counter = 0;
  counter++;
  counter++;
  counter--;
  counter--;
  counter--;
  counter--;
  print(counter);

  double myValue = 10;
  myValue *= 3;
  print(myValue);
  myValue /= 2;
  print(myValue);

  int age = 16;
  print(age);
  age = 30;
  print(age);

  const x = 46;
  const y = 10;

  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);

  print(answer1);
  print(answer2);
  print(answer3);

  const rating1 = 2.3;
  const rating2 = 4.7;
  const rating3 = 3.7;

  const averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  const a = 1;
  const b = -1;
  const c = -6;

  double root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  double root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);

  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);
  print(myNumber.runtimeType);

  var integer = 100;
  var decimal = 12.5;
  integer = decimal.toInt();
  print(integer);
  print(2.toDouble());

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print(totalCost);

  final actuallyDouble = 3.toDouble();
  print(actuallyDouble);

  const age1 = 42;
  const age2 = 21;

  const averageAge = (age1 + age2) / 2;
}

void strings() {
  var greeting = 'Hello, Dart!';
  print(greeting);
  greeting = 'Hello, Fluter!';
  print(greeting);

  var salutation = 'Hello!';
  print(salutation.codeUnits);

  const ball = '😅';
  print(ball);
  print(ball.codeUnits);
  print(ball.runes);
  print(ball.characters.length);

  var message = 'Hello' + ' my name is ';
  const name = 'Blessed';
  message += name;
  print(message);

  final msg = StringBuffer();
  msg.write('Hello');
  msg.write(' my name is ');
  msg.write('Ray');
  print(msg.toString());

  const introduction = 'Hello my name is $name';
  print(introduction);

  const oneThird = 1 / 3;
  var sentence = 'One third is $oneThird';
  print(sentence);

  const twoThirds = 2 / 3;
  sentence = 'One third is ${twoThirds.toStringAsFixed(3)}'; // round to 3 d.p
  print(sentence);

  const bigString = '''
You can have a string
that contains multiple
line 
  by doing this
  ''';
  print(bigString);

  const oneLine = 'This is only '
      'a single '
      'line '
      'at runtime.';

  print(oneLine);

  const twoLines = 'This is\ntwo lines.';
  print(twoLines);

  const rawString = r'My name \n is $name';
  print(rawString);

  print('I ❤️ Dart!');
  print('I \u2764 Dart\u0021');
  print('I love 🎯');
  print('I love \u{1F3AF}');

  const firstName = 'Blessed';
  const lastName = 'Sibanda';
  const fullName = firstName + ' ' + lastName;
  print(fullName);

  const myDetails = 'Hello, my name is $fullName';
  print(myDetails);
}

void teacherGrading() {
  const attendanceWeight = 20;
  const homeWorkWeight = 30;
  const examWeight = 50;

  const attendancePoints = 90;
  const homeWorkPoints = 80;
  const examPoints = 94;

  const grade = ((attendanceWeight * attendancePoints) +
          (homeWorkWeight * homeWorkPoints) +
          (examWeight * examPoints)) /
      100;
  print(grade.toInt());
}

void sameSame() {
  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries);
  print(twoCountries.codeUnits);
  print(twoCountries.runes);
  print(twoCountries.characters.length);
}

void howMany() {
  const vote = 'Thumbs up! 👍';
  print(vote.codeUnits.length);
  print(vote.runes.length);
  print(vote.characters.length);
}

void inSummary() {
  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);
}

void booleans() {
  const myAge = 25;
  const isTeenager = myAge >= 13 && myAge <= 19;
  print(isTeenager);
  const maryAge = 30;
  const bothTeenagers = isTeenager && maryAge >= 13 && maryAge <= 19;
  print(bothTeenagers);

  const reader = 'Blessed Sibanda';
  const ray = 'Ray Wenderlich';
  const rayIsReader = ray == reader;
  print(rayIsReader);
}

const global = 'Hello, world';

void scopes() {
  const local = 'Hello, main';
  if (2 > 1) {
    const insideIf = 'Hello, anybody?';
    print(global);
    print(local);
    print(insideIf);
  }
  print(global);
  print(local);
  // print(insideIf); not allowed!
}

void ifStatements() {
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

  const score = 83;
  String message = score >= 0 ? 'You passed' : 'You failed';
  print(message);

  const myAge = 25;
  message = (myAge >= 13 && myAge <= 19) ? 'Teenager' : 'Not a teenager';
  print(message);
}

enum Weather { sunny, snowy, cloudy, rainy }

void enums() {
  const weatherToday = Weather.cloudy;
  print('Weather $weatherToday');
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen');
      break;
    case Weather.snowy:
      print('Get your skis');
      break;
    case Weather.cloudy:
      bringUmbrella();
      break;
    case Weather.rainy:
      bringUmbrella();
      break;
    default:
  }

  const audioState = AudioState.playing;
  switch (audioState) {
    case AudioState.paused:
      print('the player is paused');
      break;
    case AudioState.playing:
      print('the player is playing');
      break;
    case AudioState.stopped:
      print('the player is stopped');
      break;
  }
}

void bringUmbrella() => print('Bring an umbrella');

enum AudioState { playing, paused, stopped }
