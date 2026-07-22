import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_cellule_usercase.dart' show GetCelluleUsercase;
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/event/cellule_event.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CelluleBloc extends Bloc<CelluleEvent, ApiState<List<CelluleResponse>>> {
  CelluleBloc({required this.getCelluleUsercase})
    : super(ApiState<List<CelluleResponse>>.initial()) {
    on<CelluleEvent>(getCellule);
  }

  final GetCelluleUsercase getCelluleUsercase;

  Future<void> getCellule(
    CelluleEvent event,
    Emitter<ApiState<List<CelluleResponse>>> emit,
  ) async {
    switch (event) {
      case FetchCelluleEvent():
        emit(ApiState<List<CelluleResponse>>.load());
        final result = await getCelluleUsercase.call(RequestCellule(
          
        ));
        emit(
          result.fold(
            (failure) =>
                ApiState<List<CelluleResponse>>.failed(failure.message),
            (success) => ApiState<List<CelluleResponse>>.success(
              success,
              status: FormzSubmissionStatus.success,
            ),
          ),
        );

        break;

      case FetchByCriteriaCelluleEvent(:final celluleId):
        if (celluleId == null) return;

        if (celluleId.isNotEmpty) {
          emit(ApiState<List<CelluleResponse>>.load());
          final result = await getCelluleUsercase.call(
            RequestCellule(celluleId: celluleId),
          );
          emit(
            result.fold(
              (failure) =>
                  ApiState<List<CelluleResponse>>.failed(failure.message),
              (success) => ApiState<List<CelluleResponse>>.success(
                success,
                status: FormzSubmissionStatus.success,
              ),
            ),
          );
        }
        ;

        break;

      default:
    }
  }
}
