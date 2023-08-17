class GetFactEntitiesToBack {
  int? number;

  GetFactEntitiesToBack({required this.number});
}

class GetFactEntitiesFromBack {
  String? text;
  int? number;
  bool? found;
  String? type;
  GetFactEntitiesFromBack({
    required this.text,
    required this.number,
    required this.type,
    required this.found,
  });

  factory GetFactEntitiesFromBack.fromJson(Map<String, dynamic> json) {
    return GetFactEntitiesFromBack(
      text: json['text'],
      number: json['number'],
      type: json['type'],
      found: json['found'],
    );
  }
}
