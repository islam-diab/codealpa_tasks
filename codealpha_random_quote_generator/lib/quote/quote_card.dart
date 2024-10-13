import 'package:codealpha_random_quote_generator/quote/quote_cubit/quote_cubit.dart';
import 'package:codealpha_random_quote_generator/quote/quote_cubit/quote_states.dart';
import 'package:codealpha_random_quote_generator/quote/widget/quote_error_view.dart';
import 'package:codealpha_random_quote_generator/quote/widget/quote_sucess_view.dart';
import 'package:codealpha_random_quote_generator/quote/widget/quote_update_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuoteCubit()..getQuote(),
      child: BlocBuilder<QuoteCubit, QuoteStates>(
        builder: (context, state) {
          if (state is QuoteUpdate) {
            return const QuoteUpdateView();
          } else if (state is QuoteError) {
            return QuoteErrorView(
              onPressed: () {
                context.read<QuoteCubit>().getQuote();
              },
            );
          } else {
            return QuoteSucessView(quoteCubit: context.read<QuoteCubit>());
          }
        },
      ),
    );
  }
}
