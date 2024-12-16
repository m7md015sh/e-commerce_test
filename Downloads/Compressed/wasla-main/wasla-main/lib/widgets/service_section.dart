import 'package:flutter/material.dart';
import 'package:wasla/core/constant/colors.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17, top: 20),
            child: Text(
              'Let\'s Booking!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                  color: Colors.black),
            ),
          ),
          Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  Row(children: [
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                                color: AppColors.buttonBackgroundColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: AppColors.textColor, width: 1)),
                            child: Row(
                              children: <Widget>[
                                // SvgPicture.asset(
                                //   'assets\svg\service_flight_icon.svg',
                                //   fit: BoxFit.contain,
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Flight',
                                          style:
                                          TextStyle(fontFamily: 'Cairo')),
                                      Text('Feel freedom',
                                          style: TextStyle(fontFamily: 'Cairo'))
                                    ],
                                  ),
                                )
                              ],
                            ))),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: AppColors.buttonBackgroundColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: AppColors.textColor, width: 1)),
                          child: Row(
                            children: <Widget>[
                              // SvgPicture.asset(
                              //   'assets\svg\service_flight_icon.svg',
                              //   fit: BoxFit.contain,
                              // ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Flight',
                                        style: TextStyle(fontFamily: 'Cairo')),
                                    Text('Feel freedom',
                                        style: TextStyle(fontFamily: 'Cairo'))
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),

                    Row(
                      children: [
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 16),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: AppColors.buttonBackgroundColor,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: AppColors.textColor, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    // SvgPicture.asset(
                                    //   'assets\svg\service_flight_icon.svg',
                                    //   fit: BoxFit.contain,
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Flight',
                                              style:
                                              TextStyle(fontFamily: 'Cairo')),
                                          Text('Feel freedom',
                                              style: TextStyle(fontFamily: 'Cairo'))
                                        ],
                                      ),
                                    )
                                  ],
                                ))),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                  color: AppColors.buttonBackgroundColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: AppColors.textColor, width: 1)),
                              child: Row(
                                children: <Widget>[
                                  // SvgPicture.asset(
                                  //   'assets\svg\service_flight_icon.svg',
                                  //   fit: BoxFit.contain,
                                  // ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Flight',
                                            style: TextStyle(fontFamily: 'Cairo')),
                                        Text('Feel freedom',
                                            style: TextStyle(fontFamily: 'Cairo'))
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ]),
                ],
              ))
        ],
      ),
    );
  }
}