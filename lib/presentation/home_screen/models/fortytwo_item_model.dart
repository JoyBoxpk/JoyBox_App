import '../../../core/app_export.dart';

/// This class is used in the [fortytwo_item_widget] screen.
class FortytwoItemModel {
  FortytwoItemModel({
    this.pngwing,
    this.id,
  }) {
    pngwing = pngwing ?? ImageConstant.imgPngwing66;
    id = id ?? "";
  }

  String? pngwing;

  String? id;
}
