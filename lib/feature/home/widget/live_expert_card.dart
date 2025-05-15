import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/live_experts.dart';

class LiveExpertCard extends StatelessWidget {
  final LiveExpert expert;
  final double cardWidth;

  const LiveExpertCard({
    super.key,
    required this.expert,
    this.cardWidth = 300, // You can override from outside if needed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFD9D9D9),
            const Color(0xFFCACACA),
            const Color(0xFFB9B9B9),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(
            width: 300,
            child: Text(
              "Explore your zodiac and cosmic insights live!",
              textAlign: TextAlign.center,
              style: TextStyle(
                shadows: [
                  Shadow(
                    offset: Offset(8.0, 8.0),
                    blurRadius: 8.0,
                    color: Colors.black45,
                  ),
                ],
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Avatar with white ring
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      expert.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Expert name
                Text(
                  expert.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                // Live count badge
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/view 1.svg",
                        height: 16,
                        width: 16,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        expert.liveCount.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
