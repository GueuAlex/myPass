import 'package:flutter/material.dart';
import 'package:mypass/custom_widgets/appText.dart';
import 'package:mypass/custom_widgets/custom_app_bar.dart';

import '../../config/style.dart';
import 'widgets/bottom_movie_list.dart';
import 'widgets/movie_carousel.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen>
    with SingleTickerProviderStateMixin {
  /////////
  ///
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTadSection);
    super.initState();
  }

  _handleTadSection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.bleuColor,
      //extendBody: true,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              color: Palette.whiteColor,
              margin: EdgeInsets.only(top: size.height * 0.25),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: AppText(
                    text: 'Profitez de la magie du cinéma',
                    fontsize: 18,
                    color: Palette.whiteColor,
                    fontweight: FontWeight.w700,
                  ),
                ),
                //Padding(
                //padding: const EdgeInsets.symmetric(horizontal: 20.0),
                //child: MovieCategorieButton(),
                //child:
                TabBar(
                  controller: _tabController,
                  unselectedLabelColor: Palette.whiteColor.withOpacity(0.5),
                  labelColor: Palette.bleuColor,
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: Palette.whiteColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  tabs: const [
                    SizedBox(
                      height: 25,
                      child: Center(
                        child: Text('All'),
                      ),
                    ),
                    Text('Action'),
                    Text('Adventure'),
                    Text('Comedy')
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: [
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ][_tabController.index],
                ),
                //),

                const MovieCaroussel(),
                const SizedBox(height: 10),
                const Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: BottomMoviesList(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
