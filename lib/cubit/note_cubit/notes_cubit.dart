import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

import '../../constatnts.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? note;
  fethcAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNoteBook);
    note = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
