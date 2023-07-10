// To parse this JSON data, do
//
//     final myTripsOfferModel = myTripsOfferModelFromJson(jsonString);

import 'dart:convert';

MyTripsOfferModel myTripsOfferModelFromJson(String str) =>
    MyTripsOfferModel.fromJson(json.decode(str));

class MyTripsOfferModel {
  List<MyTripOfferModel>? data;

  MyTripsOfferModel({
    this.data,
  });

  factory MyTripsOfferModel.fromJson(Map<String, dynamic> json) =>
      MyTripsOfferModel(
        data: List<MyTripOfferModel>.from(
            json["data"].map((x) => MyTripOfferModel.fromJson(x))),
      );
}

class MyTripOfferModel {
  String? tripId;
  DateTime? tripDate;
  String? tripStartPoint;
  String? tripDestination;
  int? userId;
  int? amount;
  dynamic? co;
  int? accepted;
  String? path;

  MyTripOfferModel({
    this.tripId,
    this.tripDate,
    this.tripStartPoint,
    this.tripDestination,
    this.userId,
    this.amount,
    this.co,
    this.accepted,
    this.path,
  });

  factory MyTripOfferModel.fromJson(Map<String, dynamic> json) =>
      MyTripOfferModel(
        tripId: json["trip_id"],
        tripDate: DateTime.parse(json["trip_date"]),
        tripStartPoint: json["trip_start_point"],
        tripDestination: json["trip_destination"],
        userId: json["user_id"],
        amount: json["amount"],
        co: json["co"],
        accepted: json["accepted"],
        path: json["path"],
      );
}
