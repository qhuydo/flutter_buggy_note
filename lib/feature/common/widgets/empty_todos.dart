import 'dart:math';

import 'package:flutter/material.dart';

class EmptyTodos extends StatelessWidget {
  final String? emoticon;
  final String? text;

  const EmptyTodos({
    Key? key,
    this.emoticon,
    this.text,
  }) : super(key: key);

  static const emoticons = [
    '(◕‿◕)',
    '٩(◕‿◕)۶',
    '(◕‿◕)',
    '(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧',
    '◉‿◉',
    '(づ ◕‿◕ )づ',
    '( ꈍᴗꈍ)',
    '(◕‿◕✿)',
    '(◍•ᴗ•◍)',
    '(◍•ᴗ•◍)❤',
    '(づ￣ ³￣)づ',
    '(つ✧ω✧)つ',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoticon ?? emoticons[Random().nextInt(emoticons.length)],
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 8),
          Text(
            text ?? 'It\'s empty here, tap「＋」to add new todo',
          )
        ],
      ),
    );
  }
}
