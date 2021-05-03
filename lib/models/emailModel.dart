import 'package:flutter/material.dart';

class EmailModel {
  final String emailFrom;
  final String emailSubject;
  final String emailContent;
  final DateTime emailDatetime;
  final bool isImportant;
  final bool isStared;
  final Color backgroundColor;

  EmailModel({
    this.emailFrom,
    this.emailSubject,
    this.emailContent,
    this.emailDatetime,
    this.isImportant,
    this.isStared,
    this.backgroundColor,
  });
}
