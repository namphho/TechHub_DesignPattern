import 'package:dp/chain_of_responsibility_pattern/condition.dart';
import 'package:dp/chain_of_responsibility_pattern/discount_output.dart';

import 'input.dart';

class QuantityDiscountChain {
  final Condition condition;
  final QuantityDiscountChain? nextChain;

  QuantityDiscountChain({required this.condition, this.nextChain});

  DiscountOutput execute(Input input){
    if (condition.isDiscount(input)) {
      return condition.getOutput();
	} else {
      if (nextChain == null) {
        return DiscountOutput(0);
	  } else {
		return nextChain!.execute(input);
	  }
	}
  }

  @override
  String toString() {
    return 'QuantityDiscountChain{condition: $condition, nextChain: $nextChain}';
  }
}
