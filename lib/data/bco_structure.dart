import '../models/bco_models.dart';

/// Complete structure of the PCA Book of Church Order.
/// Content is bundled as HTML assets in assets/bco_content/.
class BcoStructure {
  static final List<BcoSection> sections = [
    BcoSection(
      id: 'preface',
      title: 'BCO Preface',
      subtitle: 'The King and Head of the Church, Preliminary Principles, The Constitution Defined',
      chapters: [
        BcoChapter(id: 'preface', title: 'Preface', sectionId: 'preface'),
      ],
    ),
    BcoSection(
      id: 'part1',
      title: 'BCO Part I',
      subtitle: 'The Form of Government',
      chapters: [
        BcoChapter(number: 1, id: 'ch1', title: 'The Doctrine of Church Government', sectionId: 'part1'),
        BcoChapter(number: 2, id: 'ch2', title: 'The Visible Church Defined', sectionId: 'part1'),
        BcoChapter(number: 3, id: 'ch3', title: 'The Nature and Extent of Church Power', sectionId: 'part1'),
        BcoChapter(number: 4, id: 'ch4', title: 'The Particular Church', sectionId: 'part1'),
        BcoChapter(number: 5, id: 'ch5', title: 'The Organization of a Particular Church', sectionId: 'part1'),
        BcoChapter(number: 6, id: 'ch6', title: 'Church Members', sectionId: 'part1'),
        BcoChapter(number: 7, id: 'ch7', title: 'Church Officers \u2014 General Classification', sectionId: 'part1'),
        BcoChapter(number: 8, id: 'ch8', title: 'The Elder', sectionId: 'part1'),
        BcoChapter(number: 9, id: 'ch9', title: 'The Deacon', sectionId: 'part1'),
        BcoChapter(number: 10, id: 'ch10', title: 'Church Courts in General', sectionId: 'part1'),
        BcoChapter(number: 11, id: 'ch11', title: 'Jurisdiction of Church Courts', sectionId: 'part1'),
        BcoChapter(number: 12, id: 'ch12', title: 'The Church Session', sectionId: 'part1'),
        BcoChapter(number: 13, id: 'ch13', title: 'The Presbytery', sectionId: 'part1'),
        BcoChapter(number: 14, id: 'ch14', title: 'The General Assembly', sectionId: 'part1'),
        BcoChapter(number: 15, id: 'ch15', title: 'Ecclesiastical Commissions', sectionId: 'part1'),
        BcoChapter(number: 16, id: 'ch16', title: 'Church Orders \u2013 The Doctrine of Vocation', sectionId: 'part1'),
        BcoChapter(number: 17, id: 'ch17', title: 'Doctrine of Ordination', sectionId: 'part1'),
        BcoChapter(number: 18, id: 'ch18', title: 'Candidates for the Gospel Ministry', sectionId: 'part1'),
        BcoChapter(number: 19, id: 'ch19', title: 'The Licensure of Candidates for the Gospel Ministry and Internship', sectionId: 'part1'),
        BcoChapter(number: 20, id: 'ch20', title: 'The Election of Pastors', sectionId: 'part1'),
        BcoChapter(number: 21, id: 'ch21', title: 'The Ordination and Installation of Ministers', sectionId: 'part1'),
        BcoChapter(number: 22, id: 'ch22', title: 'The Pastoral Relations', sectionId: 'part1'),
        BcoChapter(number: 23, id: 'ch23', title: 'The Dissolution of the Pastoral Relation', sectionId: 'part1'),
        BcoChapter(number: 24, id: 'ch24', title: 'Election, Ordination and Installation of Ruling Elders and Deacons', sectionId: 'part1'),
        BcoChapter(number: 25, id: 'ch25', title: 'Congregational Meetings', sectionId: 'part1'),
        BcoChapter(number: 26, id: 'ch26', title: 'Amending the Constitution of the Church', sectionId: 'part1'),
      ],
    ),
    BcoSection(
      id: 'part2',
      title: 'BCO Part II',
      subtitle: 'The Rules of Discipline',
      chapters: [
        BcoChapter(number: 27, id: 'ch27', title: 'Discipline \u2013 Its Nature, Subjects and Ends', sectionId: 'part2'),
        BcoChapter(number: 28, id: 'ch28', title: 'Disciplining of Non-communing Members', sectionId: 'part2'),
        BcoChapter(number: 29, id: 'ch29', title: 'Offenses', sectionId: 'part2'),
        BcoChapter(number: 30, id: 'ch30', title: 'Church Censures', sectionId: 'part2'),
        BcoChapter(number: 31, id: 'ch31', title: 'The Parties in Cases of Process', sectionId: 'part2'),
        BcoChapter(number: 32, id: 'ch32', title: 'General Provisions Applicable to All Cases of Process', sectionId: 'part2'),
        BcoChapter(number: 33, id: 'ch33', title: 'Special Rules Pertaining to Process Before Sessions', sectionId: 'part2'),
        BcoChapter(number: 34, id: 'ch34', title: 'Special Rules Pertaining to Process Against a Minister', sectionId: 'part2'),
        BcoChapter(number: 35, id: 'ch35', title: 'Evidence', sectionId: 'part2'),
        BcoChapter(number: 36, id: 'ch36', title: 'The Infliction of Church Censures', sectionId: 'part2'),
        BcoChapter(number: 37, id: 'ch37', title: 'The Removal of Censure', sectionId: 'part2'),
        BcoChapter(number: 38, id: 'ch38', title: 'Cases Without Process', sectionId: 'part2'),
        BcoChapter(number: 39, id: 'ch39', title: 'Modes in Which the Proceedings of Lower Courts Come Under the Supervision of Higher Courts', sectionId: 'part2'),
        BcoChapter(number: 40, id: 'ch40', title: 'General Review and Control', sectionId: 'part2'),
        BcoChapter(number: 41, id: 'ch41', title: 'References', sectionId: 'part2'),
        BcoChapter(number: 42, id: 'ch42', title: 'Appeals', sectionId: 'part2'),
        BcoChapter(number: 43, id: 'ch43', title: 'Complaints', sectionId: 'part2'),
        BcoChapter(number: 44, id: 'ch44', title: '(Vacated)', sectionId: 'part2'),
        BcoChapter(number: 45, id: 'ch45', title: 'Dissents, Protests, and Objections', sectionId: 'part2'),
        BcoChapter(number: 46, id: 'ch46', title: 'Jurisdiction', sectionId: 'part2'),
      ],
    ),
    BcoSection(
      id: 'part3',
      title: 'BCO Part III',
      subtitle: 'The Directory for the Worship of God',
      chapters: [
        BcoChapter(number: 47, id: 'ch47', title: 'The Principles and Elements of Public Worship', sectionId: 'part3'),
        BcoChapter(number: 48, id: 'ch48', title: 'The Sanctification of the Lord\'s Day', sectionId: 'part3'),
        BcoChapter(number: 49, id: 'ch49', title: 'The Ordering of Public Worship', sectionId: 'part3'),
        BcoChapter(number: 50, id: 'ch50', title: 'The Public Reading of the Holy Scriptures', sectionId: 'part3'),
        BcoChapter(number: 51, id: 'ch51', title: 'The Singing of Psalms and Hymns', sectionId: 'part3'),
        BcoChapter(number: 52, id: 'ch52', title: 'Public Prayer', sectionId: 'part3'),
        BcoChapter(number: 53, id: 'ch53', title: 'The Preaching of the Word', sectionId: 'part3'),
        BcoChapter(number: 54, id: 'ch54', title: 'The Worship of God by Offerings', sectionId: 'part3'),
        BcoChapter(number: 55, id: 'ch55', title: 'Confessing the Faith', sectionId: 'part3'),
        BcoChapter(number: 56, id: 'ch56', title: 'The Administration of Baptism', sectionId: 'part3'),
        BcoChapter(number: 57, id: 'ch57', title: 'The Admission of Persons to Sealing Ordinances', sectionId: 'part3'),
        BcoChapter(number: 58, id: 'ch58', title: 'The Administration of the Lord\'s Supper', sectionId: 'part3'),
        BcoChapter(number: 59, id: 'ch59', title: 'The Solemnization of Marriage', sectionId: 'part3'),
        BcoChapter(number: 60, id: 'ch60', title: 'The Visitation of the Sick', sectionId: 'part3'),
        BcoChapter(number: 61, id: 'ch61', title: 'The Burial of the Dead', sectionId: 'part3'),
        BcoChapter(number: 62, id: 'ch62', title: 'Days of Fasting and Thanksgiving', sectionId: 'part3'),
        BcoChapter(number: 63, id: 'ch63', title: 'Christian Life in the Home', sectionId: 'part3'),
      ],
    ),
    BcoSection(
      id: 'appendices',
      title: 'BCO Appendices',
      subtitle: 'Optional Forms and Suggested Procedures',
      chapters: [
        BcoChapter(id: 'appA', title: 'Appendix A: Marriage Service', sectionId: 'appendices'),
        BcoChapter(id: 'appB', title: 'Appendix B: A Second Marriage Service', sectionId: 'appendices'),
        BcoChapter(id: 'appC', title: 'Appendix C: A Funeral Service', sectionId: 'appendices'),
        BcoChapter(id: 'appD', title: 'Appendix D: A Child\'s Funeral', sectionId: 'appendices'),
        BcoChapter(id: 'appE', title: 'Appendix E: Graveside Service', sectionId: 'appendices'),
        BcoChapter(id: 'appF', title: 'Appendix F: The Dedication of a Church Building', sectionId: 'appendices'),
        BcoChapter(id: 'appG', title: 'Appendix G: Suggested Forms for Use in Connection with the Rules of Discipline', sectionId: 'appendices'),
        BcoChapter(id: 'appH', title: 'Appendix H: Suggested Procedures for Presbytery Judicial Commissions', sectionId: 'appendices'),
        BcoChapter(id: 'appI', title: 'Appendix I: Biblical Conflict Resolution', sectionId: 'appendices'),
        BcoChapter(id: 'appJ', title: 'Appendix J: Sample Form for Terms of Call', sectionId: 'appendices'),
      ],
    ),
    BcoSection(
      id: 'supplemental',
      title: 'BCO Supplemental Documents',
      subtitle: 'RAO, OMSJC, Corporate Documents, NAPARC',
      chapters: [
        BcoChapter(id: 'rao', title: 'Rules of Assembly Operations', sectionId: 'supplemental'),
        BcoChapter(id: 'omsjc', title: 'Operating Manual for Standing Judicial Commission', sectionId: 'supplemental'),
        BcoChapter(id: 'certificate', title: 'Certificate of Incorporation', sectionId: 'supplemental'),
        BcoChapter(id: 'bylaws', title: 'Corporate Bylaws', sectionId: 'supplemental'),
        BcoChapter(id: 'naparc', title: 'NAPARC Agreements', sectionId: 'supplemental'),
      ],
    ),
  ];

  /// Map of chapter/document IDs to their asset file paths.
  static String assetPath(String chapterId) => 'assets/bco_content/$chapterId.html';

  static BcoChapter? findChapter(String chapterId) {
    for (final section in sections) {
      for (final chapter in section.chapters) {
        if (chapter.id == chapterId) return chapter;
      }
    }
    return null;
  }

  static BcoSection? findSection(String sectionId) {
    for (final section in sections) {
      if (section.id == sectionId) return section;
    }
    return null;
  }

  static List<BcoChapter> get allChapters {
    return sections.expand((s) => s.chapters).toList();
  }
}
