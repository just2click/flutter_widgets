import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.00, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
//          width: 200.0,
//          height: 100.0,
          margin: EdgeInsets.only(left: 45.0, top: 45.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                          'Air Canada',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          )
                      )),
                  Expanded(
                      child: Text(
                        'From Israel to California via Toronto',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                        ),
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                          'Air America',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          )
                      )),
                  Expanded(
                      child: Text(
                        'From London to Rome',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                        ),
                      ))
                ],
              ),
              FlightImageAsset(),
              FlightBookingButton(),
            ],
          )
      )
    );
    throw UnimplementedError();
  }
}

class FlightImageAsset extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/flight.png');
    Image image = new Image(image: assetImage);
    return Container(child: image);

    throw UnimplementedError();
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          'Book Your Flight',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700
          )
        ),
        elevation: 6.0,
        onPressed: () => bookFlight(context)
      ),
    );
    throw UnimplementedError();
  }

  void bookFlight(BuildContext context) {

    var alertDialog = AlertDialog(
      title: Text('Flight Booked Successfully'),
      content: Text('Have a pleasant flight'),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog
    );
  }
}