import 'package:app/page/about_page.dart';
import 'package:app/page/home_page.dart';
import 'package:app/page/support_page.dart';
import 'package:flutter/material.dart';

class UpperBarWidget extends StatelessWidget {
  final Widget _child;
  final Widget _upperBar;
  final double _height;

  UpperBarWidget({
    Key key,
    Widget upperBar,
    @required Widget child,
    double height
  })
  : assert(child != null),
    this._child = child,
    this._upperBar = upperBar,
    this._height = height ?? 100.0,
    super(key: key);
  
  Widget _buildDefaultUpperBar(BuildContext context) {
    return Row(
      children: [
        Padding( // HOME SUPPORT ABOUT
          padding: EdgeInsets.all(5),
          child: Image.network('/assets/icon.png')
        ),
        _buildRouteButton(context, 'HOME', HomePage.routeName),
        _buildRouteButton(context, 'SUPPORT', SupportPage.routeName),
        _buildRouteButton(context, 'ABOUT', AboutPage.routeName)
      ]
    );
  }

  Widget _buildRouteButton(BuildContext context, String text, String routeName) {
    return GestureDetector(
      child: Text(text),
      onTap: () => Navigator.pushNamed(context, routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget resultUpperBar = _upperBar ?? _buildDefaultUpperBar(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 253, 243, 227),
          boxShadow: [
            BoxShadow(
              blurRadius: 5
            )
          ]
        ),
        child: Stack(
          children: [
            Container(
              height: _height,
              child: resultUpperBar
            ),
            Container(
              padding: EdgeInsets.only(top: _height),
              child: _child,
            )
          ],
        )
      ),
    );
  }
}