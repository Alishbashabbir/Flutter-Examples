class ButtonBarWidget extends StatelessWidget {
 const ButtonBarWidget({
 Key key,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Container(
 color: Colors.white70,
 child: ButtonBar(
 alignment: MainAxisAlignment.spaceEvenly,
 children: <Widget>[
 IconButton(
 icon: Icon(Icons.map),
 onPressed: () {},
 ),
 IconButton(
 icon: Icon(Icons.airport_shuttle),
 onPressed: () {},
 ),
 IconButton(
 icon: Icon(Icons.brush),
 highlightColor: Colors.purple,
 onPressed: () {},
 ),
 ],
 ),
 );
 }
}
}