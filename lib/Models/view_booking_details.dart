// To parse this JSON data, do
//
//     final viewBookingDetails = viewBookingDetailsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ViewBookingDetails viewBookingDetailsFromJson(String str) =>
    ViewBookingDetails.fromJson(json.decode(str));

String viewBookingDetailsToJson(ViewBookingDetails data) =>
    json.encode(data.toJson());

class ViewBookingDetails {
  ViewBookingDetails({
    required this.status,
    required this.message,
    required this.data,
  });

  bool status;
  String message;
  Data data;

  factory ViewBookingDetails.fromJson(Map<String, dynamic> json) =>
      ViewBookingDetails(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.bookingId,
    required this.specialty,
    required this.doctorName,
    required this.bookingStatus,
    required this.patientName,
    required this.patientLocation,
    required this.bookedDate,
    required this.bookedServiceTime,
    required this.clinicLocation,
    required this.totalAmount,
    required this.amountStatus,
  });

  String bookingId;
  String specialty;
  String doctorName;
  String bookingStatus;
  String patientName;
  String patientLocation;
  DateTime bookedDate;
  String bookedServiceTime;
  String clinicLocation;
  String totalAmount;
  String amountStatus;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        bookingId: json["Booking Id"],
        specialty: json["Specialty"],
        doctorName: json["Doctor Name"],
        bookingStatus: json["Booking Status"],
        patientName: json["Patient Name"],
        patientLocation: json["patient Location"],
        bookedDate: DateTime.parse(json["Booked Date"]),
        bookedServiceTime: json["Booked Service Time"],
        clinicLocation: json["Clinic Location"],
        totalAmount: json["Total Amount"],
        amountStatus: json["Amount Status"],
      );

  Map<String, dynamic> toJson() => {
        "Booking Id": bookingId,
        "Specialty": specialty,
        "Doctor Name": doctorName,
        "Booking Status": bookingStatus,
        "Patient Name": patientName,
        "patient Location": patientLocation,
        "Booked Date":
            "${bookedDate.year.toString().padLeft(4, '0')}-${bookedDate.month.toString().padLeft(2, '0')}-${bookedDate.day.toString().padLeft(2, '0')}",
        "Booked Service Time": bookedServiceTime,
        "Clinic Location": clinicLocation,
        "Total Amount": totalAmount,
        "Amount Status": amountStatus,
      };
}
