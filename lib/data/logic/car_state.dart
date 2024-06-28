import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_state.freezed.dart';

@freezed
class CarState<T> with _$CarState<T> {
  const factory CarState.initial() = _Initial;
  const factory CarState.loading() = _Loading;
  const factory CarState.success(T cars) = _Success<T>;
  const factory CarState.error({required String error}) = _Error;
}
