import 'package:flutter/material.dart';

// ----------------------whatsapp model class-------------------------

class Whatsapp {
  String? dp, title, subtitle, time;
  Whatsapp({
    this.dp,
    this.title,
    this.subtitle,
    this.time,
  });
  factory Whatsapp.fromJson(Map<String, dynamic> json) => Whatsapp(
        dp: json['dp'],
        title: json['title'],
        subtitle: json['subtitle'],
        time: json['time'],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (dp != null) {
      data['dp'] = dp;
    }
    if (title != null) {
      data['titel'] = title;
    }
    if (subtitle != null) {
      data['suntitle'] = subtitle;
    }
    if (time != null) {
      data['time'] = time;
    }
    return data;
  }
}

// ----------------------Gmail model class-------------------------

class MailData1 {
  String? text1, text2, text3;
  IconData? icon;
  Color? color1, color2;
  MailData1({
    this.icon,
    this.color1,
    this.text1,
    this.text2,
    this.color2,
    this.text3,
  });

  factory MailData1.formJson(Map<String, dynamic> json) => MailData1(
        icon: json['icon'],
        color1: json['color1'],
        text1: json['text1'],
        text2: json['text2'],
        color2: json['color2'],
        text3: json['text3'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (icon != null) {
      data['icon'] = icon;
    }
    if (color1 != null) {
      data['color1'] = color1;
    }
    if (text1 != null) {
      data['text1'] = text1;
    }
    if (text2 != null) {
      data['text2'] = text2;
    }
    if (color2 != null) {
      data['color2'] = color2;
    }
    if (text3 != null) {
      data['text3'] = text3;
    }
    return data;
  }
}

class MailData2 {
  String? text1, text2, text3, text4, text5;
  Color? color;
  MailData2({
    this.color,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
  });

  factory MailData2.formJson(Map<String, dynamic> json) => MailData2(
        color: json['color'],
        text1: json['text1'],
        text2: json['text2'],
        text3: json['text3'],
        text4: json['text4'],
        text5: json['text5'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    if (color != null) {
      data['color'] = color;
    }
    if (text1 != null) {
      data['text1'] = text1;
    }
    if (text2 != null) {
      data['text2'] = text2;
    }

    if (text3 != null) {
      data['text3'] = text3;
    }
    if (text4 != null) {
      data['text4'] = text4;
    }
    if (text5 != null) {
      data['text5'] = text5;
    }
    return data;
  }
}

// ----------------------youtube model class-------------------------

class YoutubeData {
  String? image1, image2, text1, text2, text3;

  YoutubeData({
    this.image1,
    this.image2,
    this.text1,
    this.text2,
    this.text3,
  });

  factory YoutubeData.formJson(Map<String, dynamic> json) => YoutubeData(
        image1: json['image1'],
        image2: json['image2'],
        text1: json['text1'],
        text2: json['text2'],
        text3: json['text3'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    if (image1 != null) {
      data['image1'] = image1;
    }
    if (image2 != null) {
      data['image2'] = image2;
    }
    if (text1 != null) {
      data['text1'] = text1;
    }
    if (text2 != null) {
      data['text2'] = text2;
    }

    if (text3 != null) {
      data['text3'] = text3;
    }

    return data;
  }
}
