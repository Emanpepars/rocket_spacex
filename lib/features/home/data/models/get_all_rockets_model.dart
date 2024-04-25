import 'package:mentorship/features/home/domain/entities/get_all_rockets_entity.dart';

class RocketModel extends RocketEntity {
  RocketModel({
    this.height,
    this.diameter,
    this.mass,
    super.firstStage,
    super.secondStage,
    super.engines,
    this.landingLegs,
    this.payloadWeights,
    super.flickrImages,
    super.name,
    super.type,
    super.active,
    super.stages,
    super.boosters,
    super.costPerLaunch,
    super.successRatePct,
    super.firstFlight,
    super.country,
    super.company,
    super.wikipedia,
    super.description,
    super.id,
  });

  RocketModel.fromJson(dynamic json) {
    height = json['height'] != null ? Height.fromJson(json['height']) : null;
    diameter =
        json['diameter'] != null ? Diameter.fromJson(json['diameter']) : null;
    mass = json['mass'] != null ? Mass.fromJson(json['mass']) : null;
    firstStage = json['first_stage'] != null
        ? FirstStage.fromJson(json['first_stage'])
        : null;
    secondStage = json['second_stage'] != null
        ? SecondStage.fromJson(json['second_stage'])
        : null;
    engines =
        json['engines'] != null ? Engines.fromJson(json['engines']) : null;
    landingLegs = json['landing_legs'] != null
        ? LandingLegs.fromJson(json['landing_legs'])
        : null;
    if (json['payload_weights'] != null) {
      payloadWeights = [];
      json['payload_weights'].forEach((v) {
        payloadWeights?.add(PayloadWeights.fromJson(v));
      });
    }
    flickrImages = json['flickr_images'] != null
        ? json['flickr_images'].cast<String>()
        : [];
    name = json['name'];
    type = json['type'];
    active = json['active'];
    stages = json['stages'];
    boosters = json['boosters'];
    costPerLaunch = json['cost_per_launch'];
    successRatePct = json['success_rate_pct'];
    firstFlight = json['first_flight'];
    country = json['country'];
    company = json['company'];
    wikipedia = json['wikipedia'];
    description = json['description'];
    id = json['id'];
  }

  Height? height;
  Diameter? diameter;
  Mass? mass;
  LandingLegs? landingLegs;
  List<PayloadWeights>? payloadWeights;
}

class PayloadWeights {
  PayloadWeights({
    this.id,
    this.name,
    this.kg,
    this.lb,
  });

  PayloadWeights.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    kg = json['kg'];
    lb = json['lb'];
  }

  String? id;
  String? name;
  dynamic kg;
  dynamic lb;
}

class LandingLegs {
  LandingLegs({
    this.number,
    this.material,
  });

  LandingLegs.fromJson(dynamic json) {
    number = json['number'];
    material = json['material'];
  }

  dynamic number;
  dynamic material;
}

class Engines extends EnginesEntity {
  Engines({
    this.isp,
    this.thrustSeaLevel,
    this.thrustVacuum,
    super.number,
    super.type,
    super.version,
    super.layout,
    super.engineLossMax,
    super.propellant1,
    super.propellant2,
    super.thrustToWeight,
  });

  Engines.fromJson(dynamic json) {
    isp = json['isp'] != null ? Isp.fromJson(json['isp']) : null;
    thrustSeaLevel = json['thrust_sea_level'] != null
        ? ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    thrustVacuum = json['thrust_vacuum'] != null
        ? ThrustVacuum.fromJson(json['thrust_vacuum'])
        : null;
    number = json['number'];
    type = json['type'];
    version = json['version'];
    layout = json['layout'];
    engineLossMax = json['engine_loss_max'];
    propellant1 = json['propellant_1'];
    propellant2 = json['propellant_2'];
    thrustToWeight = json['thrust_to_weight'];
  }

  Isp? isp;
  ThrustSeaLevel? thrustSeaLevel;
  ThrustVacuum? thrustVacuum;
}

