import 'package:dio/dio.dart';
import 'package:moniepoint_test/modules/home/models/banner.dart';
import 'package:moniepoint_test/modules/home/models/category.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/modules/home/models/store_review.dart';
import 'package:moniepoint_test/shared/models/user.dart';
import 'package:moniepoint_test/shared/network/network_request.dart';

class HomeApiService {
  final HttpService http;

  HomeApiService({required this.http});

  Future<Response> fetchCategories() async {
    return http.getRequest('categories');
  }

  Future<Response> fetchProducts() async {
    return http.getRequest('products');
  }

  Future<Response> fetchBanner() async {
    return http.getRequest('banner');
  }
}

class Categories {
  static List<Category> getCategories() {
    return <Category>[
      Category(
          id: "1",
          icon:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685834383/category_wg7b6u.svg",
          name: "Category"),
      Category(
          id: "2",
          icon:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685834383/flight_ze8awo.svg",
          name: "Flight"),
      Category(
          id: "3",
          icon:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685834383/receipt_x8t6ed.svg",
          name: "Bill"),
      Category(
          id: "4",
          icon:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685834383/global_twzt8l.svg",
          name: "Data plan"),
      Category(
          id: "5",
          icon:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685834383/coin_p9trl4.svg",
          name: "Top up")
    ];
  }
}

