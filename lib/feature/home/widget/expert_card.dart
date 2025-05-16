import 'package:flutter/material.dart';

class ExpertCard extends StatelessWidget {
  final String name;
  final double rating;
  final int experience;
  final double rate;
  final double discountRate;
  final bool isOnline;
  final String profileImageUrl;

  const ExpertCard({
    super.key,
    required this.name,
    required this.rating,
    required this.experience,
    required this.rate,
    required this.discountRate,
    required this.isOnline,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile Image with Online Dot
          Stack(
            children: [
              // Circular Profile Image
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(profileImageUrl),
                ),
              ),
              // Online Dot (Positioned at top right of image)
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isOnline ? Colors.green : Colors.grey,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8),

          // Name
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),

          SizedBox(height: 4),

          // Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rating : ',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Icon(Icons.star, color: Colors.amber, size: 16),
              Text(
                rating.toString(),
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),

          SizedBox(height: 4),

          // Experience
          Text(
            'Exp : $experience years',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),

          // Price Section
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Column(
              children: [
                Text(
                  '₹${discountRate.toInt()}/min',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '₹${rate.toInt()}/min',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
