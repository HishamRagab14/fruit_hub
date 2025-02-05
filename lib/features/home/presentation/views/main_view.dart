import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/presentation/views/products_view.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/custom_button_navigation_bar.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;
          setState(() {
            
          });
        },
        currentIndex: currentViewIndex,
      ),
      body: SafeArea(child: getCurrentView()),
      // SafeArea(child: HomeView()),
    );
  }

  Widget getCurrentView() {
    return [
      const HomeView(),
      const ProductsView(),
    ][currentViewIndex];
  }
}
