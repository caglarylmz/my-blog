import 'package:flutter/material.dart';
import 'package:my_portfolio/config/assets.dart';
import 'dart:html' as html;

import 'package:my_portfolio/config/constants.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FittedBox(
        fit: BoxFit.contain,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: Image.asset(Assets.avatar).image,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Çağlar YILMAZ",
                  textScaleFactor: 4,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Java. Android. Flutter. Asp.NET Core. \nLikes Dota",
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.github)),
                      label: Text('Github'),
                      onPressed: () => html.window
                          .open(Constants.PROFILE_GITHUB, 'caglarylmz'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.twitter)),
                      label: Text('Twitter'),
                      onPressed: () => html.window
                          .open(Constants.PROFILE_TWITTER, 'caglarylmz'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.medium)),
                      label: Text('Medium'),
                      onPressed: () => html.window
                          .open(Constants.PROFILE_MEDIUM, 'caglarylmz'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.instagram)),
                      label: Text('Instagram'),
                      onPressed: () => html.window
                          .open(Constants.PROFILE_INSTAGRAM, 'adityadroid'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.facebook)),
                      label: Text('Facebook'),
                      onPressed: () => html.window
                          .open(Constants.PROFILE_FACEBOOK, 'adityadroid'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.linkedin)),
                      label: Text('Linkedin'),
                      onPressed: () => html.window
                          .open(Constants.PROFILE_LINKEDIN, 'adityadroid'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
