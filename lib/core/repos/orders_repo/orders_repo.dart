import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/failures.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

abstract class OrdersRepo {
  Future<Either<Failure, void>> addOrder({required OrderEntity order});
  Future<Either<Failure, List<OrderEntity>>> getOrders();
}
