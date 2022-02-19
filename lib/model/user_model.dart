class GetExchanges {
  GetExchanges({
    this.title,
    this.code,
    this.cbPrice,
    this.nbuBuyPrice,
    this.nbuCellPrice,
    this.date,
  });

  String? title;
  String? code;
  String? cbPrice;
  String? nbuBuyPrice;
  String? nbuCellPrice;
  String? date;

  factory GetExchanges.fromJson(Map<String, dynamic> map) => GetExchanges(
        title: map["title"],
        code: map["code"],
        cbPrice: map["cb_price"],
        nbuBuyPrice: map["nbu_buy_price"],
        nbuCellPrice: map["nbu_cell_price"],
        date: map["date"],
      );
}
