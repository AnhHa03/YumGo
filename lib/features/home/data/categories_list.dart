class Category {
  final String name;
  final imageURL;

  Category({required this.name, required this.imageURL});
}

final List<Category> categories = [
  Category(name: "Cơm", imageURL: 'assets/images/categories/com_tam.png'),
  Category(name: "Bánh mì", imageURL: 'assets/images/categories/banh_mi.png'),
  Category(name: "Bún/Mì/Phở", imageURL: 'assets/images/categories/pho.png'),
  Category(name: "Burger", imageURL: 'assets/images/categories/burger.png'),
  Category(name: "Trà sữa", imageURL: 'assets/images/categories/tra_sua.png'),
  Category(
    name: "Ăn vặt",
    imageURL: 'assets/images/categories/banh_trang_tron.png',
  ),
  Category(name: "Pizza", imageURL: 'assets/images/categories/pizza.png'),
  Category(name: "Healthy", imageURL: 'assets/images/categories/healthy.png'),
  Category(name: "Hủ tíu", imageURL: 'assets/images/categories/hu_tiu.png'),
  Category(name: "Gà", imageURL: 'assets/images/categories/ga_ran.png'),
  Category(name: "Lẩu", imageURL: 'assets/images/categories/lau.png'),
  Category(name: "Hải sản", imageURL: 'assets/images/categories/hai_san.png'),
  Category(
    name: "Tráng miệng",
    imageURL: 'assets/images/categories/trang_mieng.png',
  ),
  Category(name: "Sinh tố", imageURL: 'assets/images/categories/sinh_to.png'),
  Category(name: "Chè", imageURL: 'assets/images/categories/che.png'),
  Category(name: "Cà phê", imageURL: 'assets/images/categories/ca_phe.png'),
];

List<Category> getCategoriesList() {
  return categories;
}
