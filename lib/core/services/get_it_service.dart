import 'package:fruits_hub_app/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_hub_app/core/repos/orders_repo/orders_repo_impl.dart';
import 'package:fruits_hub_app/core/repos/products_repo/products_repo.dart';
import 'package:fruits_hub_app/core/repos/products_repo/products_repo_impl.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/core/services/firestore_service.dart';
import 'package:fruits_hub_app/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseService>(FirestoreService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
    databaseService: getIt<DatabaseService>(),
  ));
  getIt.registerSingleton<ProductsRepo>(ProductsRepoImpl(
    getIt<DatabaseService>(),
  ));
  getIt.registerSingleton<OrdersRepo>(
    OrdersRepoImpl(
      getIt<DatabaseService>(),
    ),
  );
}
