import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/job_watcher/job_watcher_bloc.dart';
import 'package:hourhero/domain/jobs/job.dart';
import 'package:hourhero/presentation/jobs/widgets/job_components.dart';
import 'package:velocity_x/velocity_x.dart';

class JobView extends StatelessWidget {
  const JobView({
    super.key,
    required this.id,
    required this.deskripsi,
  });

  final String id;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobWatcherBloc, JobWatcherState>(
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
          return JobWidget(job: e.job);
        },
        loadFailure: (e) {
          return Container();
        },
      );
    });
  }
}

class JobWidget extends StatelessWidget {
  const JobWidget({super.key, required this.job});

  final Job job;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Card(
          child: VStack(
            [
              HStack([
                const BackButton(),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
              ]),
              24.heightBox,
              Text(job.jobName).text.xl3.bold.make(),
              6.heightBox,
              Text(job.jobFirm).text.lg.make(),
              6.heightBox,
              const Text("Diposting pada 10 Juli").text.make(),
            ],
          ).p24(),
        ),
        20.heightBox,
        Card(
          child: VStack(
            [
              HStack([
                Expanded(
                  child: VStack(
                    [
                      Text('Berlaku sebelum'.toUpperCase())
                          .text
                          .medium
                          .bold
                          .make(),
                      Text(job.jobPeriod).text.make(),
                    ],
                    alignment: MainAxisAlignment.center,
                  ),
                ),
                12.widthBox,
                Expanded(
                  child: VStack(
                    [
                      Text('Sifat Pekerjaan'.toUpperCase())
                          .text
                          .medium
                          .bold
                          .make(),
                      VxBox(child: Text(job.jobKind)).gray200.rounded.p3.make()
                    ],
                  ),
                ),
              ]),
              12.heightBox,
              HStack([
                Expanded(
                  child: VStack(
                    [
                      Text('kisaran gaji'.toUpperCase())
                          .text
                          .medium
                          .bold
                          .make(),
                      Text(job.jobSalary).text.make(),
                    ],
                  ),
                ),
                12.widthBox,
                Expanded(
                  child: VStack(
                    [
                      Text('lokasi pekerjaan'.toUpperCase())
                          .text
                          .medium
                          .bold
                          .make(),
                      const Text('Work From Home').text.make(),
                    ],
                  ),
                ),
              ]),
            ],
          ).p24(),
        ),
        20.heightBox,
        DescriptionCard(deskripsi: job.jobDescription),
        20.heightBox,
        Card(
          child: VStack(
            [
              const Text("Peran dan tanggung jawab").text.lg.bold.make(),
              const Text(
                "Dapatkah Anda mewujudkan ide-ide kreatif yang berpusat pada manusia dan mewujudkan hal-hal besar yang tidak terlihat? Kami percaya pada kerja sama tim, kesenangan, proyek yang kompleks, perspektif yang beragam, dan solusi yang sederhana. Bagaimana dengan Anda? Kami mencari orang yang berpikiran sama",
              ).text.justify.make(),
            ],
          ).p24(),
        ),
        20.heightBox,
        ElevatedButton(
          onPressed: () {},
          child: const Text("Daftar Sekarang"),
        ),
      ],
    );
  }
}
