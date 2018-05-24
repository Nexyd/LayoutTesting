import 'package:flutter/material.dart';

class TopLakesPage extends StatefulWidget {
    @override  _MyHomePageState createState()
        => new _MyHomePageState();
}

class _MyHomePageState extends State<TopLakesPage> {

    Image  _imageSection;
    Widget _titleSection;
    Widget _buttonSection;
    Widget _descriptionSection;

    @override
    Widget build(BuildContext context) {

        _imageSection  = getImageSection();
        _titleSection  = getTitleSection();
        _buttonSection = getButtonSection();
        _descriptionSection = getDescriptionSection();

        return new MaterialApp(
            title: 'Flutter Demo',
            theme: new ThemeData(
                primarySwatch: Colors.red),

            home: getHomePage()
        );
    }

    Image getImageSection() {
        return new Image.asset(
            'images/lake.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
        );
    }

    Widget getTitleSection() {
        Widget titleSection = new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Row(children: [

                getExpandedComponent(),
                new Icon(Icons.star, color: Colors.red[500]),
                new Text('41')
            ])
        );

        return titleSection;
    }

    Expanded getExpandedComponent() {

        return new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text('Oeschinen Lake Campground', style:
                        new TextStyle(fontWeight: FontWeight.bold))
                ),

                new Text('Kandersteg, Switzerland', style:
                    new TextStyle(color: Colors.grey[500]))
            ]
        ));
    }

    Widget getButtonSection() {
        Widget buttonSection = new Container(
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    buildButtonColumn(Icons.call, 'CALL'),
                    buildButtonColumn(Icons.near_me, 'ROUTE'),
                    buildButtonColumn(Icons.share, 'SHARE')
                ]
            )
        );

        return buttonSection;
    }

    Widget getDescriptionSection() {
        Widget textSection = new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Text("'Lake Oeschinen lies at the foot of the Blüemlisalp "
                "in the Bernese Alps. Situated 1,578 meters above sea level, "
                "it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, "
                "followed by a half-hour walk through pastures and pine forest, "
                "leads you to the lake, which warms to 20 degrees Celsius in the summer. "
                "Activities enjoyed here include rowing, and riding the summer toboggan run.'",
                softWrap: true,
            ),
        );

        return textSection;
    }

    Column buildButtonColumn(IconData icon, String label) {
        Color color = Theme.of(context).primaryColor;

        return new Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                new Icon(icon, color: color),
                new Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    child: new Text(label,
                        style: new TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: color
                        )
                    )
                )
            ]
        );
    }

    Scaffold getHomePage() {
        return new Scaffold(
            appBar: new AppBar(title:
                new Text("Top Lakes")),

            body: new ListView(
                children: [
                    _imageSection,
                    _titleSection,
                    _buttonSection,
                    _descriptionSection,
                ],
            )
        );
    }
}