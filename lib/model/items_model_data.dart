import 'package:stayhome/assets.dart';

import 'items_model.dart';

List<ItemsModel> ItemsModelData = [
  ItemsModel(
    name: 'Доставка',
    effect: 'Через 23 ч',
    asset: Assets.assets_box_svg,
  ),
  ItemsModel(
    name: 'Рулон',
    effect: '+7 мин',
    asset: Assets.assets_Paper_svg,
  ),
  ItemsModel(
    name: 'Лимон',
    effect: '+3 hp',
    asset: Assets.assets_Lemon_svg,
  ),
  ItemsModel(
    name: 'Антисептик',
    effect: '+20 мин',
    asset: Assets.assets_sanitaiser_svg,
  ),
  ItemsModel(
    name: 'Маска',
    effect: '+20 мин',
    asset: Assets.assets_Mask_svg,
  ),
  ItemsModel(
    name: 'Перчатки',
    effect: '+20 мин',
    asset: Assets.assets_Gloves_svg,
  ),
  ItemsModel(
    name: 'Антидот',
    effect: '+100% hp',
    asset: Assets.assets_antidot_svg,
  ),
  ItemsModel(
    name: 'Чеснок',
    effect: '+30 мин щит',
    asset: Assets.assets_garlic_svg,
  ),
  ItemsModel(
    name: 'Невидимость',
    effect: '22 мин',
    asset: Assets.assets_invisability_svg,
  ),
];
