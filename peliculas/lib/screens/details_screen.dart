import 'package:flutter/material.dart';
import 'package:peliculas/models/movie.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)?.settings.arguments as Movie;

    return Scaffold(
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        slivers: [
          _customAppBar(movie),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _PosterAndTitle(movie),
                _OverView(movie),
                _OverView(movie),
                _OverView(movie),
                CastingCards(movie.id),
              ],
            ),
          )

          //   child: SizedBox(
          //     height: 2000,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class _customAppBar extends StatelessWidget {
  final Movie movie;

  const _customAppBar(this.movie);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.teal,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10, left: 10),
          color: Colors.black12,
          child: Text(
            movie.title,
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        background: FadeInImage(
          image: NetworkImage(movie.fullBackdropPath),
          placeholder: AssetImage('assets/loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final Movie movie;

  const _PosterAndTitle(this.movie);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Hero(
              tag: movie.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  image: NetworkImage(movie.fullPosterImg),
                  placeholder: AssetImage('assets/no-image.jpg'),
                  height: 150,
                ),
              ),
            ),
            SizedBox(width: 20),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: size.width - 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  Text(movie.originalTitle,
                      style: textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.center),
                  Row(
                    children: [
                      Icon(Icons.star_outline, size: 23, color: Colors.amber),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        '${movie.voteAverage}',
                        style: textTheme.caption,
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _OverView extends StatelessWidget {
  final Movie movie;

  const _OverView(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Text(movie.overview,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.subtitle1),
    );
  }
}
