class PixaImage {
  int id;
  String tags;
  String previewURL;
  int previewWidth;
  int previewHeight;

  PixaImage(this.id, this.tags, this.previewURL, this.previewWidth,
      this.previewHeight);


  PixaImage.fromJson(dynamic json) {
    id = json['id'];
    tags = json['tags'];
    previewURL = json['pageviewURL'];
    previewWidth = json['previewWidth'];
    previewHeight = json['previewHeight'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['tags'] = tags;
    map['previewURL'] = previewURL;
    map['previewWidth'] = previewWidth;
    map['previewHeight'] = previewHeight;
    return map;}
}
