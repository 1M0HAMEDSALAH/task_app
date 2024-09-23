class LoginModel{

  late String partyName;
  late String imagePath;

  LoginModel.fromJson(Map<String , dynamic> json){
    partyName = json['partyName'];
    imagePath = json['imagePath'];
  }

}