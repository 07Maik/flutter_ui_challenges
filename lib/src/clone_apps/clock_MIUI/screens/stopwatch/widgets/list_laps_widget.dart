import 'package:flutter/material.dart';

import '../../../providers/stopwatch_provider.dart';

class ListLaps extends StatelessWidget {
  const ListLaps({
    Key? key,
    required this.animationDuration,
    required this.provider,
  }) : super(key: key);

  final Duration animationDuration;
  final StopwatchProvider provider;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: animationDuration,
      child: SizedBox(
        height: provider.laps.isEmpty ? 200 : 500,
        child: AnimatedList(
          physics: const BouncingScrollPhysics(),
          key: provider.keyAnimatedList,
          initialItemCount: 0,
          itemBuilder: (context, index, animation) {
            final aa = provider.laps[index];
            return SizeTransition(
              key: UniqueKey(),
              sizeFactor: animation,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(aa.id.toString().padLeft(2, '0')),
                    Text(aa.elapsedDuration),
                    Text(aa.getTotalDuration())
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
