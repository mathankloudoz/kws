import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({final Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  PersistentTabController _controller = PersistentTabController();
  bool _hideNavBar = false;

  List<Widget> _buildScreens() => [];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
            textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
            icon: Icon(Icons.home),
            inactiveIcon: Icon(Icons.home_outlined),
            title: "Home",
            activeColorPrimary: red,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple),
        PersistentBottomNavBarItem(
          textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
          icon: Icon(Icons.shopping_cart),
          inactiveIcon: Icon(Icons.shopping_cart_outlined),
          title: "Cart",
          activeColorPrimary: red,
          inactiveColorPrimary: Colors.grey,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
          ),
        ),
        PersistentBottomNavBarItem(
          textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
          icon: Icon(Icons.favorite),
          inactiveIcon: Icon(Icons.favorite_border),
          title: "Favorite",
          activeColorPrimary: red,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
          icon: Icon(Icons.person),
          inactiveIcon: Icon(Icons.person_2_outlined),
          title: "Profile",
          activeColorPrimary: red,
          inactiveColorPrimary: Colors.grey,
        ),
      ];

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          resizeToAvoidBottomInset: true,
          navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
              ? 0.0
              : kBottomNavigationBarHeight,
          bottomScreenMargin: 0,

          backgroundColor: black,
          hideNavigationBar: _hideNavBar,
          decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
          ),
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
          ),
          navBarStyle:
              NavBarStyle.style1, // Choose the nav bar style with this property
        ),
      );
}
