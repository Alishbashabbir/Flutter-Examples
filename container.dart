class ContainerWithBoxDecorationWidget extends StatelessWidget {
 const ContainerWithBoxDecorationWidget({
 Key key,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Column(
 children: <Widget>[
 Container(
 height: 100.0,
 decoration: BoxDecoration(
 borderRadius: BorderRadius.only(
 bottomLeft: Radius.circular(100.0),
 bottomRight: Radius.circular(10.0),
 ),
 gradient: LinearGradient(
 begin: Alignment.topCenter,
 end: Alignment.bottomCenter,
 colors: [
 Colors.white,
 Colors.lightGreen.shade500,
 ],
 ),
 boxShadow: [
 BoxShadow(
 color: Colors.grey,
 blurRadius: 10.0,
 offset: Offset(0.0, 10.0),
 ),
 ],
 ),
 child: Center(
 child: RichText(
 text: Text('Container'), ),
 ),
 ],
 );
 }
}
112 ❘ CHAPTER 6 Using Common Widgets