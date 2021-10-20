class Hits {
  Hits({
    int? id,
    String? pageURL,
    String? type,
    String? tags,
    String? previewURL,
    int? previewWidth,
    int? previewHeight,
    String? webformatURL,
    int? webformatWidth,
    int? webformatHeight,
    String? largeImageURL,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? collections,
    int? likes,
    int? comments,
    int? userId,
    String? user,
    String? userImageURL,
  }) {
    _id = id;
    _pageURL = pageURL;
    _type = type;
    _tags = tags;
    _previewURL = previewURL;
    _previewWidth = previewWidth;
    _previewHeight = previewHeight;
    _webformatURL = webformatURL;
    _webformatWidth = webformatWidth;
    _webformatHeight = webformatHeight;
    _largeImageURL = largeImageURL;
    _imageWidth = imageWidth;
    _imageHeight = imageHeight;
    _imageSize = imageSize;
    _views = views;
    _downloads = downloads;
    _collections = collections;
    _likes = likes;
    _comments = comments;
    _userId = userId;
    _user = user;
    _userImageURL = userImageURL;
  }

  Hits.fromJson(dynamic json) {
    _id = json['id'];
    _pageURL = json['pageURL'];
    _type = json['type'];
    _tags = json['tags'];
    _previewURL = json['previewURL'];
    _previewWidth = json['previewWidth'];
    _previewHeight = json['previewHeight'];
    _webformatURL = json['webformatURL'];
    _webformatWidth = json['webformatWidth'];
    _webformatHeight = json['webformatHeight'];
    _largeImageURL = json['largeImageURL'];
    _imageWidth = json['imageWidth'];
    _imageHeight = json['imageHeight'];
    _imageSize = json['imageSize'];
    _views = json['views'];
    _downloads = json['downloads'];
    _collections = json['collections'];
    _likes = json['likes'];
    _comments = json['comments'];
    _userId = json['user_id'];
    _user = json['user'];
    _userImageURL = json['userImageURL'];
  }

  int? _id;
  String? _pageURL;
  String? _type;
  String? _tags;
  String? _previewURL;
  int? _previewWidth;
  int? _previewHeight;
  String? _webformatURL;
  int? _webformatWidth;
  int? _webformatHeight;
  String? _largeImageURL;
  int? _imageWidth;
  int? _imageHeight;
  int? _imageSize;
  int? _views;
  int? _downloads;
  int? _collections;
  int? _likes;
  int? _comments;
  int? _userId;
  String? _user;
  String? _userImageURL;

  int? get id => _id;

  String? get pageURL => _pageURL;

  String? get type => _type;

  String? get tags => _tags;

  String? get previewURL => _previewURL;

  int? get previewWidth => _previewWidth;

  int? get previewHeight => _previewHeight;

  String? get webformatURL => _webformatURL;

  int? get webformatWidth => _webformatWidth;

  int? get webformatHeight => _webformatHeight;

  String? get largeImageURL => _largeImageURL;

  int? get imageWidth => _imageWidth;

  int? get imageHeight => _imageHeight;

  int? get imageSize => _imageSize;

  int? get views => _views;

  int? get downloads => _downloads;

  int? get collections => _collections;

  int? get likes => _likes;

  int? get comments => _comments;

  int? get userId => _userId;

  String? get user => _user;

  String? get userImageURL => _userImageURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pageURL'] = _pageURL;
    map['type'] = _type;
    map['tags'] = _tags;
    map['previewURL'] = _previewURL;
    map['previewWidth'] = _previewWidth;
    map['previewHeight'] = _previewHeight;
    map['webformatURL'] = _webformatURL;
    map['webformatWidth'] = _webformatWidth;
    map['webformatHeight'] = _webformatHeight;
    map['largeImageURL'] = _largeImageURL;
    map['imageWidth'] = _imageWidth;
    map['imageHeight'] = _imageHeight;
    map['imageSize'] = _imageSize;
    map['views'] = _views;
    map['downloads'] = _downloads;
    map['collections'] = _collections;
    map['likes'] = _likes;
    map['comments'] = _comments;
    map['user_id'] = _userId;
    map['user'] = _user;
    map['userImageURL'] = _userImageURL;
    return map;
  }
}
