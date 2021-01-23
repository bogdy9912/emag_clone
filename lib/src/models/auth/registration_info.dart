part of auth_models;

abstract class RegistrationInfo implements Built<RegistrationInfo, RegistrationInfoBuilder> {
  factory RegistrationInfo([void Function(RegistrationInfoBuilder b) updates]) = _$RegistrationInfo;
  factory RegistrationInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  RegistrationInfo._();

  String get displayedName;


  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RegistrationInfo> get serializer => _$registrationInfoSerializer;
}