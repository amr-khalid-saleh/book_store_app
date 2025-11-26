class BookModel {
  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
  });

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo = json['saleInfo'] != null
        ? SaleInfo.fromJson(json['saleInfo'])
        : null;
  }

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    return map;
  }
}

class SaleInfo {
  SaleInfo({this.country, this.saleability, this.isEbook});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }

  String? country;
  String? saleability;
  bool? isEbook;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    return map;
  }
}

class VolumeInfo {
  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    subtitle = json['subtitle'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null
        ? json['categories'].cast<String>()
        : [];
    maturityRating = json['maturityRating'];
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }
}

class ImageLinks {
  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  String? smallThumbnail;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }
}
