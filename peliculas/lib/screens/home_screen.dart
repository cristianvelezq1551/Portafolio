import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/search/search_delegate.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Peliculas en cine',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: (() {
                showSearch(context: context, delegate: MovieSearchDelegate());
              }),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            SizedBox(
              height: 20,
            ),
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'populares',
              onNextPage: () => moviesProvider.getPopularMovies(),
            )
          ],
        ),
      ),
    );
  }
}
