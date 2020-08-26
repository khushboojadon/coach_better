
import 'package:flutter/material.dart';

class TrainingDaySelectionAdmin extends StatefulWidget {
  @override
  _TabbedAppBarSampleState createState() => _TabbedAppBarSampleState();
}

class _TabbedAppBarSampleState extends State<TrainingDaySelectionAdmin> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('Training Day Selection Admin'),
            bottom: new TabBar(isScrollable: true, 
            tabs: [
              new Tab(
                text: 'Available',
                // icon: new Icon(Icons.directions_car)
              ),
              new Tab(
                text: 'Not Available',
                // icon: new Icon(Icons.directions_walk)
              ),
              new Tab(
                text: 'No Response',
                // icon: new Icon(Icons.directions_bike)
              ),
            ]),
          ),
          body: SafeArea(
                      child: new TabBarView(
              children: [
              
                _buildMoviesList(),
                _buildMoviesList1(),
                _buildMoviesList2(),
              ],
            ),
          ),
           floatingActionButton: Padding(
             padding: const EdgeInsets.only(bottom:10.0),
             child: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.send),
        backgroundColor: Theme.of(context).accentColor,
      ),
           ),
    
        ),
      );
  
  }
}

final List<Player> movies = PlayerList.getMovies();
Widget _buildMoviesList() {
  return Container(
    child: movies.length > 0
        ? ListView.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                // onDismissed: (DismissDirection direction) {
                //   setState(() {
                //     // movies.removeAt(index);
                //   });
                // },
                secondaryBackground: Container(
                  child: Center(
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Colors.red,
                ),
                background: Container(),
                child: MovieCard(movie: movies[index]),
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
              );
            },
          )
        : Center(child: Text('No Items')),
  );
}

final List<Player> movies1 = PlayerList1.getMovies();
Widget _buildMoviesList1() {
  return Container(
    child: movies1.length > 0
        ? ListView.builder(
            itemCount: movies1.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                // onDismissed: (DismissDirection direction) {
                //   setState(() {
                //     // movies.removeAt(index);
                //   });
                // },
                secondaryBackground: Container(
                  child: Center(
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Colors.red,
                ),
                background: Container(),
                child: MovieCard1(movie: movies1[index]),
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
              );
            },
          )
        : Center(child: Text('No Items')),
  );
}

final List<Player> movies2 = PlayerList2.getMovies();
Widget _buildMoviesList2() {
  return Container(
    child: movies2.length > 0
        ? ListView.builder(
            itemCount: movies2.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                // onDismissed: (DismissDirection direction) {
                //   setState(() {
                //     // movies.removeAt(index);
                //   });
                // },
                secondaryBackground: Container(
                  child: Center(
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Colors.red,
                ),
                background: Container(),
                child: MovieCard2(movie: movies2[index]),
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
              );
            },
          )
        : Center(child: Text('No Items')),
  );
}

class Player {
  final String title;
  final String position;
  final String number;
  final String imageUrl;
  final Icon icon;

  Player({this.position, this.title, this.number, this.imageUrl, this.icon});
}

