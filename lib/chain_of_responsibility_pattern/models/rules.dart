class Rule {
  final double max;
  final double min;
  final int? ruleTypeId;
  final double? sellingPriceBeforeVAT;
  final int? unitTypeId;
  final String? unitTypeName;

  Rule(
      {required this.max,
      required this.min,
      this.ruleTypeId,
      this.sellingPriceBeforeVAT,
      this.unitTypeId,
      this.unitTypeName});

  factory Rule.fromJson(Map<String, dynamic> json) {
    return Rule(
      max: json['max'] != null ? (json['max'] as num).toDouble() : 0,
      min: json['min'] != null ? (json['min'] as num).toDouble() : 0,
      ruleTypeId: json['ruleTypeId'],
      sellingPriceBeforeVAT:
          json['sellingPriceBeforeVAT'] != null ? (json['sellingPriceBeforeVAT'] as num).toDouble() : null,
      unitTypeId: json['unitTypeId'],
      unitTypeName: json['unitTypeName'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['max'] = this.max;
    data['min'] = this.min;
    data['ruleTypeId'] = this.ruleTypeId;
    data['sellingPriceBeforeVAT'] = this.sellingPriceBeforeVAT;
    data['unitTypeId'] = this.unitTypeId;
    data['unitTypeName'] = this.unitTypeName;
    return data;
  }

  String toString() {
    return 'Rule: {max: $max, min: $min, ruleTypeId: $ruleTypeId, sellingPriceBeforeVAT: $sellingPriceBeforeVAT, unitTypeId: $unitTypeId, unitTypeName: $unitTypeName}';
  }
}
