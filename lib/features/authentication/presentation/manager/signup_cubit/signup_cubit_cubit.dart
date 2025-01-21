import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';

part 'signup_cubit_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignupLoading());
    final result =
        await authRepo.createUserWithEmailAndPassword(email, password, name);
    return result.fold((failure) {
      emit(
        SignupFailure(errMsg: failure.message),
      );
    }, (userEntity) {
      emit(
        SignupSuccess(userEntity: userEntity),
      );
    });
  }

  
}