class PlayerList {
  static List<Player> getMovies() {
    return [
      Player(
          title: 'Rupesh Jha',
          position: 'Available',
          number: '06',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
      Player(
          title: 'Patrick',
          position: 'Available',
          number: '26',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BNDlmNGYxYzAtODczMy00MzgxLTk2MWQtZTk3MDdjY2IwYzdiXkEyXkFqcGdeQXVyOTc3MDA0ODE@._V1_SX300.jpg'),
      Player(
          title: 'Khushboo Jadon',
          position: 'Available',
          number: '03',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTc0NjE2ODM2OV5BMl5BanBnXkFtZTgwMjQyNDUzNzM@._V1_SX300.jpg'),
      Player(
          title: 'Stefan',
          position: 'Available',
          number: '09',
          icon: Icon(
            Icons.delete,
            color: const Color(0xFF167F67),
          ),
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_SX300.jpg'),
      Player(
          title: 'Pradeep Verma',
          position: 'Available',
          number: '02',
          icon: Icon(
            Icons.delete,
            color: const Color(0xFF167F67),
          ),
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BNDU3YzJlY2EtODA3NS00ZWM3LWJhYjUtZWE3MmE2YmEzNWYwXkEyXkFqcGdeQXVyNDMzMzI5MjM@._V1_SX300.jpg'),
    ];
  }
}

class PlayerList1 {
  static List<Player> getMovies() {
    return [
      Player(
          title: 'Rupesh Jha',
          position: 'Not Available',
          number: '06',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
      Player(
          title: 'Patrick',
          position: 'Not Available',
          number: '26',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BNDlmNGYxYzAtODczMy00MzgxLTk2MWQtZTk3MDdjY2IwYzdiXkEyXkFqcGdeQXVyOTc3MDA0ODE@._V1_SX300.jpg'),
      Player(
          title: 'Khushboo Jadon',
          position: 'Not Available',
          number: '03',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTc0NjE2ODM2OV5BMl5BanBnXkFtZTgwMjQyNDUzNzM@._V1_SX300.jpg'),
      Player(
          title: 'Stefan',
          position: 'Not Available',
          number: '09',
          icon: Icon(
            Icons.delete,
            color: const Color(0xFF167F67),
          ),
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_SX300.jpg'),
      Player(
          title: 'Pradeep Verma',
          position: 'Not Available',
          number: '02',
          icon: Icon(
            Icons.delete,
            color: const Color(0xFF167F67),
          ),
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BNDU3YzJlY2EtODA3NS00ZWM3LWJhYjUtZWE3MmE2YmEzNWYwXkEyXkFqcGdeQXVyNDMzMzI5MjM@._V1_SX300.jpg'),
    ];
  }
}

class PlayerList2 {
  static List<Player> getMovies() {
    return [
      Player(
          title: 'Rupesh Jha',
          position: 'No Response',
          number: '06',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
      Player(
          title: 'Patrick',
          position: 'No Response',
          number: '26',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BNDlmNGYxYzAtODczMy00MzgxLTk2MWQtZTk3MDdjY2IwYzdiXkEyXkFqcGdeQXVyOTc3MDA0ODE@._V1_SX300.jpg'),
      Player(
          title: 'Khushboo Jadon',
          position: 'No Response',
          number: '03',
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTc0NjE2ODM2OV5BMl5BanBnXkFtZTgwMjQyNDUzNzM@._V1_SX300.jpg'),
      Player(
          title: 'Stefan',
          position: 'No Response',
          number: '09',
          icon: Icon(
            Icons.delete,
            color: const Color(0xFF167F67),
          ),
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_SX300.jpg'),
      Player(
          title: 'Pradeep Verma',
          position: 'No Response',
          number: '02',
          icon: Icon(
            Icons.delete,
            color: const Color(0xFF167F67),
          ),
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BNDU3YzJlY2EtODA3NS00ZWM3LWJhYjUtZWE3MmE2YmEzNWYwXkEyXkFqcGdeQXVyNDMzMzI5MjM@._V1_SX300.jpg'),
    ];
  }
}

class MovieCard extends StatefulWidget {
  final Player movie;
  

  MovieCard({this.movie});

  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  List<String> _foot = ['Available','Not Available','No Response'];
  var _selectedfoot;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Card(
          child: new Container(
            // height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.all(8.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(widget.movie.imageUrl),
                      // minRadius: 90,
                      // maxRadius: 150,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          widget.movie.title,
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                          ),

                          // title: Text(movie.title),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, top: 5, bottom: 10.0),
                            child: Text(
                              widget.movie.position,
                              // textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.body1,
                            ),
                          ),
                          DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                hint: Container(
                                  child: Text('Availability',
                                      style: TextStyle(color: Colors.grey)),
                                ), // Not necessary for Option 1
                                value: _selectedfoot,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedfoot = newValue;
                                    print(_selectedfoot);
                                  });
                                },

                                items: _foot.map((tag) {
                                  return DropdownMenuItem(
                                    child: new Text(tag),
                                    value: tag,
                                  );
                                }).toList(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}

class MovieCard1 extends StatefulWidget {
  final Player movie;
  
  MovieCard1({this.movie});

  @override
  _MovieCard1State createState() => _MovieCard1State();
}

class _MovieCard1State extends State<MovieCard1> {
  List<String> _foot = ['Available','Not Available','No Response'];
  var _selectedfoot;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Card(
          child: new Container(
            // height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.all(8.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(widget.movie.imageUrl),
                      // minRadius: 90,
                      // maxRadius: 150,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          widget.movie.title,
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                          ),

                          // title: Text(movie.title),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, top: 5, bottom: 10.0),
                            child: Text(
                              widget.movie.position,
                              // textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.body1,
                            ),
                          ),
                          DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                hint: Container(
                                  child: Text('Availability',
                                      style: TextStyle(color: Colors.grey)),
                                ), // Not necessary for Option 1
                                value: _selectedfoot,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedfoot = newValue;
                                    print(_selectedfoot);
                                  });
                                },

                                items: _foot.map((tag) {
                                  return DropdownMenuItem(
                                    child: new Text(tag),
                                    value: tag,
                                  );
                                }).toList(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}

class MovieCard2 extends StatefulWidget {
  final Player movie;

  MovieCard2({this.movie});

  @override
  _MovieCard2State createState() => _MovieCard2State();
}

class _MovieCard2State extends State<MovieCard2> {
  List<String> _foot = ['Available','Not Available','No Response'];
  var _selectedfoot;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Card(
          child: new Container(
            // height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.all(8.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(widget.movie.imageUrl),
                      // minRadius: 90,
                      // maxRadius: 150,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          widget.movie.title,
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                          ),

                          // title: Text(movie.title),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, top: 5, bottom: 10.0),
                            child: Text(
                              widget.movie.position,
                              // textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.body1,
                            ),
                          ),
                          DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                hint: Container(
                                  child: Text('Availability',
                                      style: TextStyle(color: Colors.grey)),
                                ), // Not necessary for Option 1
                                value: _selectedfoot,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedfoot = newValue;
                                    print(_selectedfoot);
                                  });
                                },

                                items: _foot.map((tag) {
                                  return DropdownMenuItem(
                                    child: new Text(tag),
                                    value: tag,
                                  );
                                }).toList(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}


