class Review {
  final String name;
  final double rate;
  final String comment;

  Review({
    required this.name,
    required this.rate,
    required this.comment,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      name: json['name'],
      rate: (json['rate'] as num).toDouble(),
      comment: json['comment'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rate': rate,
      'comment': comment,
    };
  }
}
