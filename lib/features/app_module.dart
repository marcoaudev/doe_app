import 'package:doe/core/usecase/usecase.dart';
import 'package:doe/features/auth/data/datasources/auth_datasource.dart';
import 'package:doe/features/auth/data/datasources/auth_datasource_impl.dart';
import 'package:doe/features/auth/data/repository/auth_repository_impl.dart';
import 'package:doe/features/auth/domain/repository/auth_repository.dart';
import 'package:doe/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:doe/features/auth/ui/sign_in/sign_in_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

  @override
  void binds(i) {
    i.add<IAuthDataSource>(AuthDatasourceImplementation.new);
    i.add<IAuthRepository>(AuthRepositoryImplementation.new);
    i.addSingleton<Usecase>(SignInUsecase.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const AuthPage());
  }
}