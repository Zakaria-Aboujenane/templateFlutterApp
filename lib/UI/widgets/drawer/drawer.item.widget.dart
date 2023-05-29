import 'package:flutter/material.dart';
class DrawerItemWidget extends StatelessWidget {
  final String title;
  final IconData leadingIcons;
  final IconData trailingIcon;
  final Function onAction;
  final bool horizontal;


  const DrawerItemWidget({Key? key,
    required this.title,
    required this.leadingIcons,
    required this.trailingIcon,
    required this.onAction,
    this.horizontal=true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style:Theme.of(context).textTheme.headline6,),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'page_${title}',
          child:  Icon(leadingIcons , color: Theme.of(context).primaryColor),
        ),
      ),
      trailing: Icon(trailingIcon,color: Theme.of(context).primaryColor),
      onTap: ()=>onAction(),
    );
  }
}
