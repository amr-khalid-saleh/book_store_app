import 'package:book_store/core/constants/constants.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/service_locator.dart';
import 'package:book_store/features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/features/home/presentation/view_models/cubits/general_books_cubit/general_books_cubit.dart';
import 'package:book_store/features/home/presentation/view_models/cubits/trending_books_cubit/trending_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GeneralBooksCubit(getIt.get<HomeRepoImpl>())..fetchGeneralBooks(),
        ),
        BlocProvider(
          create: (context) =>
              TrendingBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchTrendingBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.route,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
