abstract class SignInState {}

class InitialSignInState extends SignInState{}
class LoadingSignInState extends SignInState{}
class FailedSignInState extends SignInState{}
class SuccessSignInState extends SignInState{}