class Camera {
  String color;
  String shape;
  String text;

  Camera({
        required this.shape,
        required this.color,
        required this.text});

  factory Camera.fromJson(Map<dynamic, dynamic> json) {
    return Camera(
      shape: json['shape'],
      color: json['color'],
      text: json['text'],
    );
  }
}
