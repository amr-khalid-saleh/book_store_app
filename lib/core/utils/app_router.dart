import 'package:book_store/core/utils/service_locator.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:book_store/features/home/presentation/view_models/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/book_details_view.dart';
import 'package:book_store/features/home/presentation/views/home_view.dart';
import 'package:book_store/features/search/presentation/views/search_view.dart';
import 'package:book_store/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final GoRouter route = GoRouter(
    routes: <RouteBase>[
      //the frist view your path write only forward slash '/'
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepo>()),
          child: BookDetailsView(book: state.extra as BookEntity,),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
