class ProductsModel {
  String? maincategory;
  List<Subcategory>? subcategory;
  String? title;
  String? experDate;
  List<String>? images;
  String? color;
  Brand? brand;
  Shipping? shipping;
  List<Description>? description;
  ReviewPoint? reviewPoint;
  String? certification;
  String? returnPolicy;
  String? sublabel;
  List<Pricepackage>? pricetype;
  String? maincategoryId;

  ProductsModel(
      {this.maincategory,
      this.subcategory,
      this.title,
      this.experDate,
      this.images,
      this.color,
      this.brand,
      this.shipping,
      this.description,
      this.reviewPoint,
      this.certification,
      this.returnPolicy,
      this.sublabel,
      // this.pricetype,
      this.pricetype,
      this.maincategoryId}); //14 field

  ProductsModel.fromJson(Map<String, dynamic> json) {
    maincategory = json['maincategory'];
    if (json['subcategory'] != null) {
      subcategory = <Subcategory>[];
      json['subcategory'].forEach((v) {
        subcategory!.add(new Subcategory.fromJson(v));
      });
    }
    title = json['title'];
    experDate = json['experDate'];
    images = json['images'].cast<String>();
    color = json['color'];
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
    shipping = json['shipping'] != null
        ? new Shipping.fromJson(json['shipping'])
        : null;
    if (json['description'] != null) {
      description = <Description>[];
      json['description'].forEach((v) {
        description!.add(new Description.fromJson(v));
      });
    }
    reviewPoint = json['reviewPoint'] != null
        ? new ReviewPoint.fromJson(json['reviewPoint'])
        : null;
    certification = json['certification'];
    returnPolicy = json['returnPolicy'];
    sublabel = json['sublabel'];

    if (json['pricetype'] != null) {
      pricetype = <Pricepackage>[];
      json['pricetype'].forEach((v) {
        pricetype!.add(new Pricepackage.fromJson(v));
      });
    }
    maincategoryId = json['maincategory_id'];
  }

  Map<String, dynamic> toJson(ProductsModel productedit) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['maincategory'] = this.maincategory;
    if (this.subcategory != null) {
      data['subcategory'] = this.subcategory!.map((v) => v.toJson()).toList();
    }
    data['title'] = this.title;
    data['experDate'] = this.experDate;
    data['images'] = this.images;
    data['color'] = this.color;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    if (this.shipping != null) {
      data['shipping'] = this.shipping!.toJson();
    }
    if (this.description != null) {
      data['description'] = this.description!.map((v) => v.toJson()).toList();
    }
    if (this.reviewPoint != null) {
      data['reviewPoint'] = this.reviewPoint!.toJson();
    }
    data['certification'] = this.certification;
    data['returnPolicy'] = this.returnPolicy;
    data['sublabel'] = this.sublabel;
    if (this.pricetype != null) {
      data['pricepackage'] = this.pricetype!.map((v) => v.toJson()).toList();
    }
    data['maincategory_id'] = this.maincategoryId;
    return data;
  }
}

class Subcategory {
  String? subcatname;

  Subcategory({this.subcatname});

  Subcategory.fromJson(Map<String, dynamic> json) {
    subcatname = json['subcatname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subcatname'] = this.subcatname;
    return data;
  }
}

class Brand {
  String? name;
  String? img;

  Brand({this.name, this.img});

  Brand.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['img'] = this.img;
    return data;
  }
}

class Shipping {
  int? weigh;
  Dimensions? dimensions;

  Shipping({this.weigh, this.dimensions});

  Shipping.fromJson(Map<String, dynamic> json) {
    weigh = json['weigh'];
    dimensions = json['dimensions'] != null
        ? new Dimensions.fromJson(json['dimensions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weigh'] = this.weigh;
    if (this.dimensions != null) {
      data['dimensions'] = this.dimensions!.toJson();
    }
    return data;
  }
}

class Dimensions {
  int? width;
  int? height;
  int? depth;

  Dimensions({this.width, this.height, this.depth});

  Dimensions.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    depth = json['depth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    data['depth'] = this.depth;
    return data;
  }
}

class Description {
  String? lang;
  String? details;

  Description({this.lang, this.details});

  Description.fromJson(Map<String, dynamic> json) {
    lang = json['lang'];
    details = json['details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lang'] = this.lang;
    data['details'] = this.details;
    return data;
  }
}

class ReviewPoint {
  String? username;
  int? count;

  ReviewPoint({this.username, this.count});

  ReviewPoint.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['count'] = this.count;
    return data;
  }
}

class Pricepackage {
  String? pricepackagename;
  int? list;
  int? sellprice;
  int? buyprice;
  int? quantity;
  int? sellquantity;
  String? indate;

  Pricepackage(
      {this.pricepackagename,
      this.list,
      this.sellprice,
      this.buyprice,
      this.quantity,
      this.sellquantity,
      this.indate});

  Pricepackage.fromJson(Map<String, dynamic> json) {
    pricepackagename = json['pricepackagename'];
    list = json['list'];
    sellprice = json['sellprice'];
    buyprice = json['buyprice'];
    quantity = json['Quantity'];
    sellquantity = json['sellquantity'];
    indate = json['indate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pricepackagename'] = this.pricepackagename;
    data['list'] = this.list;
    data['sellprice'] = this.sellprice;
    data['buyprice'] = this.buyprice;
    data['Quantity'] = this.quantity;
    data['sellquantity'] = this.sellquantity;
    data['indate'] = this.indate;
    return data;
  }
}

class Pricing {
  int? list;
  int? sellprice;
  int? buyprice;
  int? quantity;
  int? sellquantity;
  String? indate;

  Pricing(
      {this.list,
      this.sellprice,
      this.buyprice,
      this.quantity,
      this.sellquantity,
      this.indate});

  Pricing.fromJson(Map<String, dynamic> json) {
    list = json['list'];
    sellprice = json['sellprice'];
    buyprice = json['buyprice'];
    quantity = json['Quantity'];
    sellquantity = json['sellquantity'];
    indate = json['indate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['list'] = this.list;
    data['sellprice'] = this.sellprice;
    data['buyprice'] = this.buyprice;
    data['Quantity'] = this.quantity;
    data['sellquantity'] = this.sellquantity;
    data['indate'] = this.indate;
    return data;
  }
}
