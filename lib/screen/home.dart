import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> moviePosters = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
      ),
      body: FutureBuilder<List<String>>(
        //future:getMovie(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error fetching data'));
            } else if (!snapshot.hasData) {
              return Center(child: Text('No data available'));
            } else {
              List<String> movie = snapshot.data!;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 0.7, // Adjust as needed
                ),
                itemCount: moviePosters.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetailScreen(movie: movie[index],)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(moviePosters[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}