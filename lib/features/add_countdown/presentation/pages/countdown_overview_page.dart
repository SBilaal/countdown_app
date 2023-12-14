// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:countdown_app/auth/bloc/auth_bloc.dart';
import 'package:countdown_app/core/utils.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_reader/countdown_reader_bloc.dart';
import 'package:countdown_app/features/add_countdown/presentation/pages/countdown_form_page.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/centered_add_button.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/countdown_menu.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/countdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountdownOverviewPage extends StatefulWidget {
  @override
  State<CountdownOverviewPage> createState() => _CountdownOverviewPageState();
}

class _CountdownOverviewPageState extends State<CountdownOverviewPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<CountdownReaderBloc>().add(CountdownReaderEvent.readStarted());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Countdowns'),
        actions: [
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.isLoading
                  ? Center(
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(color: Colors.white),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        final _authBloc = context.read<AuthBloc>();
                        state.isAuthenticated ?? false
                            ? _authBloc.add(AuthEvent.logoutButtonPressed())
                            : _authBloc.add(AuthEvent.loginButtonPressed());
                      },
                      icon: state.isAuthenticated ?? false
                          ? Icon(Icons.cloud, color: Colors.grey.shade300)
                          : Icon(Icons.cloud_off, color: Colors.grey.shade300),
                    );
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.palette,
              color: Colors.grey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      body: _buildCountdownList(),
      floatingActionButton: context
          .watch<CountdownReaderBloc>()
          .state
          .maybeWhen(
              orElse: () => null,
              data: (countdowns) => _buildFAB(countdowns.isNotEmpty, context)),
    );
  }

  Widget _buildCountdownList() =>
      BlocBuilder<CountdownReaderBloc, CountdownReaderState>(
        builder: (context, state) {
          return state.when(
              initial: () => Container(),
              loading: () => Center(
                    child: CircularProgressIndicator(),
                  ),
              data: (countdowns) => countdowns.isEmpty
                  ? CenteredAddButton()
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        var countdown = countdowns[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) =>
                                    CountdownMenu(countdown: countdown),
                              );
                            },
                            child: CountdownItem(
                              time: TimeOfDay.fromDateTime(countdown.date),
                              date: countdown.date,
                              title: countdown.title,
                              color: getColorFromIndex(countdown.colorIndex),
                            ),
                          ),
                        );
                      },
                      itemCount: countdowns.length,
                    ),
              error: (failure) => Container());
        },
      );

  Widget _buildFAB(bool countdownListNotEmpty, BuildContext context) {
    return Visibility(
      visible: countdownListNotEmpty,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(CountdownFormPage.name);
          // context
          //     .read<CountdownFormBloc>()
          //     .add(CountdownFormEvent.initialized());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
