import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/jobs_watcher/jobs_watcher_bloc.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/home/widgets/jobs_map_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JobsWatcherBloc>()
        ..add(const JobsWatcherEvent.watchAllStarted()),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<JobsWatcherBloc, JobsWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (e) {
                  return Container();
                },
                loadInProgress: (e) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loadSuccess: (e) {
                  return JobsWidget(jobs: e.jobs);
                },
                loadFailure: (e) {
                  return Container();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
