import 'package:freezed_annotation/freezed_annotation.dart';
part 'car_brand_state.freezed.dart';

@freezed
class CarBrandState<T> with _$CarBrandState<T> {
  const factory CarBrandState.initial() = _Initial;
  const factory CarBrandState.loading() = _Loading;
  const factory CarBrandState.success(T data) = Success<T>;
  const factory CarBrandState.error({required String error}) = Error;
}
