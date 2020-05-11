import 'package:flutter/material.dart';
import 'package:petadoption/screens/custom_drawer_view.dart';
import 'package:petadoption/screens/home.dart';
import 'package:petadoption/widgets/zoom_scaffold.dart';
import 'package:provider/provider.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  MenuController menuController;

  @override
  void initState() {
    super.initState();

    menuController = new MenuController(
      vsync: this,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: menuController),
      ],
      child: ZoomScaffold(
        menuScreen: DrawerScreen(),
        contentScreen: Layout(
          contentBuilder: (cc) => Container(
            color: Colors.grey[200],
            child: Container(
              color: Colors.grey[200],
            ),
          ),
        ),
      ),
    );
  }
}
