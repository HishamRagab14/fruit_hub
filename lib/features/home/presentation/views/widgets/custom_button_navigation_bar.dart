import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 375,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomNavigationBarItems.asMap().entries.map((e){
          var index = e.key;
          var entity = e.value;
          return NavigationBarItem(
            isActive: selectedIndex == index,
            bottomNavigationBarEntity: entity,
          );
        }).toList(),

        // children: bottomNavigationBarItems.map((e) {
        //   return NavigationBarItem(
        //     isActive: false,                    هنـــــــــــــــا مفيـــــــــــــــش انديكس  
        //     bottomNavigationBarEntity: e,
        //   );
        // }).toList(),
      ),
    );
  }
}






