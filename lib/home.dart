import 'package:analysis_app/topics/folgen_reihen/folgen_reihen_menu.dart';
import 'package:flutter/material.dart';
import 'helper/textstyle.dart';
import 'more.dart';

// The home file is the first file to be executed after the main file.
// It displays the main menu with the topic selection

// The home class builds the scaffold of the app
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  // The pushMore function sends the user to the Settings Tab if the user clicks on the more icon
  void _pushMore() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const Scaffold(
        body: More(),
      );
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Analysis', style: Style.AppBarMainFont)),
        backgroundColor: const Color(0xFFA81619),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: _pushMore,
          )
        ],
      ),
      // The body of the app displays a column with a scrollable Grid
      body: Column(
        children: <Widget>[
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 2 / 1,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                // Listens for a tap on the button and sends the user to the topic
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Scaffold(
                        body: Folgen_Reihen_Main(),
                      );
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 10.0),
                        ),
                      ],
                    ),

                    // displays the topic image and title
                    child: Stack(
                      children: const <Widget>[
                        Align(
                          alignment: FractionalOffset(0.5, 0.15),
                          child: FittedBox(
                            child: Image(
                              image: AssetImage('assets/img/sum.png'),
                              width: 100.0,
                              height: 80,
                            ),
                          ),
                        ),
                        Align(
                          alignment: FractionalOffset(0.5, 1),
                          child: FittedBox(
                            child: Text(
                              'Folgen & Reihen',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: Style.TopicTitleFont,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
