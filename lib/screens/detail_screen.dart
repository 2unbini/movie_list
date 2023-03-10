import 'package:flutter/material.dart';
import 'package:movie_list/models/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  DetailScreen({ required this.movie });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.network(movie.imageURL),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width:  MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            movie.title,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Text(
                          movie.director,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    padding: EdgeInsets.all(15),
                    child: Center(
                        child: Icon(
                            Icons.star,
                            color: Colors.grey
                        )
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                          Icons.movie,
                          color: Colors.red
                      ),
                      Text(
                        'Netflix',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.reviews,
                        color: Colors.blue,
                      ),
                      Text(
                        'Reviews',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.save,
                        color: Colors.blue,
                      ),
                      Text(
                        'Save',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(movie.description),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              )
            ],
          ),
        ),
      )
    );
  }
}