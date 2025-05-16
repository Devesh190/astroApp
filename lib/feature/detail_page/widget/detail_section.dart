import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailSection extends StatelessWidget {
  final String title;
  final String content;

  const DetailSection({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ReadMoreText(
            content,
            style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
            trimMode: TrimMode.Line,
            trimLines: 2,
            colorClickableText: Colors.blue,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
          ),
        ],
      ),
    );
  }
}
