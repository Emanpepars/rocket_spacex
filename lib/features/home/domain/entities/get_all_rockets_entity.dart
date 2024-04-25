class RocketEntity {
  RocketEntity({
    this.firstStage,
    this.secondStage,
    this.engines,
    this.flickrImages,
    this.name,
    this.type,
    this.active,
    this.stages,
    this.boosters,
    this.costPerLaunch,
    this.successRatePct,
    this.firstFlight,
    this.country,
    this.company,
    this.wikipedia,
    this.description,
    this.id,
  });

  FirstStageEntity? firstStage;
  SecondStageEntity? secondStage;
  EnginesEntity? engines;
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  dynamic stages;
  dynamic boosters;
  dynamic costPerLaunch;
  dynamic successRatePct;
  String? firstFlight;
  String? country;
  String? company;
  String? wikipedia;
  String? description;
  String? id;
}

class EnginesEntity {
  EnginesEntity({
    this.number,
    this.type,
    this.version,
    this.layout,
    this.engineLossMax,
    this.propellant1,
    this.propellant2,
    this.thrustToWeight,
  });

  dynamic number;
  String? type;
  String? version;
  String? layout;
  dynamic engineLossMax;
  String? propellant1;
  String? propellant2;
  dynamic thrustToWeight;
}

class SecondStageEntity {
  SecondStageEntity({
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
  });

  bool? reusable;
  dynamic engines;
  dynamic fuelAmountTons;
  dynamic burnTimeSec;
}

class FirstStageEntity {
  FirstStageEntity({
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
  });

  bool? reusable;
  dynamic engines;
  dynamic fuelAmountTons;
  dynamic burnTimeSec;
}
