class ResultsL {
  int id;
  String seq;
  String name;
  String company;
  String detail;
  String shape;
  String color;
  String image;
  bool zzim;
  String printing;
  String classy;
  String aim;

  ResultsL({
        required this.id,
        required this.seq,
      required this.name,
        required this.company,
      required this.detail,
        required this.shape,
        required this.color,
      required this.image,
      required this.zzim,
      required this.printing,
      required this.classy,
      required this.aim,
  });

  factory ResultsL.fromJson(Map<String, dynamic> json) {
    return ResultsL(
      id: json['id'],
      seq: json['seq'],
      name: json['name'],
      company: json['company'],
      detail: json['detail'],
      shape: json['shape'],
      color: json['color'],
      image: json['image'],
      zzim: json['zzim'],
      printing: json['printing'],
      classy: json['classy'],
      aim: json['aim'],
    );
  }
}