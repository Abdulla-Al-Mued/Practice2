
import 'package:flutter/material.dart';
import 'package:jogajug/constants/variables.dart';

import '../../../models/product.dart';
import '../../../models/user.dart';

class MarketPlaceScreen extends StatefulWidget {
  static double offset = 0;
  const MarketPlaceScreen({super.key});

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  ScrollController scrollController =
  ScrollController(initialScrollOffset: MarketPlaceScreen.offset);
  ScrollController headerScrollController = ScrollController();

  final List<Product> products = [
    // Product(
    //   name:
    //   'iPhone 15',
    //   price: 160000,
    //   user:
    //   User(name: 'Minh Hương', avater: 'assets/images/user/minhhuong.jpg'),
    //   status: 'Mới',
    //   description:
    //   'Thuốc nhuộm tóc màu Xanh Dương Đen Khói không tẩy\n💙 Xanh Dương Đen Khói trầm hơn Light Blue Sea và sáng hơn Xanh Than - một màu xanh cân bằng để ai cũng có thể nhuộm được. Điểm "ăn khách" nhất ở màu này theo Cheng chính là ánh khói nhẹ nhàng, giúp cho mái tóc có độ bóng cực kì ảo diệu mà vẫn giữ được nền tối hợp với mọi tone da.\n💙 Xanh Dương Đen Khói mang vẻ đẹp năng động, hiện đại và cá tính. Không chỉ hợp với những chuyến du lịch, chụp ảnh, nhuộm tóc màu Xanh Dương Đen Khói nhẹ có thể diện đi học, đi làm mà không bị lộ liễu hay rực rỡ quá.\n💙 Thuốc nhuộm Xanh Dương Đen Khói chỉ từ 65k. Hãy nhắn tin cho Cheng nếu bạn cần tư vấn thêm về cách nhuộm tại nhà.\n🔸 Tặng ngay 1 lọ trợ dưỡng khi mua hàng\n🔸 Phù hợp với mọi tone da\n🔸 Lên từ nền tóc đen tự nhiên không cần nâng tẩy\n🔸 Độ bền màu: 1-1,5 tháng\n🔸 Cách sử dụng: trộn thuốc nhuộm tóc Xanh Dương Đen Khói theo công thức và làm theo các bước nhuộm. Tất cả có trong hướng dẫn đính kèm sản phẩm.',
    //   location: 'Hồ Chí Minh',
    //   images: [
    //     'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdt2aolo12',
    //     'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssb37wc7',
    //     'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssqjgs56',
    //     'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdsschsc07',
    //     'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssdwcs54',
    //     'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssfax8be',
    //     'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssgpho9e',
    //   ],
    // ),
    Product(
      name:
      'Laptop ASUS the Gaming A15 FA507NV-LP046W R7-7735HS|8GB|512GB|RTX™ 4060 8G',
      price: 29590000,
      user: User(name: 'Doraemon', avater: 'assets/images/user/doraemon.jpg'),
      status: '_',
      description:
      '--',
      location: 'Mỹ Tho',
      images: [
        'https://down-vn.img.susercontent.com/file/sg-11134201-7qvfj-lhxbgsjjv35kf8',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lhx8ohn6ivet9b',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lhx8ohn6enph87'
      ],
    ),
    Product(
      name:
      'Laptop ASUS the Gaming A15 FA507NV-LP046W R7-7735HS|8GB|512GB|RTX™ 4060 8G',
      price: 29590000,
      user: User(name: 'Doraemon', avater: 'assets/images/user/doraemon.jpg'),
      status: '_',
      description:
      '--',
      location: 'Mỹ Tho',
      images: [
        'https://down-vn.img.susercontent.com/file/sg-11134201-7qvfj-lhxbgsjjv35kf8',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lhx8ohn6ivet9b',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lhx8ohn6enph87'
      ],
    ),
    Product(
      name: 'iPhone 14 Pro Max 256GB',
      price: 23680000,
      user: User(name: 'Minions', avater: 'assets/images/user/minhtri.jpg'),
      status: '-',
      description:
      'Recently, the iPhone 14 Pro Max 256GB was officially revealed globally and shattered many long-standing rumors, inside the device will be equipped with a powerful chip and upgraded camera. comes from Apple.',
      location: 'Bình Dương',
      images: [
        'https://cdn.tgdd.vn/comment/54815677/2E796D29-3CA3-4B91-9D97-42DC190334E1JX5SC.jpeg',
        'https://cdn.tgdd.vn/comment/54450277/D7C0D7BA-AEA8-4B2E-8667-AFEA3C576886HKCAQ.jpeg',
      ],
    ),
    Product(
      name: 'iPhone 14 Pro Max 256GB',
      price: 23680000,
      user: User(name: 'Minions', avater: 'assets/images/user/minhtri.jpg'),
      status: '-',
      description:
      'Recently, the iPhone 14 Pro Max 256GB was officially revealed globally and shattered many long-standing rumors, inside the device will be equipped with a powerful chip and upgraded camera. comes from Apple.',
      location: 'Bình Dương',
      images: [
        'https://cdn.tgdd.vn/comment/54815677/2E796D29-3CA3-4B91-9D97-42DC190334E1JX5SC.jpeg',
        'https://cdn.tgdd.vn/comment/54450277/D7C0D7BA-AEA8-4B2E-8667-AFEA3C576886HKCAQ.jpeg',
      ],
    ),

  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    headerScrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      headerScrollController.jumpTo(headerScrollController.offset +
          scrollController.offset -
          MarketPlaceScreen.offset);
      MarketPlaceScreen.offset = scrollController.offset;
    });
    return Scaffold(
      body: NestedScrollView(
        controller: headerScrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            toolbarHeight: 60,
            titleSpacing: 0,
            pinned: true,
            floating: true,
            primary: false,
            centerTitle: true,
            automaticallyImplyLeading: false,
            snap: true,
            forceElevated: innerBoxIsScrolled,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(0), child: SizedBox()),
            title: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const ImageIcon(
                          AssetImage('assets/images/menu.png'),
                          color: Colors.black,
                          size: 50,
                        ),
                      ),
                      const Text(
                        'Marketplace',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        padding: const EdgeInsets.all(0),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12,
                        ),
                        child: IconButton(
                          splashRadius: 18,
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_rounded,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        padding: const EdgeInsets.all(0),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12,
                        ),
                        child: IconButton(
                          splashRadius: 18,
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.grey[200],
                          shadowColor: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/edit.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Sell',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.grey[200],
                          shadowColor: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/list.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Categories',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's picks",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                          color: Variables.secondaryColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Dhaka, Bangladesh',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Table(
                children: [
                  for (int i = 0; i < products.length - 1; i += 2)
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 5,
                              bottom: 10,
                            ),
                            child: InkWell(
                              onTap: () {
                                // Navigator.of(context).pushNamed(
                                //   ProductDetailsScreen.routeName,
                                //   arguments: products[i],
                                // );
                              },
                              child: Column(
                                children: [
                                  Image.network(
                                    products[i].images[0],
                                    fit: BoxFit.cover,
                                    width: (MediaQuery.of(context).size.width -
                                        5) /
                                        2,
                                    height: (MediaQuery.of(context).size.width -
                                        5) /
                                        2,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${products[i].price} TK',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        size: 2,
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Expanded(
                                        child: Text(
                                          products[i].name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {
                                // Navigator.of(context).pushNamed(
                                //   ProductDetailsScreen.routeName,
                                //   arguments: products[i + 1],
                                // );
                              },
                              child: Column(
                                children: [
                                  Image.network(
                                    products[i + 1].images[0],
                                    fit: BoxFit.cover,
                                    width: (MediaQuery.of(context).size.width -
                                        5) /
                                        2,
                                    height: (MediaQuery.of(context).size.width -
                                        5) /
                                        2,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${products[i + 1].price} TK',
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        size: 2,
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Expanded(
                                        child: Text(
                                          products[i + 1].name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
