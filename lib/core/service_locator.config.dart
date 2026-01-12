// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/repository/auth_repo_impl.dart' as _i231;
import '../data/repository/user_repo_impl.dart' as _i298;
import '../domain/repository/auth_repo.dart' as _i741;
import '../domain/repository/repo.dart' as _i177;
import '../domain/repository/user_repo.dart' as _i682;
import '../domain/usecase/forget_passwrod/forget_password_use_case.dart'
    as _i415;
import '../domain/usecase/login/login_use_case.dart' as _i246;
import '../domain/usecase/registration/registration_use_case.dart' as _i123;
import '../domain/usecase/use_case.dart' as _i148;
import '../domain/usecase/user_information/fetch_user_info_use_case.dart'
    as _i884;
import '../domain/usecase/user_information/is_user_authenticated_use_case.dart'
    as _i227;
import '../domain/usecase/user_information/save_user_info_use_case.dart'
    as _i341;
import '../domain/usecase/user_information/user_logout_use_case.dart' as _i863;
import '../presentation/forget_password/bloc/forget_password_bloc.dart'
    as _i672;
import '../presentation/home/bloc/dashboard_bloc.dart' as _i730;
import '../presentation/login/bloc/login_bloc.dart' as _i331;
import '../presentation/registration/bloc/registration_bloc.dart' as _i379;
import '../presentation/splash/bloc/splash_bloc.dart' as _i1044;
import '../router/app_router.dart' as _i81;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i884.FetchUserInfoUseCase>(() => _i884.FetchUserInfoUseCase());
    gh.factory<_i863.UserLogoutUseCase>(() => _i863.UserLogoutUseCase());
    gh.lazySingleton<_i81.AppRouter>(() => _i81.AppRouter());
    gh.factory<_i741.AuthRepo>(() => _i231.AuthRepoImpl());
    gh.factory<_i227.IsUserAuthenticatedUseCase>(
      () => _i227.IsUserAuthenticatedUseCase(gh<_i177.AuthRepo>()),
    );
    gh.factory<_i246.LoginUseCase>(
      () => _i246.LoginUseCase(
        gh<_i177.AuthRepo>(),
        gh<_i148.FetchUserInfoUseCase>(),
      ),
    );
    gh.factory<_i682.UserRepo>(() => _i298.UserRepoImpl());
    gh.factory<_i331.LoginBloc>(
      () => _i331.LoginBloc(gh<_i148.LoginUseCase>()),
    );
    gh.factory<_i341.SaveUserInfoUseCase>(
      () => _i341.SaveUserInfoUseCase(gh<_i682.UserRepo>()),
    );
    gh.factory<_i1044.SplashBloc>(
      () => _i1044.SplashBloc(gh<_i227.IsUserAuthenticatedUseCase>()),
    );
    gh.factory<_i730.DashboardBloc>(
      () => _i730.DashboardBloc(gh<_i863.UserLogoutUseCase>()),
    );
    gh.factory<_i415.ForgetPasswordUseCase>(
      () => _i415.ForgetPasswordUseCase(gh<_i177.AuthRepo>()),
    );
    gh.factory<_i672.ForgetPasswordBloc>(
      () => _i672.ForgetPasswordBloc(gh<_i148.ForgetPasswordUseCase>()),
    );
    gh.factory<_i123.RegistrationUseCase>(
      () => _i123.RegistrationUseCase(
        gh<_i177.AuthRepo>(),
        gh<_i148.SaveUserInfoUseCase>(),
      ),
    );
    gh.factory<_i379.RegistrationBloc>(
      () => _i379.RegistrationBloc(gh<_i148.RegistrationUseCase>()),
    );
    return this;
  }
}
