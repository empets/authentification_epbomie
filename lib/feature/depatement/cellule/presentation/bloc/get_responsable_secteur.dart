import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_list_secteur.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/event/cellule_event.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSecteurBloc
    extends Bloc<CelluleEvent, ApiState<List<SecteurResponse>>> {
  GetSecteurBloc({required this.getListSecteurUsercase})
    : super(ApiState<List<SecteurResponse>>.initial()) {
    on<CelluleEvent>(getReponsableSecteur);
  }

  final GetListSecteurUsercase getListSecteurUsercase;

  Future<void> getReponsableSecteur(
    CelluleEvent event,
    Emitter<ApiState<List<SecteurResponse>>> emit,
  ) async {
    switch (event) {
      case FetchCelluleEvent():
        emit(ApiState<List<SecteurResponse>>.load());
        final result = await getListSecteurUsercase.call(
          RequestSecteur(),
        );
        emit(
          result.fold(
            (failure) => ApiState<List<SecteurResponse>>.failed(
              failure.message,
            ),
            (success) => ApiState<List<SecteurResponse>>.success(
              success,
              status: FormzSubmissionStatus.success,
            ),
          ),
        );
        break;
      default:
    }
  }
}
