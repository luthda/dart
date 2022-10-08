class WordCount {
  Map<String, int> countWords(String phrase) {
    var arrayOfWords = phrase.split(new RegExp(r'[\s,]+'));
    var wordCount = new Map<String, int>();

    return arrayOfWords.fold(wordCount, (wordCount, word) {
      wordCount[word] = wordCount.putIfAbsent(word, () => 0) + 1;
      return wordCount;
    });
  }
}
