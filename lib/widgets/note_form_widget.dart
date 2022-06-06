import 'package:flutter/material.dart';

class NoteForm extends StatelessWidget {
  final bool? isImportant;
  final int? priorityLevel;
  final String? title;
  final String? description;

  final ValueChanged<bool> onchangedImportant;
  final ValueChanged<int> onchangedpriority;
  final ValueChanged<String> onchangedTitle;
  final ValueChanged<String> onchangedDescription;
  const NoteForm(
      {Key? key,
      this.isImportant = false,
      this.priorityLevel = 0,
      this.title = '',
      this.description = '',
      required this.onchangedImportant,
      required this.onchangedpriority,
      required this.onchangedTitle,
      required this.onchangedDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        buildtitle(),
       const SizedBox(height: 5.0),
       buildDescription(),
       const SizedBox(height: 5.0),
       Row(
         children: [
           // ignore: prefer_const_constructors
           Text('isImportant'),
           Switch(value: isImportant ?? false, onChanged: onchangedImportant),
         ],
       ),
       const SizedBox(height: 5.0,),
        Row(
         children: [
           // ignore: prefer_const_constructors
           Text('priority'),
           Expanded(
             child:Slider(
             min: 0,max: 5,value: (priorityLevel ?? 0).toDouble(),
             onChanged:(priorityLevel)=>onchangedpriority(priorityLevel.toInt()),
           ),
           ),
         ],
       ),
       
      
      ],
    );
  }
  Widget buildtitle()=> TextFormField(
    maxLines: 1,
    initialValue: title,
    style: const TextStyle(fontSize: 10.0,color: Colors.amberAccent),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: title,
      hintStyle:const TextStyle(color: Colors.brown)),
      validator:(title)=>title!=null && title.isEmpty ?'Title not be empty':null,
      onChanged: onchangedTitle,
    );
   Widget buildDescription()=> TextFormField(
    maxLines: 1,
    initialValue: description,
    style: const TextStyle(fontSize: 10.0,color: Colors.amberAccent),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText:description,
      hintStyle:const TextStyle(color: Colors.brown)),
      validator:(description)=>description!=null && description.isEmpty ?'description not be empty':null,
      onChanged: onchangedDescription,
    );
 
}
