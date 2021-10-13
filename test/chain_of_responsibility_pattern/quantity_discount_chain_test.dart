import 'package:dp/chain_of_responsibility_pattern/chain_factory.dart';
import 'package:dp/chain_of_responsibility_pattern/input.dart';
import 'package:dp/chain_of_responsibility_pattern/models/reward.dart';
import 'package:dp/chain_of_responsibility_pattern/models/rules.dart';
import 'package:dp/chain_of_responsibility_pattern/models/target.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('there is a target and match condition', () {
    final reward = Reward(rewardValue: 5); // discount 5%
    final rule = Rule(max: 10, min: 5);
    final target = Target(reward: reward, rule: rule);

    final chain = ChainFactory.generate([target]);
    final output = chain?.execute(Input(6));

    expect(output!.percent, 5);
  });

  test('there is a target and don\'t match condition', () {
    final reward = Reward(rewardValue: 5); // discount 5%
    final rule = Rule(max: 10, min: 5);
    final target = Target(reward: reward, rule: rule);

    final chain = ChainFactory.generate([target]);
    final output = chain?.execute(Input(4));

    expect(output!.percent, 0);
  });

  test('there is multi target and  match condition', () {
    final reward1 = Reward(rewardValue: 5); // discount 5%
    final rule1 = Rule(max: 10, min: 5);
    final target1 = Target(reward: reward1, rule: rule1);

    final reward2 = Reward(rewardValue: 10); // discount 10%
    final rule2 = Rule(max: 10, min: 10);
    final target2 = Target(reward: reward2, rule: rule2);

    final reward3 = Reward(rewardValue: 15); // discount 15%
    final rule3 = Rule(max: 10, min: 15);
    final target3 = Target(reward: reward3, rule: rule3);

    final reward4 = Reward(rewardValue: 20); // discount 20%
    final rule4 = Rule(max: 10, min: 20);
    final target4 = Target(reward: reward4, rule: rule4);

    final chain = ChainFactory.generate([target1, target2, target3, target4]);

    //assert
    final output1 = chain?.execute(Input(6));
    expect(output1!.percent, 5);

    final output2 = chain?.execute(Input(10));
    expect(output2!.percent, 10);

    final output3 = chain?.execute(Input(16));
    expect(output3!.percent, 15);

    final output4 = chain?.execute(Input(15));
    expect(output4!.percent, 15);

    final output5 = chain?.execute(Input(20));
    expect(output5!.percent, 20);

    final output6 = chain?.execute(Input(1000));
    expect(output6!.percent, 20);
  });
}
