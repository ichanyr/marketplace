import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/catfact_repository.dart';
import 'catfact_state.dart';

class CatFactCubit extends Cubit<CatFactState> {
  final CatFactRepository _repository;
  CatFactCubit(this._repository) : super(InitCatFactState());

  Future<void> fetchCatFact() async {
    emit(LoadingCatFactState());
    try {
      final response = await _repository.getAll();
      emit(ResponseCatFactState(response));
    } catch (e) {
      emit(ErrorCatFactState(e.toString()));
    }
  }
}
