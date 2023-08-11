class Join {
  String uid;
  String name;
  String password;

  Join({
        required this.uid,
      required this.name,
      required this.password,
  });

  factory Join.fromJson(Map<String, dynamic> json) {
    return Join(
      uid: json['uid'],
      name: json['name'],
      password: json['password'],
    );
  }
}