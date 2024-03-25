import '../../../core/app_export.dart';

/// This class is used in the [thirtyeight_item_widget] screen.
class TradtionalRestaurantsItemModel {
  TradtionalRestaurantsItemModel({
    this.theEastEnd,
    this.theEastEnd1,
    this.id,
  }) {
    theEastEnd = theEastEnd ?? "The East End";
    theEastEnd1 = theEastEnd1 ?? ImageConstant.imgRectangle4684;
    id = id ?? "";
  }

  String? theEastEnd;

  String? theEastEnd1;

  String? id;
}
