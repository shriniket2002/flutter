import 'package:expense_tracker/widgets/expenses_list/expense_items.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expenses.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenseses, required this.onRemove});

  final List<Expense> expenseses;
  final Function(Expense expense) onRemove;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenseses[index]),
        onDismissed: (direction) {
          onRemove(
            expenseses[index],
          );
        },
        child: ExpenseItem(
          expenseses[index],
        ),
      ),
    );
  }
}
