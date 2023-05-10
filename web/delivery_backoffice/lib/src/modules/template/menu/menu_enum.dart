enum Menu {
  paymentType(
    '/payment-type/',
    '/payment_type_ico.png',
    '/payment_type_ico_selected.png',
    '/Administrar Formas de Pagamento',
  ),
  products(
    '/products/',
    '/product_ico.png',
    '/product_ico_selected.png',
    '/Administrar Produtos',
  ),
  orders(
    '/order/',
    '/order_ico.png',
    '/order_ico_selected.png',
    '/Administrar Produtos',
  );

  final String route;
  final String assetIcons;
  final String assetsIconsSelected;
  final String label;
  const Menu(this.route, this.assetIcons, this.assetsIconsSelected, this.label);
}
