import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../state_manage/base_scaffold_mobx.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseScaffoldMobX = Provider.of<BaseScaffoldMobX>(context);

    return Observer(
      builder: (context) {
        return Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            color: Color(0xffF4FAFF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < baseScaffoldMobX.items.length; i++)
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                      onTap: () {
                        baseScaffoldMobX.setCurrentIndex(i);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset(
                              baseScaffoldMobX.items[i].image,
                              color: i == baseScaffoldMobX.currentIndex
                                  ? Color(0xfffa0050)
                                  : Color.fromARGB(255, 62, 62, 65),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            baseScaffoldMobX.items[i].title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: i == baseScaffoldMobX.currentIndex
                                  ? Colors.pink
                                  : Color(0xff02040F),
                            ),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: i == baseScaffoldMobX.currentIndex,
                      child: Positioned.fill(
                        top: -10,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 2,
                            width: 32,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfffa0050),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}
