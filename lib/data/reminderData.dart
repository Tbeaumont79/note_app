import './usersData.dart';
import 'package:noteapp/models/noteModel.dart';

final reminderData = [
  NoteModel(
      noteCategory: '2021',
      month: 'February',
      noteTitle: 'Read 📚',
      noteDescription: 'Read 50 pages of my actual book !',
      noteDate: 'Today, 16:36 PM',
      sharedWith: []),
  NoteModel(
      noteCategory: '2021',
      month: '',
      noteTitle: 'Do physical Activity',
      noteDescription: 'Go for a run this morning ! 🏃‍♂️',
      noteDate: 'Today, 9:30 AM',
      sharedWith: users),
  NoteModel(
      noteCategory: '2021',
      month: '',
      noteTitle: 'Mental Health 🧠',
      noteDescription: 'Meditate for 5 minutes ',
      noteDate: 'Today, 10:30 AM',
      sharedWith: []),
];
