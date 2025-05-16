import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../comman/utils.dart';
import '../../home/model/expert.dart';

class FloatingActionButtonsGroup extends StatelessWidget {
  final Expert expert;

  const FloatingActionButtonsGroup({super.key, required this.expert});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButtonItem(icon: "assets/icons/elements (5).svg", label: 'Chat', rate: expert.chatRate),
          const SizedBox(width: 5),
          FloatingActionButtonItem(icon: "assets/icons/elements (2).svg", label: 'Call', rate: expert.phoneCallRate),
          const SizedBox(width: 5),
          FloatingActionButtonItem(icon: "assets/icons/elements (5).svg", label: 'Video', rate: expert.videoCallRate),
        ],
      ),
    );
  }
}

class FloatingActionButtonItem extends StatelessWidget {
  final String icon;
  final String label;
  final String rate;

  const FloatingActionButtonItem({super.key, required this.icon, required this.label, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(color: HexColor("#12bb11"), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 4),
            Text('$rate₹ /$label', style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
