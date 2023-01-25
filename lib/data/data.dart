class VehicleInfoEntity {
  final String modelName;
  final String type;
  final String ownerName;
  final String make;
  final String fullModelName;
  final String year;
  final String fuelType;
  final String revlicenseStatus;
  final String licensNumber;

  VehicleInfoEntity(this.modelName, this.type, this.ownerName, this.make,
      this.fullModelName, this.year, this.fuelType, this.revlicenseStatus, this.licensNumber);
}

 List<VehicleInfoEntity> all = [
  cbb3077,
  jc3350,
  bjb4078,
  bij2805
 ];

//car
VehicleInfoEntity cbb3077 = VehicleInfoEntity("Suzuki Wagon R", "Motor Car",
    "Manoj Kumar", "Suzuki", "Suzuki Wagon R Stingray X", "2018", "Petrol", "Active","CBB-3077");

VehicleInfoEntity jc3350 = VehicleInfoEntity("Honda Civic", "Motor Car",
    "Deshan Ekanayake", "Honda", "Honda Civic EK1", "2004", "Petrol", "Active","JC-3350");

//bike
VehicleInfoEntity bjb4078 = VehicleInfoEntity(
    "Honda Xpulse",
    "Motor Bike",
    "Muhammed Fazlan",
    "Honda",
    "Honda Xpulse 200T",
    "2020",
    "Petrol",
    "Active",
    "BJB-4078");

VehicleInfoEntity bij2805 = VehicleInfoEntity("TVS Apache", "Motor  Bike",
    "Manoo Abhillash", "TVS", "TVS Apache 160", "2019", "Petrol", "Active","BIJ-2805");
