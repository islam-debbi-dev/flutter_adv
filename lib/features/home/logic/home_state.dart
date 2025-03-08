import 'package:flutter_adv/core/networking/api_error_handler.dart';
import 'package:flutter_adv/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
      SpecializationsResponseModel data) = SpecializationSuccess;
  const factory HomeState.specializationError(ErrorHandler message) =
      SpecializationError;
}
