import 'package:flutter/material.dart';
import '../models/homepage_model.dart';

/// A provider class for the HomepagePage.
///
/// This provider manages the state of the HomepagePage, including the
/// current homepageModelObj
class HomepageProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomepageModel homepageModelObj = HomepageModel();

  int sliderIndex = 0;

  int sliderIndex1 = 0;

  int sliderIndex2 = 0;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
