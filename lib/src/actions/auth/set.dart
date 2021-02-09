part of auth_actions;

@freezed
abstract class UpdateRegistrationInfo with _$UpdateRegistrationInfo implements AppAction {
  const factory UpdateRegistrationInfo({
    String email,
    String password,
    String displayedName,
  }) = UpdateRegistrationInfo$;
}


@freezed
abstract class UpdateProfileInfo with _$UpdateProfileInfo implements AppAction {
  const factory UpdateProfileInfo() = UpdateProfileInfo$;

  const factory UpdateProfileInfo.successful() = UpdateProfileInfoSuccessful;

  @Implements(ErrorAction)
  const factory UpdateProfileInfo.error(Object error) = UpdateProfileInfoError;
}

