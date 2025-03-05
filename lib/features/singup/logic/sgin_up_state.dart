import 'package:freezed_annotation/freezed_annotation.dart';

part 'sgin_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.SignupLoading() = SignUpLoading;
  const factory SignUpState.SignupSuccess(T data) = SignUpSuccess;
  const factory SignUpState.SignupError({required String message}) =
      SignUpFailure;
}
