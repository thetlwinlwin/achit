import 'package:achit/notes/service.dart';
import 'package:achit/utils/loading_indicator.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late Future<MyNotes> myNotes;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    myNotes = FetchNotes.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<MyNotes>(
        future: myNotes,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(15),
              child: Text(
                snapshot.data!.x,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }

          return const Center(child: LoadingIndicator());
        },
      ),
    );
  }
}
