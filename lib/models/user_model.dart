class UserModel {
  final String? name;
  final String? email;
  final String? username;
  final String? password;

  UserModel({this.username, this.name, this.email, this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    email: json['email'],
    name: json['name'],
    username: json['username'],
  );

  Map<String, dynamic> toJson() => {
    'email': email,
    'name': name,
    'username': username,
  };
}
