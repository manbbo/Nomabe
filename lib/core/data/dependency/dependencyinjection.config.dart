// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nomabe/list/data/repository/listrepository.dart' as _i5;
import 'package:nomabe/list/data/service/listservice.dart' as _i4;
import 'package:nomabe/list/domain/listinteractor.dart' as _i6;
import 'package:nomabe/list/presentation/cubit/listcubit.dart' as _i3;

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
    gh.factory<_i3.ListCubit>(() => _i3.ListCubit.create());
    gh.factory<_i4.ListService>(() => _i4.ListServiceImpl());
    gh.factory<_i5.ListRepository>(
        () => _i5.ListRepositoryImpl(gh<_i4.ListService>()));
    gh.factory<_i6.ListInteractor>(
        () => _i6.ListInteractorImpl(gh<_i5.ListRepository>()));
    return this;
  }
}
