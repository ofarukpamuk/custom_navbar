import 'package:cutomnavibar/component/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../component/custom_buttom_nav_bar.dart';
import 'base_scaffold_mobx.dart';

class BaseScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final baseScaffoldMobX = Provider.of<BaseScaffoldMobX>(context);

    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: Observer(
        builder: (_) {
          return baseScaffoldMobX.currentBody;
        },
      ),
    );
  }
}
