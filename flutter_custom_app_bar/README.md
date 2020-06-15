# flutter_custom_app_bar

flutter custom app bar
A Flutter plugin for iOS and Android for the custom app bar.

## Installation

Add `flutter_custom_app_bar` to your `pubspec.yaml` dependencies. 
## Example
```dart
class ExampleScreen extends StatefulWidget{
  _ExampleScreenState createState()=> _ExampleScreenState();
}
class _ExampleScreenState extends State<ExampleScreen>{
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return ScreenWidget(
      body: Column(children: <Widget>[
        BaseAppBar(
          left: IconButton(
            icon: Image.asset(AppImages.icBack),
            onPressed: () {},
          ),
          center: 'Tittle',
          right: IconButton(
            icon: Image.asset(AppImages.icSearch),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: SingleChildScrollView(child: _body()),
        ),
      ]),
    );
  }
  Widget _body() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: WidgetUtil.resizeByWidth(context, 600),
      child: Center(
        child: Text("Update later",
          style: TextStyle(
              fontSize: WidgetUtil.resizeByWidth(context, 16),
              fontFamily: AppFonts.AvenirHeavy
          ),),
      ),
    );
  }
}
```

