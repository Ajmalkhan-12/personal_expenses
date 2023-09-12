import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double spending;
  const ChartBar(this.label, this.amount, this.spending, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Expanded(
          child: Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.125,
                child: FittedBox(
                  child: Text('₹${amount.toStringAsFixed(0)}',
                      style: Theme.of(context).appBarTheme.titleTextStyle),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.025,
              ),
              Expanded(
                child: SizedBox(
                  height: constraints.maxHeight * 0.65,
                  width: 10,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: const Color.fromRGBO(220, 220, 220, 1),
                      ),
                    ),
                    FractionallySizedBox(
                      heightFactor: spending,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.1,
                child: FittedBox(
                  child: Text(
                    label,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
