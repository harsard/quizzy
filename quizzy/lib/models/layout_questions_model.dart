class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "Who is often credited with discovering America in 1492 ?",
    options: [
      const LayOutOption(text: "Christopher Columbus", isCorrect: true),
      const LayOutOption(text: "Ferdinand Magellan", isCorrect: false),
      const LayOutOption(text: "Marco Polo", isCorrect: false),
      const LayOutOption(text: "Vasco da Gama", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "Christopher Columbus", isCorrect: true),
  ),
  LayOutQuestion(
    text: "In which year did World War II end ?",
    options: [
      const LayOutOption(text: "1945 ", isCorrect: true),
      const LayOutOption(text: "1918", isCorrect: false),
      const LayOutOption(text: "1939", isCorrect: false),
      const LayOutOption(text: "1950", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "1945", isCorrect: true),
  ),

  LayOutQuestion(
    text: "Who was the first President of the United States ?",
    options: [
      const LayOutOption(text: "Thomas Jefferson ", isCorrect: false),
      const LayOutOption(text: "John Adams", isCorrect: false),
      const LayOutOption(text: "Benjamin Franklin", isCorrect: false),
      const LayOutOption(text: "George Washington", isCorrect: true),
    ],
    id: 2,
    correctAnswer:
        const LayOutOption(text: "George Washington", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "Which ancient civilization is known for building the Great Wall of China ?",
    options: [
      const LayOutOption(text: "Roman Empire", isCorrect: false),
      const LayOutOption(text: "Inca Empire", isCorrect: false),
      const LayOutOption(text: "Chinese Empire ", isCorrect: false),
      const LayOutOption(text: "Qin Dynasty", isCorrect: true),
    ],
    id: 3,
    correctAnswer: const LayOutOption(text: "Qin Dynasty ", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "The Magna Carta, signed in 1215, is often considered a foundational document for what ?",
    options: [
      const LayOutOption(text: "The Renaissance", isCorrect: false),
      const LayOutOption(text: "Constitutional monarchy", isCorrect: true),
      const LayOutOption(text: "Roman law", isCorrect: false),
      const LayOutOption(text: "The Enlightenment ", isCorrect: false),
    ],
    id: 4,
    correctAnswer:
        const LayOutOption(text: "Constitutional monarchy ", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "Who was the leader of the Soviet Union during the Cuban Missile Crisis ?",
    options: [
      const LayOutOption(text: "Vladimir Putin ", isCorrect: false),
      const LayOutOption(text: "Joseph Stalin", isCorrect: false),
      const LayOutOption(text: "Leon Trotsky", isCorrect: false),
      const LayOutOption(text: "Nikita Khrushchev", isCorrect: true),
    ],
    id: 5,
    correctAnswer:
        const LayOutOption(text: "Nikita Khrushchev", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "What event is often considered the beginning of the Great Depression in the United States ?",
    options: [
      const LayOutOption(text: "Stock Market Crash of 1929", isCorrect: true),
      const LayOutOption(text: "Prohibition Era", isCorrect: false),
      const LayOutOption(text: "Dust Bowl", isCorrect: false),
      const LayOutOption(text: "Roaring Twenties ", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const LayOutOption(
        text: "Stock Market Crash of 1929 ", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "Who was the Egyptian queen famous for her affairs with Julius Caesar and Mark Antony ?",
    options: [
      const LayOutOption(text: "Cleopatra", isCorrect: true),
      const LayOutOption(text: "Nefertiti ", isCorrect: false),
      const LayOutOption(text: "Hatshepsut", isCorrect: false),
      const LayOutOption(text: "Isis", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "Cleopatra", isCorrect: true),
  ),
];
