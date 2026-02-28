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

/// TOC for the Women in Ministry (2017) Report.
const womenMinistryToc = [
  StudyTocEntry(
    sectionId: 'sec-ch1',
    title: 'Chapter One: Introduction',
    children: [
      StudyTocEntry(
        sectionId: 'sec-ch1-overture',
        title: 'Response to Overture 3',
      ),
    ],
  ),
  StudyTocEntry(
    sectionId: 'sec-ch2',
    title: 'Chapter Two: A Biblical Foundation',
    children: [
      StudyTocEntry(
        sectionId: 'sec-ch2-survey',
        title: 'A Survey of the Role of Women in Scripture',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-prophets',
        title: 'Women Served as Prophetesses',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-truth',
        title: 'Women Declared Truth and Performed Acts of Service',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-examples',
        title: 'Examples in the Roles of Women in the OT',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-jesus',
        title: 'Roles During the Earthly Ministry of Jesus',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-apostolic',
        title: 'Roles During the Apostolic Era',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-1cor14',
        title: '1 Corinthians 14:26\u201340',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-1tim2',
        title: '1 Timothy 2:8\u201315',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-deacons',
        title: 'Deacons: Acts 6 and 1 Timothy 3',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-coherence',
        title: 'Coherence Between Roles of Women',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch2-eph5',
        title: 'Ephesians 5 and Subordination',
      ),
    ],
  ),
  StudyTocEntry(
    sectionId: 'sec-ch3',
    title: 'Chapter Three: Ordination',
    children: [
      StudyTocEntry(
        sectionId: 'sec-ch3-hands',
        title: 'Ordination and the Laying on of Hands',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch3-diaconate',
        title: 'The Diaconate: Ordination and Service',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch3-deaconesses',
        title: 'Deaconesses in the History of the Church',
      ),
    ],
  ),
  StudyTocEntry(
    sectionId: 'sec-ch4',
    title: 'Chapter Four: Complementarian Practice',
    children: [
      StudyTocEntry(
        sectionId: 'sec-ch4-practices',
        title: 'Various Practices in the PCA',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch4-gifts',
        title: 'Making Room for Women\u2019s Gifts',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch4-staff',
        title: 'Staff Roles for Qualified Women',
      ),
      StudyTocEntry(
        sectionId: 'sec-ch4-teaching',
        title: 'Affirming Women with Bible-Teaching Skills',
      ),
    ],
  ),
  StudyTocEntry(
    sectionId: 'sec-ch5',
    title: 'Chapter Five: Pastoral Letter',
    children: [
      StudyTocEntry(
        sectionId: 'sec-ch5-rec',
        title: 'Recommendations',
      ),
    ],
  ),
];

/// Map from PDF filename to its text version configuration.
/// Only populated for PDFs that have been converted to text.
class StudyTextConfig {
  final String htmlAssetPath;
  final String? footnotesAssetPath;
  final List<StudyTocEntry> toc;

  const StudyTextConfig({
    required this.htmlAssetPath,
    this.footnotesAssetPath,
    required this.toc,
  });
}

final Map<String, StudyTextConfig> studyTextVersions = {
  'creation_report.pdf': StudyTextConfig(
    htmlAssetPath: 'assets/studies/creation_report.html',
    footnotesAssetPath: 'assets/studies/creation_report_footnotes.json',
    toc: creationReportToc,
  ),
  'women_ministry_2017.pdf': StudyTextConfig(
    htmlAssetPath: 'assets/studies/women_ministry_2017.html',
    footnotesAssetPath: 'assets/studies/women_ministry_2017_footnotes.json',
    toc: womenMinistryToc,
  ),
};
