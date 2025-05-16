import 'package:astroapp/feature/home/model/review.dart';

class Expert {
  final String id;
  final String name;
  final double rating;
  final int experience;
  final double rate;
  final double discountRate;
  final int followers;
  final int totalCallTime;
  final int totalChatTime;
  final String summary;
  final List<String> specialization;
  final List<String> languages;
  final int totalReviewCount;
  final List<Review> reviews;
  final bool isOnline;
  final String profileImage;
  final List<String> images;
  final String videoCallRate;
  final String chatRate;
  final String phoneCallRate;

  Expert({
    required this.id,
    required this.name,
    required this.rating,
    required this.experience,
    required this.rate,
    required this.discountRate,
    required this.followers,
    required this.totalCallTime,
    required this.totalChatTime,
    required this.summary,
    required this.specialization,
    required this.languages,
    required this.totalReviewCount,
    required this.reviews,
    required this.isOnline,
    required this.profileImage,
    required this.images,
    required this.chatRate,
    required this.phoneCallRate,
    required this.videoCallRate
  });

  factory Expert.fromJson(Map<String, dynamic> json) {
    return Expert(
      id: json['id'],
      name: json['name'],
      rating: (json['rating'] as num).toDouble(),
      experience: json['experience'],
      rate: (json['rate'] as num).toDouble(),
      discountRate: (json['discountRate'] as num).toDouble(),
      followers: json['followers'],
      totalCallTime: json['totalCallTime'],
      totalChatTime: json['totalChatTime'],
      summary: json['summary'],
      specialization: List<String>.from(json['specialization']),
      languages: List<String>.from(json['languages']),
      totalReviewCount: json['totalReviewCount'],
      reviews: (json['reviews'] as List<dynamic>)
          .map((review) => Review.fromJson(review))
          .toList(),
      isOnline: json['isOnline'],
      profileImage: json['profileImage'],
      images: List<String>.from(json['images']),
      videoCallRate: json['videoCallRate'],
      chatRate: json['chatRate'],
      phoneCallRate: json['phoneCallRate']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'rating': rating,
      'experience': experience,
      'rate': rate,
      'discountRate': discountRate,
      'followers': followers,
      'totalCallTime': totalCallTime,
      'totalChatTime': totalChatTime,
      'summary': summary,
      'specialization': specialization,
      'languages': languages,
      'totalReviewCount': totalReviewCount,
      'reviews': reviews.map((review) => review.toJson()).toList(),
      'isOnline': isOnline,
      'profileImage': profileImage,
      'images': images,
    };
  }
}
