import 'package:bookly_app/Features/home/presentation/views/book_detalies_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kHomeView = '/homeView';
  static const kSearchView = '/searchView';
    static const kBookDetailsView = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kSearchView, builder: (context, state) => const SearchView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kBookDetailsView, builder: (context, state) => const BookDetaliesView()),
    ],
  );
}
