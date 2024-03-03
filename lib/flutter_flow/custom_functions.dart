import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? subtotaItem(
  int qty,
  double precio,
) {
  return qty * precio;
}

double? cupon10(double amount) {
  return amount * 0.90;
}

double? funcionBiblia(
  int qty,
  double precio,
) {
  return qty * precio;
}

double? cuponmasenvio10(double amount) {
  return amount * 0.90 + 15;
}

bool? showSearchResult2(
  String textSearchFor,
  String textSearchIn,
) {
  return textSearchIn.toLowerCase().contains(textSearchFor.toLowerCase());
}

double? envio(double amount) {
  return amount + 15;
}

double? cupon(double amount) {
  return amount * 0.80;
}

double? cuponmasenvio(double amount) {
  return amount * 0.80 + 15;
}

double? total10(double amount) {
  return amount + 10;
}

double? total15(double amount) {
  return amount + 15;
}

double? total18(double amount) {
  return amount + 18;
}

double? total20(double amount) {
  return amount + 20;
}

double? total22(double amount) {
  return amount + 22;
}

double? total25(double amount) {
  return amount + 25;
}

double? total28(double amount) {
  return amount + 28;
}

double? total35(double amount) {
  return amount + 35;
}

double? total30(double amount) {
  return amount + 30;
}

double? total40(double amount) {
  return amount + 40;
}

double? total45(double amount) {
  return amount + 45;
}

double? total50(double amount) {
  return amount + 50;
}

double? total60(double amount) {
  return amount + 60;
}

double? total80(double amount) {
  return amount + 80;
}
