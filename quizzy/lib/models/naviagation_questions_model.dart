class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text: "What is the chemical symbol for gold ?",
    options: [
      const NavigationsOption(text: "Go", isCorrect: false),
      const NavigationsOption(text: "Gd", isCorrect: false),
      const NavigationsOption(text: "Au", isCorrect: true),
      const NavigationsOption(text: "Ag", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Au", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Which planet is known as the Red Planet ?",
    options: [
      const NavigationsOption(text: "Mars", isCorrect: true),
      const NavigationsOption(text: "Venus", isCorrect: false),
      const NavigationsOption(text: "Jupiter", isCorrect: false),
      const NavigationsOption(text: "Saturn", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const NavigationsOption(text: "Mars", isCorrect: true),
  ),
];
