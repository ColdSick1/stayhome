import 'package:stayhome/assets.dart';

class AchievementModel {
  final String image;
  final String name;
  final String description;
  AchievementModel(
      {required this.image, required this.name, required this.description});
}

List<AchievementModel> achievementModelData = [
  AchievementModel(
    image: Assets.assets_storoz_png,
    name: 'Сторож',
    description: 'Дома уже 5 дней',
  ),
  AchievementModel(
    image: Assets.assets_tekila_png,
    name: 'Текила-мен',
    description: 'Собрал 10 лимонов',
  ),
  AchievementModel(
      image: Assets.assets_zalozhnik_png,
      name: 'Заложник',
      description: 'Набрал 10 000 баллов'),
  AchievementModel(
    image: Assets.assets_tekila_png,
    name: 'Текила-мен',
    description: 'Собрал 10 лимонов',
  ),
  AchievementModel(
    image: Assets.assets_tekila_png,
    name: 'Текила-мен',
    description: 'Собрал 10 лимонов',
  ),
  AchievementModel(
    image: Assets.assets_tekila_png,
    name: 'Текила-мен',
    description: 'Собрал 10 лимонов',
  ),
  AchievementModel(
    image: Assets.assets_tekila_png,
    name: 'Текила-мен',
    description: 'Собрал 10 лимонов',
  ),
];
