import 'package:noteapp/models/userModel.dart';

class NoteModel {
  final String month;
  final String noteTitle;
  final String noteDescription;
  final String noteDate;
  final String noteCategory;
  final List<UserModel> sharedWith;

  NoteModel(
      {this.month,
      this.noteTitle,
      this.noteDescription,
      this.noteDate,
      this.noteCategory,
      this.sharedWith});
}
