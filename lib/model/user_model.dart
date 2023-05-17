


class User{
  late String person;
  late String phone;
  late String email;
  late String password;
  late String password1;

  User({required this.person,required this.email,required this.password,
    required this.password1, required this.phone});
  User.from({required this.email, required this.password});

  User.fromJson(Map<String, dynamic>json)
      : person = json["person"],
        phone = json["phone"],
        email = json["email"],
        password = json["password"],
        password1 = json["password1"];


  Map<String, dynamic> toJson() => {
    "person": person,
    "phone": phone,
    "email": email,
    "password": password,
    "password1": password1,
  };
}