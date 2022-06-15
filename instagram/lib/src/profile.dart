import 'package:flutter/material.dart';

import '../assets/gen/assets.gen.dart';
import '../assets/icons/app_icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  pinned: true,
                  titleSpacing: 0.0,
                  toolbarHeight: 44.0 + 44.0,
                  centerTitle: false,
                  actionsIconTheme: const IconThemeData(color: Colors.black),
                  primary: false,
                  title: AppBar(
                    toolbarHeight: 44.0,
                    title: const Text('username'),
                    actions: [
                      IconButton(
                        constraints: const BoxConstraints(
                          maxHeight: 48,
                          maxWidth: 48,
                        ),
                        onPressed: () {},
                        icon: const Icon(AppIcons.create),
                      ),
                      IconButton(
                        constraints: const BoxConstraints(
                          maxHeight: 48,
                          maxWidth: 48,
                        ),
                        onPressed: () {},
                        icon: const Icon(AppIcons.burger),
                      ),
                    ],
                  ),
                  expandedHeight: 300.0,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 44.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const CircleAvatar(radius: 40),
                                Column(
                                  children: [
                                    Text(
                                      '0,000',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Post',
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '0,000',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Followers',
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '0,000',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Following',
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'username',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt #hashtag',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  bottom: const TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorWeight: 1.0,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(icon: Icon(AppIcons.grid)),
                      Tab(icon: Icon(AppIcons.user)),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (context) {
                    return CustomScrollView(
                      slivers: [
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Container(
                                color: Colors.amber,
                              );
                            },
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 1.0,
                            crossAxisSpacing: 1.0,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              //
              SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (context) {
                    return CustomScrollView(
                      slivers: [
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(AppIcons.user, size: 88),
                                Text(
                                  'Photos and videos of you',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'When people tag you in photos and videos,\n they\' appear here',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
