import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SigninLoading());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    return result.fold(
      (failure) {
        emit(
          SigninFailure(errMsg: failure.message),
        );
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signinWithGoogle() async {
    emit(SigninLoading());
    final result = await authRepo.signinWithGoogle();
    return result.fold((failure) {
      emit(
        SigninFailure(errMsg: failure.message),
      );
    }, (userEntity) {
      emit(
        SigninSuccess(userEntity: userEntity),
      );
    });
  }
}
