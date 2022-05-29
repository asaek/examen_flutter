class KyaryTutorial {
  KyaryTutorial({
    this.index,
    required this.imagen,
    required this.titulo,
    required this.subtitulo,
  });
  String imagen;
  String titulo;
  String subtitulo;
  int? index;
}

final List<KyaryTutorial> tutorialLista = [
  KyaryTutorial(
    imagen: 'assets/image1.jpg',
    titulo: 'Supper First Express',
    subtitulo:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
  ),
  KyaryTutorial(
    imagen: 'assets/image2.jpg',
    titulo: 'Fresh Food Come From village Farmers',
    subtitulo:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
  ),
  KyaryTutorial(
    imagen: 'assets/image3.jpg',
    titulo: 'Big Online Supper Market Near You',
    subtitulo:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
  ),
];
