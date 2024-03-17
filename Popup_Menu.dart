class PopupMenuButtonWidget extends StatelessWidget implements PreferredSizeWidget {
 const PopupMenuButtonWidget({
 Key key,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Container(
 color: Colors.lightGreen.shade100,
 height: preferredSize.height,
 width: double.infinity,
 child: Center(
 child: PopupMenuButton<TodoMenuItem>(
 icon: Icon(Icons.view_list),
 onSelected: ((valueSelected) {
 print('valueSelected: ${valueSelected.title}');
 }),
 itemBuilder: (BuildContext context) {
 return foodMenuList.map((TodoMenuItem todoMenuItem) {
 return PopupMenuItem<TodoMenuItem>(
 value: todoMenuItem,
 child: Row(
 children: <Widget>[
 Icon(todoMenuItem.icon.icon),
 Padding(
 padding: EdgeInsets.all(8.0),
 ),
 Text(todoMenuItem.title),
 ],
 ),
 );
 }).toList();
 },
 ),
 ),
 );
 }
 @override
 // implement preferredSize
 Size get preferredSize => Size.fromHeight(75.0);
}