class ThrustVacuum {
  ThrustVacuum({
    this.kN,
    this.lbf,
  });

  ThrustVacuum.fromJson(dynamic json) {
    kN = json['kN'];
    lbf = json['lbf'];
  }

  dynamic kN;
  dynamic lbf;
}

class ThrustSeaLevel {
  ThrustSeaLevel({
    this.kN,
    this.lbf,
  });

  ThrustSeaLevel.fromJson(dynamic json) {
    kN = json['kN'];
    lbf = json['lbf'];
  }

  dynamic kN;
  dynamic lbf;
}

class Isp {
  Isp({
    this.seaLevel,
    this.vacuum,
  });

  Isp.fromJson(dynamic json) {
    seaLevel = json['sea_level'];
    vacuum = json['vacuum'];
  }

  dynamic seaLevel;
  dynamic vacuum;
}

class SecondStage extends SecondStageEntity {
  SecondStage({
    this.thrust,
    this.payloads,
    super.reusable,
    super.engines,
    super.fuelAmountTons,
    super.burnTimeSec,
  });

  SecondStage.fromJson(dynamic json) {
    thrust = json['thrust'] != null ? Thrust.fromJson(json['thrust']) : null;
    payloads =
        json['payloads'] != null ? Payloads.fromJson(json['payloads']) : null;
    reusable = json['reusable'];
    engines = json['engines'];
    fuelAmountTons = json['fuel_amount_tons'];
    burnTimeSec = json['burn_time_sec'];
  }

  Thrust? thrust;
  Payloads? payloads;
}

class Payloads {
  Payloads({
    this.compositeFairing,
    this.option1,
  });

  Payloads.fromJson(dynamic json) {
    compositeFairing = json['composite_fairing'] != null
        ? CompositeFairing.fromJson(json['composite_fairing'])
        : null;
    option1 = json['option_1'];
  }

  CompositeFairing? compositeFairing;
  String? option1;
}

class CompositeFairing {
  CompositeFairing({
    this.height,
    this.diameter,
  });

  CompositeFairing.fromJson(dynamic json) {
    height = json['height'] != null ? Height.fromJson(json['height']) : null;
    diameter =
        json['diameter'] != null ? Diameter.fromJson(json['diameter']) : null;
  }

  Height? height;
  Diameter? diameter;
}

class Diameter {
  Diameter({
    this.meters,
    this.feet,
  });

  Diameter.fromJson(dynamic json) {
    meters = json['meters'];
    feet = json['feet'];
  }

  dynamic meters;
  dynamic feet;
}

class Height {
  Height({
    this.meters,
    this.feet,
  });

  Height.fromJson(dynamic json) {
    meters = json['meters'];
    feet = json['feet'];
  }

  dynamic meters;
  dynamic feet;
}

class Thrust {
  Thrust({
    this.kN,
    this.lbf,
  });

  Thrust.fromJson(dynamic json) {
    kN = json['kN'];
    lbf = json['lbf'];
  }

  dynamic kN;
  dynamic lbf;
}

class FirstStage extends FirstStageEntity {
  FirstStage({
    this.thrustSeaLevel,
    this.thrustVacuum,
    super.reusable,
    super.engines,
    super.fuelAmountTons,
    super.burnTimeSec,
  });

  FirstStage.fromJson(dynamic json) {
    thrustSeaLevel = json['thrust_sea_level'] != null
        ? ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    thrustVacuum = json['thrust_vacuum'] != null
        ? ThrustVacuum.fromJson(json['thrust_vacuum'])
        : null;
    reusable = json['reusable'];
    engines = json['engines'];
    fuelAmountTons = json['fuel_amount_tons'];
    burnTimeSec = json['burn_time_sec'];
  }

  ThrustSeaLevel? thrustSeaLevel;
  ThrustVacuum? thrustVacuum;
}

class Mass {
  Mass({
    this.kg,
    this.lb,
  });

  Mass.fromJson(dynamic json) {
    kg = json['kg'];
    lb = json['lb'];
  }

  dynamic kg;
  dynamic lb;
}
