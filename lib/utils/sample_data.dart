import 'package:flutter/material.dart';
import 'package:pet_app/utils/pet_model.dart';

List<Map<String, dynamic>> categories = [
  {
    'name': 'Cats',
    'icon': 'assets/images/cat.png',
    'active': true,
  },
  {
    'name': 'Dogs',
    'icon': 'assets/images/dog.png',
    'active': true,
  },
  {
    'name': 'Bunnies',
    'icon': 'assets/images/rabbit.png',
    'active': true,
  },
  {
    'name': 'Parrots',
    'icon': 'assets/images/parrot.png',
    'active': true,
  },
];

List<Pet> pets = [
  // Existing entries
  const Pet(
    name: 'Cutie',
    species: 'British Shorthair',
    age: 3,
    images: [
      'assets/images/cat-8.png',
    ],
    color: Color.fromARGB(255, 209, 217, 221),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Angel',
    species: 'American Bobtail',
    age: 2,
    images: [
      'assets/images/cat-4.png',
    ],
    color: Color.fromARGB(255, 224, 214, 204),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Maisy',
    species: 'Abyssinian Cat',
    age: 2,
    images: [
      'assets/images/cat-1.png',
    ],
    color: Color.fromARGB(255, 196, 186, 179),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),

  // 10 more entries
  const Pet(
    name: 'Fluffy',
    species: 'Ragdoll',
    age: 2,
    images: [
      'assets/images/cat-2.png',
    ],
    color: Color.fromARGB(255, 240, 230, 220),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Shadow',
    species: 'Siamese Cat',
    age: 3,
    images: [
      'assets/images/cat-3.png',
    ],
    color: Color.fromARGB(255, 200, 180, 160),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Oreo',
    species: 'Domestic Shorthair',
    age: 1,
    images: [
      'assets/images/cat-5.png',
    ],
    color: Color.fromARGB(255, 120, 120, 120),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Tiger',
    species: 'Bengal Cat',
    age: 4,
    images: [
      'assets/images/cat-6.png',
    ],
    color: Color.fromARGB(255, 200, 160, 120),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Leo',
    species: 'Siberian Cat',
    age: 2,
    images: [
      'assets/images/cat-7.png',
    ],
    color: Color.fromARGB(255, 180, 200, 220),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Simba',
    species: 'Norwegian Forest Cat',
    age: 3,
    images: [
      'assets/images/cat-9.png',
    ],
    color: Color.fromARGB(255, 210, 190, 180),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Milo',
    species: 'Himalayan Cat',
    age: 2,
    images: [
      'assets/images/cat-10.png',
    ],
    color: Color.fromARGB(255, 230, 220, 210),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Cleo',
    species: 'Egyptian Mau',
    age: 1,
    images: [
      'assets/images/cat-12.png',
    ],
    color: Color.fromARGB(255, 180, 170, 160),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
];
