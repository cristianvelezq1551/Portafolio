import 'package:flutter/material.dart';
import 'package:peliculas/models/movie.dart';

class MovieSlider extends StatefulWidget {
  final List<Movie> movies;
  final String? title;
  final Function onNextPage;

  const MovieSlider(
      {super.key, required this.movies, this.title, required this.onNextPage});

  @override
  State<MovieSlider> createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 400) {
        widget.onNextPage();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 262,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.title!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 7),
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: widget.movies.length,
              itemBuilder: (_, int index) => _MovieSlider(
                widget.movies[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _MovieSlider extends StatelessWidget {
  final Movie movie;

  const _MovieSlider(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          //?Image movie
          _image(context),

          //Title movie
          _title()
        ],
      ),
    );
  }

  Container _title() {
    return Container(
      margin: const EdgeInsets.only(top: 3),
      height: 35,
      child: Text(
        movie.title,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textAlign: TextAlign.center, //centrar
      ),
    );
  }

  Expanded _image(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'Details', arguments: movie),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            placeholder: const AssetImage('assets/no-image.jpg'),
            image: NetworkImage(movie.fullPosterImg),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
