class LanguageModel {
  String? code;
  String? name;
  String? flag;

  LanguageModel({this.code, this.name, this.flag});
  Map<String, dynamic> toJson() => {'code': code, 'name': name, 'flag': flag};
}
