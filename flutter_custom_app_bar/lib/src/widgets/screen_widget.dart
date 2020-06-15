import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenWidget extends StatelessWidget {
  final Widget body;
  final Widget bottomNavigationBar;
  final Function() unFocus;
  final bool addDefaultWidget;
  final bool resizeToAvoidBottomPadding;

  const ScreenWidget(
      {Key key,
      this.body,
      this.bottomNavigationBar,
      this.unFocus,
      this.addDefaultWidget = true,
      this.resizeToAvoidBottomPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: GestureDetector(
        child: Scaffold(
          resizeToAvoidBottomPadding: resizeToAvoidBottomPadding ?? false,
          backgroundColor: Colors.white,
          bottomNavigationBar: bottomNavigationBar,
          body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: addDefaultWidget
                  ? Stack(
                      children: <Widget>[
                        body,
                      ],
                    )
                  : body),
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
          if (unFocus != null) {
            unFocus();
          }
        },
      ),
    );
  }
}
