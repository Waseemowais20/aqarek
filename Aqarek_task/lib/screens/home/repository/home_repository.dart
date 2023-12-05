import 'package:aqarek_task/screens/home/models/home_components_model.dart';
import 'package:aqarek_task/screens/home/repository/home_network.dart';

class HomeRepository {
  // Get home components from api network
  Future<HomeComponentsModel> getAllComponents() async {
    return await homeNetwork.getHomeComponents();
  }
}

HomeRepository homeRepository = HomeRepository();