// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/core/auth_bloc.dart' as _i12;
import 'application/auth/login_form/login_form_bloc.dart' as _i8;
import 'application/auth/register_form/register_form_bloc.dart' as _i9;
import 'application/auth/user_profile/user_profile_bloc.dart' as _i10;
import 'application/auth/user_profile_form/user_profile_form_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injection_module.dart' as _i13;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i5.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
          gh<_i3.FirebaseAuth>(),
          gh<_i5.GoogleSignIn>(),
          gh<_i4.FirebaseFirestore>(),
        ));
    gh.factory<_i8.LoginFormBloc>(
        () => _i8.LoginFormBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i9.RegisterFormBloc>(
        () => _i9.RegisterFormBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i10.UserProfileBloc>(
        () => _i10.UserProfileBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i11.UserProfileFormBloc>(
        () => _i11.UserProfileFormBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i6.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
