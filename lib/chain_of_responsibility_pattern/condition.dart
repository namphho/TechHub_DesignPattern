import 'package:dp/chain_of_responsibility_pattern/discount_output.dart';
import 'package:flutter/cupertino.dart';

import 'input.dart';

// If user have quantity > minQuantity. So this quantity match this condition and they can get discount
class Condition {
  final double minQuantity; // 5
  final double discountPercent; // 10%

  Condition({required this.minQuantity, required this.discountPercent});

  bool isDiscount(Input input) {
    return input.quantity >= minQuantity;
  }

  DiscountOutput getOutput() {
    return DiscountOutput(discountPercent);
  }
}
