class GetAllGovernatesModel {
  List<Governorates>? governorates;

  GetAllGovernatesModel({this.governorates});

  GetAllGovernatesModel.fromJson(Map<String, dynamic> json) {
    if (json['governorates'] != null) {
      governorates = <Governorates>[];
      json['governorates'].forEach((v) {
        governorates!.add(Governorates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (governorates != null) {
      data['governorates'] = governorates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Governorates {
  String? name;
  int? id;

  Governorates({this.name, this.id});

  Governorates.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}
