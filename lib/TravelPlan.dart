import 'package:flutter/material.dart';
import 'models/Interest.dart';

class TravelPlan {
  static final transports = [
    [
      {'icon': Icons.airplanemode_active, 'value': 'Plane'},
      {'icon': Icons.directions_bus, 'value': 'Bus'},
      {'icon': Icons.train, 'value': 'Train'},
      {'icon': Icons.directions_boat, 'value': 'Plane'},
    ]
  ];

  static final interests = [
    [
      Interest(
        imgURL:
            'https://media.gettyimages.com/photos/surfing-a-the-perfect-wave-in-indonesia-picture-id931194888?s=612x612',
        title: 'Surfing',
      ),
      Interest(
        imgURL:
            'https://cdn.britannica.com/35/9435-004-8A6E16C6/Mount-Sir-Donald-segment-Selkirk-Mountains-British.jpg',
        title: 'Mountaineering',
      ),
      Interest(
        imgURL:
            'https://adventures.com/media/2898/t-canada-kayaking-lake-mountains-fun-activity-1.jpg?center=0.78333333333333333,0.51&mode=crop&width=450&height=280&rnd=132070689960000000&quality=100&format=jpg',
        title: 'Kayaking',
      ),
      Interest(
        imgURL:
            'https://media.gettyimages.com/photos/surfing-a-the-perfect-wave-in-indonesia-picture-id931194888?s=612x612',
        title: 'Surfing',
      ),
    ],
    [
      Interest(
        imgURL:
            'https://media.gettyimages.com/photos/surfing-a-the-perfect-wave-in-indonesia-picture-id931194888?s=612x612',
        title: 'Metropolitan',
      ),
      Interest(
        imgURL:
            'https://cdn.britannica.com/35/9435-004-8A6E16C6/Mount-Sir-Donald-segment-Selkirk-Mountains-British.jpg',
        title: 'Crazy weather',
      ),
      Interest(
        imgURL:
            'https://adventures.com/media/2898/t-canada-kayaking-lake-mountains-fun-activity-1.jpg?center=0.78333333333333333,0.51&mode=crop&width=450&height=280&rnd=132070689960000000&quality=100&format=jpg',
        title: 'Extreme',
      ),
      Interest(
        imgURL:
            'https://cdn.britannica.com/35/9435-004-8A6E16C6/Mount-Sir-Donald-segment-Selkirk-Mountains-British.jpg',
        title: 'Mountaineering',
      ),
    ],
    [
      Interest(
        imgURL:
            'https://media.gettyimages.com/photos/surfing-a-the-perfect-wave-in-indonesia-picture-id931194888?s=612x612',
        title: 'Surfing',
      ),
      Interest(
        imgURL:
            'https://cdn.britannica.com/35/9435-004-8A6E16C6/Mount-Sir-Donald-segment-Selkirk-Mountains-British.jpg',
        title: 'Mountaineering',
      ),
      Interest(
        imgURL:
            'https://adventures.com/media/2898/t-canada-kayaking-lake-mountains-fun-activity-1.jpg?center=0.78333333333333333,0.51&mode=crop&width=450&height=280&rnd=132070689960000000&quality=100&format=jpg',
        title: 'Kayaking',
      ),
      Interest(
        imgURL:
            'https://media.gettyimages.com/photos/surfing-a-the-perfect-wave-in-indonesia-picture-id931194888?s=612x612',
        title: 'Surfing',
      ),
    ],
  ];
}
