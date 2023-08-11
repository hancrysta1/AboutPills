class Solution {
  int id;
  String solution;

  Solution({required this.id, required this.solution});

  factory Solution.fromJson(Map<String, dynamic> json) {
    return Solution(
      id: json['id'],
      solution: json['solution'],
    );
  }

  // dynamic toJson() => {
  //   //json객체를 String으로 변환
  //       'solution': solution;
  //     };
}
