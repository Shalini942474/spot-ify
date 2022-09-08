import 'package:flutter/material.dart';

const String kAssetIconsWay = 'assets/icons';

class PlayListItem {
  String img;
  String title;
  String? creator;
  PlayListItem({required this.title, required this.img, this.creator});
}

List<PlayListItem> kPlaylistGrid = [
  PlayListItem(
      title: 'Discover Weekly',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHO7cWzWAW7bwWOF7OglIB5KR8WKnj85i4Cg&usqp=CAU'),
  PlayListItem(
      title: 'Daily Mix 1',
      img:
          'https://th.bing.com/th/id/OIP.DEOlTYQuP_G4cIVrqm9ZCQHaJP?w=158&h=198&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
  PlayListItem(
      title: 'Daily Mix 3',
      img:
          'https://th.bing.com/th/id/OIP.k4samsjVbQ2hPOPeERIC_gHaHE?w=177&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
  PlayListItem(
      title: 'Chill Vibes',
      img:
          'assets/images/holi.jpg'),
  PlayListItem(
      title: 'Summer Vibes',
      img: 'assets/images/party.jpg'),
  PlayListItem(
      title: 'Power Hour',
      img:
          'assets/images/trending.jpg'),
];

List<PlayListItem> kPlaylistPodcast = [
  PlayListItem(
      title: 'The Triggered Show',
      img:
          'assets/images/trending.jpg',
      creator: 'Show • Nischay Malhan'),
  PlayListItem(
      title: 'Ek Kissa Roz Ka',
      img:
          'assets/images/holi.jpg',
      creator: 'Show • Fever FM - HT'),
  PlayListItem(
      title: 'Paranormal Reality',
      img:
          'assets/images/party.jpg',
      creator: 'Show • Jay Alani'),
];

List<PlayListItem> kPlaylistForYou = [
  PlayListItem(
    title: 'Current favorites',
    img:
        'assets/images/holi.jpg',
  ),
  PlayListItem(
    title: 'Viral classics',
    img:
        'assets/images/trending.jpg',
  ),
  PlayListItem(
    title: 'Evergreen 75s',
    img:
        'assets/images/party.jpg',
  ),
];

class SearchListItem {
  String img;
  String title;
  Color color;
  SearchListItem({required this.title, required this.img, required this.color});
}

List<SearchListItem> kPlaylistSdded = [
  SearchListItem(
    title: 'Rock',
    img: 'https://pbs.twimg.com/media/EJMbrPkVUAIxT9g.jpg',
    color: Colors.red,
  ),
  SearchListItem(
      title: 'Indie',
      img:
          'assets/images/2pm.jpg',
      color: const Color.fromARGB(255, 194, 152, 1)),
];

List<SearchListItem> kAllSearh = [
  SearchListItem(
    title: 'Holiday',
    img:
        'assets/images/holi.jpg',
    color: const Color.fromARGB(255, 194, 152, 1),
  ),
  SearchListItem(
      title: 'Trending',
      img:
          'assets/images/trending.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQifvNLp5kYGbq-dfIjs88-WkePqldHZ5EmWA&usqp=CAU',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Party',
      img:
          'assets/images/party.jpg',
      color: Color.fromARGB(187, 255, 42, 0)),
  SearchListItem(
    title: 'Holiday',
    img:
        'assets/images/holi.jpg',
    color: const Color.fromARGB(255, 194, 152, 1),
  ),
  SearchListItem(
      title: 'Trending',
      img:
          'assets/images/trending.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQifvNLp5kYGbq-dfIjs88-WkePqldHZ5EmWA&usqp=CAU',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Party',
      img:
          'assets/images/party.jpg',
      color: Color.fromARGB(187, 255, 42, 0)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQifvNLp5kYGbq-dfIjs88-WkePqldHZ5EmWA&usqp=CAU',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Party',
      img:
          'assets/images/party.jpg',
      color: Color.fromARGB(187, 255, 42, 0)),
  SearchListItem(
      title: 'Trending',
      img:
          'assets/images/trending.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQifvNLp5kYGbq-dfIjs88-WkePqldHZ5EmWA&usqp=CAU',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Trending',
      img:
          'assets/images/trending.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQifvNLp5kYGbq-dfIjs88-WkePqldHZ5EmWA&usqp=CAU',
      color: const Color.fromARGB(255, 0, 20, 153)),
];

class FilterItem {
  String title;
  Function()? onTap;
  FilterItem({
    required this.title,
    this.onTap,
  });
}

List<FilterItem> kFilters = [
  FilterItem(
    title: 'Playlist',
  ),
  FilterItem(
    title: 'Artist',
  ),
];
