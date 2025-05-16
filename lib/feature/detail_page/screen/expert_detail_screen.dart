import 'package:astroapp/comman/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

import '../../home/model/expert.dart';
import '../widget/detail_section.dart';
import '../widget/floating_action_buttons_group.dart';
import '../widget/images_section.dart';
import '../widget/profile_stats.dart';
import '../widget/reviews_section.dart';
import '../widget/send_gifts_section.dart';

class ExpertDetailsScreen extends StatelessWidget {
  final Expert expert;

  const ExpertDetailsScreen({super.key, required this.expert});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(expert.profileImage),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      expert.name,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ProfileStats(
                    rating: expert.rating,
                    experience: expert.experience,
                    followers: expert.followers.toString(),
                    callMinutes: expert.totalCallTime.toString(),
                    chatMinutes: expert.totalChatTime.toString(),
                  ),
                  const SizedBox(height: 20),
                  ImagesSection(images: expert.images),
                  const SizedBox(height: 20),
                  SendGiftsSection(),
                  const SizedBox(height: 20),
                  DetailSection(title: "Profile Summary", content: expert.summary),
                  const SizedBox(height: 20),
                  DetailSection(title: "Specialization", content: expert.specialization.join(', ')),
                  const SizedBox(height: 20),
                  DetailSection(title: "Languages", content: expert.languages.join(', ')),
                  const SizedBox(height: 20),
                  ReviewsSection(totalReviews: expert.totalReviewCount),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButtonsGroup(expert: expert),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: HexColor("#0054dc"),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        expert.name,
        style: const TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.share, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.white),
          onPressed: () {},
        ),
      ],
      floating: true,
    );
  }
}
