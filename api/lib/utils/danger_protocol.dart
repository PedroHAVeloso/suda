import 'package:suda_api/models/danger_model.dart';
import 'package:suda_api/models/zombie_model.dart';

class DangerProtocol {
  static DangerModel getZombieDanger(ZombieModel zombie) {
    var intelligence = _calculateIntelligence(zombie);
    var strength = _calculateStrength(zombie);
    var speed = _calculateSpeed(zombie);

    if (intelligence > 100) intelligence = 100;
    if (intelligence < 0) intelligence = 0;

    if (strength > 100) strength = 100;
    if (strength < 0) strength = 0;

    if (speed > 100) speed = 100;
    if (speed < 0) speed = 0;

    return DangerModel(
      id: zombie.id,
      strength: strength,
      speed: speed,
      intelligence: intelligence,
    );
  }

  static int _calculateIntelligence(ZombieModel zombie) {
    return 10 +
        (zombie.games.length * 15) +
        (zombie.musics.length * 10) +
        (zombie.sports.length * 5);
  }

  static int _calculateStrength(ZombieModel zombie) {
    return (zombie.sports.length * 40) -
        (zombie.games.length * 5) -
        zombie.weight.round() +
        (30 - zombie.age);
  }

  static int _calculateSpeed(ZombieModel zombie) {
    return (zombie.sports.length * 20) +
        (50 - zombie.weight.round()) +
        (30 - zombie.age);
  }
}
