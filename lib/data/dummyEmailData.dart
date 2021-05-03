import 'package:gmail_ui/models/drawerItemModel.dart';

import '../models/emailModel.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<EmailModel> dummyEmailData = [
  EmailModel(
    emailFrom: "LinkedIn",
    emailSubject:
        "Glorious to his lines who scape sick one me ah. Atonement full not strength peace been and and is forgot..",
    emailContent:
        "Glaube da zürnen du gefärbt verwundert weiter die beiden, mein verschwiegen dich warum gar winde zu du friedlich, junge es jedoch so oft weißt nicht. Im fort teuren klingt geträumt. In heut ergötzt zurück von ich gerne. Weiter gartens ein weiter sanken. Mutter mut gut verschwiegen in oft. Weiter o.",
    emailDatetime: DateTime.now(),
    isImportant: true,
    isStared: false,
    backgroundColor:
        Colors.primaries[Random().nextInt(Colors.primaries.length)],
  ),
  EmailModel(
    emailFrom: "Laundrybat",
    emailSubject:
        "Glorious to his lines who scape sick one me ah. Atonement full not strength peace been and and is forgot..",
    emailContent:
        "Glaube da zürnen du gefärbt verwundert weiter die beiden, mein verschwiegen dich warum gar winde zu du friedlich, junge es jedoch so oft weißt nicht. Im fort teuren klingt geträumt. In heut ergötzt zurück von ich gerne. Weiter gartens ein weiter sanken. Mutter mut gut verschwiegen in oft. Weiter o.",
    emailDatetime: DateTime.now(),
    isImportant: false,
    isStared: false,
    backgroundColor:
        Colors.primaries[Random().nextInt(Colors.primaries.length)],
  ),
  EmailModel(
    emailFrom: "Google",
    emailSubject:
        "Glorious to his lines who scape sick one me ah. Atonement full not strength peace been and and is forgot..",
    emailContent:
        "Glaube da zürnen du gefärbt verwundert weiter die beiden, mein verschwiegen dich warum gar winde zu du friedlich, junge es jedoch so oft weißt nicht. Im fort teuren klingt geträumt. In heut ergötzt zurück von ich gerne. Weiter gartens ein weiter sanken. Mutter mut gut verschwiegen in oft. Weiter o.",
    emailDatetime: DateTime.now(),
    isImportant: true,
    isStared: false,
    backgroundColor:
        Colors.primaries[Random().nextInt(Colors.primaries.length)],
  ),
  EmailModel(
    emailFrom: "Firefox Accounts",
    emailSubject:
        "Glorious to his lines who scape sick one me ah. Atonement full not strength peace been and and is forgot..",
    emailContent:
        "Glaube da zürnen du gefärbt verwundert weiter die beiden, mein verschwiegen dich warum gar winde zu du friedlich, junge es jedoch so oft weißt nicht. Im fort teuren klingt geträumt. In heut ergötzt zurück von ich gerne. Weiter gartens ein weiter sanken. Mutter mut gut verschwiegen in oft. Weiter o.",
    emailDatetime: DateTime.now(),
    isImportant: true,
    isStared: true,
    backgroundColor:
        Colors.primaries[Random().nextInt(Colors.primaries.length)],
  ),
];

List<String> monthsName = [
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "June",
  "July",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  'Dec',
];

List<DrawerItemModel> drawerItemData = [
  DrawerItemModel(icon: Icons.all_inbox, title: 'All inboxes'),
  DrawerItemModel(icon: Icons.inbox, title: 'Inbox'),
  DrawerItemModel(icon: Icons.star_border, title: 'Starred'),
  DrawerItemModel(icon: Icons.watch_later_outlined, title: 'Snoozed'),
  DrawerItemModel(icon: Icons.label_important_outline, title: 'Important'),
  DrawerItemModel(icon: Icons.send, title: 'Sent'),
  DrawerItemModel(icon: Icons.schedule_send, title: 'Scheduled'),
  DrawerItemModel(icon: Icons.outbox, title: 'Outbox'),
  DrawerItemModel(icon: Icons.description_outlined, title: 'Drafts'),
  DrawerItemModel(icon: Icons.mail_outline, title: 'All mails'),
  DrawerItemModel(icon: Icons.info_outline, title: 'Spam'),
  DrawerItemModel(icon: Icons.delete_outline, title: 'Bin'),
  DrawerItemModel(icon: Icons.calendar_today, title: 'Calendar'),
  DrawerItemModel(icon: Icons.account_circle_outlined, title: 'Contacts'),
  DrawerItemModel(icon: Icons.settings, title: 'Settings'),
  DrawerItemModel(icon: Icons.help_outline, title: 'Help and feedback'),
];
