import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onItemTapped});
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>
    with SingleTickerProviderStateMixin {
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
        children: bottomNavigationBarItems.asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;
          return Expanded(
            flex: selectedIndex == index ? 3 : 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  widget.onItemTapped(index);
                });
              },
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: NavigationBarItem(
                  key: ValueKey(selectedIndex == index),
                  isActive: selectedIndex == index,
                  bottomNavigationBarEntity: entity,
                ),
              ),
            ),
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
