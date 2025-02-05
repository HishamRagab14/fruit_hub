import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/core/repos/products_repo/products_repo.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());
  final ProductsRepo productsRepo;
  int productsLength = 0;
  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getProducts();
    result.fold(
      (failure) {
        emit(ProductsFailure(failure.message));
      },
      (products) {
        emit(ProductsSuccess(products));
      },
    );
  }

  Future<void> getProducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getProducts();
    result.fold(
      (failure) {
        emit(ProductsFailure(failure.message));
      },
      (products) {
        productsLength = products.length;
        emit(ProductsSuccess(products));
      },
    );
  }
}
