import 'package:dio/dio.dart';
import 'package:ganf_app/services/service_config.dart';
import 'package:ganf_app/models/robot_model.dart';

class RobotService {
  static final String _endpoint =
      "https://5f6d52ef60cf97001641ab10.mockapi.io/ganf";
  static final String _resource = 'catalog';

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<RobotModel>> findAll() async {
    List<RobotModel> lista = new List<RobotModel>();

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            print(value);
            lista.add(
              RobotModel.fromMap(value),
            );
          },
        );
      }
    } catch (error) {
      print("[ERROR] - $error ");
      throw error;
    }

    return lista;
  }

  Future<void> delete(int id) async {
    try {
      String endpoint = _resource + "/" + id.toString();

      Response response = await service.create().delete(
            endpoint,
          );

      if (response.statusCode != 200) {
        throw Exception("Não foi possível excluir o robô :(");
      }
    } catch (error) {
      throw error;
    }
  }
}
