class QuizQuestion {
  const QuizQuestion(this.Text, this.Answers);
  final String Text;
  final List<String> Answers;

  List<String> getShuffledAnswer() {
    final List<String> ShuffledAnswers = List.of(Answers);
    ShuffledAnswers.shuffle();
    return ShuffledAnswers;
  }
}
