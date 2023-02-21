class ModelEmployee {
  ModelEmployee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.role,
    required this.education,
    required this.doj,
    required this.aadharNo,
    required this.pan,
    required this.dob,
    required this.mobileNo,
    required this.address,
  });

  late final String id;
  late final String firstName;
  late final String lastName;
  late final String gender;
  late final String role;
  late final String education;
  late final String doj;
  late final String aadharNo;
  late final String pan;
  late final String dob;
  late final List<String> mobileNo;
  late final Address address;

  ModelEmployee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    role = json['role'];
    education = json['education'];
    doj = json['doj'];
    aadharNo = json['aadharNo'];
    pan = json['pan'];
    dob = json['dob'];
    mobileNo = List.castFrom<dynamic, String>(json['mobileNo']);
    address = Address.fromJson(json['address']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['firstName'] = firstName;
    _data['lastName'] = lastName;
    _data['gender'] = gender;
    _data['role'] = role;
    _data['education'] = education;
    _data['doj'] = doj;
    _data['aadharNo'] = aadharNo;
    _data['pan'] = pan;
    _data['dob'] = dob;
    _data['mobileNo'] = mobileNo;
    _data['address'] = address.toJson();
    return _data;
  }
}

class Address {
  Address({
    required this.permenent,
    required this.temperary,
  });

  late final Permenent permenent;
  late final Temperary temperary;

  Address.fromJson(Map<String, dynamic> json) {
    permenent = Permenent.fromJson(json['permenent']);
    temperary = Temperary.fromJson(json['temperary']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['permenent'] = permenent.toJson();
    _data['temperary'] = temperary.toJson();
    return _data;
  }
}

class Permenent {
  Permenent({
    required this.addressLine1,
    required this.addressLine2,
    required this.state,
    required this.country,
    required this.pincode,
  });

  late final String addressLine1;
  late final String addressLine2;
  late final String state;
  late final String country;
  late final String pincode;

  Permenent.fromJson(Map<String, dynamic> json) {
    addressLine1 = json['addressLine1'];
    addressLine2 = json['addressLine2'];
    state = json['state'];
    country = json['country'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['addressLine1'] = addressLine1;
    _data['addressLine2'] = addressLine2;
    _data['state'] = state;
    _data['country'] = country;
    _data['pincode'] = pincode;
    return _data;
  }
}

class Temperary {
  Temperary({
    required this.addressLine1,
    required this.addressLine2,
    required this.state,
    required this.country,
    required this.pincode,
  });

  late final String addressLine1;
  late final String addressLine2;
  late final String state;
  late final String country;
  late final String pincode;

  Temperary.fromJson(Map<String, dynamic> json) {
    addressLine1 = json['addressLine1'];
    addressLine2 = json['addressLine2'];
    state = json['state'];
    country = json['country'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['addressLine1'] = addressLine1;
    _data['addressLine2'] = addressLine2;
    _data['state'] = state;
    _data['country'] = country;
    _data['pincode'] = pincode;
    return _data;
  }
}
