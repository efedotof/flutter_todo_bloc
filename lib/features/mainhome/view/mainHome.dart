import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_bloc/router/app_router.dart';




@RoutePage()
class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  var selectPageIndex = 0;

  void _openPage(int index, TabsRouter tabsRouter){
    setState(()=> selectPageIndex = index);
    tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        CalendartRoute()
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
           bottomNavigationBar: 
        BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) => _openPage(index, tabsRouter),
          items: const [
            BottomNavigationBarItem(label: '',icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.countertops), ),
          ],
        )
        );
      },
     
    );
  }
}

