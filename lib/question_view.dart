import 'package:flutter/material.dart';
import 'package:quize/quize_model.dart';

class QuestionView extends StatelessWidget {
  final int index;
  final QuizeModel quizeModel;
  final Function(String) onSubmit;
  const QuestionView({
    super.key,
    required this.index,
    required this.quizeModel,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$index. ${quizeModel.question}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        for (int i = 0; i < quizeModel.option.length; i++)
          Row(
            children: [
              Radio<String>(
                  value: quizeModel.option[i],
                  groupValue: quizeModel.givenAnswer,
                  onChanged: (value){
                    onSubmit(value!);

                  },
              ),
              Text(quizeModel.option[i]),
            ],
          )
      ],
    );
  }
}
