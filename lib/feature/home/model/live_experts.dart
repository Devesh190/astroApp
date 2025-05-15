class LiveExpert {
  final String id;
  final String name;
  final int liveCount;
  final String image;

  LiveExpert({
    required this.id,
    required this.name,
    required this.liveCount,
    required this.image
  });

  // Factory constructor to create from JSON
  factory LiveExpert.fromJson(Map<String, dynamic> json) {
    return LiveExpert(
      id: json['id'] as String,
      name: json['name'] as String,
      liveCount: json['live_count'] as int,
      image: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww'
    );
  }

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'live_count': liveCount,
    };
  }
}
