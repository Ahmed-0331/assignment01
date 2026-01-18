void main() {
  Driver myDriver = Driver('Rahim', 25, 'Bike');
  print(myDriver.getDriverInfo());

  Ride myRide = MotorbikeRide();
  showFare(myRide, 5);
}

class Person {
  String _driverName;
  int _driverAge;

  Person(this._driverName, this._driverAge);

  String get name => _driverName;
  int get age => _driverAge;
}
class Driver extends Person {
  String vehicleType;

  Driver(String name, int age, this.vehicleType) : super(name, age);

  String getDriverInfo() {
    return 'Driver Name: $name, Age: $age, Vehicle: $vehicleType';
  }
}
abstract class Ride {
  double calculateFare(double distance);
}
class MotorbikeRide extends Ride {
  @override
  double calculateFare(double distance) {
    return distance * 20;
  }
}
void showFare(Ride ride, double distance) {
  double fare = ride.calculateFare(distance);
  print('Total Fare: $fare taka');
}

