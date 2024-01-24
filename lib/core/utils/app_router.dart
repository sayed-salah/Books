import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo_implemenation.dart';
import 'package:books_app/features/home/presentation/view/book_details_view.dart';
import 'package:books_app/features/home/presentation/view/home_view.dart';
import 'package:books_app/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:books_app/features/search/presentation/views/search_view.dart';
import 'package:books_app/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const ksearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
