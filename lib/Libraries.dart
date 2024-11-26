//The Library Details

import 'package:flutter/material.dart';

class http extends StatelessWidget {
  const http({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
          ''' Details: This library is used for making HTTP requests. You can use it to access APIs and fetch data from the internet.

• Usage:
    import 'package:http/http.dart' as http;

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
    } else {
      throw Exception('Failed to load data');
    }
  }'''),
    );
  }
}

class provider extends StatelessWidget {
  const provider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
          '''• Details: This library is used for state management in Flutter. With Provider, you can easily manage the state of your application.

• Usage:
    import 'package:flutter/material.dart';
  import 'package:provider/provider.dart';

  class Counter with ChangeNotifier {
    int _count = 0;

    int get count => _count;

    void increment() {
      _count++;
      notifyListeners();
    }
  }

  void main() {
    runApp(
      ChangeNotifierProvider(
        create: (context) => Counter(),
        child: MyApp(),
      ),
    );
  }'''),
    );
  }
}

class shared_preferences extends StatelessWidget {
  const shared_preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared_preferences'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
          '''• Details: This library is used for storing simple and small data locally. You can use it to save user settings or state.

• Usage:
    import 'package:shared_preferences/shared_preferences.dart';

  Future<void> saveData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> loadData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }'''),
    );
  }
}

class dio extends StatelessWidget {
  const dio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
          '''• Details: A powerful library for making HTTP requests that provides features like file uploads, cookie management, and support for interceptors.

• Usage:
    import 'package:dio/dio.dart';

  Future<void> fetchData() async {
    var dio = Dio();
    final response = await dio.get('https://api.example.com/data');
    // Process the data
  }'''),
    );
  }
}

class flutter_bloc extends StatelessWidget {
  const flutter_bloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter_bloc'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
          '''• Details: This library is designed for state management using the BLoC (Business Logic Component) pattern. This approach helps separate business logic from UI.

• Usage:
    import 'package:flutter_bloc/flutter_bloc.dart';

  class CounterCubit extends Cubit<int> {
    CounterCubit() : super(0);

    void increment() => emit(state + 1);
  }

  void main() {
    runApp(
      BlocProvider(
        create: (context) => CounterCubit(),
        child: MyApp(),
      ),
    );
  }
  '''),
    );
  }
}

class cachednetworkimage extends StatelessWidget {
  const cachednetworkimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cachednetworkimage'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
          '''• Details: This library is used for loading and caching images from the internet. This method helps reduce loading times and data consumption.

• Usage:
    import 'package:cached_network_image/cached_network_image.dart';

  CachedNetworkImage(
    imageUrl: "https://example.com/image.jpg",
    placeholder: (context, url) => CircularProgressIndicator(),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
  '''),
    );
  }
}

class flutterlocalnotifications extends StatelessWidget {
  const flutterlocalnotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutterlocalnotifications'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
          '''• Details: This library is used to send local notifications on mobile devices. You can use it to send notifications to users.

• Usage:
    import 'package:flutter_local_notifications/flutter_local_notifications.dart';

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails('your channel id', 'your channel name',
            'your channel description',
            importance: Importance.max, priority: Priority.high, showWhen: false);
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

ChatGPT 4 | Midjourney | Claude | Suno, [11/26/2024 9:10 AM]
    await flutterLocalNotificationsPlugin.show(0, 'New Alert', 'How to show Notification in Flutter',
        platformChannelSpecifics, payload: 'item x');
  }'''),
    );
  }
}
