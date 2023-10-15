class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text: "What is the largest ocean in the world ?",
    options: [
      const StateOption(text: "Indian Ocean", isCorrect: false),
      const StateOption(text: "Atlantic Ocean", isCorrect: false),
      const StateOption(text: "Pacific Ocean", isCorrect: true),
      const StateOption(text: "Arctic Ocean", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "Pacific Ocean", isCorrect: true),
  ),
  StateQuestion(
    text: "Which country is known as the Land of the Rising Sun ?",
    options: [
      const StateOption(text: "China", isCorrect: false),
      const StateOption(text: "South Korea", isCorrect: false),
      const StateOption(text: "Japan", isCorrect: true),
      const StateOption(text: "Thailand", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Japan", isCorrect: true),
  ),
];
