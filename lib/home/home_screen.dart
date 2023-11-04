import 'package:flutter/material.dart';
import 'package:todoamira/home/settings/settings.dart';
import 'package:todoamira/home/task_list/task_list.dart';

import '../my_theme.dart';
import 'task_list/add_task_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "To Do List",
            style: Theme
                .of(context)
                .textTheme
                .titleLarge,
          )),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            currentIndex: selectedIndex,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list, size: 30), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  label: "")
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          shape: StadiumBorder(
              side: BorderSide(color: MyTheme.whiteColor, width: 5)),
          onPressed: () {
            showAddTaskBottomSheet();
          },
          child: Icon(
            Icons.add,
            color: MyTheme.whiteColor,
            size: 30,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void showAddTaskBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return AddTaskBottomSheet();
    },);
  }

  List<Widget> tabs = [TaskListTab(), SettingsTab()];
}
