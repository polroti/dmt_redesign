class VehicleInfoEntity {
  final String modelName;
  final String type;
  final String ownerName;
  final String make;
  final String fullModelName;
  final String year;
  final String fuelType;
  final String revlicenseStatus;

  VehicleInfoEntity(this.modelName, this.type, this.ownerName, this.make,
      this.fullModelName, this.year, this.fuelType, this.revlicenseStatus);
}

//car
VehicleInfoEntity cbb3077 = VehicleInfoEntity("Suzuki Wagon R", "Motor Car",
    "Manoj Kumar", "Suzuki", "Wagon R Stingray X", "2018", "Petrol", "Active");

VehicleInfoEntity jc3350 = VehicleInfoEntity("Honda Civic", "Motor Car",
    "Deshan Ekanayake", "Honda", "Honda Civic EK1", "2004", "Petrol", "Active");

//bike
VehicleInfoEntity bjb4078 = VehicleInfoEntity(
    "Bajaj Xpulse",
    "Motor Bike",
    "Muhammed Fazlan",
    "Bajaj",
    "Bajaj Xpulse 200T",
    "2020",
    "Petrol",
    "Active");

VehicleInfoEntity bij2805 = VehicleInfoEntity("TVS Apache", "Motor Bike",
    "Manoo Abhillash", "TVS", "TVS Apache 160", "2019", "Petrol", "Active");
