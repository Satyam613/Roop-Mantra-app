// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:meraapp/widgets/note_card_widget.dart';

// import '../db/note_db.dart';
// import '../model/note.dart';

// class NotesPages extends StatefulWidget {
//   const NotesPages({Key? key}) : super(key: key);

//   @override
//   State<NotesPages> createState() => _NotesPagesState();
// }

// class _NotesPagesState extends State<NotesPages> {
//   late List<Note> note;
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     refreshNotes();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Notes'),
//       ),
//       body: Center(
//           child: isLoading
//               ? const CircularProgressIndicator()
//               : note.isEmpty
//                   ? const Text('no notes added yet')
//                   : buildnotes()),
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.black,
//           child: Icon(Icons.add),
//           onPressed: () async {
//             await Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => AddEditNotes()),
//             );
//             refreshNotes();
//           }),
//     );
//   }

//   Widget buildnotes() => MasonryGridView.count(
//         crossAxisCount: 3,
//         itemCount: note.length,
//         mainAxisSpacing: 4,
//         crossAxisSpacing: 3,
//         itemBuilder: (context, index) {
//           final notes = note[index];
//           return GestureDetector(
//             onTap: () async {
//               await Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => NoteDetailpage(noteID: notes.id!),
//                 ),
//               );
//                   refreshNotes();
//             },
//         child: NoteCard(note: notes, index: index)
//           );
//         },
//       );
//   Future refreshNotes() async {
//     setState(() {
//       isLoading = true;
//     });
//     note = await NoteDatabase.instance.readAll();
//     setState(() {
//       isLoading = false;
//     });
//   }

//   void dispose() {
//     NoteDatabase.instance.close();
//     super.dispose();
//   }
// }
