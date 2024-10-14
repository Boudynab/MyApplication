class UserModel {
  String name;
  String phonenumber;
  int age;

  UserModel({
    this.name ='',
    this.phonenumber='',
    this.age=1,
  });

  // Ensure you're returning a Map, not a Set
  Map<String, dynamic> toMap({required UserModel user}) {
    return {
      'name': name,
      'phonenumber': phonenumber,
      'age': age,
    };
  }
 UserModel fromMap({required Map<String, dynamic> data}) {
    return UserModel(
      name: data['name'],
      phonenumber: data['phonenumber'],
      age: data['age'],
    );
  }
}
