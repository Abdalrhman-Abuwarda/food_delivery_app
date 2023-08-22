part of models;

class ProductModel {
  ProductModel(
      {this.resName,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.rating,
      required this.price,
      this.ratingCount,
      required this.cartQuantity,
      required this.inCart});

  final String imagePath;
  final String name;
  final num price;
  final num rating;
  final num? ratingCount;
  final String description;
  final String? resName;
  bool inCart;
  num cartQuantity;

  //----------------------------------------------------------------------------

  factory ProductModel.fromJson(Map<String , dynamic> data) {
    return ProductModel(
      imagePath: data['imagePath'],
      name: data['name'],
      price: (data['price'] ).toDouble(),
      rating: (data['rating'] ).toDouble() ,
      ratingCount: (data['ratingCount']).toDouble() ,
      description: data['description'],
      resName: data['resName'],
      inCart: data["inCart"],
      cartQuantity: (data["cartQuantity"]).toDouble(),
    );
  }

  factory ProductModel.fromDocument(DocumentSnapshot doc){
    return ProductModel(
      imagePath: doc['imagePath'],
      name: doc['name'],
      price: (doc['price'] ).toDouble(),
      rating: (doc['rating'] ).toDouble() ,
      ratingCount: (doc['ratingCount']).toDouble() ,
      description: doc['description'],
      resName: doc['resName'] == null ? null :  doc['resName'],
      inCart: doc["inCart"],
      cartQuantity: (doc["cartQuantity"]).toDouble(),
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'resName': resName,
      'imagePath': imagePath,
      'name': name,
      'description': description,
      'price': price,
      'rating': rating,
      'ratingCount': ratingCount,
      'inCart': inCart,
      'cartQuantity': cartQuantity,
    };
  }
  static List<ProductModel> desserts = [
    ProductModel(
      imagePath: ImageAssets.applePie,
      name: "French Apple Pie",
      rating: 4.9,
      description: '',
      price: 20,
      cartQuantity: 0,
      inCart: false,
    ),
    ProductModel(
      imagePath: ImageAssets.darkChocolate,
      name: "Dark Chocolate Cake",
      rating: 4.9,
      description: '',
      price: 30,
      inCart: false,
      cartQuantity: 0
    ),
    ProductModel(
      imagePath: ImageAssets.fudgyChewy,
      name: "Street Shake",
      rating: 4.9,
      description: '',
      price: 22,
      cartQuantity: 0,
      inCart: false
    ),
    ProductModel(
      imagePath: ImageAssets.streetShake,
      name: "Fudgy Chewy Brownies",
      rating: 4.9,
      description: '',
      price: 32,
      inCart: false,
      cartQuantity: 0
    ),
  ];
}
