import '../../../core/app_export.dart';

/// This class is used in the [fortyone_item_widget] screen.
class MenuItemModel {
  MenuItemModel({
    this.macComboDeal,
    this.favorite,
    this.burgerFriseDrink,
    this.rs,
    this.imageNineteen,
    this.id,
  }) {
    macComboDeal = macComboDeal ?? "Mac Combo Deal";
    favorite = favorite ?? ImageConstant.imgFavorite;
    burgerFriseDrink = burgerFriseDrink ?? "Burger+Frise+Drink";
    rs = rs ?? "Rs. 799.00";
    imageNineteen = imageNineteen ?? ImageConstant.imgImage19;
    id = id ?? "";
  }

  String? macComboDeal;

  String? favorite;

  String? burgerFriseDrink;

  String? rs;

  String? imageNineteen;

  String? id;
}
