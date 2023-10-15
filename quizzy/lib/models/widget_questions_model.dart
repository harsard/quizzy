class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text: "Who wrote the play Romeo and Juliet ?",
    options: [
      const WiidgetOption(text: "Charles Dickens", isCorrect: false),
      const WiidgetOption(text: "William Shakespeare", isCorrect: true),
      const WiidgetOption(text: "Jane Austen", isCorrect: false),
      const WiidgetOption(text: "F. Scott Fitzgerald", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const WiidgetOption(text: "William Shakespeare", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "Which novel features the character Jay Gatsby and is set during the Roaring Twenties ?",
      options: [
        const WiidgetOption(text: "To Kill a Mockingbird", isCorrect: false),
        const WiidgetOption(text: "The Catcher in the Rye", isCorrect: false),
        const WiidgetOption(text: "The Great Gatsby", isCorrect: true),
        const WiidgetOption(text: "Moby-Dick", isCorrect: false),
      ],
      id: 1,
      correctAnswer:
          const WiidgetOption(text: "The Great Gatsby", isCorrect: true)),
];
