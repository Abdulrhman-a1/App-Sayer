import 'package:freezed_annotation/freezed_annotation.dart';

part 'dealership_state.freezed.dart';
@freezed
class DealershipState<T> with _$DealershipState<T> {
  const factory DealershipState.initial() = _Initial;
  const factory DealershipState.loading() = _Loading;
  const factory DealershipState.success(T dealerships) = _Success<T>;
  const factory DealershipState.error({required String error}) = _Error;

}
