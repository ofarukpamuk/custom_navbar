import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        //backgroundColor: Color(0xfffa0050),
        flexibleSpace: Column(
      children: [
        Container(
          color: const Color(0xfffa0050),
          child: Padding(
            padding: const EdgeInsets.only(top: 50, right: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 8,
                  ),
                  width: MediaQuery.of(context).size.width - 120,
                  height: 36,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(250, 250, 250, 249),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search_sharp,
                        color: Colors.pink,
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "Yemek, İçecek, Tatlı..?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                      )
                      /*  SvgPicture.asset(
                        width:,
                        height: 50,
                        fit: BoxFit.contain,
                        color: Colors.pink,
                        Assets.icons.icBottomsearchSVG,
                      ), */
                    ],
                  ),
                ),
                Container(
                  width: 42,
                  height: 36,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Image.asset(
                    Assets.images.walletPNG,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: const Text(
                    "₺40",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 45,
          color: Colors.white70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 45,
                height: 35,
                child: SvgPicture.asset(
                  Assets.images.homeAdresSvg,
                  //  color: Colors.pink,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                width: MediaQuery.of(context).size.width - 80,
                child: Text(
                  "Omer Nasuhi Bilmen Mahallesi Kurt Deresi sokak no: 11 1/2",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }

  @override
  Size get preferredSize => Size(double.maxFinite, 115);
}
