import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendGiftsSection extends StatelessWidget {
  const SendGiftsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> giftNames = ['Heart', 'Rose', 'Silver Heart', 'Gold'];
    List<String> giftPrices = ['₹25', '₹50', '₹75', '₹100'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text('Send Gifts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            separatorBuilder: (_, __) => const SizedBox(width: 30),
            itemCount: giftNames.length,
            itemBuilder: (context, index) {
              return GiftTile(name: giftNames[index], price: giftPrices[index]);
            },
          ),
        ),
      ],
    );
  }
}

class GiftTile extends StatelessWidget {
  final String name;
  final String price;

  const GiftTile({super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8)),
          child: const Center(child: Icon(Icons.card_giftcard, color: Colors.grey)),
        ),
        const SizedBox(height: 10),
        Text(name, style: const TextStyle(fontSize: 12), overflow: TextOverflow.ellipsis),
        Text(price, style: TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }
}
