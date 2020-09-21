import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class MyAppSettings {
  MyAppSettings(StreamingSharedPreferences preferences)
      : dname = preferences.getString('name', defaultValue: ''),
        demail = preferences.getString('email', defaultValue: ''),
        dimageUrl = preferences.getString('imageUrl', defaultValue: '');

  final Preference<String> dname;
  final Preference<String> demail; 
  final Preference<String> dimageUrl;
}
