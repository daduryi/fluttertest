import 'config.dev.dart';
import 'config.prod.dart';

enum EnumEnv {dev, prod}

abstract class EnvConfig {
  final EnumEnv env = null;
  final String api = null;
  final a = 'a';
  final Map<String, String> extParams = {};

  get isDebug => this.env == EnumEnv.dev;
  get isDev => this.env == EnumEnv.dev;
}

class ConfigFactory {
  static EnvConfig _instance;

  static getInstance(EnumEnv env) {
    if (ConfigFactory._instance == null) {
      if (env == EnumEnv.dev) {
        ConfigFactory._instance = EnvConfigDev();
      } else if (env == EnumEnv.prod) {
        ConfigFactory._instance = EnvConfigProd();
      }
    }
    return ConfigFactory._instance;
  }
}


// class Spacecraft {
//   String name;
//   DateTime launchDate;

//   // Constructor, with syntactic sugar for assignment to members.
//   Spacecraft(this.name, this.launchDate) {
//     // Initialization code goes here.
//   }

//   // Named constructor that forwards to the default one.
//   Spacecraft.unlaunched(String name) : this(name, null);

//   int get launchYear =>
//       launchDate?.year; // read-only non-final property

//   // Method.
//   void describe() {
//     print('Spacecraft: $name');
//     if (launchDate != null) {
//       int years =
//           DateTime.now().difference(launchDate).inDays ~/
//               365;
//       print('Launched: $launchYear ($years years ago)');
//     } else {
//       print('Unlaunched');
//     }
//   }
// }

// class Piloted {
//   int astronauts = 1;
//   void describeCrew() {
//     print('Number of astronauts: $astronauts');
//   }
// }

// class PilotedCraft extends Spacecraft with Piloted {
//   PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
// }


main(List<String> args) {
  // var c = EnvConfig.getInstance('dev');
  // print(c.a);
  // print(c.b);
  // PilotedCraft('', DateTime(1)).describe();
}

