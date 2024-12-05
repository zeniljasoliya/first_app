class InstaStory {
  String? images, usernames;
  InstaStory({
    this.images,
    this.usernames,
  });

  factory InstaStory.formJson(Map<String, dynamic> json) => InstaStory(
        images: json['images'],
        usernames: json['usernames'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (images != null) {
      data['images'] = images;
    }
    if (usernames != null) {
      data['usernames'] = usernames;
    }
    return data;
  }
}

class InstaData {
  String? image1,
      text1,
      text2,
      image2,
      text3,
      text4,
      text5,
      text6,
      text7,
      text8;
  InstaData({
    this.image1,
    this.text1,
    this.text2,
    this.image2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.text7,
    this.text8,
  });
  factory InstaData.formJson(Map<String, dynamic> json) => InstaData(
        image1: json['image1'],
        text1: json['text1'],
        text2: json['text2'],
        image2: json['image2'],
        text3: json['text3'],
        text4: json['text4'],
        text5: json['text5'],
        text6: json['text6'],
        text7: json['text7'],
        text8: json['text8'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (image1 != null) {
      data['image1'] = image1;
    }
    if (text1 != null) {
      data['text1'] = text1;
    }
    if (text2 != null) {
      data['text2'] = text2;
    }
    if (image2 != null) {
      data['image2'] = image2;
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
    if (text6 != null) {
      data['text6'] = text6;
    }
    if (text7 != null) {
      data['text7'] = text7;
    }
    if (text8 != null) {
      data['text8'] = text8;
    }

    return data;
  }
}
