import '../../../core/app_export.dart';

/// This class is used in the [forty_item_widget] screen.
class OfferItemModel {
  OfferItemModel({
    this.getOffClock,
    this.ramadanOffer,
    this.image,
    this.image1,
    this.id,
  }) {
    getOffClock = getOffClock ?? "Get 20% Off Clock Tower";
    ramadanOffer = ramadanOffer ?? "Ramadan Offer";
    image = image ?? ImageConstant.imgGroup38289;
    image1 = image1 ?? ImageConstant.imgMaskGroup;
    id = id ?? "";
  }

  String? getOffClock;

  String? ramadanOffer;

  String? image;

  String? image1;

  String? id;
}
