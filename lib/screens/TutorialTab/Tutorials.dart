import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/TutorialTab/SliverTopbar.dart';

bool swapFailureTrigger = false;
// If TRUE, scrolling works well when grabbing an open expansion tile list
// If FALSE, scrolling only works if we grab a parent list OUTSIDE the items of the open expansion tile

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
        subtitle: root.subtitle == null ? null : Text(root.subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.auto_stories),
                iconSize: 30,
                tooltip: 'Documents',
              ),
              flex: 1,
            ),
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.video_collection_rounded),
                iconSize: 30,
                tooltip: 'Videos',
              ),
              flex: 1,
            ),
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                iconSize: 20,
                tooltip: 'Shortlist',
              ),
              flex: 1,
            ),
          ],
        ),
      );
    }

    var kids = root.children.map((child) => _buildTiles(child)).toList();

    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      subtitle: root.subtitle == null? null : Text(root.subtitle),

      // <<---------- PROBLEM IS HERE if you test with the ListView.builder() version ---------->>
      children: swapFailureTrigger
          ? root.children.map(_buildTiles).toList()
          : <Widget>[
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                // helps scroll all 6 items in list *not working*
                key: PageStorageKey<Entry>(root),
                itemCount: kids.length,
                itemBuilder: (context, index) {
                  return kids[index];
                },
                //shrinkWrap: true,
                //physics: ClampingScrollPhysics(), // for List View to scroll
              )
            ],
      //  <<--------------------------------------------------------------------------------->>
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

// void main() {
//   runApp(MyApp());
// }

class Tutorials extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: TutorialPage(title: ''), //Flutter Expansion Issue'),
    );
  }
}

class TutorialPage extends StatefulWidget {
  TutorialPage({Key key, @required this.title}) : super(key: key);
  final String title;
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpansionTileExample(),
    );
  }
}

class ExpansionTileExample extends StatelessWidget {
  const ExpansionTileExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  //Change the constructor to set each parameter and skip subtitle on root
  const Entry({@required this.title, this.children = const <Entry>[], this.subtitle});
  final String title;
  final List<Entry> children;
  final String subtitle; // Can be null so root won`t have it
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    title: 'Day1',
    children: <Entry>[
      Entry(title: 'Topic T1.1', subtitle: 'Subtitle 2.1'),
      Entry(title: 'Topic T1.2', subtitle: 'Subtitle 2.2'),
      Entry(title: 'Toipc T1.3', subtitle: 'Subtitle 2.3'),
      Entry(title: 'Topic T1.4', subtitle: 'Subtitle 2.4'),
      Entry(title: 'Topic T1.5', subtitle: 'Subtitle 2.5'),
      Entry(title: 'Topic T1.6', subtitle: 'Subtitle 2.6'),
    ],
  ),
  Entry(
    title: 'Day2',
    children: <Entry>[
      Entry(title: 'Topic T2.1', subtitle: 'Subtitle 2.1'),
      Entry(title: 'Topic T2.2', subtitle: 'Subtitle 2.2'),
      Entry(title: 'Toipc T2.3', subtitle: 'Subtitle 2.3'),
      Entry(title: 'Topic T2.4', subtitle: 'Subtitle 2.4'),
      Entry(title: 'Topic T2.5', subtitle: 'Subtitle 2.5'),
      Entry(title: 'Topic T2.6', subtitle: 'Subtitle 2.6'),
    ],
  ),
  Entry(
    title: 'Day3',
    children: <Entry>[
      Entry(title: 'Topic T3.1', subtitle: 'Subtitle 3.1'),
      Entry(title: 'Topic T3.2', subtitle: 'Subtitle 3.2'),
      Entry(title: 'Toipc T3.3', subtitle: 'Subtitle 3.3'),
      Entry(title: 'Topic T3.4', subtitle: 'Subtitle 3.4'),
      Entry(title: 'Topic T3.5', subtitle: 'Subtitle 3.5'),
      Entry(title: 'Topic T3.6', subtitle: 'Subtitle 3.6'),
    ],
  ),
  Entry(
    title: 'Day4',
    children: <Entry>[
      Entry(title: 'Topic T4.1', subtitle: 'Subtitle 4.1'),
      Entry(title: 'Topic T4.2', subtitle: 'Subtitle 4.2'),
      Entry(title: 'Toipc T4.3', subtitle: 'Subtitle 4.3'),
      Entry(title: 'Topic T4.4', subtitle: 'Subtitle 4.4'),
      Entry(title: 'Topic T4.5', subtitle: 'Subtitle 4.5'),
      Entry(title: 'Topic T4.6', subtitle: 'Subtitle 4.6'),
    ],
  ),
  Entry(
    title: 'Day5',
    children: <Entry>[
      Entry(title: 'Topic T5.1', subtitle: 'Subtitle 5.1'),
      Entry(title: 'Topic T5.2', subtitle: 'Subtitle 5.2'),
      Entry(title: 'Toipc T5.3', subtitle: 'Subtitle 5.3'),
      Entry(title: 'Topic T5.4', subtitle: 'Subtitle 5.4'),
      Entry(title: 'Topic T5.5', subtitle: 'Subtitle 5.5'),
      Entry(title: 'Topic T5.6', subtitle: 'Subtitle 5.6'),
    ],
  ),
];
  
