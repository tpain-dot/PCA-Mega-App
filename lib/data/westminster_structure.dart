import '../models/bco_models.dart';

/// Structure of the Westminster Standards section.
/// Content is bundled as HTML assets in assets/bco_content/.
class WestminsterStructure {
  // ─────────────────────────────────────────────────────────────
  // Westminster Confession of Faith — 33 chapters
  // ─────────────────────────────────────────────────────────────
  static final wcfSection = BcoSection(
    id: 'wcf',
    title: 'Confession of Faith',
    subtitle: '33 Chapters (sourced from pcaac.org, 2022 edition)',
    chapters: [
      BcoChapter(number: 1, id: 'wcf_ch1', title: 'Of the Holy Scripture', sectionId: 'wcf'),
      BcoChapter(number: 2, id: 'wcf_ch2', title: 'Of God, and of the Holy Trinity', sectionId: 'wcf'),
      BcoChapter(number: 3, id: 'wcf_ch3', title: 'Of God\u2019s Eternal Decree', sectionId: 'wcf'),
      BcoChapter(number: 4, id: 'wcf_ch4', title: 'Of Creation', sectionId: 'wcf'),
      BcoChapter(number: 5, id: 'wcf_ch5', title: 'Of Providence', sectionId: 'wcf'),
      BcoChapter(number: 6, id: 'wcf_ch6', title: 'Of the Fall of Man, of Sin, and of the Punishment Thereof', sectionId: 'wcf'),
      BcoChapter(number: 7, id: 'wcf_ch7', title: 'Of God\u2019s Covenant with Man', sectionId: 'wcf'),
      BcoChapter(number: 8, id: 'wcf_ch8', title: 'Of Christ the Mediator', sectionId: 'wcf'),
      BcoChapter(number: 9, id: 'wcf_ch9', title: 'Of Free Will', sectionId: 'wcf'),
      BcoChapter(number: 10, id: 'wcf_ch10', title: 'Of Effectual Calling', sectionId: 'wcf'),
      BcoChapter(number: 11, id: 'wcf_ch11', title: 'Of Justification', sectionId: 'wcf'),
      BcoChapter(number: 12, id: 'wcf_ch12', title: 'Of Adoption', sectionId: 'wcf'),
      BcoChapter(number: 13, id: 'wcf_ch13', title: 'Of Sanctification', sectionId: 'wcf'),
      BcoChapter(number: 14, id: 'wcf_ch14', title: 'Of Saving Faith', sectionId: 'wcf'),
      BcoChapter(number: 15, id: 'wcf_ch15', title: 'Of Repentance unto Life', sectionId: 'wcf'),
      BcoChapter(number: 16, id: 'wcf_ch16', title: 'Of Good Works', sectionId: 'wcf'),
      BcoChapter(number: 17, id: 'wcf_ch17', title: 'Of the Perseverance of the Saints', sectionId: 'wcf'),
      BcoChapter(number: 18, id: 'wcf_ch18', title: 'Of the Assurance of Grace and Salvation', sectionId: 'wcf'),
      BcoChapter(number: 19, id: 'wcf_ch19', title: 'Of the Law of God', sectionId: 'wcf'),
      BcoChapter(number: 20, id: 'wcf_ch20', title: 'Of Christian Liberty and Liberty of Conscience', sectionId: 'wcf'),
      BcoChapter(number: 21, id: 'wcf_ch21', title: 'Of Religious Worship and the Sabbath Day', sectionId: 'wcf'),
      BcoChapter(number: 22, id: 'wcf_ch22', title: 'Of Lawful Oaths and Vows', sectionId: 'wcf'),
      BcoChapter(number: 23, id: 'wcf_ch23', title: 'Of the Civil Magistrate', sectionId: 'wcf'),
      BcoChapter(number: 24, id: 'wcf_ch24', title: 'Of Marriage and Divorce', sectionId: 'wcf'),
      BcoChapter(number: 25, id: 'wcf_ch25', title: 'Of the Church', sectionId: 'wcf'),
      BcoChapter(number: 26, id: 'wcf_ch26', title: 'Of the Communion of Saints', sectionId: 'wcf'),
      BcoChapter(number: 27, id: 'wcf_ch27', title: 'Of the Sacraments', sectionId: 'wcf'),
      BcoChapter(number: 28, id: 'wcf_ch28', title: 'Of Baptism', sectionId: 'wcf'),
      BcoChapter(number: 29, id: 'wcf_ch29', title: 'Of the Lord\u2019s Supper', sectionId: 'wcf'),
      BcoChapter(number: 30, id: 'wcf_ch30', title: 'Of Church Censures', sectionId: 'wcf'),
      BcoChapter(number: 31, id: 'wcf_ch31', title: 'Of Synods and Councils', sectionId: 'wcf'),
      BcoChapter(number: 32, id: 'wcf_ch32', title: 'Of the State of Men after Death, and of the Resurrection of the Dead', sectionId: 'wcf'),
      BcoChapter(number: 33, id: 'wcf_ch33', title: 'Of the Last Judgment', sectionId: 'wcf'),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Westminster Larger Catechism — 25 sections, 196 questions
  // ─────────────────────────────────────────────────────────────
  static final wlcSection = BcoSection(
    id: 'wlc',
    title: 'Larger Catechism',
    subtitle: '196 Questions (sourced from pcaac.org, 2019/2024 editions)',
    chapters: [
      // Part I: What Man Ought to Believe Concerning God
      BcoChapter(number: 1, id: 'wlc_ch1', title: 'Introduction: The Chief End of Man (Q. 1\u20135)', sectionId: 'wlc'),
      BcoChapter(number: 2, id: 'wlc_ch2', title: 'The Nature and Being of God (Q. 6\u201311)', sectionId: 'wlc'),
      BcoChapter(number: 3, id: 'wlc_ch3', title: 'God\u2019s Decrees and Works of Creation (Q. 12\u201317)', sectionId: 'wlc'),
      BcoChapter(number: 4, id: 'wlc_ch4', title: 'The Covenant of Life and the Fall (Q. 18\u201329)', sectionId: 'wlc'),
      BcoChapter(number: 5, id: 'wlc_ch5', title: 'The Covenant of Grace and the Mediator (Q. 30\u201336)', sectionId: 'wlc'),
      BcoChapter(number: 6, id: 'wlc_ch6', title: 'Christ\u2019s Offices: Prophet, Priest, and King (Q. 37\u201345)', sectionId: 'wlc'),
      BcoChapter(number: 7, id: 'wlc_ch7', title: 'Christ\u2019s Humiliation and Exaltation (Q. 46\u201356)', sectionId: 'wlc'),
      BcoChapter(number: 8, id: 'wlc_ch8', title: 'The Application of Redemption (Q. 57\u201375)', sectionId: 'wlc'),
      BcoChapter(number: 9, id: 'wlc_ch9', title: 'The Visible Church and the Means of Grace (Q. 76\u201390)', sectionId: 'wlc'),
      // Part II: What Duty God Requires of Man
      BcoChapter(number: 10, id: 'wlc_ch10', title: 'The Moral Law in General (Q. 91\u201397)', sectionId: 'wlc'),
      BcoChapter(number: 11, id: 'wlc_ch11', title: 'Introduction to the Ten Commandments (Q. 98\u2013102)', sectionId: 'wlc'),
      BcoChapter(number: 12, id: 'wlc_ch12', title: '1st Commandment (Q. 103\u2013106)', sectionId: 'wlc'),
      BcoChapter(number: 13, id: 'wlc_ch13', title: '2nd Commandment (Q. 107\u2013110)', sectionId: 'wlc'),
      BcoChapter(number: 14, id: 'wlc_ch14', title: '3rd Commandment (Q. 111\u2013114)', sectionId: 'wlc'),
      BcoChapter(number: 15, id: 'wlc_ch15', title: '4th Commandment (Q. 115\u2013121)', sectionId: 'wlc'),
      BcoChapter(number: 16, id: 'wlc_ch16', title: '5th Commandment (Q. 122\u2013133)', sectionId: 'wlc'),
      BcoChapter(number: 17, id: 'wlc_ch17', title: '6th Commandment (Q. 134\u2013136)', sectionId: 'wlc'),
      BcoChapter(number: 18, id: 'wlc_ch18', title: '7th Commandment (Q. 137\u2013139)', sectionId: 'wlc'),
      BcoChapter(number: 19, id: 'wlc_ch19', title: '8th Commandment (Q. 140\u2013142)', sectionId: 'wlc'),
      BcoChapter(number: 20, id: 'wlc_ch20', title: '9th Commandment (Q. 143\u2013145)', sectionId: 'wlc'),
      BcoChapter(number: 21, id: 'wlc_ch21', title: '10th Commandment (Q. 146\u2013148)', sectionId: 'wlc'),
      BcoChapter(number: 22, id: 'wlc_ch22', title: 'Transgressing the Law (Q. 149\u2013153)', sectionId: 'wlc'),
      BcoChapter(number: 23, id: 'wlc_ch23', title: 'The Means of Grace: Word (Q. 154\u2013160)', sectionId: 'wlc'),
      BcoChapter(number: 24, id: 'wlc_ch24', title: 'The Means of Grace: Sacraments (Q. 161\u2013177)', sectionId: 'wlc'),
      BcoChapter(number: 25, id: 'wlc_ch25', title: 'The Means of Grace: Prayer (Q. 178\u2013196)', sectionId: 'wlc'),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Westminster Shorter Catechism — 23 sections, 107 questions
  // ─────────────────────────────────────────────────────────────
  static final wscSection = BcoSection(
    id: 'wsc',
    title: 'Shorter Catechism',
    subtitle: '107 Questions (sourced from pcaac.org, 2019 edition)',
    chapters: [
      BcoChapter(number: 1, id: 'wsc_ch1', title: 'Introduction: The Chief End of Man (Q. 1\u20133)', sectionId: 'wsc'),
      BcoChapter(number: 2, id: 'wsc_ch2', title: 'The Nature and Being of God (Q. 4\u20136)', sectionId: 'wsc'),
      BcoChapter(number: 3, id: 'wsc_ch3', title: 'The Decrees of God, Creation, and Providence (Q. 7\u201311)', sectionId: 'wsc'),
      BcoChapter(number: 4, id: 'wsc_ch4', title: 'The Covenant of Life and the Fall (Q. 12\u201319)', sectionId: 'wsc'),
      BcoChapter(number: 5, id: 'wsc_ch5', title: 'The Covenant of Grace and the Redeemer (Q. 20\u201326)', sectionId: 'wsc'),
      BcoChapter(number: 6, id: 'wsc_ch6', title: 'The Application of Redemption (Q. 27\u201332)', sectionId: 'wsc'),
      BcoChapter(number: 7, id: 'wsc_ch7', title: 'The Benefits of Redemption in This Life, at Death, and at the Resurrection (Q. 33\u201338)', sectionId: 'wsc'),
      BcoChapter(number: 8, id: 'wsc_ch8', title: 'The Moral Law and the Ten Commandments (Q. 39\u201344)', sectionId: 'wsc'),
      BcoChapter(number: 9, id: 'wsc_ch9', title: '1st Commandment (Q. 45\u201348)', sectionId: 'wsc'),
      BcoChapter(number: 10, id: 'wsc_ch10', title: '2nd Commandment (Q. 49\u201352)', sectionId: 'wsc'),
      BcoChapter(number: 11, id: 'wsc_ch11', title: '3rd Commandment (Q. 53\u201356)', sectionId: 'wsc'),
      BcoChapter(number: 12, id: 'wsc_ch12', title: '4th Commandment (Q. 57\u201362)', sectionId: 'wsc'),
      BcoChapter(number: 13, id: 'wsc_ch13', title: '5th Commandment (Q. 63\u201366)', sectionId: 'wsc'),
      BcoChapter(number: 14, id: 'wsc_ch14', title: '6th Commandment (Q. 67\u201369)', sectionId: 'wsc'),
      BcoChapter(number: 15, id: 'wsc_ch15', title: '7th Commandment (Q. 70\u201372)', sectionId: 'wsc'),
      BcoChapter(number: 16, id: 'wsc_ch16', title: '8th Commandment (Q. 73\u201375)', sectionId: 'wsc'),
      BcoChapter(number: 17, id: 'wsc_ch17', title: '9th Commandment (Q. 76\u201378)', sectionId: 'wsc'),
      BcoChapter(number: 18, id: 'wsc_ch18', title: '10th Commandment (Q. 79\u201381)', sectionId: 'wsc'),
      BcoChapter(number: 19, id: 'wsc_ch19', title: 'Transgressing the Law (Q. 82\u201384)', sectionId: 'wsc'),
      BcoChapter(number: 20, id: 'wsc_ch20', title: 'Faith, Repentance, and the Means of Grace (Q. 85\u201388)', sectionId: 'wsc'),
      BcoChapter(number: 21, id: 'wsc_ch21', title: 'The Word of God (Q. 89\u201390)', sectionId: 'wsc'),
      BcoChapter(number: 22, id: 'wsc_ch22', title: 'The Sacraments (Q. 91\u201397)', sectionId: 'wsc'),
      BcoChapter(number: 23, id: 'wsc_ch23', title: 'Prayer (Q. 98\u2013107)', sectionId: 'wsc'),
    ],
  );

  /// All three Westminster Standards.
  static final List<BcoSection> standards = [
    wcfSection,
    wlcSection,
    wscSection,
  ];

  /// Total number of chapters across all standards with content.
  static int get totalChapters =>
      standards.fold(0, (sum, s) => sum + s.chapters.length);

  /// All chapters across all Westminster Standards.
  static List<BcoChapter> get allChapters =>
      standards.expand((s) => s.chapters).toList();
}
