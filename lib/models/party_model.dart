import 'package:flutter/material.dart';
import 'package:mypass/models/context_pricing.dart';

class PartyModel {
  final String id;
  final String title;
  final String address;
  final String description;
  final DateTimeRange duration;
  final String startHour;
  final String endHour;
  final String coverPath;
  //final Object price;
  final List<ContextPricing> pricing;

  PartyModel({
    required this.id,
    required this.title,
    required this.address,
    required this.description,
    required this.duration,
    this.startHour = '23:00',
    this.endHour = '05:00',
    required this.coverPath,
    required this.pricing,
  });

  static List<PartyModel> sampleParty = [
    PartyModel(
      id: '1',
      title: 'Festival d\'alloco 2e Édition',
      address: 'Cocody II Plateaux, Avenue X',
      description:
          'Voici une courte description de cet évenement intitulé Alloco party. Ecrivons quelques ligne histoire d\'augmenter un peu le volume de cette très magnifique description d\'alloco party festival,',
      duration: DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(
          const Duration(hours: 8),
        ),
      ),
      coverPath: 'assets/images/party_poster/p1.jpg',
      pricing: [
        ContextPricing(context: 'single', prix: 44),
        ContextPricing(context: 'couple', prix: 89),
      ],
    ),
    PartyModel(
      id: '2',
      title: 'Placali Chaud 10e Édition',
      address: 'Youpougon Maroc, Avenue X',
      description:
          'Voici une courte description de cet évenement intitulé Alloco party. Ecrivons quelques ligne histoire d\'augmenter un peu le volume de cette très magnifique description d\'alloco party festival,',
      duration: DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(
          const Duration(hours: 8),
        ),
      ),
      coverPath: 'assets/images/party_poster/p2.jpg',
      pricing: [
        ContextPricing(context: 'single', prix: 20),
        ContextPricing(context: 'couple', prix: 55)
      ],
    ),
    PartyModel(
      id: '3',
      title: 'Festival d\'alloco 2e Édition',
      address: 'Cocody II Plateaux, Avenue X',
      description:
          'Voici une courte description de cet évenement intitulé Alloco party. Ecrivons quelques ligne histoire d\'augmenter un peu le volume de cette très magnifique description d\'alloco party festival,',
      duration: DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(
          const Duration(hours: 8),
        ),
      ),
      coverPath: 'assets/images/party11.jpeg',
      pricing: [
        ContextPricing(context: 'single', prix: 56),
        ContextPricing(context: 'couple', prix: 89)
      ],
    ),
    PartyModel(
      id: '3',
      title: 'Festival d\'alloco 2e Édition',
      address: 'Cocody II Plateaux, Avenue X',
      description:
          'Voici une courte description de cet évenement intitulé Alloco party. Ecrivons quelques ligne histoire d\'augmenter un peu le volume de cette très magnifique description d\'alloco party festival,',
      duration: DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(
          const Duration(hours: 8),
        ),
      ),
      coverPath: 'assets/images/party12.jpeg',
      pricing: [
        ContextPricing(context: 'VIP', prix: 700),
        ContextPricing(context: 'normal', prix: 556)
      ],
    )
  ];
}
