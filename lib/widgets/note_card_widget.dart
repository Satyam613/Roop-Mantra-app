// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:meraapp/model/note.dart';

// final bgcolor = [
//   Colors.amber.shade200,
//   Colors.red.shade200,
//   Colors.yellow.shade200,
//   Colors.green.shade200,
//   Colors.pink.shade200,
//   Colors.purple.shade200,
// ];

// class NoteCard extends StatelessWidget {
//   final Note note;
//   final int index;

//   const NoteCard({Key? key, required this.note, required this.index})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final bg = bgcolor[index % bgcolor.length];
//     final minheight = getMinHight(index);
//     final time = DateFormat.yMMMEd().format(note.createdtime);
//     return Card(
//       color: bg,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           constraints: BoxConstraints(minHeight: minheight),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(time, style: const TextStyle(color: Colors.amber)),
//               const SizedBox(height: 4.0),
//               Text(
//                 note.title,
//                 style: const TextStyle(color: Colors.amber),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   double getMinHight(int index) {
//     switch (index % 4) {
//       case 0:
//         return 100;
//       case 1:
//         return 150;
//       case 2:
//         return 150;
//       case 3:
//         return 75;
//       default:
//         return 100;
//     }
//   }
// }
