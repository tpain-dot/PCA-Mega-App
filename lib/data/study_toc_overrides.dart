// Hand-crafted table-of-contents overrides for study PDFs whose embedded
// bookmarks are missing, incomplete, or misleading.
//
// When a PDF filename has an entry here the app uses this outline instead
// of whatever the PDF file itself reports via loadOutline().
//
// Page numbers are 1-indexed (page 1 = first page of the PDF).

import 'package:pdfrx/pdfrx.dart';

/// Helper to keep the outline definitions concise.
PdfOutlineNode _node(
  String title,
  int page, [
  List<PdfOutlineNode> children = const [],
]) {
  return PdfOutlineNode(
    title: title,
    dest: PdfDest(page, PdfDestCommand.fit, null),
    children: children,
  );
}

/// Map from PDF **filename** (not full path) to its custom outline.
///
/// To add an override for another PDF, create a new entry keyed by its
/// filename and define the tree using [_node].
final Map<String, List<PdfOutlineNode>> studyTocOverrides = {
  // ──────────────────────────────────────────────────────────────────
  // Women in Ministry (2017) — 63 pages
  // ──────────────────────────────────────────────────────────────────
  'women_ministry_2017.pdf': [
    _node('Chapter One: Introduction', 1, [
      _node('Response to Overture 3', 3),
    ]),
    _node(
        'Chapter Two: A Biblical Foundation for the Roles of Women in the Church',
        6,
        [
          _node('A Survey of the Role of Women in Scripture', 6, [
            _node('Women Served as Prophetesses', 6),
            _node(
                'Scripture Records How Women Declared Truth and Performed Acts of Service',
                8),
            _node('Examples in the Roles of Women in the Old Testament', 10),
            _node('Prophets with Limited Authority', 11),
            _node('Conclusions', 11),
          ]),
          _node(
              'The Roles of Women During the Earthly Ministry of Jesus', 11),
          _node('The Roles of Women During the Apostolic Era', 12, [
            _node('1 Corinthians 14:26\u201340', 12),
            _node('Additional Considerations', 14),
            _node('1 Timothy 2:8\u201315', 16, [
              _node('1 Timothy 2:9\u201310 \u2014 Apparel', 17),
              _node(
                  '1 Timothy 2:11\u201312 \u2014 Learning, Submission, and Permission',
                  17),
              _node('1 Timothy 2:13 \u2014 Reasons for Male Leadership', 21),
              _node('1 Timothy 2:13\u201315 \u2014 Roles of Women', 21),
            ]),
            _node('Conclusions for Male-Female Partnership', 22),
            _node('Deacons: A Consideration of Acts 6 and 1 Timothy 3', 23, [
              _node('Acts 6: Gifted Men Serve the Needs That Arise', 23),
              _node('1 Timothy 3:8\u201311 \u2014 An Overview', 23),
              _node('Interpretations throughout Church History', 27),
              _node('1 Timothy 3:8\u201311: Possible Interpretations', 29),
              _node('1 Timothy 3:11: Character Traits', 31),
            ]),
          ]),
          _node(
              'Coherence Between the Roles of Women During the Earthly Ministry of Jesus and the Pauline Epistles',
              32,
              [
                _node('Ephesians 5 and Subordination', 33),
              ]),
        ]),
    _node(
        'Chapter Three: Ordination \u2014 A Definition, with Special Reference to the Office of the Diaconate',
        36,
        [
          _node(
              'Ordination and the Laying on of Hands: A Brief Biblical and Historical Survey',
              37,
              [
                _node('Conclusion', 39),
              ]),
          _node('The Diaconate: Ordination and Service', 40, [
            _node(
                'The Role of Deaconesses in the History of the Church', 41),
          ]),
        ]),
    _node(
        'Chapter Four: Encouraging a Robust and Gracious Complementarian Practice',
        48,
        [
          _node('Various Complementarian Practices in the PCA', 51, [
            _node('The Teaching Ministries', 51),
            _node('The Diaconal Work', 51),
            _node('Public Worship', 51),
          ]),
          _node(
              'Identifying and Making Room for Women\u2019s Gifts and Abilities to Flourish',
              52,
              [
                _node('The Problem', 52),
                _node('The Solution', 53),
                _node('The Process', 54),
              ]),
          _node(
              'Encouraging Staff Roles for Qualified Women Working with the Church\u2019s Session',
              55),
          _node(
              'How Can We Affirm Women Who Have Obvious Bible-Teaching Skills?',
              56),
        ]),
    _node('Chapter Five: Pastoral Letter and Recommendations', 58, [
      _node('Recommendations', 59),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // abortion_1978.pdf — 22pp
  // ──────────────────────────────────────────────────────────────────
  'abortion_1978.pdf': [
    _node('Report of the Ad Interim Committee on Abortion', 1, [
      _node('Scripture Foundation', 1),
      _node('Medical Understanding of Abortion', 4),
      _node('Alleged Special Case', 9),
      _node('Legal Aspects of Abortion', 10),
      _node('The Church\u2019s Relation and Responsibility to the State', 13),
      _node('Conclusion', 16),
    ]),
    _node('Appendix: Selected Resources', 17),
    _node('Recommendations', 18),
    _node('Related Assembly Actions', 20),
  ],

  // ──────────────────────────────────────────────────────────────────
  // apostasy_separation.pdf — 21pp
  // ──────────────────────────────────────────────────────────────────
  'apostasy_separation.pdf': [
    _node('Introduction', 1),
    _node('I. Background Studies', 1, [
      _node('Scripture', 1, [
        _node('Apostasy', 2),
        _node('False Teachers and False Teaching', 2),
        _node('Heresy and Heretics', 3),
        _node('Discipline', 4),
      ]),
      _node('New Testament Discipline', 6),
      _node(
          'Purpose of the Command to Discipline (and Subsequent Value When Obeyed)',
          6),
      _node('Summary', 7),
    ]),
    _node('II. The Early Church', 8),
    _node('III. The Reformation Churches', 9),
    _node('IV. The Westminster Confession', 11),
    _node('V. The Reformed Presbyterian Church', 13),
    _node('VI. American Presbyterianism of the Nineteenth Century', 14),
    _node('VII. The Northern Presbyterian Separatist Movement', 15),
    _node('Conclusions', 19),
    _node('Part II: Presbyterian Church in America', 21),
  ],

  // ──────────────────────────────────────────────────────────────────
  // baptism_combined.pdf — 20pp
  // ──────────────────────────────────────────────────────────────────
  'baptism_combined.pdf': [
    _node('Baptism and Non-Communing Membership', 1),
    _node('Appendix P: Report on the Validity of Certain Baptisms', 2, [
      _node('Preface to the Report', 2),
      _node('The Report', 3),
      _node('Recommendations', 11),
      _node('Appendices to the Report', 12),
    ]),
    _node('Minority Report', 16, [
      _node('Introduction', 16),
      _node('Brief Historical Comment', 16),
      _node('Confessional and Biblical Considerations', 16),
      _node('The Sign versus the Thing Signified', 17),
      _node(
          'The Council of Trent and the Question of Apostasy by the Church of Rome',
          17),
      _node(
          'God\u2019s Faithfulness and the Question of the Worthy Administrator',
          18),
      _node('The Church Determines the Validity or Propriety of Baptisms', 19),
      _node('Criteria of Validity and Criteria of Regularity', 19),
      _node('The Burden of Investigating Previous Baptisms', 20),
      _node('Recommendations', 20),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // diaconal_ministries.pdf — 23pp
  // ──────────────────────────────────────────────────────────────────
  'diaconal_ministries.pdf': [
    _node('Report of the Sub-Committee on Diaconal Ministries', 1, [
      _node('I. Diaconal Principles of NAPARC Churches', 1, [
        _node('Conclusion', 8),
        _node('Bibliography', 9),
      ]),
      _node(
          'II. Description of Diaconal Ministries of NAPARC Member Churches', 9),
      _node('III. Survey of PCA Diaconal Principles and Ministries', 20),
    ]),
    _node('Related Assembly Actions', 23),
  ],

  // ──────────────────────────────────────────────────────────────────
  // freemasonry.pdf — 20pp
  // ──────────────────────────────────────────────────────────────────
  'freemasonry.pdf': [
    _node('Report of the Ad-Interim Committee to Study Freemasonry (1987)', 1, [
      _node('Findings', 2),
      _node('Recommendations', 15),
    ]),
    _node('Report of the Ad-Interim Committee to Study Freemasonry (1988)', 16, [
      _node('Recommendations', 19),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // nuclear_age.pdf — 16pp
  // ──────────────────────────────────────────────────────────────────
  'nuclear_age.pdf': [
    _node('Christian Responsibility in the Nuclear Age', 1, [
      _node('Introduction', 1),
      _node('A. This Age in Theological Perspective', 1),
      _node('B. Discipleship and Citizenship', 4),
      _node('C. Theocratic Warfare', 6),
      _node('D. Nuclear Weapons in Moral Perspective', 9, [
        _node('Nuclear Disarmament', 10),
        _node('Nuclear Deterrence', 12),
        _node('Anti-nuclear Defense', 13),
      ]),
      _node('E. Intercession and Evangelism', 13),
    ]),
    _node('Appendix A: Effects of Nuclear Weapons', 14, [
      _node('Fallout', 15),
      _node('Initial Nuclear Radiation', 16),
      _node('Nuclear Winter', 16),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // paedo_communion.pdf — 22pp
  // ──────────────────────────────────────────────────────────────────
  'paedo_communion.pdf': [
    _node('Editor\u2019s Note and Assembly Actions', 1),
    _node('Report of the Ad-Interim Committee on Paedocommunion', 1),
    _node('Minority Report', 6),
    _node('Assembly Decisions', 18),
    _node('Annotated Bibliography', 19),
    _node('Overtures Connected with the Discussion of Paedocommunion', 20),
  ],

  // ──────────────────────────────────────────────────────────────────
  // racism_pastoral_letter_2004.pdf — 27pp
  // ──────────────────────────────────────────────────────────────────
  'racism_pastoral_letter_2004.pdf': [
    _node('The Gospel and Race: A Pastoral Letter', 2, [
      _node('Introduction: Why a Pastoral Letter?', 2),
      _node('Foundations in Biblical Text and Theological Perspective', 4),
      _node('Racism in General Terms', 8),
      _node('Race and Racism in This Pastoral Letter', 8),
      _node('Racism Is Sin', 9, [
        _node('Racism Denies the Gospel', 9),
        _node('Racism Is Idolatry', 10),
        _node('Racism Is Murder', 10),
        _node('Racism Is Lying', 10),
      ]),
      _node('Theological Problems of Racism', 10),
      _node(
          'Racism Distinguished from Legitimate Association Based on Natural Affinities',
          11),
      _node('As God\u2019s People, How Should We Respond?', 12, [
        _node('God Calls Us to Prayer', 12),
        _node('God Calls Us to Self-Examination', 13),
        _node('God Calls Us to Repent of the Sins of Our History', 13),
        _node(
            'God Calls Us to Repent of Current Racial Attitudes and Practices',
            16),
        _node('God Calls Us to Seek Racial Reconciliation', 16),
        _node('God Calls Us to a Practical Ministry', 17),
        _node('God Calls Us to Minister Among the Poor', 17),
        _node(
            'God Calls Us to Develop Cross-Cultural Relationships and Ministries',
            18),
      ]),
      _node('Conclusion', 18),
    ]),
    _node('Acknowledgments', 19),
    _node('Attachments to Pastoral Letter on Racism', 20),
    _node('References Cited', 27),
  ],

  // ──────────────────────────────────────────────────────────────────
  // racism_pastoral_letter_2016.pdf — 23pp
  // ──────────────────────────────────────────────────────────────────
  'racism_pastoral_letter_2016.pdf': [
    _node('Overture 55 from Mississippi Valley Presbytery', 1),
    _node('Attachment 1: A Pastoral Letter on Racism and the Gospel', 4, [
      _node('1. Learn', 9),
      _node('2. Pray', 11),
      _node('3. Acknowledge', 13),
      _node('4. Relate', 14),
      _node('5. Commit', 15),
    ]),
    _node('Attachment 2: Suggested Resources on Race and Our History', 17),
  ],

  // ──────────────────────────────────────────────────────────────────
  // church_state_combined.pdf — 43pp
  // ──────────────────────────────────────────────────────────────────
  'church_state_combined.pdf': [
    _node('Report of the Church/State Subcommittee', 1, [
      _node(
          'I. Preamble: Biblical, Historical, and Contemporary Concepts of Church/State Relations',
          1,
          [
            _node('Biblical and Theological Background', 1),
            _node(
                'Historical Background of Our Contemporary Church/State Context',
                7),
          ]),
      _node(
          'II. Should the Presbyterian Church in America Remain Incorporated?',
          16),
      _node('III. Taxation and the Church', 21),
      _node('IV. Education and Parental Responsibility', 26, [
        _node('The Biblical Position', 26),
        _node('Constitutional Issues in Education', 30),
      ]),
      _node(
          'V. Propriety of the Christian\u2019s Nonviolent Disobedience to the Civil Magistrate in the Abortion Controversy',
          38),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // creation_report.pdf — 91pp
  // ──────────────────────────────────────────────────────────────────
  'creation_report.pdf': [
    _node('Report of the Creation Study Committee', 1, [
      _node('I. Introductory Statement', 2),
      _node(
          'II. Background to the Current Discussion of the Creation Days', 2),
      _node('III. Brief Definitions', 14),
      _node(
          'IV. Description of the Main Interpretations of Genesis 1\u20133 and the Creation Days',
          19,
          [
            _node('A. The Calendar-Day Interpretation', 20),
            _node('B. The Day-Age Interpretation', 31),
            _node('C. The Framework Interpretation', 42),
            _node('D. The Analogical Days Interpretation', 48),
            _node('E. Other Interpretations of the Creation Days', 53),
          ]),
      _node('V. Original Intent of the Westminster Assembly', 55),
      _node('VI. Advice and Counsel of the Committee', 61),
      _node('Recommendations', 64),
      _node('VII. Appendices', 64, [
        _node('A. Definitions', 64),
        _node(
            'B. The New Testament\u2019s View of the Historicity of Genesis 1\u20133',
            79),
        _node('C. General Revelation', 83),
      ]),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // divorce_remarriage_complete.pdf — 118pp
  // ──────────────────────────────────────────────────────────────────
  'divorce_remarriage_complete.pdf': [
    _node('Report of the Ad-Interim Committee on Divorce and Remarriage', 1, [
      _node('Introduction', 1),
      _node('Chapter 1: Historical Perspective on Divorce and Remarriage', 8, [
        _node('I. The Westminster Confession on Divorce and Remarriage', 8),
        _node('II. The Witness of the Early Church', 8),
        _node('III. The Original Intent of the Confession', 10),
        _node('IV. The Views of Three Prominent Puritan Divines', 12),
        _node('V. The Conclusion of the Westminster Divines', 18),
        _node('VI. The Views of Two Prominent Continental Divines', 19),
        _node('VII. Conclusion', 21),
        _node('Bibliography', 22),
      ]),
      _node(
          'Chapter 2: Scriptural Perspective on Divorce and Remarriage', 25, [
        _node('I. Issues Concerning Divorce and Remarriage', 25),
        _node('II. Consideration of Major Scripture Passages', 31, [
          _node('A. Deuteronomy 24:1\u20134', 31),
          _node('B. Matthew 5:31\u201332', 34),
          _node('C. Luke 16:17\u201318', 37),
          _node('D. Matthew 19:3\u20139', 38),
          _node('E. 1 Corinthians 7:10\u201315', 46),
        ]),
      ]),
      _node('Chapter 3: Pastoral Perspective on Divorce and Remarriage', 54, [
        _node('I. Prevention of Marital Problems', 54),
        _node(
            'II. Pastoral Care and Counsel of Couples with Marital Difficulties',
            60),
        _node(
            'III. Discipline as It Pertains to Couples Considering Divorce',
            66),
        _node(
            'IV. Pastoral Care and Counsel of Those Seeking Remarriage', 71),
        _node(
            'V. Pastoral Care and Counsel of the Children of Divorced Parents',
            79),
        _node(
            'VI. The Church\u2019s Ministry to the Separated and Divorced', 86),
      ]),
      _node(
          'Appendix I: The Westminster Divines on Divorce for Physical Abuse',
          90),
      _node('Appendix II: Divorce Reconsidered', 104),
      _node('Conclusion', 113, [
        _node('I. A Summary of the Findings of the Committee', 113),
        _node('II. Recommendations to the 20th General Assembly', 115),
      ]),
      _node('Qualifications for Office of a Divorced Person', 117),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // federal_vision_2007.pdf — 36pp
  // ──────────────────────────────────────────────────────────────────
  'federal_vision_2007.pdf': [
    _node(
        'Report of Ad Interim Study Committee on Federal Vision, New Perspective, and Auburn Avenue Theology',
        1,
        [
          _node('Preface', 1),
          _node('I. Election and Covenant', 4),
          _node('II. Justification and Union with Christ', 14),
          _node('III. Perseverance, Apostasy and Assurance', 25),
          _node('IV. Declarations', 35),
          _node('V. Recommendations', 36),
        ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // human_sexuality_2021.pdf — 62pp
  // ──────────────────────────────────────────────────────────────────
  'human_sexuality_2021.pdf': [
    _node('Ad Interim Committee on Human Sexuality', 1, [
      _node('Preamble', 5),
      _node('Twelve Statements', 8, [
        _node('Statement 1: Marriage', 8),
        _node('Statement 2: Image of God', 8),
        _node('Statement 3: Original Sin', 9),
        _node('Statement 4: Desire', 10),
        _node('Statement 5: Concupiscence', 10),
        _node('Statement 6: Temptation', 11),
        _node('Statement 7: Sanctification', 12),
        _node('Statement 8: Impeccability', 12),
        _node('Statement 9: Identity', 13),
        _node('Statement 10: Language', 14),
        _node('Statement 11: Friendship', 14),
        _node('Statement 12: Repentance and Hope', 14),
      ]),
      _node(
          'Confessional Foundations Regarding the Nature of Temptation, Sin, and Repentance',
          16,
          [
            _node('I. Confessional Foundations', 16, [
              _node('I.A. Corruption', 16),
              _node('I.B. Corruption and the Regenerate', 17),
              _node('I.C. Corruption and the Goodness of Our Works', 19),
            ]),
            _node('II. Application to Current Issues', 20, [
              _node('II.A. Importance of Concupiscence', 20),
              _node('II.B. Applications to Same-Sex Attraction', 23),
            ]),
          ]),
      _node(
          'Biblical Perspectives for Pastoral Care\u2014Discipleship, Identity, and Terminology',
          26,
          [
            _node(
                'Discipleship for Believers Experiencing Same-Sex Attraction',
                26),
            _node('The Christian\u2019s Identity', 28),
            _node('Terminology', 31),
            _node('Singleness, Friendship, and Community', 33),
          ]),
      _node('Apologetic Approaches for Speaking to the World', 36, [
        _node('The Contemporary Narrative of Sexuality', 36),
        _node('Three Challenges for Christians Today', 37),
        _node('Grounding the Purposes of Sex in Biblical Theology', 42),
        _node('Toward a Christian Sexual Apologetic', 44),
      ]),
      _node('Select Annotated Bibliography', 47),
      _node('Resolutions Adopted by PCA General Assemblies', 50),
      _node('Conclusion', 55),
      _node('Attachment A: 47th General Assembly\u2019s Assignment', 57),
      _node('Attachment B: Committee Members', 60),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // insider_movement_2012.pdf — 89pp
  // ──────────────────────────────────────────────────────────────────
  'insider_movement_2012.pdf': [
    _node('A Call to Faithful Witness\u2014Part One: Like Father, Like Son',
        1, [
      _node('Overture 9\u2014A Call to Faithful Witness', 4),
      _node('Abbreviations', 6),
      _node('Preface', 7, [
        _node('The Study Committee\u2019s History', 7),
        _node('Study Committee Recommendations', 7),
      ]),
      _node('Executive Summary', 9, [
        _node('Introduction', 9),
        _node('Section A: The Practice of Bible Translation', 9),
        _node('Section B: Theological Implications', 12),
        _node('Conclusion', 14),
      ]),
      _node('Preamble', 16),
      _node('Section A: The Practice of Bible Translation', 19, [
        _node('Bible Translation in the Twenty-First Century', 19),
        _node('Muslim Belief: The Son of God in the Qur\u2019an', 20),
        _node('Functional and Formal Equivalence', 21),
        _node('Recent History of Missions to Muslims', 23),
        _node('Bibles for Muslims', 28),
        _node('Current Events 2011\u20132012', 29),
        _node('Pastoral Concerns', 32),
        _node('Caveats', 35),
        _node('Contemporary Examples', 36),
        _node(
            'Footnotes, Glossaries, and Other Paratextual Solutions', 45),
      ]),
      _node('Section B: Theological Implications', 48, [
        _node('Introduction', 48),
        _node(
            'Contemporary Translation Methods and the Authority of Scripture',
            48),
        _node('To Whom Is the Bible Written?', 50),
        _node(
            'Translation Method and \u201cAcceptability\u201d Parameters',
            53),
        _node(
            'God\u2019s Speech, God\u2019s Family; Our Speech, Our Family',
            55),
        _node('Translation of \u201cSon of God\u201d Overview', 57),
        _node('The Messianic Son', 58),
        _node('The Synoptic Gospels and the Son of God', 60),
        _node(
            'Does Son of God Mean Messiah, Representative, or Beloved Chosen One?',
            63),
        _node('The Stakes', 64),
        _node('Summary of Principles', 69),
        _node('A Return to Istanbul', 70),
      ]),
      _node('Conclusion', 71),
      _node('Recommendations to Organizations Doing Translation', 75),
      _node('Recommendations to Churches', 78),
      _node('Epilogue', 80),
      _node('Bibliographies', 81),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // insider_movement_2014.pdf — 298pp
  // ──────────────────────────────────────────────────────────────────
  'insider_movement_2014.pdf': [
    _node(
        'A Call to Faithful Witness\u2014Part Two: Theology, Gospel Missions, and Insider Movements',
        1,
        [
          _node('Abbreviations', 5),
          _node('Overture 9\u2014A Call to Faithful Witness', 6),
          _node('Preface', 8, [
            _node(
                'The Study Committee\u2019s History, Approach, and Product',
                8),
            _node(
                'Study Committee Recommendations to the 42nd General Assembly',
                12),
          ]),
          _node('Section A: Abridged Committee Report', 13, [
            _node('Introduction to Insider Movement Paradigms', 13),
            _node(
                '1. IMP Concepts of \u201cReligion\u201d and \u201cIdentity\u201d Functionally Exalt Sociology over Scripture',
                13),
            _node('2. IMPs Divorce the Church from the Kingdom of God', 19),
          ]),
          _node(
              'Section B: The Declarations\u2014Affirmations and Denials', 26,
              [
                _node('Why Affirmations and Denials?', 26),
                _node('Biblical Interpretation and Redemptive History', 27),
                _node(
                    'Scripture, Social Sciences, Cultural Anthropology', 28),
                _node('Missions and Ecclesiology', 28),
                _node('The Holy Spirit, Scripture, and the Church', 29),
                _node('In Christ Identity and Discipleship', 30),
              ]),
          _node('Section C: Analysis of Minority Report 2014', 32, [
            _node('1. MR 2014 and Identity', 32),
            _node('2. MR 2014 and the Church', 34),
            _node('3. MR 2014 and the Exegesis of Scripture', 35),
          ]),
          _node('Attachment 1: Committee Report 2013 (Revised)', 37, [
            _node('Executive Summary', 40),
            _node('Preamble: The Command to Go', 44),
            _node('Part 1\u2014History and Definition', 48, [
              _node('1. Defining Insider Movements', 48),
              _node(
                  '2. History of Modern Insider Movement Paradigms', 56),
            ]),
            _node('Part 2\u2014Scripture and Theology', 82, [
              _node(
                  '1. The Scriptural and Confessional Basis of Our Approach',
                  82),
              _node('2. God, His Revelation, and Human Reply', 83),
              _node('3. Hermeneutics & Exegesis', 89),
              _node(
                  '4. The Scripture\u2019s Teaching on the Church', 106),
              _node('5. Covenant Identity', 129),
              _node('6. Conclusion: The Advance of the Gospel', 153),
            ]),
            _node('Part 3\u2014Recommendations to Churches', 157),
            _node('Part 4\u2014Bibliographical Information', 159),
          ]),
          _node('Attachment 2: Analysis of Minority Report 2013', 177),
          _node(
              'Attachment 3: Christians of Muslim Background (CMB) Input',
              183),
          _node(
              'Attachment 4: History of Modern Evangelicalism as Related to Missions',
              186),
          _node('Attachment 5: God and Allah', 189),
          _node('Minority Report 2014', 195),
          _node('Minority Report 2013', 233),
        ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // racial_reconciliation_2018.pdf — 73pp
  // ──────────────────────────────────────────────────────────────────
  'racial_reconciliation_2018.pdf': [
    _node(
        'Report of the Ad Interim Committee on Racial and Ethnic Reconciliation',
        1,
        [
          _node('Introduction', 1),
          _node('Guiding Principles: Affirmations and Denials', 4),
          _node('Biblical and Theological Foundations', 5),
          _node('Confessional Support', 12),
          _node('Pastoral and Missional Considerations', 15),
          _node('Research Results and Analysis', 19, [
            _node(
                '1. Seeing the Need for Racial Reconciliation', 20),
            _node(
                '2. Characterizing the Amount of Racism in the PCA', 22),
            _node('3. Personal Experiences with Racism in the PCA', 23),
            _node(
                '4. Barriers for Greater Racial/Ethnic Diversity', 23),
          ]),
          _node('Specific Suggestions for Racial Reconciliation', 24, [
            _node('General Suggestions', 24),
            _node('Specific Suggestions for Congregations', 26),
            _node('Specific Suggestions for Presbyteries', 29),
            _node('Specific Suggestions for Academic Institutions', 30),
            _node(
                'Specific Suggestions for Committees and Agencies', 32),
          ]),
          _node('Committee Recommendations', 33),
          _node('Attachment: LifeWay Research Data', 35),
        ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // women_military_2001.pdf — 63pp
  // ──────────────────────────────────────────────────────────────────
  'women_military_2001.pdf': [
    _node('Ad Interim Study Committee on Women in the Military', 1, [
      _node('Consensus Report', 2, [
        _node('I. Purpose of Ad Interim Study Committee', 2),
        _node('II. History of Ad Interim Study Committee', 2),
        _node('III. Current Review of Military Service of Women', 3),
        _node('IV. The Honor of a Military Calling', 4),
        _node('V. Relevant Viewpoints from Church History', 7),
        _node('VI. Contemporary Ecclesiastical Views', 8),
        _node(
            'VII. Ecclesiology: The Church\u2019s Spirituality, Power, and Message',
            10),
        _node(
            'VIII. Foundational Premise: The Sufficiency of Scripture', 15),
        _node('IX. Scriptural Premises', 17),
        _node('X. Conclusion', 19),
        _node('XI. Recommendations', 20),
      ]),
      _node('Man\u2019s Duty to Protect Woman (Duty Position)', 21, [
        _node('Areas of Agreement and Disagreement', 25),
        _node('Clarifications', 25),
        _node(
            'God the Father, from Whom All Fatherhood Gets Its Name', 30),
        _node('Jesus Christ: Savior of His Bride', 32),
        _node('Church Officers: Watchmen over Christ\u2019s Bride', 35),
        _node('Adam: Defender of Eve and the Garden', 36),
        _node('Man: Defender of Woman', 39),
        _node('Woman: Giver of Life', 41),
        _node('Sexual Differentiation: God\u2019s Good Gift', 45),
        _node('Conclusion', 48),
      ]),
      _node(
          'Recommendations for the Wise Counsel of the Church (Wise Counsel Position)',
          51,
          [
            _node('Areas of Agreement', 52),
            _node('Areas of Disagreement', 52),
            _node('Creation and Fall', 53),
            _node('The History of Israel', 55),
            _node('The Nature of God and the Victory of Christ', 60),
          ]),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // agencies_relationship_1994.pdf — 11pp
  // ──────────────────────────────────────────────────────────────────
  'agencies_relationship_1994.pdf': [
    _node('The Relationship of Agencies to the General Assembly', 1),
    _node('I. The Authority of the General Assembly', 1),
    _node('II. Historical Background', 2),
    _node('III. Constitutional and Corporate Documents', 5, [
      _node('A. Book of Church Order', 5),
      _node('B. Rules of Assembly Operation', 6),
      _node('C. The Corporate Bylaws', 7),
      _node('D. The Certificate of Incorporation', 8),
    ]),
    _node(
        'IV. Contrast with Relation of Presbyteries and Sessions to General Assembly',
        9),
    _node('V. Summary', 10),
  ],

  // ──────────────────────────────────────────────────────────────────
  // aids_task_force.pdf — 14pp
  // ──────────────────────────────────────────────────────────────────
  'aids_task_force.pdf': [
    _node('PCA AIDS Task Force Report', 1),
    _node('Part I: Pastoral and Diaconal Response', 1),
    _node('Part II: The Root of the AIDS Epidemic', 3),
    _node('Footnote', 7),
    _node('Appendix: AIDS as God\u2019s Judgment?', 8),
    _node('Recommendations', 13),
  ],

  // ──────────────────────────────────────────────────────────────────
  // conflict_of_interest.pdf — 8pp
  // ──────────────────────────────────────────────────────────────────
  'conflict_of_interest.pdf': [
    _node('Theology of Stewardship', 1),
    _node('Personal Stewardship', 1),
    _node('Corporate Stewardship', 3),
    _node('Implications', 5),
    _node('Implementation', 7),
    _node('Biblical References', 8),
  ],

  // ──────────────────────────────────────────────────────────────────
  // ecumenical_principles.pdf — 10pp
  // ──────────────────────────────────────────────────────────────────
  'ecumenical_principles.pdf': [
    _node('Guiding Principles for Ecumenical Relations', 1),
    _node('Part One: The Biblical Basis for Ecclesiastical Union', 1, [
      _node('A. The Ethnic Universalism of the Gospel', 2),
      _node('B. The Universalism of the Apostolic Church', 2),
      _node('C. Jesus\u2019 Prayer for Unity', 2),
      _node('D. The Unity of the Body of Christ', 3),
      _node('E. The Kingdom of Christ', 3),
    ]),
    _node(
        'Part Two: Applying the Principles of Union in Christ\u2019s Church',
        4,
        [
          _node(
              'I. Bringing to Expression the Spiritual Unity of the Church',
              4,
              [
                _node('A. Confessing the Unity of the Church', 4),
                _node(
                    'B. Keeping and Restoring the Unity of the Church', 6),
              ]),
          _node(
              'II. Developing Procedures for Removing Barriers to Unity', 8,
              [
                _node('A. Submission to the Head of the Church', 8),
                _node('B. Fellowship in the Work of the Lord', 9),
              ]),
        ]),
    _node('Part Three: Summary of Biblical Guiding Principles', 9),
  ],

  // ──────────────────────────────────────────────────────────────────
  // fencing_lords_table.pdf — 6pp
  // ──────────────────────────────────────────────────────────────────
  'fencing_lords_table.pdf': [
    _node(
        'Report of the Ad Interim Committee on Fencing the Lord\u2019s Table',
        1),
    _node('Recommendation', 3),
    _node('Concurring Opinion', 3),
    _node('1993 Recommendation 18', 5),
  ],

  // ──────────────────────────────────────────────────────────────────
  // heroic_measures.pdf — 12pp
  // ──────────────────────────────────────────────────────────────────
  'heroic_measures.pdf': [
    _node('Report of the Heroic Measures Committee', 1),
    _node('I. Introduction', 1),
    _node('II. Biblical Principles', 2),
    _node('III. Principles of Application', 4),
    _node('IV. Preparation for an Encounter with Heroic Measures', 10),
    _node('Resources', 11),
  ],

  // ──────────────────────────────────────────────────────────────────
  // higher_education_1978.pdf — 14pp
  // ──────────────────────────────────────────────────────────────────
  'higher_education_1978.pdf': [
    _node('Report of the Christian Education and Publications Committee', 1),
    _node('Introduction', 1),
    _node('I. Curriculum', 2),
    _node('II. Women in the Church', 3),
    _node('III. The Church\u2019s Role in Higher Education', 3),
    _node('IV. Theological Sub-Committee on Uniform Curriculum', 8),
    _node('V. Promotion', 11),
    _node('VI. Family Ministries', 11),
    _node('VII. Continuing Education', 11),
    _node('VIII. Media', 11),
    _node('IX. Finances', 12),
    _node('X. Recommendations', 12),
    _node('Minority Report', 14),
    _node(
        'Supplemental Report on PCA Equity in Great Commission Publications',
        14),
  ],

  // ──────────────────────────────────────────────────────────────────
  // holy_spirit_pastoral_letter.pdf — 6pp
  // ──────────────────────────────────────────────────────────────────
  'holy_spirit_pastoral_letter.pdf': [
    _node(
        'Report of the Ad Interim Committee to Study the Question of Spiritual Gifts',
        1),
    _node('Proposal for BCO 7-1', 1),
    _node(
        'A Pastoral Letter Concerning the Experience of the Holy Spirit in the Church Today',
        2,
        [
          _node('I. Concerning the Baptism of the Holy Spirit', 2),
          _node('II. Concerning Life in the Spirit', 3),
          _node('III. Concerning the Filling of the Spirit', 3),
          _node('IV. Concerning the Gifts of the Spirit', 4, [
            _node('A. Tongues', 4),
            _node('B. Miracles', 4),
          ]),
        ]),
    _node('Recommendations', 5),
  ],

  // ──────────────────────────────────────────────────────────────────
  // homosexuality_military.pdf — 5pp
  // ──────────────────────────────────────────────────────────────────
  'homosexuality_military.pdf': [
    _node(
        'Overture 16: A Declaration of Conscience Addressed to the President',
        1),
    _node(
        'Communication 4: Resolution on Ban on Homosexuality in the Military',
        5),
  ],

  // ──────────────────────────────────────────────────────────────────
  // homosexuality_rpces_1980.pdf — 8pp
  // ──────────────────────────────────────────────────────────────────
  'homosexuality_rpces_1980.pdf': [
    _node('Report of the Study Committee on Homosexuality', 1),
    _node('I. Theological Considerations', 1, [
      _node('A. Some Theological Reflections on Romans 1:18\u201332', 1),
      _node('B. Theological Chaos Leads to Ethical Chaos', 2),
      _node('C. Call to Repentance', 3),
      _node('D. Call to Obedience', 3),
    ]),
    _node(
        'II. The Repentant Homosexual Brother and Sister in Our Congregation',
        4,
        [
          _node('B. Problems the Homosexual Faces', 4),
          _node('C. How Our Congregations Might Be of Help', 5),
        ]),
    _node('III. Thoughts on Political Issues Concerning Homosexuality', 6),
    _node('IV. Resources', 7),
    _node('V. Recommendation', 8),
  ],

  // ──────────────────────────────────────────────────────────────────
  // judicial_ot_principles.pdf — 10pp
  // ──────────────────────────────────────────────────────────────────
  'judicial_ot_principles.pdf': [
    _node(
        'Principles of Judicial Process Derived From the Old Testament Scriptures',
        1,
        [
          _node('I. Preliminary Remarks', 1),
          _node('II. Hermeneutical Assumptions', 1),
          _node('III. Old Testament Considerations', 2, [
            _node('A. Old Testament Vocabulary', 2),
            _node('B. Old Testament Theology', 3),
            _node('C. The Covenant Lawsuit', 4),
            _node(
                'D. \u201cLaw\u201d and \u201cDiscipline\u201d in the Old Testament',
                6),
          ]),
          _node('IV. The Practice of Biblical Jurisprudence', 6, [
            _node('A. Judicial Authority', 6),
            _node('B. Divine Purpose and Expected Results', 7),
            _node('C. Retribution for the Nonrepentant Sinner', 8),
            _node('D. Special Care in Jurisprudence', 8),
            _node('E. The Risk of Love', 9),
          ]),
          _node('Conclusion', 10),
        ]),
    _node(
        'Principles of Judicial Process From a New Testament Perspective', 10,
        [
          _node('I. Hermeneutic Assumptions', 10),
          _node('II. New Testament Vocabulary', 10),
        ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // judicial_procedural_checklist.pdf — 11pp
  // ──────────────────────────────────────────────────────────────────
  'judicial_procedural_checklist.pdf': [
    _node('Procedural Checklist for PCA BCO Rules of Discipline', 1),
    _node('Prior to First Meeting of Court', 2),
    _node('First Meeting of Court', 2),
    _node('Second Meeting of Court', 3),
    _node('The Trial', 3),
    _node('If Accused Is a Minister', 5),
    _node('Infliction of Church Censures', 5),
    _node('Removal of Church Censures', 6),
    _node('General Review and Control', 7),
    _node('References', 7),
    _node('Appeals', 7),
    _node('Complaints', 9),
    _node('Dissents, Protests, and Objections', 10),
    _node('Jurisdiction', 10),
    _node('Presbytery Judicial Commissions Acting as Appellate Courts', 11),
  ],

  // ──────────────────────────────────────────────────────────────────
  // mercy_ministry.pdf — 15pp
  // ──────────────────────────────────────────────────────────────────
  'mercy_ministry.pdf': [
    _node('Biblical Guidelines for Mercy Ministry in the PCA', 1),
    _node('A. To What Ministry of Mercy Does Christ Call His Church?', 1),
    _node(
        'B. How Is the Ministry of Mercy Ordered in Christ\u2019s Church?',
        6),
    _node('Resulting Guidelines', 11),
    _node('Appendix A: A Historical Survey of the Diaconate', 12, [
      _node('The Early Church', 12),
      _node('The Reformation', 12),
      _node('Later Developments', 13),
      _node('The American Reformed Churches', 14),
    ]),
  ],

  // ──────────────────────────────────────────────────────────────────
  // psalm_singing_1993.pdf — 5pp
  // ──────────────────────────────────────────────────────────────────
  'psalm_singing_1993.pdf': [
    _node('Report of the \u201cPsalm Singing\u201d Subcommittee', 1),
    _node('Introduction', 1),
    _node('Why the Psalms?', 1),
    _node('Recommendations', 4),
  ],

  // ──────────────────────────────────────────────────────────────────
  // racial_reconciliation_2002.pdf — 10pp
  // ──────────────────────────────────────────────────────────────────
  'racial_reconciliation_2002.pdf': [
    _node('Racial Reconciliation', 1),
    _node('Overture 20 from Nashville Presbytery', 5),
    _node('Personal Resolution 6', 6),
  ],

  // ──────────────────────────────────────────────────────────────────
  // religious_persecution.pdf — 5pp
  // ──────────────────────────────────────────────────────────────────
  'religious_persecution.pdf': [
    _node(
        'Statement of Conscience Concerning Worldwide Religious Persecution',
        1),
    _node('Foreword', 1),
    _node('Facts', 1),
    _node('Principles', 2),
    _node('Call to Action', 2),
    _node('Conclusion', 4),
  ],

  // ──────────────────────────────────────────────────────────────────
  // women_military_2002.pdf — 10pp
  // ──────────────────────────────────────────────────────────────────
  'women_military_2002.pdf': [
    _node('Ad Interim Study Committee on Women in Military', 1),
    _node('Final Recommendations to 30th Assembly', 2),
    _node(
        'Final Recommendations of AISCOWIM to 30th General Assembly', 4),
    _node('Minority Report', 6),
    _node('Supplemental Report to the 30th General Assembly', 6),
    _node('Communication 1 from Mississippi Valley Presbytery', 7),
    _node('Communication 2 from Northern California Presbytery', 7),
    _node('Communication 6 from Philadelphia Presbytery', 8),
  ],

  // ──────────────────────────────────────────────────────────────────
  // theological_education_guidelines_1979.pdf — 3pp
  // ──────────────────────────────────────────────────────────────────
  'theological_education_guidelines_1979.pdf': [
    _node('Theological Sub-Committee', 1),
    _node('Model One \u2014 Three Plus One', 2),
    _node('Model Two \u2014 Two Extension Plus Two Serving', 2),
    _node('Model Three \u2014 Two Seminary Plus Two Tutorial', 3),
  ],

  // ──────────────────────────────────────────────────────────────────
  // uniform_curriculum_1978.pdf — 4pp
  // ──────────────────────────────────────────────────────────────────
  'uniform_curriculum_1978.pdf': [
    _node('Scripture', 1),
    _node('Doctrine', 2),
    _node('Practical Theology', 3),
    _node('Personal Theology', 4),
  ],
};
