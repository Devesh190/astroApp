import '../model/expert.dart';
import '../model/live_experts.dart';

class HomeService{
  Future<List<LiveExpert>> fetchLiveExperts() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay

    List<Map<String, dynamic>> jsonData = [
      {
        'id': '1',
        'name': 'Dr. John Doe',
        'live_count': 3,
      },
      {
        'id': '2',
        'name': 'Jane Smith',
        'live_count': 5,
      },
      {
        'id': '3',
        'name': 'Albert Nguyen',
        'live_count': 2,
      },
    ];

    return jsonData.map((json) => LiveExpert.fromJson(json)).toList();
  }

  Future<List<Expert>> fetchExperts() async {
    await Future.delayed(Duration(seconds: 2));

    List<Map<String, dynamic>> jsonResponse = [
      {
        'id': 'exp001',
        'name': 'Dr. Anjali Sharma',
        'rating': 4.8,
        'experience': 12,
        'rate': 15.0,
        'discountRate': 12.0,
        'followers': 1200,
        'totalCallTime': 340,
        'totalChatTime': 510,
        'summary': 'Experienced psychologist and life coach with over a decade of helping people improve their mental health.',
        'specialization': ['Psychology', 'Life Coaching', 'Stress Management'],
        'languages': ['English', 'Hindi'],
        'totalReviewCount': 5,
        'isOnline': true,
        'profileImage': 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        'images': [
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',

        ],
        'reviews': [
          {'name': 'Rohan', 'rate': 5.0, 'comment': 'Very helpful and kind.'},
          {'name': 'Meena', 'rate': 4.5, 'comment': 'Gave great advice.'},
          {'name': 'Suresh', 'rate': 4.8, 'comment': 'Listened patiently.'},
          {'name': 'Neha', 'rate': 5.0, 'comment': 'Helped me understand myself better.'},
          {'name': 'Karan', 'rate': 4.7, 'comment': 'Insightful session.'},
        ],
        'videoCallRate':"20",
        'chatRate':"20",
        'phoneCallRate':'20'
      },
      {
        'id': 'exp002',
        'name': 'Mr. Rajeev Kumar',
        'rating': 4.6,
        'experience': 8,
        'rate': 10.0,
        'discountRate': 8.0,
        'followers': 950,
        'totalCallTime': 260,
        'totalChatTime': 430,
        'summary': 'Career consultant with strong focus on IT and software engineering jobs.',
        'specialization': ['Career Consulting', 'IT Guidance', 'Interview Prep'],
        'languages': ['English', 'Hindi', 'Tamil'],
        'totalReviewCount': 5,
        'isOnline': false,
        'profileImage': 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        'images': [
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',

        ],
        'reviews': [
          {'name': 'Amit', 'rate': 4.5, 'comment': 'Useful for job prep.'},
          {'name': 'Divya', 'rate': 4.6, 'comment': 'Very motivating.'},
          {'name': 'Farhan', 'rate': 4.4, 'comment': 'Helped with resume too.'},
          {'name': 'Sneha', 'rate': 4.9, 'comment': 'Practical advice!'},
          {'name': 'Jay', 'rate': 4.3, 'comment': 'Good insights.'},
        ],
        'videoCallRate':"20",
        'chatRate':"20",
        'phoneCallRate':'20'
      },
      {
        'id': 'exp002',
        'name': 'Mr. Rajeev Kumar',
        'rating': 4.6,
        'experience': 8,
        'rate': 10.0,
        'discountRate': 8.0,
        'followers': 950,
        'totalCallTime': 260,
        'totalChatTime': 430,
        'summary': 'Career consultant with strong focus on IT and software engineering jobs.',
        'specialization': ['Career Consulting', 'IT Guidance', 'Interview Prep'],
        'languages': ['English', 'Hindi', 'Tamil'],
        'totalReviewCount': 5,
        'isOnline': false,
        'profileImage': 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        'images': [
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',

        ],
        'reviews': [
          {'name': 'Amit', 'rate': 4.5, 'comment': 'Useful for job prep.'},
          {'name': 'Divya', 'rate': 4.6, 'comment': 'Very motivating.'},
          {'name': 'Farhan', 'rate': 4.4, 'comment': 'Helped with resume too.'},
          {'name': 'Sneha', 'rate': 4.9, 'comment': 'Practical advice!'},
          {'name': 'Jay', 'rate': 4.3, 'comment': 'Good insights.'},
        ],
        'videoCallRate':"20",
        'chatRate':"20",
        'phoneCallRate':'20'
      },
      {
        'id': 'exp002',
        'name': 'Mr. Rajeev Kumar',
        'rating': 4.6,
        'experience': 8,
        'rate': 10.0,
        'discountRate': 8.0,
        'followers': 950,
        'totalCallTime': 260,
        'totalChatTime': 430,
        'summary': 'Career consultant with strong focus on IT and software engineering jobs.',
        'specialization': ['Career Consulting', 'IT Guidance', 'Interview Prep'],
        'languages': ['English', 'Hindi', 'Tamil'],
        'totalReviewCount': 5,
        'isOnline': false,
        'profileImage': 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        'images': [
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',

        ],
        'reviews': [
          {'name': 'Amit', 'rate': 4.5, 'comment': 'Useful for job prep.'},
          {'name': 'Divya', 'rate': 4.6, 'comment': 'Very motivating.'},
          {'name': 'Farhan', 'rate': 4.4, 'comment': 'Helped with resume too.'},
          {'name': 'Sneha', 'rate': 4.9, 'comment': 'Practical advice!'},
          {'name': 'Jay', 'rate': 4.3, 'comment': 'Good insights.'},
        ],
        'videoCallRate':"20",
        'chatRate':"20",
        'phoneCallRate':'20'
      },
      {
        'id': 'exp002',
        'name': 'Mr. Rajeev Kumar',
        'rating': 4.6,
        'experience': 8,
        'rate': 10.0,
        'discountRate': 8.0,
        'followers': 950,
        'totalCallTime': 260,
        'totalChatTime': 430,
        'summary': 'Career consultant with strong focus on IT and software engineering jobs.',
        'specialization': ['Career Consulting', 'IT Guidance', 'Interview Prep'],
        'languages': ['English', 'Hindi', 'Tamil'],
        'totalReviewCount': 5,
        'isOnline': false,
        'profileImage': 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        'images': [
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',

        ],
        'reviews': [
          {'name': 'Amit', 'rate': 4.5, 'comment': 'Useful for job prep.'},
          {'name': 'Divya', 'rate': 4.6, 'comment': 'Very motivating.'},
          {'name': 'Farhan', 'rate': 4.4, 'comment': 'Helped with resume too.'},
          {'name': 'Sneha', 'rate': 4.9, 'comment': 'Practical advice!'},
          {'name': 'Jay', 'rate': 4.3, 'comment': 'Good insights.'},
        ],
        'videoCallRate':"20",
        'chatRate':"20",
        'phoneCallRate':'20'
      },
      {
        'id': 'exp002',
        'name': 'Mr. Rajeev Kumar',
        'rating': 4.6,
        'experience': 8,
        'rate': 10.0,
        'discountRate': 8.0,
        'followers': 950,
        'totalCallTime': 260,
        'totalChatTime': 430,
        'summary': 'Career consultant with strong focus on IT and software engineering jobs.',
        'specialization': ['Career Consulting', 'IT Guidance', 'Interview Prep'],
        'languages': ['English', 'Hindi', 'Tamil'],
        'totalReviewCount': 5,
        'isOnline': false,
        'profileImage': 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        'images': [
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',

        ],
        'reviews': [
          {'name': 'Amit', 'rate': 4.5, 'comment': 'Useful for job prep.'},
          {'name': 'Divya', 'rate': 4.6, 'comment': 'Very motivating.'},
          {'name': 'Farhan', 'rate': 4.4, 'comment': 'Helped with resume too.'},
          {'name': 'Sneha', 'rate': 4.9, 'comment': 'Practical advice!'},
          {'name': 'Jay', 'rate': 4.3, 'comment': 'Good insights.'},
        ],
        'videoCallRate':"20",
        'chatRate':"20",
        'phoneCallRate':'20'
      }
    ];

    return jsonResponse.map((json) => Expert.fromJson(json)).toList();
  }



}