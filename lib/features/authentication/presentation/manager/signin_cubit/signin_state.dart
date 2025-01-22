part of 'signin_cubit.dart';

sealed class SigninState {}

final class SigninInitial extends SigninState {}
final class SigninLoading extends SigninState {}
final class SigninSuccess extends SigninState {
  final UserEntity userEntity;
  SigninSuccess({required this.userEntity});
}
final class SigninFailure extends SigninState {
  final String errMsg;
  SigninFailure({required this.errMsg});
}