import 'package:flutter/material.dart';
import 'package:fluttercustomappbar/flutter_custom_app_bar.dart';

///Tan.nguyen 6/15/20 : Icon app bar
class BaseIconAppBar extends StatelessWidget {
  final Pair left; // img path, function
  final String center; // title
  final Pair right; // img path, function

  const BaseIconAppBar({Key key, this.left, this.center, this.right}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
      left: left != null
          ? IconButton(
              icon: Image.asset(left.left),
              onPressed: left.right,
            )
          : EmptyIcon(),
      center: Text(center ?? '',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          )),
      right: right != null
          ? IconButton(
              icon: Image.asset(right.left),
              onPressed: right.right,
            )
          : EmptyIcon(),
    );
  }
}

///Tan.nguyen 6/15/20 : base app bar
class BaseAppBar extends StatelessWidget {
  final Widget left;
  final Widget center;
  final Widget right;

  BaseAppBar({Key key, this.left, this.center, this.right}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: Container(
        padding: EdgeInsets.only(top: WidgetUtil.resizeByWidth(context, 20)),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                left ?? Container(),
                Expanded(child: Center(child: center ?? Container())),
                right ?? Container()
              ],
            ),
            DividerLine()
          ],
        ),
      ),
    );
  }
}
