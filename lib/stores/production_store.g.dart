// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductionStore on _ProductionStore, Store {
  Computed<List<RobotModel>> _$filteredComputed;

  @override
  List<RobotModel> get filtered =>
      (_$filteredComputed ??= Computed<List<RobotModel>>(() => super.filtered,
              name: '_ProductionStore.filtered'))
          .value;
  Computed<int> _$quantidadeComputed;

  @override
  int get quantidade =>
      (_$quantidadeComputed ??= Computed<int>(() => super.quantidade,
              name: '_ProductionStore.quantidade'))
          .value;

  final _$isLoadingAtom = Atom(name: '_ProductionStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$filtroAtom = Atom(name: '_ProductionStore.filtro');

  @override
  String get filtro {
    _$filtroAtom.reportRead();
    return super.filtro;
  }

  @override
  set filtro(String value) {
    _$filtroAtom.reportWrite(value, super.filtro, () {
      super.filtro = value;
    });
  }

  final _$listaRobotAtom = Atom(name: '_ProductionStore.listaRobot');

  @override
  ObservableList<RobotModel> get listaRobot {
    _$listaRobotAtom.reportRead();
    return super.listaRobot;
  }

  @override
  set listaRobot(ObservableList<RobotModel> value) {
    _$listaRobotAtom.reportWrite(value, super.listaRobot, () {
      super.listaRobot = value;
    });
  }

  final _$findAllRobotAsyncAction =
      AsyncAction('_ProductionStore.findAllRobot');

  @override
  Future findAllRobot() {
    return _$findAllRobotAsyncAction.run(() => super.findAllRobot());
  }

  final _$deleteByIdAsyncAction = AsyncAction('_ProductionStore.deleteById');

  @override
  Future deleteById(int id) {
    return _$deleteByIdAsyncAction.run(() => super.deleteById(id));
  }

  final _$_ProductionStoreActionController =
      ActionController(name: '_ProductionStore');

  @override
  dynamic setFilter(dynamic value) {
    final _$actionInfo = _$_ProductionStoreActionController.startAction(
        name: '_ProductionStore.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_ProductionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
filtro: ${filtro},
listaRobot: ${listaRobot},
filtered: ${filtered},
quantidade: ${quantidade}
    ''';
  }
}
