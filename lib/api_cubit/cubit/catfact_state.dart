import 'package:http/http.dart';
import '../models/catfact.dart';

abstract class CatFactState {}

class InitCatFactState extends CatFactState {}

class LoadingCatFactState extends CatFactState {}

class ErrorCatFactState extends CatFactState {
  final String message;
  ErrorCatFactState(this.message);
}

class ResponseCatFactState extends CatFactState {
  List<CatFact> catfacts;
  ResponseCatFactState(this.catfacts);
}
