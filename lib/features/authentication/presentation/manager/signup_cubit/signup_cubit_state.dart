part of 'signup_cubit_cubit.dart';

sealed class SignupState {}

final class SignupInitial extends SignupState {}
final class SignupLoading extends SignupState {}
final class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});
}
final class SignupFailure extends SignupState {
  final String errMsg;

  SignupFailure({required this.errMsg});
}
