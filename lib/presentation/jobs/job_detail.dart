import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/job_watcher/job_watcher_bloc.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/jobs/widgets/job_view.dart';

@RoutePage()
class JobDetailPage extends StatelessWidget {
  const JobDetailPage({super.key, @PathParam('id') required this.id});

  final String id;

  final String deskripsi =
      "Dapatkah Anda mewujudkan ide-ide kreatif yang berpusat pada manusia dan mewujudkan hal-hal besar yang tidak terlihat? Kami percaya pada kerja sama tim, kesenangan, proyek yang kompleks, perspektif yang beragam, dan solusi yang sederhana. Bagaimana dengan Anda? Kami mencari orang yang berpikiran sama";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<JobWatcherBloc>()..add(JobWatcherEvent.watchStarted(id)),
      child: Scaffold(
        body: SafeArea(
          child: JobView(id: id, deskripsi: deskripsi),
        ),
      ),
    );
  }
}
