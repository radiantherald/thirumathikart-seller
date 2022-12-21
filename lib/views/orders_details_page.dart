import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thirumathikart_seller/config/themes.dart';
import 'package:thirumathikart_seller/controllers/orders_details_controller.dart';
import 'package:thirumathikart_seller/models/orders.dart';
import 'package:thirumathikart_seller/widgets/app_bar.dart';

class OrdersDetailsPage extends GetView<OrdersDetailsController> {
  const OrdersDetailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<OrderItemDisplay> orderItems = Get.arguments;
    return Scaffold(
        appBar: appBar('My Order Details'), body: buildItems(orderItems));
  }

  Widget buildItems(List<OrderItemDisplay> orderItems) => ListView.builder(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 32, bottom: 32),
        itemBuilder: (context, index) => Card(
            margin: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 10, top: 2, bottom: 2, right: 5),
                    alignment: Alignment.center,
                    child: Text(
                      orderItems[index].name!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.only(
                  //       left: 10, top: 2, bottom: 5, right: 5),
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     orderItems[index].category!,
                  //     style: TextStyle(
                  //       fontSize: 14,
                  //       color: AppTheme.textPrimary,
                  //     ),
                  //   ),
                  // ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 10, top: 2, bottom: 5, right: 5),
                    alignment: Alignment.center,
                    child: Text(
                      orderItems[index].description!,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 10, top: 2, bottom: 5, right: 5),
                    alignment: Alignment.center,
                    child: Text(
                      'Quantity = ${orderItems[index].quantity!}',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 10, top: 2, bottom: 5, right: 5),
                    alignment: Alignment.center,
                    child: Text(
                      'Price = ${orderItems[index].price!}',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 10, top: 2, bottom: 5, right: 5),
                    alignment: Alignment.center,
                    child: Text(
                      'Total Price = ${orderItems[index].totalPrice!}',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                  ),
                ]))),
        itemCount: orderItems.length,
      );
}
