import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

import '../../constatnts.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fethcAllNotes() async {
    emit(NotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBook);
      var note = noteBox.values.toList();
      emit(NotesSuccess(note));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
