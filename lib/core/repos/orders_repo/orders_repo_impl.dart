import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/failures.dart';
import 'package:fruits_hub_app/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/core/utils/backend_endpoint.dart';
import 'package:fruits_hub_app/features/check_out/data/models/order_model.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService databaseService;

  OrdersRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, void>> addOrder({required OrderEntity order}) async{
    try {
      await databaseService.addData(path: BackendEndpoint.addOrder, data: OrderModel.fromEntity(order).toMap(), documentId: order.orderId);
    }
  }

  @override
  Future<Either<Failure, List<OrderEntity>>> getOrders() {
    // TODO: implement getOrders
    throw UnimplementedError();
  }
}