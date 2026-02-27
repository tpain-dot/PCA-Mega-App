// Table of contents definitions for study reports that have been
// converted to readable HTML text (proof of concept).

import '../screens/study_text_screen.dart';

/// TOC for the Creation Study Committee Report.
const creationReportToc = [
  StudyTocEntry(
    sectionId: 'sec-1',
    title: 'I. Introductory Statement',
  ),
  StudyTocEntry(
    sectionId: 'sec-2',
    title: 'II. Background to the Current Discussion',
  ),
  StudyTocEntry(
    sectionId: 'sec-3',
    title: 'III. Brief Definitions',
  ),
  StudyTocEntry(
    sectionId: 'sec-4',
    title: 'IV. Main Interpretations of Genesis 1\u20133',
    children: [
      StudyTocEntry(
        sectionId: 'sec-4a',
        title: 'A. The Calendar-Day Interpretation',
      ),
      StudyTocEntry(
        sectionId: 'sec-4b',
        title: 'B. The Day-Age Interpretation',
      ),
      StudyTocEntry(
        sectionId: 'sec-4c',
        title: 'C. The Framework Interpretation',
      ),
      StudyTocEntry(
        sectionId: 'sec-4d',
        title: 'D. The Analogical Days Interpretation',
      ),
      StudyTocEntry(
        sectionId: 'sec-4e',
        title: 'E. Other Interpretations',
      ),
    ],
  ),
  StudyTocEntry(
    sectionId: 'sec-5',
    title: 'V. Original Intent of the Westminster Assembly',
  ),
  StudyTocEntry(
    sectionId: 'sec-6',
    title: 'VI. Advice and Counsel of the Committee',
    children: [
      StudyTocEntry(
        sectionId: 'sec-6-rec',
        title: 'Recommendations',
      ),
    ],
  ),
  StudyTocEntry(
    sectionId: 'sec-7',
    title: 'VII. Appendices',
    children: [
      StudyTocEntry(
        sectionId: 'sec-7a',
        title: 'A. Definitions (fuller version)',
      ),
      StudyTocEntry(
        sectionId: 'sec-7b',
        title: 'B. The New Testament\u2019s View of the Historicity of Genesis 1\u20133',
      ),
      StudyTocEntry(
        sectionId: 'sec-7c',
        title: 'C. General Revelation',
      ),
    ],
  ),
];

/// Map from PDF filename to its text version configuration.
/// Only populated for PDFs that have been converted to text.
class StudyTextConfig {
  final String htmlAssetPath;
  final List<StudyTocEntry> toc;

  const StudyTextConfig({
    required this.htmlAssetPath,
    required this.toc,
  });
}

final Map<String, StudyTextConfig> studyTextVersions = {
  'creation_report.pdf': StudyTextConfig(
    htmlAssetPath: 'assets/studies/creation_report.html',
    toc: creationReportToc,
  ),
};
