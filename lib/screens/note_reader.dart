import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/styles/app_style.dart';

class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];

    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyle.cardsColor[color_id],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc['note_title'],
              style: AppStyle.mainTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.doc['create_date'],
              style: AppStyle.dateTitle,
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              widget.doc['note_content'],
              style: AppStyle.mainContent,
            ),
          ],
        ),
      ),
    );
  }
}
