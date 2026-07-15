
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:formz/formz.dart';
// import 'package:ma_box_orange/core/features/shared/contact/presentation/bloc/event/contact_alternatif_event.dart';
// import 'package:ma_box_orange/core/features/shared/contact/presentation/bloc/state/contact_alternatif_state.dart';
// import 'package:ma_box_orange/core/model/formz_model/text_formz.dart';

// class ContactAlternatifBloc extends Bloc<ContactAlternatifEvent, ContactAlternatifState> {
//   ContactAlternatifBloc() : super(ContactAlternatifState.initial()) {
//     on<ContactAlternatifEvent>(_onSecondContact);
//   }


//   Future<void> _onSecondContact(ContactAlternatifEvent event, Emitter<ContactAlternatifState> emit) async {
//     switch (event) {
//       case IsSelectOtherContactContactAlternatifEvent(:final isSelectOtherContact):
//        emit(state.copyWith(isSelectOtherContact: isSelectOtherContact));
     
//       break;  
//       case SecondContactContactAlternatifEvent():
//           emit(
//           state.copyWith(
//             contactAternatif: PhoneAlternativeFormz.dirty(event.contactAternatif),
//             errorType: null,
//             isValid: Formz.validate(
//               [PhoneAlternativeFormz.dirty(event.contactAternatif)],
//             ),
//           ),
//         );
//         break;
    
          
//   }
// }
// }