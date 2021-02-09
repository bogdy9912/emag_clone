part of auth_actions;

@freezed
abstract class UpdateCart with _$UpdateCart implements AppAction {
  const factory UpdateCart({
    Product addProduct,
    Product removeProduct,
    Product clearProduct,
  }) = UpdateCart$;
}
