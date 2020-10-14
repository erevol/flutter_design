import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styledTitle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  final styledSubTitle = TextStyle(fontSize: 18.0, color: Colors.grey);
  final styledIconTitle = TextStyle(fontSize: 15.0, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        _createImageWidget(),
        _createTitleWidget(),
        _createActionsWidget(),
        _createTextWidget(),
        _createTextWidget(),
        _createTextWidget(),
        _createTextWidget(),
      ]),
    ));
  }

  Widget _createImageWidget() {
    return Container(
      width: double.infinity,
      child: Image(
        height: 280.0,
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067_960_720.png'),
      ),
    );
  }

  Widget _createTitleWidget() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Orange Landscape',
                      style: styledTitle,
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'A flat landscape.',
                      style: styledSubTitle,
                    ),
                  ]),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActionsWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.phone, 'CALL'),
        _createAction(Icons.near_me, 'ROUTE'),
        _createAction(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _createAction(IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 40.0,
          color: Colors.blue,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(title, style: styledIconTitle),
      ],
    );
  }

  Widget _createTextWidget() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Aliquip laboris labore do pariatur exercitation proident laborum labore magna. Aliquip consectetur ullamco ad non mollit mollit laboris. Tempor id minim et minim est aute culpa culpa nulla eiusmod elit aliquip. Ex consectetur mollit veniam fugiat occaecat est ad nulla anim sunt occaecat.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
