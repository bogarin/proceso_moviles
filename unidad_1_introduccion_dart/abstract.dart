void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(initialEnergy: 100 );
  print('queda1 ${chargePhone(windPlant)}');
  print('queda2 ${chargePhone(windPlant)}');
  print('queda3 ${chargePhone(nuclearPlant)}');
  print('queda4 ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('No enough energy');
  }
  plant.consumeEnergy(10);
  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear,wind,warter

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    super.energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required double initialEnergy}) : energyLeft = initialEnergy;

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
