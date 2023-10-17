import 'package:cutomnavibar/profil_page.dart';
import 'package:cutomnavibar/search_page.dart';
import 'package:flutter/material.dart';

import '../assets.dart';
import '../basket_page.dart';
import '../home_page.dart';
import 'bottom_nav_bar_model.dart';
import 'package:mobx/mobx.dart';

part 'base_scaffold_mobx.g.dart'; // Bu kısmı ekleyin ve "flutter pub run build_runner build" komutunu çalıştırın

class BaseScaffoldMobX = _BaseScaffoldRiverpodBase with _$BaseScaffoldRiverpod;

abstract class _BaseScaffoldRiverpodBase with Store {
  @observable
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: Assets.icons.icBottomhomeSVG, title: "Home"),
    BottomNavBarModel(image: Assets.icons.icBottomsearchSVG, title: "Search"),
    BottomNavBarModel(image: Assets.icons.icBottombasketSVG, title: "Basket"),
    BottomNavBarModel(image: Assets.icons.icBottomProfileSVG, title: "Profil"),
  ];

  @observable
  int currentIndex = 0;

  @action
  void setCurrentIndex(int index) {
    currentIndex = index;
  }

  @computed
  Widget get currentBody {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return SearchPage();
      case 2:
        return BasketPage();
      case 3:
        return ProfilPage();
      default:
        return HomePage();
    }
  }
}
