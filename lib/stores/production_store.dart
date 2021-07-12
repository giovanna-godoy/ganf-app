import 'package:ganf_app/models/robot_model.dart';
import 'package:ganf_app/services/robot_service.dart';
import 'package:mobx/mobx.dart';
part 'production_store.g.dart'; //unificando

class ProductionStore = _ProductionStore with _$ProductionStore;

abstract class _ProductionStore with Store {
  final RobotService _robotService = RobotService();
  List<RobotModel> _listaRobotLocal = <RobotModel>[];

  @observable
  bool isLoading = false;

  @observable
  String filtro = "";

  @observable
  ObservableList<RobotModel> listaRobot = <RobotModel>[].asObservable();

  @action
  findAllRobot() async {
    init();
  }

  @action
  deleteById(int id) async {
    _robotService.delete(id);
    findAllRobot();
  }

  @action
  setFilter(value) {
    filtro = value;
  }

  @computed
  List<RobotModel> get filtered {
    if (filtro.isEmpty) {
      return listaRobot;
    } else {
      var lista = listaRobot
          .where((robot) => robot.name.toLowerCase().contains(
                filtro.toLowerCase(),
              ))
          .toList();
      return lista;
    }
  }

  @computed
  int get quantidade {
    return listaRobot.length;
  }

  _ProductionStore() {
    init();
  }

  init() async {
    isLoading = true;
    _listaRobotLocal = await _robotService.findAll();
    listaRobot = _listaRobotLocal.asObservable();
    isLoading = false;
  }
}
