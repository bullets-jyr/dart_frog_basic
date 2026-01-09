import 'package:dart_frog_basic/models/wheel.dart';

class Car {
  Car({required this.wheel}) {
    print('Car(wheel) created');
  }

  final Wheel wheel;

  @override
  String toString() => 'Car($wheel)';
}
