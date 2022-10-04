var ones = ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'];
var twos = ['d', 'g'];
var threes = ['b', 'c', 'm', 'p'];
var fours = ['f', 'h', 'v', 'w', 'y'];
var eights = ['j', 'x'];
var tens = ['q', 'z'];

int score(String word) {
  int score = 0;

  for (var i = 0; i < word.length; i++) {
    score += count(word[i].toLowerCase());
  }

  return score;
}

int count(String lowerCaseCharacter) {
  if (ones.contains(lowerCaseCharacter)) {
    return 1;
  } else if (twos.contains(lowerCaseCharacter)) {
    return 2;
  } else if (threes.contains(lowerCaseCharacter)) {
    return 3;
  } else if (fours.contains(lowerCaseCharacter)) {
    return 4;
  } else if ('k' == lowerCaseCharacter) {
    return 5;
  } else if (eights.contains(lowerCaseCharacter)) {
    return 8;
  } else if (tens.contains(lowerCaseCharacter)) {
    return 10;
  } else {
    return 0;
  }
}
