class ServiceInfo {

  final String productName;
  final double price;
  final int stock;
  final String description;
  final String manufacturer;
  final String category;
  final String conditionId;
  final String imageProduct;

  const ServiceInfo({
    this.productName,
    this.price,
    this.stock,
    this.description,
    this.manufacturer,
    this.category,
    this.conditionId,
    this.imageProduct,
  });

  factory ServiceInfo.fromJson(Map<String, dynamic> json) {
    return ServiceInfo(productName: json['productName'], price: json['price']);
  }
}