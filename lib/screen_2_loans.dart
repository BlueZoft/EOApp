import 'package:flutter/material.dart';
import 'loan_table_and_class.dart';
import 'build_loan_details.dart';

class LoanOptions extends StatelessWidget {
  final List<LoanClass> loanlist;

  LoanOptions({required this.loanlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ඔබ සඳහාම වන මූල්‍ය පහසුකම්'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        shadowColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: loanlist.map((loan) => LoanCard(loan: loan)).toList(),
        ),
      ),
      backgroundColor: Colors.cyan[100],
    );
  }
}
