import 'dart:io';

import 'package:meta/meta.dart';

import 'file_report.dart';
import 'reporter.dart';

/// Creates reports in Checkstyle format widely understood by various CI and analysis tools
abstract class CheckstyleReporter<T extends FileReport, S, P>
    extends Reporter<T, S, P> {
  static const String id = 'checkstyle';

  @protected
  final IOSink output;

  const CheckstyleReporter(this.output);
}
