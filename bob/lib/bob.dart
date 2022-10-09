class Bob {
  String response(String question) {
    var trimedQuestion = question.trim();

    if (trimedQuestion.isEmpty) {
      return 'Fine. Be that way!';
    } else if (trimedQuestion.endsWith('?')) {
      return 'Sure.';
    } else if (trimedQuestion.toUpperCase() == trimedQuestion) {
      return 'Whoa, chill out!';
    } else {
      return 'Whatever.';
    }
  }
}
