import 'package:aqarek_task/screens/home/models/home_components_model.dart';
import 'package:aqarek_task/screens/home/repository/home_repository.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  // Fetch all home components list when home provider is created
  HomeProvider() {
    _getAllComponents();
  }

  HomeComponentsModel homeComponentsModel = HomeComponentsModel();

  bool loading = false;

  List<String> headerGallery = [];

  List<HeaderWidget> headerWidgets = [];

  List<Header> headerOffers = [];

  LatestProjects latestProjects = LatestProjects();

  Units units = Units();

  List<Partner> partners = [];

  // Loading components
  _setLoading(bool newValue) {
    loading = newValue;
    notifyListeners();
  }

  // get all home components from server after calling it from http network
  Future<void> _getAllComponents() async {
    _setLoading(true);

    try {
      await homeRepository.getAllComponents().then((value) {
        homeComponentsModel = value;
        print('object: ${homeComponentsModel.assistantTilte}');
        notifyListeners();
        _splitTheComponents();
        _setLoading(false);
      });
    } catch (e) {
      _setLoading(false);
    }
  }


  // To split each component item
  _splitTheComponents() {
    // header gallery Component
    _getHeadersGallery();
    // header widgets Component
    headerWidgets = homeComponentsModel.headerWidgets!;
    // header Offers component
    headerOffers = homeComponentsModel.headerOffers!;
    // latest Projects component
    latestProjects = homeComponentsModel.latestProjects!;
    // units component
    units = homeComponentsModel.units!;
    // partners components
    partners = homeComponentsModel.partners!;

  }

  _getHeadersGallery() {
    for (var element in homeComponentsModel.headerGallery!) {
      if (element.image != null) {
        headerGallery.add(element.image!);
      }
    }
  }
}
