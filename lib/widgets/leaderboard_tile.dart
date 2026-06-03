import 'package:flutter/material.dart';

class LeaderboardTile extends StatelessWidget {
  final String rank;
  final String name;
  final String value;

  const LeaderboardTile({
    super.key,
    required this.rank,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(rank),
        title: Text(name),
        trailing: Text(value),
      ),
    );
  }
}