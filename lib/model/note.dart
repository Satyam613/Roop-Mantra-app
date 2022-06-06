// // ignore_for_file: prefer_const_declarations

// final String tableNotes = "note";

// class NotesFields {
//   static final String id = "_id";
//   static final String isImportant = 'isImportant';
//   static final String number = 'number';
//   static final String title = 'title';
//   static final String description = 'description';
//   static final String time = 'time';

//   static final List<String> values = [
//     id,
//     isImportant,
//     number,
//     title,
//     description,
//     time,
//   ];
// }

// class Note {
//   final int? id;

//   final bool isImportant;
//   final int number;
//   final String title;
//   final String description;
//   final DateTime createdtime;

// //create a const constructor
//   const Note(
//       {this.id,
//       required this.isImportant,
//       required this.number,
//       required this.title,
//       required this.description,
//       required this.createdtime});
// //create  a copy method
//   Note copy({
//     int? id,
//     bool? isImportant,
//     int? number,
//     String? title,
//     String? description,
//     DateTime? createdTime,
//   }) =>
//       Note(
//         id: id ?? this.id,
//         isImportant: isImportant ?? this.isImportant,
//         number: number ?? this.number,
//         title: title ?? this.title,
//         description: description ?? this.description,
//         createdtime: createdtime,
//       );

//   //code to read the value from json file to field
//   static Note fromJson(Map<String, Object?> json) => Note(
//         id: json[NotesFields.id] as int?,
//         isImportant: json[NotesFields.isImportant] == 1,
//         number: json[NotesFields.number] as int,
//         title: json[NotesFields.title] as String,
//         description: json[NotesFields.description] as String,
//         createdtime: DateTime.parse(json[NotesFields.time] as String),
//       );

//   Map<String, Object?> toJson() {}
// }
