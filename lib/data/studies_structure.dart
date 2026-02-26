// Structure for the PCA Studies & Reports section.
// PDFs are bundled as assets in assets/studies/.

class StudyDocument {
  final String filename;
  final String title;

  const StudyDocument({required this.filename, required this.title});

  String get assetPath => 'assets/studies/$filename';
}

class StudyCategory {
  final String title;
  final List<StudyDocument> documents;

  const StudyCategory({required this.title, required this.documents});
}

class StudiesStructure {
  static const List<StudyCategory> categories = [
    StudyCategory(
      title: 'Abortion (1978)',
      documents: [
        StudyDocument(filename: 'abortion_1978.pdf', title: 'Report on Abortion (1978)'),
      ],
    ),
    StudyCategory(
      title: 'AIDS (1989)',
      documents: [
        StudyDocument(filename: 'aids_task_force.pdf', title: 'AIDS Task Force Report'),
      ],
    ),
    StudyCategory(
      title: 'Alcohol (1980)',
      documents: [
        StudyDocument(filename: 'alcohol_1980.pdf', title: 'Report on Alcohol (1980)'),
      ],
    ),
    StudyCategory(
      title: 'Apostasy & Separation (1986)',
      documents: [
        StudyDocument(filename: 'apostasy_separation.pdf', title: 'Apostasy and Separation'),
      ],
    ),
    StudyCategory(
      title: 'Baptism (1977\u20131987)',
      documents: [
        StudyDocument(filename: 'baptism_combined.pdf', title: 'Report on Baptism'),
      ],
    ),
    StudyCategory(
      title: 'Biblical Fidelity (1993)',
      documents: [
        StudyDocument(filename: 'biblical_fidelity_1993.pdf', title: 'Biblical Fidelity (1993)'),
      ],
    ),
    StudyCategory(
      title: 'Child Protection (2014)',
      documents: [
        StudyDocument(filename: 'child_protection_2014.pdf', title: 'Child Protection Policy (2014)'),
      ],
    ),
    StudyCategory(
      title: 'Church & State (1988)',
      documents: [
        StudyDocument(filename: 'church_state_combined.pdf', title: 'Report on Church & State'),
      ],
    ),
    StudyCategory(
      title: 'Church Union & Ecumenism (1981\u20131990)',
      documents: [
        StudyDocument(filename: 'church_union.pdf', title: 'Church Union (1981)'),
        StudyDocument(filename: 'ecumenical_principles.pdf', title: 'Ecumenical Principles (1990)'),
      ],
    ),
    StudyCategory(
      title: 'Conflict of Interest (1994)',
      documents: [
        StudyDocument(filename: 'conflict_of_interest.pdf', title: 'Conflict of Interest Policy (1994)'),
      ],
    ),
    StudyCategory(
      title: 'Creation (2000)',
      documents: [
        StudyDocument(filename: 'creation_report.pdf', title: 'Report of the Creation Study Committee'),
      ],
    ),
    StudyCategory(
      title: 'Diaconal Ministries (1978)',
      documents: [
        StudyDocument(filename: 'diaconal_ministries.pdf', title: 'Diaconal Ministries Report'),
      ],
    ),
    StudyCategory(
      title: 'Divorce & Remarriage (1992)',
      documents: [
        StudyDocument(filename: 'divorce_remarriage_complete.pdf', title: 'Report on Divorce & Remarriage'),
      ],
    ),
    StudyCategory(
      title: 'Evangelicals & Catholics Together (1995)',
      documents: [
        StudyDocument(filename: 'evangelicals_catholics.pdf', title: 'Evangelicals & Catholics Together Report'),
      ],
    ),
    StudyCategory(
      title: 'Federal Vision (2007)',
      documents: [
        StudyDocument(filename: 'federal_vision_2007.pdf', title: 'Report on Federal Vision (2007)'),
      ],
    ),
    StudyCategory(
      title: 'Fencing the Lord\'s Table (1991)',
      documents: [
        StudyDocument(filename: 'fencing_lords_table.pdf', title: 'Fencing the Lord\'s Table'),
      ],
    ),
    StudyCategory(
      title: 'Freemasonry (1987\u20131988)',
      documents: [
        StudyDocument(filename: 'freemasonry.pdf', title: 'Report on Freemasonry'),
      ],
    ),
    StudyCategory(
      title: 'Fund Raising (1976)',
      documents: [
        StudyDocument(filename: 'fund_raising_1976.pdf', title: 'Fund Raising Report (1976)'),
      ],
    ),
    StudyCategory(
      title: 'Heroic Measures (1988)',
      documents: [
        StudyDocument(filename: 'heroic_measures.pdf', title: 'Report on Heroic Measures'),
      ],
    ),
    StudyCategory(
      title: 'Higher Education (1978\u20131979)',
      documents: [
        StudyDocument(filename: 'higher_education_1978.pdf', title: 'Higher Education Report (1978)'),
        StudyDocument(filename: 'uniform_curriculum_1978.pdf', title: 'Uniform Curriculum (1978)'),
        StudyDocument(filename: 'theological_education_guidelines_1979.pdf', title: 'Theological Education Guidelines (1979)'),
      ],
    ),
    StudyCategory(
      title: 'Homosexuality (1977\u20131999)',
      documents: [
        StudyDocument(filename: 'homosexuality_overture_1977.pdf', title: 'Overture on Homosexuality (1977)'),
        StudyDocument(filename: 'homosexuality_rpces_1980.pdf', title: 'RPCES Report (1980)'),
        StudyDocument(filename: 'homosexuality_military.pdf', title: 'Homosexuals in the Military'),
        StudyDocument(filename: 'homosexuality_actions_1996.pdf', title: 'Assembly Actions (1996)'),
        StudyDocument(filename: 'homosexuality_resolution_1999.pdf', title: 'Resolution (1999)'),
      ],
    ),
    StudyCategory(
      title: 'Human Sexuality (2021)',
      documents: [
        StudyDocument(filename: 'human_sexuality_2021.pdf', title: 'Report on Human Sexuality (2021)'),
      ],
    ),
    StudyCategory(
      title: 'Humanism (1987)',
      documents: [
        StudyDocument(filename: 'humanism.pdf', title: 'Report on Humanism'),
      ],
    ),
    StudyCategory(
      title: 'Insider Movement (2012\u20132014)',
      documents: [
        StudyDocument(filename: 'insider_movement_2012.pdf', title: 'Insider Movement Report (2012)'),
        StudyDocument(filename: 'insider_movement_2014.pdf', title: 'Insider Movement Report (2014)'),
      ],
    ),
    StudyCategory(
      title: 'Joining & Receiving Members (1981)',
      documents: [
        StudyDocument(filename: 'joining_receiving.pdf', title: 'Joining and Receiving Members'),
      ],
    ),
    StudyCategory(
      title: 'Judicial Procedures (1995\u20131996)',
      documents: [
        StudyDocument(filename: 'judicial_ot_principles.pdf', title: 'Old Testament Principles for Judicial Process'),
        StudyDocument(filename: 'judicial_procedural_checklist.pdf', title: 'Procedural Checklist for BCO Rules of Discipline'),
      ],
    ),
    StudyCategory(
      title: 'Mercy Ministry (1987)',
      documents: [
        StudyDocument(filename: 'mercy_ministry.pdf', title: 'Mercy Ministry Report'),
      ],
    ),
    StudyCategory(
      title: 'Message to All Churches of Jesus Christ (1973)',
      documents: [
        StudyDocument(filename: 'message_1973.pdf', title: 'Message to All Churches of Jesus Christ'),
      ],
    ),
    StudyCategory(
      title: 'NAPARC (1988)',
      documents: [
        StudyDocument(filename: 'naparc_transfer.pdf', title: 'NAPARC Transfer of Members'),
      ],
    ),
    StudyCategory(
      title: 'Nuclear Age (1987)',
      documents: [
        StudyDocument(filename: 'nuclear_age.pdf', title: 'Report on the Nuclear Age'),
      ],
    ),
    StudyCategory(
      title: 'Paedo-Communion (1988)',
      documents: [
        StudyDocument(filename: 'paedo_communion.pdf', title: 'Report on Paedo-Communion'),
      ],
    ),
    StudyCategory(
      title: 'Pornography (1985\u20131986)',
      documents: [
        StudyDocument(filename: 'pornography_resolution.pdf', title: 'Resolution on Pornography (1985)'),
        StudyDocument(filename: 'koop_address_1986.pdf', title: 'Surgeon General Koop Address (1986)'),
      ],
    ),
    StudyCategory(
      title: 'Psalmody (1993)',
      documents: [
        StudyDocument(filename: 'psalm_singing_1993.pdf', title: 'Report on Psalm Singing (1993)'),
      ],
    ),
    StudyCategory(
      title: 'Racial Reconciliation (2002\u20132018)',
      documents: [
        StudyDocument(filename: 'racial_reconciliation_2002.pdf', title: 'Racial Reconciliation Resolution (2002)'),
        StudyDocument(filename: 'racism_pastoral_letter_2004.pdf', title: 'Pastoral Letter on Racism (2004)'),
        StudyDocument(filename: 'racism_pastoral_letter_2016.pdf', title: 'Pastoral Letter on Racism (2016)'),
        StudyDocument(filename: 'racial_reconciliation_2018.pdf', title: 'Racial Reconciliation Report (2018)'),
      ],
    ),
    StudyCategory(
      title: 'Agencies & Committees (1994)',
      documents: [
        StudyDocument(filename: 'agencies_relationship_1994.pdf', title: 'Agencies Relationship Report (1994)'),
      ],
    ),
    StudyCategory(
      title: 'Spiritual Gifts & the Holy Spirit (1974)',
      documents: [
        StudyDocument(filename: 'holy_spirit_pastoral_letter.pdf', title: 'Pastoral Letter on the Holy Spirit (1974)'),
        StudyDocument(filename: 'holy_spirit_pastoral_letter_korean.pdf', title: 'Pastoral Letter \u2014 Korean Translation'),
      ],
    ),
    StudyCategory(
      title: 'Taxation (1983)',
      documents: [
        StudyDocument(filename: 'taxation.pdf', title: 'Report on Taxation'),
        StudyDocument(filename: 'tax_group_exemption.pdf', title: 'Group Tax Exemption'),
      ],
    ),
    StudyCategory(
      title: 'Textbook Censorship (1987)',
      documents: [
        StudyDocument(filename: 'textbook_censorship_1987.pdf', title: 'Textbook Censorship Report (1987)'),
      ],
    ),
    StudyCategory(
      title: 'Theonomy (1979)',
      documents: [
        StudyDocument(filename: 'theonomy.pdf', title: 'Report on Theonomy'),
      ],
    ),
    StudyCategory(
      title: 'Women in the Church (2001\u20132017)',
      documents: [
        StudyDocument(filename: 'women_in_church.pdf', title: 'Women in the Church Report'),
        StudyDocument(filename: 'women_presbytery.pdf', title: 'Women Addressing Presbytery'),
        StudyDocument(filename: 'women_military_2001.pdf', title: 'Women in the Military (2001)'),
        StudyDocument(filename: 'women_military_2002.pdf', title: 'Women in the Military (2002)'),
        StudyDocument(filename: 'women_ministry_2017.pdf', title: 'Women in Ministry (2017)'),
      ],
    ),
    StudyCategory(
      title: 'Worldwide Religious Persecution (1996)',
      documents: [
        StudyDocument(filename: 'religious_persecution.pdf', title: 'Report on Worldwide Religious Persecution'),
      ],
    ),
  ];

  static int get totalDocuments =>
      categories.fold(0, (sum, cat) => sum + cat.documents.length);
}
