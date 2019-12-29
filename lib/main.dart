import 'package:flutter/material.dart';
import 'package:my_portfolio/config/themes.dart';
import 'package:my_portfolio/states/theme_state.dart';
import 'package:my_portfolio/ui/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeState(),
        ),
      ],
      child: Consumer<ThemeState>(
        builder: (context, themeState, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeState.getThemeMode
                ? darkTheme(context)
                : lightTheme(context),
            initialRoute: "/",
            routes: {
              "/":(context)=>HomePage(),
            },
          );
        },
      ),
    );
  }
}

