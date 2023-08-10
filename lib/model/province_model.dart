// class ProvinceModel {
//   final String provinceId;
//   final String province;

//   ProvinceModel({
//     required this.provinceId,
//     required this.province,
//   });

//   factory ProvinceModel.fromJson(Map<String, dynamic> json) {
//     return ProvinceModel(
//       provinceId: json['province_id'],
//       province: json['province'],
//     );
//   }
// }

class ProvinceModel {
  String? provinceId;
  String? province;

  ProvinceModel({this.provinceId, this.province});

  ProvinceModel.fromJson(Map<String, dynamic> json) {
    provinceId = json['province_id'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['province_id'] = provinceId;
    data['province'] = province;
    return data;
  }

  static List<ProvinceModel> fromJsonList(List list) {
    if (list.isEmpty) return List<ProvinceModel>.empty();
    return list.map((item) => ProvinceModel.fromJson(item)).toList();
  }
}
