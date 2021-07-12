// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'robot_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RobotStore on _RobotStore, Store {
  Computed<List<RobotModel>> _$filteredComputed;

  @override
  List<RobotModel> get filtered =>
      (_$filteredComputed ??= Computed<List<RobotModel>>(() => super.filtered,
              name: '_RobotStore.filtered'))
          .value;
  Computed<int> _$quantidadeComputed;

  @override
  int get quantidade => (_$quantidadeComputed ??=
          Computed<int>(() => super.quantidade, name: '_RobotStore.quantidade'))
      .value;

  final _$isLoadingAtom = Atom(name: '_RobotStore.isLoading');

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

  final _$filtroAtom = Atom(name: '_RobotStore.filtro');

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

  final _$listaRobotAtom = Atom(name: '_RobotStore.listaRobot');

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

  final _$findAllRobotAsyncAction = AsyncAction('_RobotStore.findAllRobot');

  @override
  Future findAllRobot() {
    return _$findAllRobotAsyncAction.run(() => super.findAllRobot());
  }

  final _$deleteByIdAsyncAction = AsyncAction('_RobotStore.deleteById');

  @override
  Future deleteById(int id) {
    return _$deleteByIdAsyncAction.run(() => super.deleteById(id));
  }

  final _$_RobotStoreActionController = ActionController(name: '_RobotStore');

  @override
  dynamic setFilter(dynamic value) {
    final _$actionInfo = _$_RobotStoreActionController.startAction(
        name: '_RobotStore.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_RobotStoreActionController.endAction(_$actionInfo);
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
