import 'package:flutter/material.dart';

import 'menu_item.dart';

const menuWidth = 275.0;
const railWidth = 66.0;

class AppMenu extends StatefulWidget {
  const AppMenu({
    Key? key,
    this.title,
    required this.maxWidth,
    this.onOperate,
    this.onSelect,
    required this.railWidth,
  }) : super(key: key);
  final Widget? title;
  final double maxWidth;
  final VoidCallback? onOperate;
  final ValueChanged<int>? onSelect;
  final double railWidth;

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  int selectedItem = 0;

  static const List<IconData> _icons = [
    Icons.all_inbox_outlined,
    Icons.calendar_today_outlined,
    Icons.calendar_month_outlined,
    Icons.search,
    Icons.settings_outlined,
  ];

  static const List<IconData> _selectedIcons = [
    Icons.all_inbox,
    Icons.calendar_today,
    Icons.calendar_month,
    Icons.search,
    Icons.settings,
  ];

  static const List<String> _labels = <String>[
    'All',
    'Today',
    'Upcoming',
    'Search',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return OverflowBox(
          alignment: AlignmentDirectional.topStart,
          minWidth: 0,
          maxWidth: widget.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                title: widget.title,
                titleSpacing: 0,
                leadingWidth: widget.railWidth,
                leading: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.menu),
                  onPressed: widget.onOperate,
                ),
              ),
              Expanded(
                child: Container(
                  width: size.maxWidth,
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      end: BorderSide(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),
                  child: ClipRect(
                    child: OverflowBox(
                      alignment: AlignmentDirectional.topStart,
                      minWidth: 0,
                      maxWidth: widget.maxWidth,
                      child: ListView(
                        padding: EdgeInsets.zero, //  Removes all edge insets
                        children: [
                          // Add all the menu items.
                          for (int i = 0; i < _icons.length; i++)
                            MenuItem(
                              width: size.maxWidth,
                              menuWidth: widget.maxWidth,
                              onTap: () {
                                setState(() {
                                  selectedItem = i;
                                });
                                widget.onSelect?.call(i);
                              },
                              selected: selectedItem == i,
                              icon: _icons[i],
                              label: _labels[i],
                              showDivider: i.isEven,
                              railWidth: widget.railWidth,
                              selectedIcon: _selectedIcons[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