class Products {
  static List<ProductModel> getProducts() {
    return <ProductModel>[
      ProductModel(
        id: "1",
        image: [
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887387/image_236_v2udey.png",
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887387/image_240_oswdo5.png",
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887381/image_241_shjxry.png",
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887381/image_245_pzw7j6.png",
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887381/image_241_shjxry.png",
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887387/image_240_oswdo5.png",
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887381/image_241_shjxry.png"
        ],
        name: "Shirt",
        description: "Essential Men’s short-Sleeve Crewneck T-Shirt",
        totalRating: 4.9,
        reviewCount: 2356,
        amount: 12.00,
        isFavorite: false,
        shopName: "Thrifting _Store",
        quantitySold: 23000,
        brandName: "ChArmkpR",
        categoryName: "Casual Shirt",
        color: "Aprikot",
        material: "Polyester",
        condition: "New",
        heavy: "200g",
        productFeature: [
          "Long-sleeves dress shirt in classic fit featuring button-down collar",
          "Patch Pocket on Left Chest",
          "Durable Combination Cotton Fabric",
          "Comfortable and quality dress shirt",
          "Go To Classic button down shirt for all special occasions"
        ],
        reviews: [
          StoreReview(
            id: "1",
            user: User(
                id: "1",
                firstName: "Eren",
                lastName: "Yazur",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686055852/Frame_1000007239_qjf0ri.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: ["Good", "Nice"],
          ),
          StoreReview(
            id: "2",
            user: User(
                id: "2",
                firstName: "Annie",
                lastName: "Lemalhart",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_1_idfhb1.png"),
            rating: 5.0,
            review: "According to my expectations. This is the best.Thank you",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
          StoreReview(
            id: "3",
            user: User(
                id: "3",
                firstName: "Levi",
                lastName: "Arman",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_2_nwpf53.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
        ],
      ),
      ProductModel(
        id: "2",
        image: [
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887387/image_240_oswdo5.png"
        ],
        name: "Shirt",
        description: "Essential Men’s short-Sleeve Crewneck T-Shirt",
        totalRating: 4.9,
        reviewCount: 2356,
        amount: 18.00,
        isFavorite: false,
        shopName: "Thrifting _Store",
        quantitySold: 23000,
        categoryName: "ChArmkpR",
        brandName: "Casual Shirt",
        color: "Aprikot",
        material: "Polyester",
        condition: "New",
        heavy: "200g",
        productFeature: [
          "Long-sleeves dress shirt in classic fit featuring button-down collar",
          "Patch Pocket on Left Chest",
          "Durable Combination Cotton Fabric",
          "Comfortable and quality dress shirt",
          "Go To Classic button down shirt for all special occasions"
        ],
        reviews: [
          StoreReview(
            id: "1",
            user: User(
                id: "1",
                firstName: "Eren",
                lastName: "Yazur",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686055852/Frame_1000007239_qjf0ri.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: ["Good", "Nice"],
          ),
          StoreReview(
            id: "2",
            user: User(
                id: "2",
                firstName: "Annie",
                lastName: "Lemalhart",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_1_idfhb1.png"),
            rating: 5.0,
            review: "According to my expectations. This is the best.Thank you",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
          StoreReview(
            id: "3",
            user: User(
                id: "3",
                firstName: "Levi",
                lastName: "Arman",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_2_nwpf53.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
        ],
      ),
      ProductModel(
        id: "3",
        image: [
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887381/image_241_shjxry.png"
        ],
        name: "Shirt",
        description: "Essential Men’s short-Sleeve Crewneck T-Shirt",
        totalRating: 4.9,
        reviewCount: 2356,
        amount: 32.00,
        isFavorite: false,
        shopName: "Thrifting _Store",
        quantitySold: 23000,
        categoryName: "ChArmkpR",
        brandName: "Casual Shirt",
        color: "Aprikot",
        material: "Polyester",
        condition: "New",
        heavy: "200g",
        productFeature: [
          "Long-sleeves dress shirt in classic fit featuring button-down collar",
          "Patch Pocket on Left Chest",
          "Durable Combination Cotton Fabric",
          "Comfortable and quality dress shirt",
          "Go To Classic button down shirt for all special occasions"
        ],
        reviews: [
          StoreReview(
            id: "1",
            user: User(
                id: "1",
                firstName: "Eren",
                lastName: "Yazur",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686055852/Frame_1000007239_qjf0ri.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: ["Good", "Nice"],
          ),
          StoreReview(
            id: "2",
            user: User(
                id: "2",
                firstName: "Annie",
                lastName: "Lemalhart",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_1_idfhb1.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
          StoreReview(
            id: "3",
            user: User(
                id: "3",
                firstName: "Levi",
                lastName: "Arman",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_2_nwpf53.png"),
            rating: 5.0,
            review: "According to my expectations. This is the best.Thank you",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
        ],
      ),
      ProductModel(
        id: "4",
        image: [
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887381/image_245_pzw7j6.png"
        ],
        name: "Shirt",
        description: "Essential Men’s Regular-Fit Long-Sleeve Oxford..",
        totalRating: 4.9,
        reviewCount: 2356,
        amount: 32.00,
        isFavorite: true,
        shopName: "Thrifting _Store",
        quantitySold: 23000,
        brandName: "ChArmkpR",
        categoryName: "Casual Shirt",
        color: "Aprikot",
        material: "Polyester",
        condition: "New",
        heavy: "200g",
        productFeature: [
          "Long-sleeves dress shirt in classic fit featuring button-down collar",
          "Patch Pocket on Left Chest",
          "Durable Combination Cotton Fabric",
          "Comfortable and quality dress shirt",
          "Go To Classic button down shirt for all special occasions"
        ],
        reviews: [
          StoreReview(
            id: "1",
            user: User(
                id: "1",
                firstName: "Eren",
                lastName: "Yazur",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686055852/Frame_1000007239_qjf0ri.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: ["Good", "Nice"],
          ),
          StoreReview(
            id: "2",
            user: User(
                id: "2",
                firstName: "Annie",
                lastName: "Lemalhart",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_1_idfhb1.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
          StoreReview(
            id: "3",
            user: User(
                id: "3",
                firstName: "Levi",
                lastName: "Arman",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_2_nwpf53.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
        ],
      ),
      ProductModel(
        id: "5",
        image: [
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887382/image_250_idd0cu.png"
        ],
        name: "Shirt",
        description: "Essential Men’s short-Sleeve Crewneck T-Shirt",
        totalRating: 4.9,
        reviewCount: 2356,
        amount: 12.00,
        isFavorite: false,
        shopName: "Thrifting _Store",
        quantitySold: 23000,
        brandName: "ChArmkpR",
        categoryName: "Casual Shirt",
        color: "Aprikot",
        material: "Polyester",
        condition: "New",
        heavy: "200g",
        productFeature: [
          "Long-sleeves dress shirt in classic fit featuring button-down collar",
          "Patch Pocket on Left Chest",
          "Durable Combination Cotton Fabric",
          "Comfortable and quality dress shirt",
          "Go To Classic button down shirt for all special occasions"
        ],
        reviews: [
          StoreReview(
            id: "1",
            user: User(
                id: "1",
                firstName: "Eren",
                lastName: "Yazur",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686055852/Frame_1000007239_qjf0ri.png"),
            rating: 5.0,
            review: "According to my expectations. This is the best.Thank you",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: ["Good", "Nice"],
          ),
          StoreReview(
            id: "2",
            user: User(
                id: "2",
                firstName: "Annie",
                lastName: "Lemalhart",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_1_idfhb1.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
          StoreReview(
            id: "3",
            user: User(
                id: "3",
                firstName: "Levi",
                lastName: "Arman",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_2_nwpf53.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
        ],
      ),
      ProductModel(
        id: "6",
        image: [
          "https://res.cloudinary.com/ds4sju6jy/image/upload/v1685887381/image_245_pzw7j6.png"
        ],
        name: "Shirt",
        description: "Essential Men’s Regular-Fit Long-Sleeve Oxford..",
        totalRating: 49,
        reviewCount: 2356,
        amount: 12.00,
        isFavorite: true,
        shopName: "Thrifting _Store",
        quantitySold: 23000,
        brandName: "ChArmkpR",
        categoryName: "Casual Shirt",
        color: "Aprikot",
        material: "Polyester",
        condition: "New",
        heavy: "200g",
        productFeature: [
          "Long-sleeves dress shirt in classic fit featuring button-down collar",
          "Patch Pocket on Left Chest",
          "Durable Combination Cotton Fabric",
          "Comfortable and quality dress shirt",
          "Go To Classic button down shirt for all special occasions"
        ],
        reviews: [
          StoreReview(
            id: "1",
            user: User(
                id: "1",
                firstName: "Eren",
                lastName: "Yazur",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686055852/Frame_1000007239_qjf0ri.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: ["Good", "Nice"],
          ),
          StoreReview(
            id: "2",
            user: User(
                id: "2",
                firstName: "Annie",
                lastName: "Lemalhart",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_1_idfhb1.png"),
            rating: 5.0,
            review: "This is a very good product",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
          StoreReview(
            id: "3",
            user: User(
                id: "3",
                firstName: "Levi",
                lastName: "Arman",
                imageUrl:
                    "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686087675/Frame_1000007239_2_nwpf53.png"),
            rating: 5.0,
            review: "According to my expectations. This is the best.Thank you",
            createdAt: "2021-07-20T12:00:00.000Z",
            tags: [
              "Product in good condition",
              "very fast delivery",
              "Fast seller response"
            ],
          ),
        ],
      )
    ];
  }
}

class Banners {
  static List<BannerModel> getBanners() {
    return <BannerModel>[
      BannerModel(
          id: "1",
          image:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686093202/Frame_48095799_kre9oy.png"),
      BannerModel(
          id: "2",
          image:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686093267/Untitled_ofb9pg.png"),
      BannerModel(
          id: "3",
          image:
              "https://res.cloudinary.com/ds4sju6jy/image/upload/v1686093363/Untitled_gua1lx.png")
    ];
  }
}
