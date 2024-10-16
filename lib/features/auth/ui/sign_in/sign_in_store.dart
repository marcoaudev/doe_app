import 'package:doe/core/state_manager/state_manager.dart';
import 'package:doe/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:doe/features/auth/domain/vos/email.dart';
import 'package:doe/features/auth/domain/vos/password.dart';
import 'package:doe/features/auth/ui/sign_in/sing_in_state.dart';

class SignInStore extends StateManager<SignInState>{
  final SignInUsecase usecase;

  SignInStore(this.usecase) : super(InitialSignInState());

  signIn({required Email email, required Password password}) async{
    emit(LoadingSignInState());
    final result = await usecase.call({
      'email': email.toString(),
      'password': password.toString(),
    });

    result.fold(
      (error) => emit(FailedSignInState()),
      (success) => emit(SuccessSignInState()),
    );
  }
}