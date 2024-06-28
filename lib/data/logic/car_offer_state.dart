import 'package:freezed_annotation/freezed_annotation.dart';

part'car_offer_state.freezed.dart';

@freezed
class CarOfferState<T> with _$CarOfferState<T> {
  const factory CarOfferState.initial() = _Initial;
  const factory CarOfferState.loading() = _Loading;
  const factory CarOfferState.success(T carOffers) = _Success<T>;
  const factory CarOfferState.error({required String error}) = _Error;
}
