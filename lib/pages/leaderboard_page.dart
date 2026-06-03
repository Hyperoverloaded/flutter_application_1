import 'package:flutter/material.dart';


class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Leaderboard'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Global'),
              Tab(text: 'Friends'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GlobalLeaderboard(),
            FriendsLeaderboard(),
          ],
        ),
      ),
    );
  }
}

class GlobalLeaderboard extends StatelessWidget {
  const GlobalLeaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Distance'),
              Tab(text: 'Time'),
              Tab(text: 'Speed'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                buildDistanceLeaderboard(),
                buildTimeLeaderboard(),
                buildSpeedLeaderboard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendsLeaderboard extends StatelessWidget {
  const FriendsLeaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Friends Leaderboard'),
    );
  }
}
Widget buildDistanceLeaderboard() {
  return ListView(
    children: const [
      ListTile(
        leading: Text('🥇'),
        title: Text('John'),
        trailing: Text('145.2 km'),
      ),
      ListTile(
        leading: Text('🥈'),
        title: Text('Sarah'),
        trailing: Text('132.4 km'),
      ),
      ListTile(
        leading: Text('🥉'),
        title: Text('Mike'),
        trailing: Text('128.0 km'),
      ),
    ],
  );
}

Widget buildTimeLeaderboard() {
  return ListView(
    children: const [
      ListTile(
        leading: Text('🥇'),
        title: Text('Sarah'),
        trailing: Text('23h 15m'),
      ),
      ListTile(
        leading: Text('🥈'),
        title: Text('John'),
        trailing: Text('21h 48m'),
      ),
      ListTile(
        leading: Text('🥉'),
        title: Text('Mike'),
        trailing: Text('20h 11m'),
      ),
    ],
  );
}

Widget buildSpeedLeaderboard() {
  return ListView(
    children: const [
      ListTile(
        leading: Text('🥇'),
        title: Text('Mike'),
        trailing: Text('7.2 km/h'),
      ),
      ListTile(
        leading: Text('🥈'),
        title: Text('Sarah'),
        trailing: Text('6.8 km/h'),
      ),
      ListTile(
        leading: Text('🥉'),
        title: Text('John'),
        trailing: Text('6.4 km/h'),
      ),
    ],
  );
}