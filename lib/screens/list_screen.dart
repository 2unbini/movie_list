import 'package:flutter/material.dart';
import 'package:movie_list/models/movie.dart';
import 'package:movie_list/repositories/movie_repository.dart';
import 'package:movie_list/screens/detail_screen.dart';

class ListScreen extends StatelessWidget {
  final List<Movie> movies = MovieRepository().getMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Movie List'),
      ),
      body: ListView.separated(
          padding: EdgeInsets.only(top: 10),
          itemBuilder: (context, index) {
            return MovieTile(movie: movies[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10);
          },
          itemCount: movies.length
      )
    );
  }
}

class MovieTile extends StatelessWidget {
  final Movie movie;

  MovieTile({ required this.movie });
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(movie.title),
      leading: Image.network(movie.imageURL),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(
            builder: (context) => DetailScreen(
                movie: movie,
            ),
        ));
      },
    );
  }
}