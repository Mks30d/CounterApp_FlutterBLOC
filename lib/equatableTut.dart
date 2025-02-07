import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableTut extends StatelessWidget {
  const EquatableTut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Equatable Tutorial"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Person person = new Person(name: "mks", age: 23);
              Person person1 = new Person(name: "mks", age: 23);

              print(person.hashCode);
              print(person1.hashCode);
              print(person == person);
              print(person == person1);
            },
            child: Text("Click")),
      ),
    );
  }
}

class Person extends Equatable {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];

// used to compare values of one object with other, if same value then same hashcode
// @override
// bool operator ==(Object other) {
//   return identical(this, other) ||
//       other is Person &&
//           runtimeType == other.runtimeType &&
//           name == other.name &&
//           age == other.age;
// }
// @override
// int get hashCode => name.hashCode ^ age.hashCode;
}
