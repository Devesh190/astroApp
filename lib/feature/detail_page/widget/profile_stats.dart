import 'package:astroapp/comman/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileStats extends StatelessWidget {
  final double rating;
  final int experience;
  final String followers;
  final String callMinutes;
  final String chatMinutes;

  const ProfileStats({
    super.key,
    required this.rating,
    required this.experience,
    required this.followers,
    required this.callMinutes,
    required this.chatMinutes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: HexColor("#ebf3ff"), // Top section color
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16), // Only top rounded
              ),
            ),
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _iconTextRow(Icons.star, '$rating', 'Rating'),
                _iconTextRow(null, '$experience', 'Experience'),
                _iconTextRow(null, followers, 'Followers'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/elements (1).svg",
                      height: 20,
                      width: 20,
                      colorFilter: const ColorFilter.mode(
                        Colors.blue,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text('$callMinutes mins', style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                      "assets/icons/elements (4).svg",
                      height: 20,
                      width: 20,
                      colorFilter: const ColorFilter.mode(
                        Colors.blue,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text('$chatMinutes mins', style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Follow'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconTextRow(IconData? icon, String value, String label) {
    return Row(
      children: [
        if (icon != null) ...[
          Icon(icon, color: Colors.amber, size: 18),
          const SizedBox(width: 4),
        ],
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _verticalDivider() {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey.shade300,
    );
  }
}
