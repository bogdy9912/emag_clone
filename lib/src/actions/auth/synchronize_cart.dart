part of auth_actions;

@freezed
abstract class SynchronizeCart with _$SynchronizeCart implements AppAction {
  const factory SynchronizeCart({@required ActionResponse response}) = SynchronizeCart$;

  const factory SynchronizeCart.successful() = SynchronizeCartSuccessful;

  @Implements(ErrorAction)
  const factory SynchronizeCart.error(Object error) = SynchronizeCartError;
}
