import 'package:astroapp/feature/home/service/home_service.dart';
import 'package:flutter/material.dart';

import '../model/expert.dart';
import '../model/live_experts.dart';

class HomeProvider with ChangeNotifier{
  final List<Map<String, dynamic>> menuItems = [
    {
      'name': 'Match Making',
      'icon': 'assets/icons/Group.svg',
      'color': "#FF0000",
    },
    {
      'name': 'Subh Muhrat',
      'icon': 'assets/icons/Layer 2.svg',
      'color': "#BC148D",
    },
    {
      'name': 'Horoscope',
      'icon': 'assets/icons/Subtract.svg',
      'color': "#D08622",
    },
    {
      'name': 'kundli',
      'icon': 'assets/icons/XML.svg',
      'color': "#008BAA",
    },
  ];

  final HomeService _service = HomeService();

  List<LiveExpert> _liveExperts = [];
  List<LiveExpert> get liveExperts => _liveExperts;
  List<Expert> _experts = [];
  List<Expert> get experts => _experts;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> loadData() async {
    _isLoading = true;
    notifyListeners();

    _liveExperts = await _service.fetchLiveExperts();

    try {
      final fetchedExperts = await _service.fetchExperts();
      _experts = fetchedExperts;
    } catch (e) {
      // You can handle errors here if needed
      debugPrint("Error fetching experts: $e");
    }

    _isLoading = false;
    notifyListeners();
  }
}