import 'package:flutter/material.dart';
import 'package:instagram/assets/gen/assets.gen.dart';
import 'package:instagram/assets/icons/app_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({Key? key}) : super(key: key);

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16.0,
        toolbarHeight: 36.0,
        centerTitle: false,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        title: Assets.lib.assets.images.igLogo.svg(),
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
            icon: const Icon(AppIcons.heart),
          ),
          IconButton(
            constraints: const BoxConstraints(
              maxHeight: 48,
              maxWidth: 48,
            ),
            onPressed: () {},
            icon: const Icon(AppIcons.messenger),
          ),
        ],
        scrolledUnderElevation: 0.25,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 104.0.h,
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 2),
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 16.0,
                  mainAxisExtent: 68.0.w,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0XFFDE0046),
                              Color(0XFFF7A34B),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 30.0.w,
                        ),
                      ),
                    ),
                    Text(
                      'user $index',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                itemCount: 10,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              height: 0.5,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 15.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Ruffles',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        IconButton(
                          constraints: const BoxConstraints(
                            maxHeight: 48,
                            maxWidth: 48,
                          ),
                          onPressed: () {},
                          icon: const Icon(AppIcons.more),
                        ),
                      ],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Assets.lib.assets.images.image1.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        constraints: const BoxConstraints(
                          maxHeight: 48,
                          maxWidth: 48,
                        ),
                        onPressed: () {},
                        icon: const Icon(AppIcons.heart),
                      ),
                      IconButton(
                        constraints: const BoxConstraints(
                          maxHeight: 48,
                          maxWidth: 48,
                        ),
                        onPressed: () {},
                        icon: const Icon(AppIcons.chat),
                      ),
                      IconButton(
                        constraints: const BoxConstraints(
                          maxHeight: 48,
                          maxWidth: 48,
                        ),
                        onPressed: () {},
                        icon: const Icon(AppIcons.share),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      IconButton(
                        constraints: const BoxConstraints(
                          maxHeight: 48,
                          maxWidth: 48,
                        ),
                        onPressed: () {},
                        icon: const Icon(AppIcons.save),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '100 likes',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final user = 'user';
                            var text =
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt';

                            final span = TextSpan(
                              text: '$user $text more',
                            );
                            final tp = TextPainter(
                                text: span,
                                textDirection: TextDirection.ltr,
                                maxLines: 2);
                            tp.layout(maxWidth: constraints.maxWidth);

                            if (tp.didExceedMaxLines) {
                              text = text.replaceRange(
                                  text.length - 8, text.length, '...');
                            }

                            return RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'user ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: text,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  if (tp.didExceedMaxLines)
                                    TextSpan(
                                      text: ' more',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: Colors.grey),
                                    ),
                                ],
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 12.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Add comment...',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.grey),
                                  ),
                                ),
                              ),
                              IconButton(
                                constraints: const BoxConstraints(
                                  maxHeight: 32,
                                  maxWidth: 32,
                                ),
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Text('😍'),
                                color: Colors.amber,
                              ),
                              IconButton(
                                constraints: const BoxConstraints(
                                  maxHeight: 32,
                                  maxWidth: 32,
                                ),
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Text('😭'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            '10 minutes ago',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
