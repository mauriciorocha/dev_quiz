import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progess_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;
  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão $currentPage",
                style: AppTextStyles.body15,
              ),
              Text("de $length", style: AppTextStyles.body15)
            ],
          ),
          ProgressIndicatorWidget(
            value: currentPage / length,
          )
        ],
      ),
    );
  }
}
