/// status : "Success"
/// hashValue : "583bdcac5d2598041eafe74c8a5c8abd69776d7d842ef1e0e79a67cc750d37cc.1686212765863"
/// user : {"is_Customer":0,"photo":"default.jpg","status":"Active","currentLocation":[],"_id":"64818f712c69960dba3580e4","name":"shakir sha","phone":"03056589655","password":"$2a$12$bP2oMKcbx2LMBeWHNm7sM.Yih1UhTT.zzYaOtM5Qk9AkFN99ygjJS","city":"Lahore","address":"City Layyah","createdAt":"2023-06-07T22:00:00.000Z","__v":0}

class SignupModel {
  SignupModel({
      String? status, 
      String? hashValue, 
      User? user,}){
    _status = status;
    _hashValue = hashValue;
    _user = user;
}

  SignupModel.fromJson(dynamic json) {
    _status = json['status'];
    _hashValue = json['hashValue'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _status;
  String? _hashValue;
  User? _user;
SignupModel copyWith({  String? status,
  String? hashValue,
  User? user,
}) => SignupModel(  status: status ?? _status,
  hashValue: hashValue ?? _hashValue,
  user: user ?? _user,
);
  String? get status => _status;
  String? get hashValue => _hashValue;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['hashValue'] = _hashValue;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// is_Customer : 0
/// photo : "default.jpg"
/// status : "Active"
/// currentLocation : []
/// _id : "64818f712c69960dba3580e4"
/// name : "shakir sha"
/// phone : "03056589655"
/// password : "$2a$12$bP2oMKcbx2LMBeWHNm7sM.Yih1UhTT.zzYaOtM5Qk9AkFN99ygjJS"
/// city : "Lahore"
/// address : "City Layyah"
/// createdAt : "2023-06-07T22:00:00.000Z"
/// __v : 0

class User {
  User({
      num? isCustomer, 
      String? photo, 
      String? status, 
      List<dynamic>? currentLocation, 
      String? id, 
      String? name, 
      String? phone, 
      String? password, 
      String? city, 
      String? address, 
      String? createdAt, 
      num? v,}){
    _isCustomer = isCustomer;
    _photo = photo;
    _status = status;
    _currentLocation = currentLocation;
    _id = id;
    _name = name;
    _phone = phone;
    _password = password;
    _city = city;
    _address = address;
    _createdAt = createdAt;
    _v = v;
}

  User.fromJson(dynamic json) {
    _isCustomer = json['is_Customer'];
    _photo = json['photo'];
    _status = json['status'];
    if (json['currentLocation'] != null) {
      _currentLocation = [];
      json['currentLocation'].forEach((v) {
        _currentLocation?.add(v.fromJson(v));
      });
    }
    _id = json['_id'];
    _name = json['name'];
    _phone = json['phone'];
    _password = json['password'];
    _city = json['city'];
    _address = json['address'];
    _createdAt = json['createdAt'];
    _v = json['__v'];
  }
  num? _isCustomer;
  String? _photo;
  String? _status;
  List<dynamic>? _currentLocation;
  String? _id;
  String? _name;
  String? _phone;
  String? _password;
  String? _city;
  String? _address;
  String? _createdAt;
  num? _v;
User copyWith({  num? isCustomer,
  String? photo,
  String? status,
  List<dynamic>? currentLocation,
  String? id,
  String? name,
  String? phone,
  String? password,
  String? city,
  String? address,
  String? createdAt,
  num? v,
}) => User(  isCustomer: isCustomer ?? _isCustomer,
  photo: photo ?? _photo,
  status: status ?? _status,
  currentLocation: currentLocation ?? _currentLocation,
  id: id ?? _id,
  name: name ?? _name,
  phone: phone ?? _phone,
  password: password ?? _password,
  city: city ?? _city,
  address: address ?? _address,
  createdAt: createdAt ?? _createdAt,
  v: v ?? _v,
);
  num? get isCustomer => _isCustomer;
  String? get photo => _photo;
  String? get status => _status;
  List<dynamic>? get currentLocation => _currentLocation;
  String? get id => _id;
  String? get name => _name;
  String? get phone => _phone;
  String? get password => _password;
  String? get city => _city;
  String? get address => _address;
  String? get createdAt => _createdAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_Customer'] = _isCustomer;
    map['photo'] = _photo;
    map['status'] = _status;
    if (_currentLocation != null) {
      map['currentLocation'] = _currentLocation?.map((v) => v.toJson()).toList();
    }
    map['_id'] = _id;
    map['name'] = _name;
    map['phone'] = _phone;
    map['password'] = _password;
    map['city'] = _city;
    map['address'] = _address;
    map['createdAt'] = _createdAt;
    map['__v'] = _v;
    return map;
  }

}