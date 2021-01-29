class ServerInfo {
  final String productName;
  final double price;
  final int stock;
  final String description;
  final String manufacturer;
  final String category;
  final String conditionId;
  final String imageProduct;

  const ServerInfo({
    this.productName,
    this.price,
    this.stock,
    this.description,
    this.manufacturer,
    this.category,
    this.conditionId,
    this.imageProduct,
  });

  factory ServerInfo.fromJson(Map<String, dynamic> json) {
    return ServerInfo(productName: json['productName'], price: json['price']);
  }
}