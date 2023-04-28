import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mypass/custom_widgets/custom_app_bar.dart';
import 'package:mypass/models/context_pricing.dart';
import 'package:mypass/models/party_model.dart';
import 'package:mypass/providers/all_parties_provider.dart';

import '../../config/style.dart';
import '../../custom_widgets/appText.dart';

class PartyScreen extends StatefulWidget {
  const PartyScreen({super.key});

  @override
  State<PartyScreen> createState() => _PartyScreenState();
}

class _PartyScreenState extends State<PartyScreen>
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
      body: SafeArea(
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
                    text: 'Profitez des bon plans du moment',
                    fontsize: 18,
                    color: Palette.whiteColor,
                    fontweight: FontWeight.w700,
                  ),
                ),
                /////////////////// menu tab bar ///////////////////
                ///
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
                        child: Text('Tout'),
                      ),
                    ),
                    Text('Soirée'),
                    Text('Grillades'),
                    Text('Sorties')
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: [
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ][_tabController.index],
                ),
                ////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////
                const PartyCarousel(),
                const SizedBox(height: 10),
                const Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: BottomPartiesList(),
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

class BottomPartiesList extends ConsumerWidget {
  const BottomPartiesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parties = ref.watch(allPartiesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: AppText(text: 'En ce moment ...'),
        ),
        parties.when(
          data: (parties) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              //scrollDirection: Axis.vertical,
              itemCount: parties.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 4.0, left: 8.0, right: 8.0),
                  child: BottomPartyCard(party: parties[index]),
                );
              }),
          error: (error, stackTrace) => Text("error : $error"),
          loading: () => SizedBox(
            height: MediaQuery.of(context).size.height / 2.7,
            width: double.infinity,
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        )
      ],
    );
  }
}

class BottomPartyCard extends StatelessWidget {
  final PartyModel party;
  const BottomPartyCard({
    super.key,
    required this.party,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Palette.greyColor,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              child: Image.asset(
                party.coverPath,
                height: 150,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: party.title,
                  fontsize: 18,
                  fontweight: FontWeight.w600,
                  color: Palette.bleuColor,
                ),
                //CustomRatting(rattingScore: movie.ratingScore),

                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.location_solid,
                      color: Palette.bleuColor,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    AppText(
                      text: party.address,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: List.generate(
                    party.pricing.length,
                    (index) => PartyPriceByContext(
                      pricing: party.pricing[index],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: AppText(
                    text: '${party.description.substring(0, 50)}...',
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PartyPriceByContext extends StatelessWidget {
  final ContextPricing pricing;

  const PartyPriceByContext({
    super.key,
    required this.pricing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Column(
        children: [
          AppText(
            text: pricing.context,
            //color: Palette.bleuColor,
            textAlign: TextAlign.center,
            fontweight: FontWeight.w500,
          ),
          AppText(
            text: '\$${pricing.prix}',
            fontsize: 20,
            color: Palette.bleuColor,
            fontweight: FontWeight.w500,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class PartyCarousel extends ConsumerWidget {
  const PartyCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parties = ref.watch(allPartiesProvider);
    return Column(
      children: [
        parties.when(
          data: (parties) {
            return ListView(
              //physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    //height: 250,

                    //autoPlay: true,
                    enlargeCenterPage: true,
                    //aspectRatio: -2000,
                    //pageSnapping: true,
                    enlargeFactor: 0.2,
                  ),
                  items: List.generate(
                    parties.length,
                    (index) => PartyCard(party: parties[index]),
                  ),
                )
              ],
            );
          },
          error: (error, stackTrace) => Text("error : $error"),
          loading: () => SizedBox(
            height: MediaQuery.of(context).size.height / 2.7,
            width: double.infinity,
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        )
      ],
    );
  }
}

class PartyCard extends StatelessWidget {
  final PartyModel party;
  const PartyCard({
    super.key,
    required this.party,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, -2), // déplace l'ombre vers le haut
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
            image: AssetImage(party.coverPath), fit: BoxFit.cover),
      ),
      child: Container(
        // margin: const EdgeInsets.all(8.0),
        //width: 50,
        //height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Palette.blackColor.withOpacity(
            0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.bookmark,
                      color: Palette.yellowColor,
                    ))
              ],
            ),
            Column(
              children: [
                AppText(
                  textAlign: TextAlign.center,
                  text: party.title,
                  color: Palette.whiteColor,
                  fontsize: 20,
                  fontweight: FontWeight.w700,
                ),
                /* Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    movie.gender.length,
                    (index) => AppText(
                      text: '${movie.gender[index]}, ',
                      color: Palette.whiteColor,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ), */
                const SizedBox(
                  height: 8.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
