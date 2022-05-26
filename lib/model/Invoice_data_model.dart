import 'dart:convert';

List<InvoiceDataModel> invoiceDataModelFromJson(String str) =>
    List<InvoiceDataModel>.from(
        json.decode(str).map((x) => InvoiceDataModel.fromJson(x)));

String invoiceDataModelToJson(List<InvoiceDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InvoiceDataModel {
  InvoiceDataModel({
    required this.title,
    this.firstName,
    this.lastName,
    this.company,
    this.itemData,
  });

  String title;
  String? firstName;
  String? lastName;
  String? company;
  List<ItemDatum>? itemData;

  factory InvoiceDataModel.fromJson(Map<String, dynamic> json) =>
      InvoiceDataModel(
        title: json["title"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        company: json["company"],
        itemData: List<ItemDatum>.from(
            json["itemData"].map((x) => ItemDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "firstName": firstName,
        "lastName": lastName,
        "company": company,
        "itemData": List<dynamic>.from(itemData!.map((x) => x.toJson())),
      };
}

class ItemDatum {
  ItemDatum({
    required this.itemName,
    this.description,
    required this.itemprice,
    required this.quentity,
    required this.itemTotal,
  });

  String itemName;
  String? description;
  double itemprice;
  int quentity;
  double itemTotal;

  factory ItemDatum.fromJson(Map<String, dynamic> json) => ItemDatum(
        itemName: json["itemName"],
        description: json["description"],
        itemprice: json["itemprice"].toDouble(),
        quentity: json["quentity"],
        itemTotal: json["itemTotal"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "itemName": itemName,
        "description": description,
        "itemprice": itemprice,
        "quentity": quentity,
        "itemTotal": itemTotal,
      };
}
