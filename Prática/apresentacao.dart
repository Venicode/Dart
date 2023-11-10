void main() {
  String name = "Vitoria Aparecida";
  List<String> languagens = ["Dart", "Python", "Javascript"];
  String occupation = "Support Analyst";
  String course = "Computer Science";
  String github = "Venicode";
  String languagensPrint = languagens.join(', ');

  print(
      'Hello there, my name is $name, currently my programming languages are $languagensPrint.'
      '\nCurrently, I am working as a $occupation and studying $course. '
      '\nFollow me in Github: $github');
}
