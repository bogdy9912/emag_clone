part of auth_actions;

@freezed
abstract class UpdateCart with _$UpdateCart implements AppAction {
  const factory UpdateCart({
    String addProduct,
    String removeProduct,
    String clearProduct,
    bool clearCart,
  }) = UpdateCart$;
}
