import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Responsive Grid Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(widget.title),
        ),
        body: _buildGridLayout());
  }

  Widget _buildGridLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              lg: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.green,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.orange,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.red,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.blue,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
