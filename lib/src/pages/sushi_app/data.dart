import 'models/category_menu_model.dart';
import 'models/popular_menu_model.dart';

final itemsPopularMenu = <PopularMenuModel>[
  PopularMenuModel(
      name: 'sushi with shrimp',
      foodStyle: 'Temaki',
      price: '\$27.00',
      rating: 3.5,
      urlImage:
          //'https://static.wixstatic.com/media/nsplsh_596d7946427657376f4738~mv2_d_5760_3840_s_4_2.jpg/v1/fill/w_387,h_258,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Image%20by%20Nick%20Karvounis.jpg',
          'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459465/flutter_ui/Image_by_Nick_Karvounis_stcejm.webp',
      description:
          'occaecat incididunt cupidatat consectetur commodo aute. Exercitation id tempor proident magna ullamco ut pariatur veniam. Nostrud nisi et pariatur officia velit ex laborum. Ullamco ullamco eu Lorem ullamco veniam commodo ad sint ea reprehenderit. Pariatur in ad adipisicing magna incididunt aliqua.'),
  PopularMenuModel(
      name: 'sushi with shrimp',
      foodStyle: 'Nigari',
      price: '\$29.00',
      rating: 2.5,
      urlImage:
          // 'https://images.pexels.com/photos/3298179/pexels-photo-3298179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459539/flutter_ui/pexels-photo-3298179_u4otyj.jpg',
      description:
          'apxcepteur occaecat incididunt cupidatat consectetur commodo aute. Exercitation id tempor proident magna ullamco ut pariatur veniam. Nostrud nisi et pariatur officia velit ex laborum. Ullamco ullamco eu Lorem ullamco veniam commodo ad sint ea reprehenderit. Pariatur in ad adipisicing magna incididunt aliqua.'),
  PopularMenuModel(
      name: 'sushi with shrimp',
      foodStyle: 'Sushi',
      price: '\$27.00',
      rating: 4.5,
      urlImage:
          'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459465/flutter_ui/Image_by_Nick_Karvounis_stcejm.webp',
      description:
          'excepteur occaecat incididunt cupidatat consectetur commodo aute. Exercitation id tempor proident magna ullamco ut pariatur veniam. Nostrud nisi et pariatur officia velit ex laborum. Ullamco ullamco eu Lorem ullamco veniam commodo ad sint ea reprehenderit. Pariatur in ad adipisicing magna incididunt aliqua.'),
];

final itemsCategoryMenu = <CategoryMenuModel>[
  CategoryMenuModel(
    'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
    0xffffded8,
  ),
  CategoryMenuModel(
    'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
    0xffd8f3ff,
  ),
  CategoryMenuModel(
    'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
    0xfffff2b3,
  ),
  CategoryMenuModel(
    'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
    0xffffded8,
  ),
  CategoryMenuModel(
    'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
    0xffd8f3ff,
  ),
];
