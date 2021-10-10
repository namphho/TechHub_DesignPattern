import 'package:dp/chain_of_responsibility_pattern/condition.dart';
import 'package:dp/chain_of_responsibility_pattern/quantity_discount_chain.dart';

import 'models/target.dart';

class ChainFactory {
  static QuantityDiscountChain? generate(List<Target> targets) {
    QuantityDiscountChain? result;

    for (int i = 0; i < targets.length; i++) {
      final target = targets[i];
      double minCondition = target.rule.min;
      double percent = target.reward.rewardValue;

      if (i == 0) {
        result = QuantityDiscountChain(condition: Condition(minQuantity: minCondition, discountPercent: percent));
      } else {
        final nextChain = result;
        result = QuantityDiscountChain(
            condition: Condition(minQuantity: minCondition, discountPercent: percent), nextChain: nextChain);
      }
    }
    return result;
  }
}
