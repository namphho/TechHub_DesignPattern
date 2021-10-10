import 'reward.dart';
import 'rules.dart';

class Target {
  Reward reward;
  Rule rule;

  Target({required this.reward, required this.rule});

  @override
  String toString() {
    return 'Target{rewards: $reward, rules: $rule}';
  }
}
