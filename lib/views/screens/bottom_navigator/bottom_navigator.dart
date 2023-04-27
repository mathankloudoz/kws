import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';
import 'package:kws/views/screens/Home_screen.dart';
import 'package:kws/views/screens/cart_screen/cart_screen.dart';
import 'package:kws/views/screens/coupon_screen.dart/coupon_screen.dart';
import 'package:kws/views/screens/live_screen/live_screen.dart';
import 'package:kws/views/screens/notification/notification.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({final Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  PersistentTabController _controller = PersistentTabController();
  bool _hideNavBar = false;

  List<Widget> _buildScreens() => [
        HomeScreen(),
        NotificationScreen(),
        LiveScreen(),
        CouponScreen(),
        CartScreen(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
            textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
            icon: Icon(Icons.home),
            inactiveIcon: Icon(Icons.home_outlined),
            activeColorPrimary: red,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple),
        PersistentBottomNavBarItem(
          textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
          icon: Icon(Icons.notifications_active_outlined),
          inactiveIcon: Icon(Icons.notifications_none),
          activeColorPrimary: red,
          inactiveColorPrimary: Colors.grey,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
          ),
        ),
        PersistentBottomNavBarItem(
          textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
          icon: Icon(Icons.print_outlined),
          inactiveIcon: Icon(Icons.print_rounded),
          activeColorPrimary: red,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
          icon: Icon(Icons.discount),
          inactiveIcon: Icon(Icons.discount_outlined),
          activeColorPrimary: red,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          textStyle: headingText.copyWith(fontSize: 20, letterSpacing: 2),
          icon: Icon(Icons.shopping_cart),
          inactiveIcon: Icon(Icons.shopping_cart_outlined),
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

          backgroundColor: white,
          hideNavigationBar: _hideNavBar,
          decoration: NavBarDecoration(
            border: Border.all(color: black, width: 2),
            borderRadius: BorderRadius.circular(5),
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
