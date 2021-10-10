class Reward {
  final double rewardValue;
  final String? bonusProductName;
  final double? maxRewardUnitTypeId;
  final double? maxRewardValue;
  final String? text;
  final int? unitTypeGroupId;
  final int? unitTypeId;
  final String? unitTypeName;
  final int? bonusProductId;
  final int? rewardTypeId;
  final int? rewardId;

  Reward(
      {required this.rewardValue,
      this.rewardId,
      this.rewardTypeId,
      this.bonusProductId,
      this.bonusProductName,
      this.maxRewardUnitTypeId,
      this.maxRewardValue,
      this.text,
      this.unitTypeGroupId,
      this.unitTypeId,
      this.unitTypeName});

  factory Reward.fromJson(Map<String, dynamic> json) {
    return Reward(
      rewardId: json['rewardId'],
      rewardTypeId: json['rewardTypeId'],
      bonusProductId: json['bonusProductId'],
      bonusProductName: json['bonusProductName'],
      maxRewardUnitTypeId: json['maxRewardUnitTypeId']?.toDouble() ?? 0.0,
      maxRewardValue: json['maxRewardValue']?.toDouble() ?? 0.0,
      rewardValue: json['rewardValue']?.toDouble() ?? 0.0,
      text: json['text'],
      unitTypeGroupId: json['unitTypeGroupId'],
      unitTypeId: json['unitTypeId'],
      unitTypeName: json['unitTypeName'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rewardId'] = this.rewardId;
    data['rewardTypeId'] = this.rewardTypeId;
    data['bonusProductId'] = this.bonusProductId;
    data['bonusProductName'] = this.bonusProductName;
    data['maxRewardUnitTypeId'] = this.maxRewardUnitTypeId;
    data['maxRewardValue'] = this.maxRewardValue;
    data['rewardValue'] = this.rewardValue;
    data['text'] = this.text;
    data['unitTypeGroupId'] = this.unitTypeGroupId;
    data['unitTypeId'] = this.unitTypeId;
    data['unitTypeName'] = this.unitTypeName;
    return data;
  }

  String toString() {
    return 'Reward: {rewardId: $rewardId, rewardTypeId: $rewardTypeId, bonusProductId: $bonusProductId, bonusProductName: $bonusProductName, maxRewardUnitTypeId: $maxRewardUnitTypeId, maxRewardValue: $maxRewardValue, rewardValue: $rewardValue, text: $text, unitTypeGroupId: $unitTypeGroupId, unitTypeId: $unitTypeId,unitTypeName: $unitTypeName}';
  }
}
