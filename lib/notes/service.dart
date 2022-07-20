import 'dart:convert';
import 'package:achit/utils/constant.dart';
import 'package:http/http.dart' as http;

class FetchNotes {
  static Future<MyNotes> get() async {
    final uri = Uri.parse(kUrl);
    final res = await http.get(uri);
    if (res.statusCode == 200) {
      return MyNotes.fromJson(
        jsonDecode(res.body),
      );
    } else {
      throw NoteException();
    }
  }
}

class MyNotes {
  final String x;
  MyNotes({
    required this.x,
  });

  factory MyNotes.fromJson(Map<String, dynamic> json) {
    return MyNotes(x: json['x'] as String);
  }
}

class NoteException implements Exception {
  @override
  String toString() {
    return 'Cannot load. Sry. Try again Later.';
  }
}
