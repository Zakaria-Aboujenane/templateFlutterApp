import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpstracker/UI/common/Constants.dart' as cts;
import 'package:gpstracker/UI/widgets/elements/search.bar.widget.dart';
import 'package:gpstracker/bloc/searchBar/search.bar.bloc.dart';
import 'package:gpstracker/bloc/searchBar/search.bar.event.dart';
import 'package:gpstracker/bloc/searchBar/search.bar.state.dart';

class CustomBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  var searchValue = "";

  CustomBarWidget({
    Key? key,
    this.height = 60,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: AppBar(
              title: BlocBuilder<SearchBarBloc, SearchBarState>(
                builder: (context, state) {
                  if (state is SearchBarOpenState) {
                    return SearchBarWidget(height: height, width: width);
                  } else if (state is SearchBarClosedState) {
                    return generateLogoAndTitle(context);
                  }
                  return generateLogoAndTitle(context);
                },
              ),
              actions: [
                BlocBuilder<SearchBarBloc, SearchBarState>(
                  builder: (context, state) {
                    IconButton searchIcon = IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        context
                            .read<SearchBarBloc>()
                            .add(ToggleSearchBarEvent());
                      },
                    );
                    IconButton cancelIcon = IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        context
                            .read<SearchBarBloc>()
                            .add(ToggleSearchBarEvent());
                      },
                    );
                    if (state is SearchBarOpenState) {
                      return cancelIcon;
                    } else if (state is SearchBarClosedState) {
                      return searchIcon;
                    }
                    return searchIcon;
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  generateLogoAndTitle(ctx) {
    String title = cts.appName;
    int maxTitle = 15;
    print(cts.appName.length);
    if(cts.appName.length>maxTitle){
      title = cts.appName.substring(0,maxTitle-2)+"..";
    }
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(cts.logoPNG),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: Theme.of(ctx).textTheme.headline5,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
