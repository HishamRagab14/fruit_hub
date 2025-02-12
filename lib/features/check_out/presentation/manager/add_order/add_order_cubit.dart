import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo) : super(AddOrderInitial());
  final OrdersRepo ordersRepo;
  void addOrder({required OrderEntity order}) async {
    emit(AddOrderLoading());
    var result = await ordersRepo.addOrder(order: order);
    result.fold(
      (l) {
        emit(
          AddOrderFailure(errMsg: l.toString()),
        );
      },
      (r) {
        emit(AddOrderSuccess());
      },
    );
  }
}
