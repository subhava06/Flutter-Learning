import 'package:flutter/material.dart';
import 'package:thirty_widgets/widgets/alert.dart';
import 'package:thirty_widgets/widgets/dismissible.dart';
import 'package:thirty_widgets/widgets/rowscols.dart';
import 'package:thirty_widgets/widgets/snackbar.dart';



class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
   PageController pageController = PageController();
  // in actual apps we would be returning pages instead of simple texts
 /* List<Widget> widgets = [  // these texts will be returned on clicking those widgets
    Text('Home'),
    Text('Search'),
    Text('Add'),
    Text('Profile'),
  ];*/
// a function to determine on what happens when we click a widget on bottomNav bar
  void onTapped(int index)
  {
    setState((){
      selectedIndex = index;
    });
    pageController.jumpToPage(selectedIndex); // this dynamically jumps to pages acc to clicking the widgets in bottomNav bar
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text('Bottom Navigation Widget'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),*/
      // return PageView to display actual pages on clicking widgets in the bottomNav bar
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissibleWidget(),
          RowsCols(),
          SnackbarWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>
      [
       BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
       BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search'),
       BottomNavigationBarItem(icon: Icon(Icons.add,),label: 'Add'),
       BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile'),

      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
       onTap: onTapped,
      ),

    );
  }
}
