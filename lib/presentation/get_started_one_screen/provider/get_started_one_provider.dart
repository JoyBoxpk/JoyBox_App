import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/get_started_one_model.dart';

/// A provider class for the GetStartedOneScreen.
///
/// This provider manages the state of the GetStartedOneScreen, including the
/// current getStartedOneModelObj
class GetStartedOneProvider extends ChangeNotifier {
  GetStartedOneModel getStartedOneModelObj = GetStartedOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
