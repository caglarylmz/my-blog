import 'package:flutter/material.dart';
import 'package:my_portfolio/config/assets.dart';
import 'package:my_portfolio/states/theme_state.dart';
import 'package:my_portfolio/ui/pages/login_register_page.dart';
import 'package:my_portfolio/ui/tabs/about_tab.dart';
import 'package:my_portfolio/ui/tabs/blog_tab.dart';
import 'package:my_portfolio/ui/tabs/projects_tab.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    BlogTab(),
    ProjectsTab(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      drawer: _drawer(context),
      floatingActionButton: _fab,
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("About"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode),
            title: Text('Blog'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            title: Text('Projects'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}

//Appbar
Widget _appbar(BuildContext context) {
  final themeState = Provider.of<ThemeState>(context);
  return AppBar(
    actions: <Widget>[
      IconButton(
        icon: themeState.getThemeMode
            ? Icon(Icons.wb_sunny)
            : Image.asset(
                Assets.moon,
                height: 20,
                width: 20,
              ),
        onPressed: () => themeState.changeThemeMode(),
      ),
      PopupMenuButton<int>(
        
        padding: EdgeInsets.only(left: 8),
        captureInheritedThemes: true,
        itemBuilder: (BuildContext context)=>[
          PopupMenuItem(
            child: Icon(Icons.accessibility),
            value: 0,            
          ),
        ],
        onSelected: (int select){
          if(select==0){
            return showDialog(
              context: context,
              builder: (BuildContext c)=>AlertDialog(
                content: LoginRegisterWidget(),

              )
            );
          }else
            return null;
        },
      )
    ],
  );
}
//drawer
Widget _drawer(BuildContext context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Çağlar YILMAZ"),
            accountEmail: Text("caglarylmz@mail.com"),
            currentAccountPicture: Image.asset(
              Assets.avatar,
              height: 50,
              width: 50,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
         

        ],
      ),
    );
//fab
Widget get _fab => FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.red,
      onPressed: () => null,
    );

