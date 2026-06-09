import 'package:flutter/material.dart';

class SprintLeaderboardPage extends StatelessWidget {
  const SprintLeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sprint Leaderboard'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Global'),
              Tab(text: 'Friends'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SprintGlobalTab(),
            SprintFriendsTab(),
          ],
        ),
      ),
    );
  }
}
class SprintGlobalTab extends StatelessWidget {
  const SprintGlobalTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: '50m'),
              Tab(text: '75m'),
              Tab(text: '100m'),
              Tab(text: '125m'),
              Tab(text: '150m'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('50m Rankings')),
                Center(child: Text('75m Rankings')),
                Center(child: Text('100m Rankings')),
                Center(child: Text('125m Rankings')),
                Center(child: Text('150m Rankings')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SprintFriendsTab extends StatelessWidget {
  const SprintFriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Friends Sprint Rankings'),
    );
  }
}