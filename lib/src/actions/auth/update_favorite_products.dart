part of auth_actions;

@freezed
abstract class UpdateFavoriteProducts with _$UpdateFavoriteProducts implements AppAction {
  const factory UpdateFavoriteProducts({String add, String remove}) = UpdateFavoriteProducts$;

  const factory UpdateFavoriteProducts.successful({String add, String remove}) = UpdateFavoriteProductsSuccessful;

  @Implements(ErrorAction)
  const factory UpdateFavoriteProducts.error(Object error) = UpdateFavoriteProductsError;
}
