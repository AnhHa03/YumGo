import 'package:yumgo/core/theme/constants/app_images.dart';

class Category {
  final String name;
  final image;

  Category({required this.name, required this.image});
}

final List<Category> categories = [
  Category(name: "Cơm", image: AppImages.com_category),
  Category(name: "Bánh mì", image: AppImages.banh_mi_category),
  Category(name: "Bún/Mì/Phở", image: AppImages.bun_mi__pho_category),
  Category(name: "Burger", image: AppImages.burger_category),
  Category(name: "Trà sữa", image: AppImages.tra_sua_category),
  Category(name: "Ăn vặt", image: AppImages.an_vat_category),
  Category(name: "Pizza", image: AppImages.pizza_category),
  Category(name: "Healthy", image: AppImages.healthy_category),
  Category(name: "Hủ tíu", image: AppImages.hu_tiu_category),
  Category(name: "Gà", image: AppImages.ga_category),
  Category(name: "Lẩu", image: AppImages.lau_Category),
  Category(name: "Hải sản", image: AppImages.hai_san_category),
  Category(name: "Tráng miệng", image: AppImages.trang_mieng_category),
  Category(name: "Sinh tố", image: AppImages.sinh_to_category),
  Category(name: "Chè", image: AppImages.che_category),
  Category(name: "Cà phê", image: AppImages.ca_phe_category),
];

List<Category> getCategoriesList() {
  return categories;
}
