class AudioFiles {
  String title;
  String artist;
  String image;
  String genre;

  AudioFiles(this.title, this.artist, this.image, this.genre);
}

List<AudioFiles> RecList = [
  AudioFiles("Alan Walker - Alone", "Alan Walker",
      "assets/audioFiles/podcast1.png", "Inspiration"),
  AudioFiles("Alan Walker - Faded", "Alan Walker",
      "assets/audioFiles/podcast2.png", "Inspiration"),
  AudioFiles("Broken Arrows - Avicci", "Avicci",
      "assets/audioFiles/podcast3.png", "Lofi-Music"),
];

List<AudioFiles> Inspiration = [
  AudioFiles("Alan Walker - Alone", "Alan Walker",
      "assets/audioFiles/podcast4.png", "Inspiration"),
  AudioFiles("Alan Walker - Faded", "Alan Walker",
      "assets/audioFiles/podcast5.png", "Inspiration"),
  AudioFiles("Broken Arrows - Avicci", "Avicci",
      "assets/audioFiles/podcast6.png", "Lofi-Music"),
];
