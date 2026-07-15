

import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_alternatif_event.freezed.dart';

@freezed
sealed class ContactAlternatifEvent with _$ContactAlternatifEvent {
  const factory ContactAlternatifEvent.secondContact(
    String contactAternatif,
  ) = SecondContactContactAlternatifEvent;

    const factory ContactAlternatifEvent.isSelectOtherContact(
    bool isSelectOtherContact,
  ) = IsSelectOtherContactContactAlternatifEvent;

}