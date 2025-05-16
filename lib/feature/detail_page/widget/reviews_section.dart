import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewsSection extends StatelessWidget {
  final int totalReviews;

  const ReviewsSection({super.key, required this.totalReviews});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Users Review',
                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' ($totalReviews people)',
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('View all')),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 6, offset: const Offset(0, 2))],
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/support 1.svg"),
              const SizedBox(width: 12),
              const Text('Chat With Assistant'),
              const Spacer(),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ],
    );
  }
}
