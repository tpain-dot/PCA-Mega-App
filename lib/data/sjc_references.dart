// Standing Judicial Commission (SJC) case law references.
//
// Maps specific BCO and Westminster Standards sections to SJC decisions
// that substantively interpret or clarify those provisions.
//
// This file contains curated data — only the primary issues decided
// in each case, not every passing reference.

class SjcReference {
  final String caseNumber;
  final String caseTitle;
  final String year;
  final String pdfUrl;
  final String summary;
  final String outcome;

  const SjcReference({
    required this.caseNumber,
    required this.caseTitle,
    required this.year,
    required this.pdfUrl,
    required this.summary,
    required this.outcome,
  });
}

/// Static repository of SJC case references keyed by section identifier.
///
/// Key formats:
///   BCO sections:   `"bco_34-10"`, `"bco_38-3"`
///   WCF sections:   `"wcf_24"` (chapter 24)
///   WLC questions:  `"wlc_45"` (question 45)
///   WSC questions:  `"wsc_83"` (question 83)
class SjcData {
  SjcData._();

  static const Map<String, List<SjcReference>> references = {
        // ─────────────────────────────────────────────────────────────
    // BCO Ch 1-4 — Preliminary Principles
    // ─────────────────────────────────────────────────────────────
    'bco_1-5': [
      SjcReference(
        caseNumber: '1983-08',
        caseTitle: 'TE Jack Eubanks, et al. vs. Central Carolina Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-08_Eubanks_v_CentralCarolina.pdf',
        summary:
            'Regarding the legality of dissolving and reconstituting the '
                  'Presbytery\'s judicial commission and the power of the '
                  'Presbytery to determine local church membership.',
        outcome: 'Not Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 5-6 — Officers / Communicant Members Rights
    // ─────────────────────────────────────────────────────────────
    'bco_6-4': [
      SjcReference(
        caseNumber: '2023-11',
        caseTitle: 'Psiaki v. Pacific Northwest Presbytery',
        year: '2024',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-11_Psiaki_v_PacificNW.pdf',
        summary:
            'All communicant members, including those under 18, have a '
                  'constitutional right to vote in congregational elections. A '
                  'church\'s bylaws cannot impose a minimum voting age because '
                  'BCO 6-4 grants "all the rights and privileges of the church" '
                  'to communicant members.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 7-8 — Communicant Members / Non-Communicant Members
    // ─────────────────────────────────────────────────────────────
    'bco_8-3': [
      SjcReference(
        caseNumber: '1983-13',
        caseTitle: 'TE Donald A. Codling, et al. vs. Eastern Canada Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-13_Codling_v_ECanada.pdf',
        summary:
            'Presbytery action in denying licensure to a candidate.',
        outcome: '',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 9-10 — Organized Congregation / Mission Churches
    // ─────────────────────────────────────────────────────────────
    'bco_10-2': [
      SjcReference(
        caseNumber: '1983-08',
        caseTitle: 'TE Jack Eubanks, et al. vs. Central Carolina Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-08_Eubanks_v_CentralCarolina.pdf',
        summary:
            'Regarding the legality of dissolving and reconstituting the '
                  'Presbytery\'s judicial commission and the power of the '
                  'Presbytery to determine local church membership.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_10-5': [
      SjcReference(
        caseNumber: '1978-01',
        caseTitle: 'RE James H. Campbell vs. Mid-Atlantic Presbytery',
        year: '1978',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1978-01_Campbell_v_Mid-Atlantic.pdf',
        summary:
            'Receiving a commission report regarding alleged errors of a '
                  'minister.',
        outcome: '',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 11-12 — Presbytery / Organizing New Churches
    // ─────────────────────────────────────────────────────────────
    'bco_11-1': [
      SjcReference(
        caseNumber: '2007-10',
        caseTitle: 'Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2007-09',
        caseTitle: 'Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'P erred by authorizing P commission to act on behalf of S '
                  'and erred by approving actions of committee that filed civil '
                  'action, including restraining order, against Complainant.',
        outcome: 'Sustained',
      ),
    ],
    'bco_11-2': [
      SjcReference(
        caseNumber: '2019-07',
        caseTitle: 'Fozard v. North Texas Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-07_Fozard_v_NorthTX.pdf',
        summary:
            'Therefore, a higher court should not reverse such a judgment '
                  'by a lower court, unless there is clear error on the part of '
                  'the lower court.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2007-10',
        caseTitle: 'Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2007-09',
        caseTitle: 'Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'P erred by authorizing P commission to act on behalf of S '
                  'and erred by approving actions of committee that filed civil '
                  'action, including restraining order, against Complainant.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2004-07',
        caseTitle: 
          'Session of First Presbyterian Augusta v. Savannah River Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-07_FPCAugusta_v_SavannahRiver.pdf',
        summary:
            'P erred when it sustained a C alleging, (1) S erred by '
                  'adding items to docket of congregational meeting and (2) S '
                  'erred by recommending a course of action to congregation.',
        outcome: 'Sustained',
      ),
    ],
    'bco_11-3': [
      SjcReference(
        caseNumber: '2020-05',
        caseTitle: 'Speck v. Missouri Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-05_Speck_v_Missouri.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
    ],
    'bco_11-4': [
      SjcReference(
        caseNumber: '2023-06',
        caseTitle: 'TE Knox Baird et al. v. Grace',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-06_Baird_v_Grace.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-05',
        caseTitle: 'Speck v. Missouri Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-05_Speck_v_Missouri.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
    ],
    'bco_12-1': [
      SjcReference(
        caseNumber: '2018-01',
        caseTitle: 'Mapes v. Metropolitan New York (Appeal)',
        year: '2018',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2018-01_Mapes_v_MetropolitanNY.pdf',
        summary:
            'Therefore, it appears Mapes’ official functions should have '
                  'been restored, thereby triggering the application of BCO '
                  '12-1, which states that where there is no pastor and only '
                  'one ruling elder, “he does not constitute a Session, but he '
                  'should take spiritual oversight of the church, should '
                  'represent.',
        outcome: '',
      ),
    ],
    'bco_12-5': [
      SjcReference(
        caseNumber: '2021-03',
        caseTitle: 'DeJong v. Session of Village Seven Presbyterian Church',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-03_DeJong_v_V7PC_Session.pdf',
        summary:
            'The third motion (adopted with amendments) was to erect a '
                  '“Governance Commission (per BCO chapter 15) to oversee the '
                  'governance of Village Seven Presbyterian Church (as '
                  'described in BCO 12-5) in accord with the document called '
                  '‘Village Seven Governance Commission.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2006-06',
        caseTitle: 'Ehrlich v. North Georgia',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-06_Ehrlich_v_NorthGeorgia.pdf',
        summary:
            'Complaint by two members against their Session\'s warning '
                  'and instruction that the members not distribute a letter to '
                  'the church critical of the pastor and Presbytery.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2004-03',
        caseTitle: 'Harris v. Heritage Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-03_Harris_v_Heritage.pdf',
        summary:
            'S erred by not publishing each minister\'s salary in the '
                  'budget and not asking the congregation to approve all '
                  'changes in terms of call.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2002-10',
        caseTitle: 'Goerig v. Pacific Northwest Presbytery',
        year: '2002',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2002-10_Goerig_v_PacificNorthwest.pdf',
        summary:
            'S removed name from roll per BCO 38-4. Complaint alleged P '
                  'should have sustained C and remanded to S.',
        outcome: 'Sustained',
      ),
    ],
    'bco_12-7': [
      SjcReference(
        caseNumber: '2023-06',
        caseTitle: 'TE Knox Baird et al. v. Grace',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-06_Baird_v_Grace.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 13-14 — Church Orders / Ministers
    // ─────────────────────────────────────────────────────────────
    'bco_13-1': [
      SjcReference(
        caseNumber: '1983-15',
        caseTitle: 'TE W. Ted Smith, Jr. vs. Central Carolina Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-15_Smith_v_CentralCarolina.pdf',
        summary:
            '(See also Cases 27,29, 31, 33) Was Presbytery negligent '
                  'concerning General Assembly directives and BCO '
                  'responsibilities to exercise proper oversight of past and '
                  'present members of a congregation.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_13-2': [
      SjcReference(
        caseNumber: '2025-12',
        caseTitle: 'TE Assis & TE Brown v. South Florida Presbytery',
        year: '2025',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2025-12,%20-13_Assis_and_Brown_v_SFL_final.pdf',
        summary:
            'Ministers do not automatically become "without call" when '
                  'their churches leave the PCA. A pastoral call requires '
                  'formal presbytery action to dissolve; without that action, '
                  'the minister retains his called status.',
        outcome: 'Sustained',
      ),
    ],
    'bco_13-6': [
      SjcReference(
        caseNumber: '2022-21',
        caseTitle: 'TE David Senters v. Savannah River Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-21_Senters_v_Savannah_River.pdf',
        summary:
            'Case partially sustained.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2022-03',
        caseTitle: 'Klett et al. v. Philadelphia',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-03_Klett_v_Philadelphia.pdf',
        summary:
            'Case decided.',
        outcome: 'Decided',
      ),
      SjcReference(
        caseNumber: '2019-02',
        caseTitle: 'Schrock et al. v. Philadelphia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-02_Schrock_v_Philadelphia.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2016-01',
        caseTitle: 'Aven v. Ohio Valley Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-01_Aven_v_OhioValley.pdf',
        summary:
            'Therefore, the Commission sends the matter back to OVP to '
                  'hear further from TE Hickey regarding his stated difference '
                  'in order to create a more comprehensive Record.',
        outcome: '',
      ),
    ],
    'bco_13-9': [
      SjcReference(
        caseNumber: '2016-16',
        caseTitle: '2016-16 Sartorius v Siouxlands',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-16_Sartorius_v_Siouxlands.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2015-06',
        caseTitle: '2015-06 PCA v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-06_PCA_v_SouthFlorida.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2010-14',
        caseTitle: 'Sartorius v. Siouxlands Presbytery',
        year: '2010',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2010-04_Sartorius_v_Siouxlands.pdf',
        summary:
            'P erred in BCO 31-2 investigation of a TE and in failing to '
                  'find a strong presumption of guilt.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2009-06',
        caseTitle: 'Bordwine v. Pacific Northwest Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-06_Bordwine_v_PacificNW.pdf',
        summary:
            'P erred by declining to indict TE Peter Leithart after '
                  'investigation into the views he expressed related to the '
                  'Nine Declarations adopted by the 37th GA in Orlando, '
                  'recommended by the study committee on federal vision.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-10',
        caseTitle: 'Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2007-09',
        caseTitle: 'Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'P erred by authorizing P commission to act on behalf of S '
                  'and erred by approving actions of committee that filed civil '
                  'action, including restraining order, against Complainant.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-08',
        caseTitle: 'Jones v. Louisiana',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-08_Jones_v_Louisiana.pdf',
        summary:
            'P erred in not finding a strong presumption of guilt RE TE '
                  'Wilkins. Jones was joined by seven other complainants.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2006-02',
        caseTitle: 'Memorial of Central Carolina v. Louisiana',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-02_Memorial_of_Central_Carolina.pdf',
        summary:
            'C.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '1990-08',
        caseTitle: 'Bowen v. Eastern Carolina Presbytery',
        year: '1990',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1990-08_Bowen_v_EasternCarolina.pdf',
        summary:
            'we conclude that ECP erred in taking this action to suspend '
                  'a ruling elder of a local church.',
        outcome: '',
      ),
    ],
    'bco_13-10': [
      SjcReference(
        caseNumber: '1983-08',
        caseTitle: 'TE Jack Eubanks, et al. vs. Central Carolina Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-08_Eubanks_v_CentralCarolina.pdf',
        summary:
            'Regarding the legality of dissolving and reconstituting the '
                  'Presbytery\'s judicial commission and the power of the '
                  'Presbytery to determine local church membership.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_14-6': [
      SjcReference(
        caseNumber: '2023-04',
        caseTitle: 'TE Ryan Biese et al. v. TN Valley',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-04_Biese_v_TNValley.pdf',
        summary:
            'Case not sustained.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2016-01',
        caseTitle: 'Aven v. Ohio Valley Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-01_Aven_v_OhioValley.pdf',
        summary:
            'Therefore, the Commission sends the matter back to OVP to '
                  'hear further from TE Hickey regarding his stated difference '
                  'in order to create a more comprehensive Record.',
        outcome: '',
      ),
    ],
    'bco_14-7': [
      SjcReference(
        caseNumber: '2021-13',
        caseTitle: 'Dudt v. Northwest Georgia Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-13_Dudt_v_NWGA.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2009-11',
        caseTitle: 'Edison v. Southwest Florida Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-11-Edison_v_SouthwestFlorida.pdf',
        summary:
            'P sustained transfer exam of TE. Complaint filed against '
                  'that action, and it was sustained. The TE was reexamined, '
                  'but he did not pass. This new Complaint alleged the '
                  'reexamination was unconstitutional.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '1995-11',
        caseTitle: 'Landrum v. Mississippi Valley',
        year: '1995',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1995-11_Landrum_v_MississippiValley.pdf',
        summary:
            'MVP erred by ordaining a man holding certain views on '
                  '"tongues" & "prophecy.',
        outcome: 'Sustained in Part',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 15-16 — Calls / Ministerial Relations
    // ─────────────────────────────────────────────────────────────
    'bco_15-1': [
      SjcReference(
        caseNumber: '2022-21',
        caseTitle: 'TE David Senters v. Savannah River Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-21_Senters_v_Savannah_River.pdf',
        summary:
            'Case partially sustained.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2021-13',
        caseTitle: 'Dudt v. Northwest Georgia Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-13_Dudt_v_NWGA.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2017-02',
        caseTitle: 'Postles et al. v. Heritage Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-02_Postles_v_Heritage.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2012-03',
        caseTitle: 'Tarter v. Evangel Presbytery',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-03_Tarter_v_Evangel.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-10',
        caseTitle: 'Woodward v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'Therefore, since there is no Constitutional error, we give '
                  'great deference to Presbytery in accordance with BCO 39-3 '
                  'since this involves a factual matter which the lower court '
                  'is more competent to determine, because of its proximity to '
                  'the events in question and because of its knowledge and.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2009-09',
        caseTitle: 'Lyons v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'Therefore, since there is no Constitutional error, we give '
                  'great deference to Presbytery in accordance with BCO 39-3 '
                  'since this involves a factual matter which the lower court '
                  'is more competent to determine, because of its proximity to '
                  'the events in question and because of its knowledge and.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2009-08',
        caseTitle: 'Linton v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'Therefore, since there is no Constitutional error, we give '
                  'great deference to Presbytery in accordance with BCO 39-3 '
                  'since this involves a factual matter which the lower court '
                  'is more competent to determine, because of its proximity to '
                  'the events in question and because of its knowledge and.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2009-05',
        caseTitle: 'Payne v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'P erred procedurally in a 31-2 investigation of a TE and '
                  'erred in not fining a strong presumption of guilt.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Morton Smith v. Western Carolina',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'five errors. SJC sustained two due to an illegitimate '
                  'congregational meeting.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2005-09',
        caseTitle: 'Peter B. Kim v. Korean Eastern',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-09_Kim_v_KoreanEastern.pdf',
        summary:
            'SJC agreed P erred in denying his complaint, but that did '
                  'not justify his refusal to obey P\'s directive. And in '
                  'light of the deposition and failed appeal in 2005-08, no '
                  'remedy is necessary or possible.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_15-3': [
      SjcReference(
        caseNumber: '2019-05',
        caseTitle: 'Goggan v. Missouri Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-05_Goggan_v_Missouri.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2017-02',
        caseTitle: 'Postles et al. v. Heritage Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-02_Postles_v_Heritage.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2008-09',
        caseTitle: 'Session of Red Mountain v. Evangel Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-09_RedMountain_v_Evangel.pdf',
        summary:
            'Husband complained to P that S failed to indict his wife for '
                  'pursuing an alleged unbiblical divorce. P sustained '
                  'complaint. Session then filed complaint to SJC.',
        outcome: 'Sustained',
      ),
    ],
    'bco_15-4': [
      SjcReference(
        caseNumber: '2023-04',
        caseTitle: 'TE Ryan Biese et al. v. TN Valley',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-04_Biese_v_TNValley.pdf',
        summary:
            'Case not sustained.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2018-02',
        caseTitle: 'Lewis v. Mississippi Valley Presbytery',
        year: '2018',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2018-02_Lewis_v_MSValley.pdf',
        summary:
            'judgments on the matters noted in the [Central Carolina '
                  'letter] are properly before the SJC under BCO 13-9.f, 40-4, '
                  '40-5 and SJCM 16.1.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '1995-11',
        caseTitle: 'Landrum v. Mississippi Valley',
        year: '1995',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1995-11_Landrum_v_MississippiValley.pdf',
        summary:
            'MVP erred by ordaining a man holding certain views on '
                  '"tongues" & "prophecy.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_16-1': [
      SjcReference(
        caseNumber: '2004-08',
        caseTitle: 'Thornton v. Westminster',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-08_Thornton_v_Westminster.pdf',
        summary:
            'Presbytery erred by not approving a congregation\'s call '
                  'to a TE who had been w/o call (BCO 20-10) and instead began '
                  'divestiture process of BCO 34-10.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 19-20 — Ruling Elders and Deacons
    // ─────────────────────────────────────────────────────────────
    'bco_19-2': [
      SjcReference(
        caseNumber: '2008-10',
        caseTitle: 'Grasso v. Philadelphia',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-01_Crossroads_v_Philadelphia.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-01',
        caseTitle: 'Session of Crossroads Community v. Philadelphia',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-01_Crossroads_v_Philadelphia.pdf',
        summary:
            'P erred by licensing a man with his view that women can '
                  'serve as deacons (but would not practice or implement his '
                  'view). Also alleged P erred by later ordaining him.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_19-6': [
      SjcReference(
        caseNumber: '2009-11',
        caseTitle: 'Edison v. Southwest Florida Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-11-Edison_v_SouthwestFlorida.pdf',
        summary:
            'P sustained transfer exam of TE. Complaint filed against '
                  'that action, and it was sustained. The TE was reexamined, '
                  'but he did not pass. This new Complaint alleged the '
                  'reexamination was unconstitutional.',
        outcome: 'Sustained',
      ),
    ],
    'bco_20-1': [
      SjcReference(
        caseNumber: '2004-03',
        caseTitle: 'Harris v. Heritage Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-03_Harris_v_Heritage.pdf',
        summary:
            'S erred by not publishing each minister\'s salary in the '
                  'budget and not asking the congregation to approve all '
                  'changes in terms of call.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_20-6': [
      SjcReference(
        caseNumber: '2004-03',
        caseTitle: 'Harris v. Heritage Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-03_Harris_v_Heritage.pdf',
        summary:
            'S erred by not publishing each minister\'s salary in the '
                  'budget and not asking the congregation to approve all '
                  'changes in terms of call.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_20-10': [
      SjcReference(
        caseNumber: '2011-14',
        caseTitle: 'Reese & Bech v. Philadelphia Presbytery',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-14_Reese%26Bech_v_Philadelphia.pdf',
        summary:
            'Two REs alleged P erred by declaring their C out of order, '
                  'which alleged P erred by not allowing questions to be raised '
                  'when considering a minister\'s new call. BCO 21-1, 21-10 '
                  'See also 2008-01 and -10.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 21-22 — The Session / The Session Meetings
    // ─────────────────────────────────────────────────────────────
    'bco_21-1': [
      SjcReference(
        caseNumber: '2011-14',
        caseTitle: 'Reese & Bech v. Philadelphia Presbytery',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-14_Reese%26Bech_v_Philadelphia.pdf',
        summary:
            'Two REs alleged P erred by declaring their C out of order, '
                  'which alleged P erred by not allowing questions to be raised '
                  'when considering a minister\'s new call. BCO 21-1, 21-10 '
                  'See also 2008-01 and -10.',
        outcome: 'Sustained',
      ),
    ],
    'bco_21-4': [
      SjcReference(
        caseNumber: '2019-02',
        caseTitle: 'Schrock et al. v. Philadelphia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-02_Schrock_v_Philadelphia.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-10',
        caseTitle: 'Grasso v. Philadelphia',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-01_Crossroads_v_Philadelphia.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-01',
        caseTitle: 'Session of Crossroads Community v. Philadelphia',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-01_Crossroads_v_Philadelphia.pdf',
        summary:
            'P erred by licensing a man with his view that women can '
                  'serve as deacons (but would not practice or implement his '
                  'view). Also alleged P erred by later ordaining him.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2007-08',
        caseTitle: 'Jones v. Louisiana',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-08_Jones_v_Louisiana.pdf',
        summary:
            'P erred in not finding a strong presumption of guilt RE TE '
                  'Wilkins. Jones was joined by seven other complainants.',
        outcome: 'Sustained',
      ),
    ],
    'bco_21-5': [
      SjcReference(
        caseNumber: '2009-07',
        caseTitle: 'Urish v. Rocky Mountain Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-07_Urish_v_RockyMountain.pdf',
        summary:
            'P erred by ordaining a man who held that women could, under '
                  'Session authority, do any teaching in a church other than '
                  'preaching. (Interpretation of 1 Timothy 2:12)',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2008-10',
        caseTitle: 'Grasso v. Philadelphia',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-01_Crossroads_v_Philadelphia.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-01',
        caseTitle: 'Session of Crossroads Community v. Philadelphia',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-01_Crossroads_v_Philadelphia.pdf',
        summary:
            'P erred by licensing a man with his view that women can '
                  'serve as deacons (but would not practice or implement his '
                  'view). Also alleged P erred by later ordaining him.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2005-08',
        caseTitle: 'Appeal of Peter B. Kim v. Korean Eastern',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-08_Kim_v_KoreanEastern.pdf',
        summary:
            'Convicted of being "contumacious against the authority of '
                  'Presbytery." Deposed and excommunicated. SJC upholds '
                  'conviction but reduces excommunication to indefinite '
                  'suspension from sacraments.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2005-01',
        caseTitle: 'Appeal of Chastain v. Heritage',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-01_Chastain_v_Heritage.pdf',
        summary:
            'charge was unlawful, verdict was wrong, censure was unjust, '
                  'and reversible errors in process. After SJC Decision, an '
                  'Objection was filed by the TE who assisted in TE '
                  'Chastain\'s defense. Protest filed by 8 TEs and 1 RE, from '
                  '8 Presbyteries.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '1990-08',
        caseTitle: 'Bowen v. Eastern Carolina Presbytery',
        year: '1990',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1990-08_Bowen_v_EasternCarolina.pdf',
        summary:
            'we conclude that ECP erred in taking this action to suspend '
                  'a ruling elder of a local church.',
        outcome: '',
      ),
    ],
    'bco_22-3': [
      SjcReference(
        caseNumber: '2007-13',
        caseTitle: 'Kniseley v. Rocky Mountain',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-13_Kniseley_v_RockyMountain.pdf',
        summary:
            'P erred by allowing a church to title a female staff person '
                  'as Minister of Church Life.',
        outcome: 'Not Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 23-26 — Pastoral Relationships / Congregational Meetings
    // ─────────────────────────────────────────────────────────────
    'bco_23-1': [
      SjcReference(
        caseNumber: '2025-12',
        caseTitle: 'TE Assis & TE Brown v. South Florida Presbytery',
        year: '2025',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2025-12,%20-13_Assis_and_Brown_v_SFL_final.pdf',
        summary:
            'A pastoral call is a three-way agreement (minister, calling '
                  'body, and presbytery) whose dissolution requires formal '
                  'presbytery action under BCO 23-1. A church\'s departure from '
                  'the PCA does not automatically dissolve the call.',
        outcome: 'Sustained',
      ),
    ],
    'bco_24-1': [
      SjcReference(
        caseNumber: '2019-03',
        caseTitle: 'Crouse v. NW Georgia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-03_Crouse_v_NWGeorgia.pdf',
        summary:
            'judgment, the SJC doubled down on their decision by '
                  'suggesting that if a Session desires “greater flexibility” '
                  'in the requirements found in BCO 24-1, it should pursue a '
                  'change to the Constitution.',
        outcome: '',
      ),
    ],
    'bco_24-3': [
      SjcReference(
        caseNumber: '2023-11',
        caseTitle: 'Psiaki v. Pacific Northwest Presbytery',
        year: '2024',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-11_Psiaki_v_PacificNW.pdf',
        summary:
            'The phrase "good and regular standing" in BCO 24-3 refers '
                  'only to whether a member is under censure, not to age. '
                  'Sessions may not impose additional voting restrictions '
                  'beyond those in the BCO.',
        outcome: 'Sustained',
      ),
    ],
    'bco_24-6': [
      SjcReference(
        caseNumber: '2004-07',
        caseTitle: 
          'Session of First Presbyterian Augusta v. Savannah River Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-07_FPCAugusta_v_SavannahRiver.pdf',
        summary:
            'P erred when it sustained a C alleging, (1) S erred by '
                  'adding items to docket of congregational meeting and (2) S '
                  'erred by recommending a course of action to congregation.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '1990-08',
        caseTitle: 'Bowen v. Eastern Carolina Presbytery',
        year: '1990',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1990-08_Bowen_v_EasternCarolina.pdf',
        summary:
            'we conclude that ECP erred in taking this action to suspend '
                  'a ruling elder of a local church.',
        outcome: '',
      ),
    ],
    'bco_24-7': [
      SjcReference(
        caseNumber: '2019-11',
        caseTitle: 'Crouse v. NW Georgia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-11_Crouse_v_NWGeorgia.pdf',
        summary:
            'Therefore, a higher court should not reverse such a judgment '
                  'by a lower court, unless there is clear error on the part of '
                  'the lower court.',
        outcome: 'Sustained',
      ),
    ],
    'bco_25-1': [
      SjcReference(
        caseNumber: '2023-11',
        caseTitle: 'Psiaki v. Pacific Northwest Presbytery',
        year: '2024',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-11_Psiaki_v_PacificNW.pdf',
        summary:
            'BCO 25-1 confirms that "all communing members" of a '
                  'particular church are entitled to vote, reinforcing that no '
                  'age-based restrictions may be imposed beyond communicant '
                  'member status.',
        outcome: 'Sustained',
      ),
    ],
    'bco_25-2': [
      SjcReference(
        caseNumber: '2005-09',
        caseTitle: 'Peter B. Kim v. Korean Eastern',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-09_Kim_v_KoreanEastern.pdf',
        summary:
            'SJC agreed P erred in denying his complaint, but that did '
                  'not justify his refusal to obey P\'s directive. And in '
                  'light of the deposition and failed appeal in 2005-08, no '
                  'remedy is necessary or possible.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2004-07',
        caseTitle: 
          'Session of First Presbyterian Augusta v. Savannah River Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-07_FPCAugusta_v_SavannahRiver.pdf',
        summary:
            'P erred when it sustained a C alleging, (1) S erred by '
                  'adding items to docket of congregational meeting and (2) S '
                  'erred by recommending a course of action to congregation.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 27-28 — Presbytery
    // ─────────────────────────────────────────────────────────────
    'bco_27-1': [
      SjcReference(
        caseNumber: '2009-28',
        caseTitle: 'Ruff v. Nashville',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-28_Ruff_v_Nashville.pdf',
        summary:
            'P did an inadequate BCO 31-2 investigation of a TE and erred '
                  'in declining to indict.',
        outcome: 'Sustained',
      ),
    ],
    'bco_27-3': [
      SjcReference(
        caseNumber: '2011-15',
        caseTitle: 
          'Hahn v. Philadelphia Metro West. (also Cases 2011-11 and 2011-12)',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-15_Hahn_v_PhilaMetroWest.pdf',
        summary:
            'P erred by not instituting process against three people against',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_27-5': [
      SjcReference(
        caseNumber: '2019-05',
        caseTitle: 'Goggan v. Missouri Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-05_Goggan_v_Missouri.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2019-01',
        caseTitle: 'Dodson et al. v. Ohio Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-01_Dodson_v_Ohio.pdf',
        summary:
            'Teaching parents and the congregation on this topic will '
                  'often require book referrals, pastoral counsel, gentle '
                  'admonition (BCO 27-5.',
        outcome: '',
      ),
    ],
    'bco_28-5': [
      SjcReference(
        caseNumber: '1978-01',
        caseTitle: 'RE James H. Campbell vs. Mid-Atlantic Presbytery',
        year: '1978',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1978-01_Campbell_v_Mid-Atlantic.pdf',
        summary:
            'Receiving a commission report regarding alleged errors of a '
                  'minister.',
        outcome: '',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 29-30 — The Synod / General Assembly
    // ─────────────────────────────────────────────────────────────
    'bco_29-1': [
      SjcReference(
        caseNumber: '2022-07',
        caseTitle: 'Appeal of Harrell et al. v. Covenant Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-07_Harrell_v_Covenant.pdf',
        summary:
            'Therefore, if the prosecutor has the ability or capacity '
                  'under the circumstances to include more reasonable '
                  'specificity, he is obliged to do so, at least to the extent '
                  'that fairness would require.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2019-11',
        caseTitle: 'Crouse v. NW Georgia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-11_Crouse_v_NWGeorgia.pdf',
        summary:
            'Therefore, a higher court should not reverse such a judgment '
                  'by a lower court, unless there is clear error on the part of '
                  'the lower court.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2011-15',
        caseTitle: 
          'Hahn v. Philadelphia Metro West. (also Cases 2011-11 and 2011-12)',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-15_Hahn_v_PhilaMetroWest.pdf',
        summary:
            'P erred by not instituting process against three people against',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2009-06',
        caseTitle: 'Bordwine v. Pacific Northwest Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-06_Bordwine_v_PacificNW.pdf',
        summary:
            'P erred by declining to indict TE Peter Leithart after '
                  'investigation into the views he expressed related to the '
                  'Nine Declarations adopted by the 37th GA in Orlando, '
                  'recommended by the study committee on federal vision.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2006-06',
        caseTitle: 'Ehrlich v. North Georgia',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-06_Ehrlich_v_NorthGeorgia.pdf',
        summary:
            'Complaint by two members against their Session\'s warning '
                  'and instruction that the members not distribute a letter to '
                  'the church critical of the pastor and Presbytery.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_30-1': [
      SjcReference(
        caseNumber: '2005-01',
        caseTitle: 'Appeal of Chastain v. Heritage',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-01_Chastain_v_Heritage.pdf',
        summary:
            'charge was unlawful, verdict was wrong, censure was unjust, '
                  'and reversible errors in process. After SJC Decision, an '
                  'Objection was filed by the TE who assisted in TE '
                  'Chastain\'s defense. Protest filed by 8 TEs and 1 RE, from '
                  '8 Presbyteries.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_30-2': [
      SjcReference(
        caseNumber: '2007-12',
        caseTitle: 'Grady v. Southwest Florida',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-12_Grady_v_SouthwestFlorida.pdf',
        summary:
            'SJC ruled P erred by including in its Minutes a Committee '
                  'report with a finding of sins and errors of a TE. SJC ruled '
                  'that action essentially imposed censure of Admonition '
                  'without due process.',
        outcome: 'Sustained',
      ),
    ],
    'bco_30-3': [
      SjcReference(
        caseNumber: '2023-09',
        caseTitle: 'Appeal of TE Myers v. Illiana',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-09_Myers_v_Illiana.pdf',
        summary:
            'When an offender is indefinitely suspended from the '
                  'Sacraments that censure is to be “administered to the '
                  'impenitent offender until he exhibits signs of repentance, '
                  'or until by his conduct, the necessity of the greatest '
                  'censure be made manifest” (BCO 30-3).',
        outcome: 'Sustained',
      ),
    ],
    'bco_30-4': [
      SjcReference(
        caseNumber: '2023-09',
        caseTitle: 'Appeal of TE Myers v. Illiana',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-09_Myers_v_Illiana.pdf',
        summary:
            'When an offender is indefinitely suspended from the '
                  'Sacraments that censure is to be “administered to the '
                  'impenitent offender until he exhibits signs of repentance, '
                  'or until by his conduct, the necessity of the greatest '
                  'censure be made manifest” (BCO 30-3).',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 31-33 — Discipline
    // ─────────────────────────────────────────────────────────────
    'bco_31-2': [
      SjcReference(
        caseNumber: '2022-04',
        caseTitle: 'Sheppard v. Highlands Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-04_Sheppard_v_Highlands.pdf',
        summary:
            'The SJC ruled that BCO 31-2 unambiguously requires a court to '
                'institute process once it determines a strong presumption of '
                'guilt, and a court has no discretion to substitute a pastoral '
                'approach instead. The court held that Highlands Presbytery '
                'erred by finding a strong presumption of guilt against a '
                'teaching elder but then deferring to a shepherding committee '
                'rather than proceeding to judicial process, and further held '
                'that the conditional motion (threatening process if '
                'reconciliation failed) was improper because it damaged the '
                'accused\'s right against self-incrimination.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2021-06',
        caseTitle: 'Herron v. Central Indiana Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-06_Herron_v_CIP.pdf',
        summary:
            'The SJC held that BCO 31-2 leaves the standards for \'due '
                'diligence,\' \'great discretion,\' and \'satisfactory '
                'explanations\' to the judgment of the lower court, and that '
                'the primary purpose of a 31-2 investigation is to determine '
                'whether the threshold of a strong presumption of guilt is '
                'met. The court also held that once a court finds a strong '
                'presumption of guilt, it must proceed to trial and has no '
                'option to decline to institute process, and that a minister '
                'under 31-2 investigation who is suspended under BCO 31-10 '
                'still retains rights to presbytery minutes and meetings as a '
                'member of the court.',
        outcome: 'Sustained in part, denied in part',
      ),
      SjcReference(
        caseNumber: '2020-12',
        caseTitle: 'Speck v. Missouri Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-12_Speck_v_Missouri.pdf',
        summary:
            'The SJC denied the complaint and held that Missouri Presbytery '
                'did not clearly err in its BCO 31-2 investigation of a '
                'teaching elder when, after conducting an extensive 97-page '
                'investigation, it declined to find a strong presumption of '
                'guilt. The court found that the presbytery exercised the '
                'requisite \'due diligence and great discretion\' in seeking '
                'explanations and that the decision not to indict was a '
                'reasonable exercise of judgment entitled to deference under '
                'BCO 39-3.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2016-09',
        caseTitle: 'Fordice v. Pacific Northwest Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-09_Fordice_v_PacificNW.pdf',
        summary:
            'The SJC ruled that while BCO 31-2 requires process upon a '
                'finding of strong presumption of guilt, a court may properly '
                'use BCO 38-1 (case without process via confession) in lieu of '
                'a full trial when the accused voluntarily confesses. However, '
                'the statement of facts in a 38-1 confession must constitute a '
                '\'full statement\' that fairly covers all the issues raised '
                'during the 31-2 investigation, and the court erred by '
                'accepting a confession that addressed only a fraction of the '
                'allegations underlying the strong-presumption finding.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2011-18',
        caseTitle: 'Ruff v. Nashville Presbytery',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-18_Ruff_v_Nashville.pdf',
        summary:
            'The SJC held that a BCO 31-2 investigation may properly '
                'conclude through a BCO 38-1 case without process when the '
                'accused voluntarily confesses, but the confession must be a '
                'full statement of facts that adequately addresses all matters '
                'raised during the investigation. The court found that '
                'Nashville Presbytery erred by accepting an abstract '
                'confession that failed to acknowledge particular sins against '
                'particular people, when the investigation had been triggered '
                'by reports of specific offenses against specific individuals.',
        outcome: 'Sustained in part',
      ),
      SjcReference(
        caseNumber: '2009-28',
        caseTitle: 'Ruff v. Nashville Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-28_Ruff_v_Nashville.pdf',
        summary:
            'The SJC ruled that Nashville Presbytery failed to conduct an '
                'adequate BCO 31-2 investigation, establishing several key '
                'principles: (1) a presbytery must document, either through a '
                'written report or in its minutes, the work conducted by its '
                'investigating body to satisfy its duties under 31-2; (2) the '
                'sole purpose of a 31-2 investigation is to determine whether '
                'a strong presumption of guilt exists, not to convict or '
                'absolve; (3) the duty to proceed pastorally does not relieve '
                'a presbytery of its parallel responsibility to act '
                'judicially; and (4) when behavior is described as \'sin\' by '
                'the investigating body, the court must explain why there is '
                'no strong presumption that an offense occurred.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-05',
        caseTitle:
            'Payne, Linton, Lyons, Woodward v. Western Carolina Presbytery '
                '(Consolidated)',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'The SJC held that BCO 31-2 does not specify particular '
                'procedures for a court to follow during investigations; it '
                'enjoins \'due diligence\' but also affords \'great '
                'discretion.\' The court ruled that 31-2 does not stipulate a '
                'timeline, composition of the investigating body, or interview '
                'requirements, and that a court has far more flexibility '
                'during the investigation phase than after it has instituted '
                'process. The SJC also clarified that a presbytery clerk or '
                'moderator does not have authority to unilaterally initiate a '
                '31-2 investigation; that authority belongs to the presbytery '
                'itself.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2009-06',
        caseTitle: 'Bordwine v. Pacific Northwest Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-06_Bordwine_v_PacificNW.pdf',
        summary:
            'The SJC ruled that a presbytery may not, without formal '
                'judicial process, declare a teaching elder\'s views to be '
                'either in accord or out of accord with the doctrinal '
                'standards. The court held that when the record suggests a '
                'strong presumption of guilt that a teaching elder\'s views '
                'constitute offenses under BCO 31-2, the presbytery must '
                'either counsel the elder pastorally under BCO 31-7 or take '
                'steps to comply with its obligations under 31-2 by '
                'instituting process.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'M.H. Smith v. Western Carolina Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'The SJC held that once a BCO 31-2 investigation has commenced '
                'and resulted in a finding of strong presumption of guilt, the '
                'court must institute process (appoint a prosecutor, indict, '
                'and proceed to trial) and cannot instead administratively '
                '\'declare\' a view to be out of accord with the Constitution. '
                'The court explained that a BCO 15-1 commission authorized for '
                'a \'limited judicial task\' under 31-2 may make findings on '
                'presumption of guilt that are entered on presbytery minutes '
                'as the action of presbytery, but only the presbytery itself '
                'may institute formal judicial process.',
        outcome: 'Sustained in part',
      ),
      SjcReference(
        caseNumber: '2008-14',
        caseTitle: 'White v. Siouxlands Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-14_White_v_Siouxlands.pdf',
        summary:
            'The SJC provided a foundational interpretation of BCO 31-2, '
                'holding that \'reports\' triggering the duty to investigate '
                'means information \'known by common fame\' or \'general '
                'rumor\' that is injurious to Christian character and '
                'credible. The court ruled that the threshold for initiating a '
                '31-2 investigation is not the standard of evidence required '
                'for conviction at trial, nor even the standard for a strong '
                'presumption of guilt; rather, \'hearsay\' that is credible '
                'and injurious to Christian character is precisely the sort of '
                'information countenanced by 31-2 as leading to '
                'investigation. The presbytery erred by applying trial-level '
                'evidentiary standards to refuse to investigate.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-09',
        caseTitle: 'Red Mountain v. Evangel Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-09_RedMountain_v_Evangel.pdf',
        summary:
            'The SJC held that while a session may consider and rule on '
                'requests apart from the formal provisions of BCO 31-2, the '
                'nature of a request and the relief sought may make BCO 31-2 '
                'investigation the appropriate framework. The court ruled that '
                'it was not improper for the session to use a \'strong '
                'presumption of guilt\' standard when the complainant\'s '
                'request effectively called for the session to investigate and '
                'potentially prosecute a charge against a member.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-12',
        caseTitle: 'Grady v. Southwest Florida Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-12_Grady_v_SouthwestFlorida.pdf',
        summary:
            'The SJC ruled that while a presbytery committee may reach an '
                'opinion during a BCO 31-2 investigation that a teaching '
                'elder has engaged in \'sins and errors,\' the presbytery may '
                'not adopt or endorse such findings as its own action without '
                'due process. By concurring in a committee report containing '
                'findings of sin and directing it be read to the congregation, '
                'the presbytery effectively imposed the censure of admonition '
                'without judicial process, which violated BCO 30-2.',
        outcome: 'Sustained',
      ),
    ],

    'bco_31-5': [
      SjcReference(
        caseNumber: '2008-14',
        caseTitle: 'White v. Siouxlands Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-14_White_v_Siouxlands.pdf',
        summary:
            'P erred by not appointing a BCO 31-2 committee to '
                  'investigate a minister\'s alleged Federal Vision view.',
        outcome: 'Sustained',
      ),
    ],
    'bco_31-7': [
      SjcReference(
        caseNumber: '2008-14',
        caseTitle: 'White v. Siouxlands Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-14_White_v_Siouxlands.pdf',
        summary:
            'P erred by not appointing a BCO 31-2 committee to '
                  'investigate a minister\'s alleged Federal Vision view.',
        outcome: 'Sustained',
      ),
    ],
    'bco_31-10': [
      SjcReference(
        caseNumber: '2015-08',
        caseTitle: '2015-08 Hardie v MetroAtlanta',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-08_Hardie_v_MetroAtlanta.pdf',
        summary:
            'therefore, to give “great deference” to MAP’s decision and '
                  'to reverse only if there is “clear error.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2007-16',
        caseTitle: 'Appeal of Grady v. Southwest Florida',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-16_Grady_v_SWFlorida.pdf',
        summary:
            'TE guilty at trial on three charges and indefinitely '
                  'suspended from office. Appeal alleged seven specifications '
                  'of error. SJC sustained convictions but vacated suspension '
                  'and dissolution of call and remanded to P for '
                  'reconsideration of both.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_32-2': [
      SjcReference(
        caseNumber: '2016-07',
        caseTitle: '2016-07 Avery&Lewelling v Nashville',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-07_Avery%26Lewelling_v_Nashville.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
    ],
    'bco_32-3': [
      SjcReference(
        caseNumber: '2021-11',
        caseTitle: 'Park et al. v. Korean Central Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-11_Park_v_KCP.pdf',
        summary:
            'Case not sustained.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2019-04',
        caseTitle: 'Williams v. Chesapeake Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-04_Williams_v_Chesapeake.pdf',
        summary:
            'It is important to note that the reasoning and opinion above '
                  'is applicable to this case only and should not be taken to '
                  'be an exposition of whether a matter that begins as a case '
                  'of process may ever be converted to a case without process '
                  'under BCO 38-1.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2007-11',
        caseTitle: 'Appeal of Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-11_Lee_v_KoreanEastern.pdf',
        summary:
            'SJC ruled P erred in proceeding to trial and reversed the '
                  'deposition and excommunication.',
        outcome: 'Sustained',
      ),
    ],
    'bco_32-5': [
      SjcReference(
        caseNumber: '2022-07',
        caseTitle: 'Appeal of Harrell et al. v. Covenant Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-07_Harrell_v_Covenant.pdf',
        summary:
            'Therefore, if the prosecutor has the ability or capacity '
                  'under the circumstances to include more reasonable '
                  'specificity, he is obliged to do so, at least to the extent '
                  'that fairness would require.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2005-01',
        caseTitle: 'Appeal of Chastain v. Heritage',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-01_Chastain_v_Heritage.pdf',
        summary:
            'charge was unlawful, verdict was wrong, censure was unjust, '
                  'and reversible errors in process. After SJC Decision, an '
                  'Objection was filed by the TE who assisted in TE '
                  'Chastain\'s defense. Protest filed by 8 TEs and 1 RE, from '
                  '8 Presbyteries.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_32-6': [
      SjcReference(
        caseNumber: '2015-11',
        caseTitle: '2015-11 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-11_Thompson_v_SouthFlorida.pdf',
        summary:
            'Judgment on June 28, 2015.) While that phrase might appear '
                  'to be subjective, its location in BCO 32-6 and the fact that '
                  'it is immediately censurable points to it being objective '
                  'instead.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2005-08',
        caseTitle: 'Appeal of Peter B. Kim v. Korean Eastern',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-08_Kim_v_KoreanEastern.pdf',
        summary:
            'Convicted of being "contumacious against the authority of '
                  'Presbytery." Deposed and excommunicated. SJC upholds '
                  'conviction but reduces excommunication to indefinite '
                  'suspension from sacraments.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_32-8': [
      SjcReference(
        caseNumber: '1978-01',
        caseTitle: 'RE James H. Campbell vs. Mid-Atlantic Presbytery',
        year: '1978',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1978-01_Campbell_v_Mid-Atlantic.pdf',
        summary:
            'Receiving a commission report regarding alleged errors of a '
                  'minister.',
        outcome: '',
      ),
    ],
    'bco_32-10': [
      SjcReference(
        caseNumber: '2007-11',
        caseTitle: 'Appeal of Eliot Lee v. Korean Eastern',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-11_Lee_v_KoreanEastern.pdf',
        summary:
            'SJC ruled P erred in proceeding to trial and reversed the '
                  'deposition and excommunication.',
        outcome: 'Sustained',
      ),
    ],
    'bco_32-13': [
      SjcReference(
        caseNumber: '2012-03',
        caseTitle: 'Tarter v. Evangel Presbytery',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-03_Tarter_v_Evangel.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
    ],
    'bco_32-14': [
      SjcReference(
        caseNumber: '2015-04',
        caseTitle: '2015-04 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-04_Thompson_v_SouthFlorida.pdf',
        summary:
            'Case not sustained.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2015-03',
        caseTitle: '2015-03 Flesher&Weekly v MetroAtlanta',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-03_Flesher%26Weekly_v_MetroAtlanta.pdf',
        summary:
            'DECISION ON COMPLAINT MARCH 3, 2016 The SJC finds the '
                  'Complaint judicially out of order as the objections raised '
                  'in the Complaint ought to be raised by a defendant during '
                  'process with the court of original jurisdiction (BCO 32-14), '
                  'or thereafter, if not satisfied, by an appellant on appeal '
                  '(BCO.',
        outcome: '',
      ),
    ],
    'bco_32-17': [
      SjcReference(
        caseNumber: '1997-09',
        caseTitle: 'Appeal of Dr. Shive v. Central Carolina',
        year: '1997',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1997-09_Shive_v_CentralCarolina.pdf',
        summary:
            'errors. SJC sustained on one, ruling S erred by '
                  'excommunicating instead of imposing a lesser censure. '
                  'Remanded for imposition of indef susp from sacraments.',
        outcome: 'Sustained',
      ),
    ],
    'bco_32-20': [
      SjcReference(
        caseNumber: '2019-08',
        caseTitle: 'Ganzel v. Central Florida Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-08_Ganzel_v_CentralFL.pdf',
        summary:
            'Central Florida Presbytery RE Howie Donahoe I agree this '
                  'Appeal should be sustained, because I agree with the '
                  'SJC\'s conclusion that it involved "a disciplinary process '
                  'that was significantly flawed and prejudicial against the '
                  'Appellant.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2016-05',
        caseTitle: '2016-05 Troxell v Southwest',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-05_Troxell_v_Southwest.pdf',
        summary:
            'therefore left with a record that shows that PSW voted to '
                  'institute process in September 2015 for an offense that '
                  'occurred in June 2014; the fifteen (15) month delay does not '
                  'meet the standard specified in BCO 32-20.',
        outcome: '',
      ),
    ],
    'bco_33-1': [
      SjcReference(
        caseNumber: '2008-11',
        caseTitle: 'Broadwater v. Chesapeake Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-11_Broadwater_v_Chesapeake.pdf',
        summary:
            'P erred by granting a BCO 33-1 petition from three Sessions '
                  'and appointing a Commission to assume original jurisdiction '
                  'over a church.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 34-36 — Special Cases / Process
    // ─────────────────────────────────────────────────────────────
    'bco_34-1': [
      SjcReference(
        caseNumber: '2022-11',
        caseTitle: 'BCO 34-1 Petitions re: Central Indiana Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-11_Petitions_re_Central_Indiana.pdf',
        summary:
            'Therefore, consideration of these Petitions was postponed '
                  'until after the final decision was rendered in Case 2022-10 '
                  'PCA v.',
        outcome: 'Refer to Other Case',
      ),
      SjcReference(
        caseNumber: '2018-02',
        caseTitle: 'Lewis v. Mississippi Valley Presbytery',
        year: '2018',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2018-02_Lewis_v_MSValley.pdf',
        summary:
            'judgments on the matters noted in the [Central Carolina '
                  'letter] are properly before the SJC under BCO 13-9.f, 40-4, '
                  '40-5 and SJCM 16.1.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2004-08',
        caseTitle: 'Thornton v. Westminster',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-08_Thornton_v_Westminster.pdf',
        summary:
            'Presbytery erred by not approving a congregation\'s call '
                  'to a TE who had been w/o call (BCO 20-10) and instead began '
                  'divestiture process of BCO 34-10.',
        outcome: 'Sustained',
      ),
    ],
    'bco_34-10': [
      SjcReference(
        caseNumber: '2025-12',
        caseTitle: 'TE Assis & TE Brown v. South Florida Presbytery',
        year: '2025',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2025-12,%20-13_Assis_and_Brown_v_SFL_final.pdf',
        summary:
            'BCO 34-10 requires a finding of habitual failure to '
                  'discharge official functions and lack of acceptance to the '
                  'Church. It cannot be applied to ministers actively '
                  'discharging their functions who remain acceptable to their '
                  'churches, even if those churches are departing the PCA.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2023-07',
        caseTitle: 'TE Evans v. Arizona Presbytery',
        year: '2024',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-07_Evans_v_Arizona.pdf',
        summary:
            'A presbytery may not initiate divestiture under BCO 34-10 '
                  'against a minister who has already lawfully withdrawn by '
                  'affiliating with another denomination under BCO 38-3.a. Once '
                  'jurisdiction is lost through withdrawal, divestiture is '
                  'inapplicable.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2004-08',
        caseTitle: 'Thornton v. Westminster',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-08_Thornton_v_Westminster.pdf',
        summary:
            'Presbytery erred by not approving a congregation\'s call '
                  'to a TE who had been w/o call (BCO 20-10) and instead began '
                  'divestiture process of BCO 34-10.',
        outcome: 'Sustained',
      ),
    ],
    'bco_35-3': [
      SjcReference(
        caseNumber: '2007-16',
        caseTitle: 'Appeal of Grady v. Southwest Florida',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-16_Grady_v_SWFlorida.pdf',
        summary:
            'TE guilty at trial on three charges and indefinitely '
                  'suspended from office. Appeal alleged seven specifications '
                  'of error. SJC sustained convictions but vacated suspension '
                  'and dissolution of call and remanded to P for '
                  'reconsideration of both.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_35-5': [
      SjcReference(
        caseNumber: '2012-03',
        caseTitle: 'Tarter v. Evangel Presbytery',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-03_Tarter_v_Evangel.pdf',
        summary:
            'Case sustained.',
        outcome: 'Sustained',
      ),
    ],
    'bco_35-10': [
      SjcReference(
        caseNumber: '2007-16',
        caseTitle: 'Appeal of Grady v. Southwest Florida',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-16_Grady_v_SWFlorida.pdf',
        summary:
            'TE guilty at trial on three charges and indefinitely '
                  'suspended from office. Appeal alleged seven specifications '
                  'of error. SJC sustained convictions but vacated suspension '
                  'and dissolution of call and remanded to P for '
                  'reconsideration of both.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_36-5': [
      SjcReference(
        caseNumber: '2007-04',
        caseTitle: 'Engel v. Evangel',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-04_Engel_v_Evangel.pdf',
        summary:
            'Complainant filed series of complaints with S on its policy '
                  'disallowing single or divorced men to stand for office.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 37-38 — Withdrawal
    // ─────────────────────────────────────────────────────────────
    'bco_37-3': [
      SjcReference(
        caseNumber: '2007-02',
        caseTitle: 'Malone v. Metro NY',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-02_Malone_v_MetropolitanNY.pdf',
        summary:
            'Involved interpretation of BCO 38-1 and cases without process.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_38-1': [
      SjcReference(
        caseNumber: '2023-19',
        caseTitle: 'Appeal of TE Huffman v. TN Valley',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-19_Huffman_v_TNValley.pdf',
        summary:
            'Case remanded.',
        outcome: 'Remanded',
      ),
      SjcReference(
        caseNumber: '2021-11',
        caseTitle: 'Park et al. v. Korean Central Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-11_Park_v_KCP.pdf',
        summary:
            'Case not sustained.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2020-09',
        caseTitle: 'Oxbalt et al. v. Pacific Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-07_Wilbourne_v_Pacific.pdf',
        summary:
            'BCO 38-1 does not address the time at which additional '
                  'adverse information might be presented; it prohibits the '
                  'introduction of any information adverse to the accused to '
                  'the court beyond the agreed upon statement of facts at any '
                  'point prior to the decision on censure.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-08',
        caseTitle: 'Gendall et al. v. Pacific Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-07_Wilbourne_v_Pacific.pdf',
        summary:
            'BCO 38-1 does not address the time at which additional '
                  'adverse information might be presented; it prohibits the '
                  'introduction of any information adverse to the accused to '
                  'the court beyond the agreed upon statement of facts at any '
                  'point prior to the decision on censure.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-07',
        caseTitle: 'Wilbourne v. Pacific Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-07_Wilbourne_v_Pacific.pdf',
        summary:
            'BCO 38-1 does not address the time at which additional '
                  'adverse information might be presented; it prohibits the '
                  'introduction of any information adverse to the accused to '
                  'the court beyond the agreed upon statement of facts at any '
                  'point prior to the decision on censure.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2019-04',
        caseTitle: 'Williams v. Chesapeake Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-04_Williams_v_Chesapeake.pdf',
        summary:
            'It is important to note that the reasoning and opinion above '
                  'is applicable to this case only and should not be taken to '
                  'be an exposition of whether a matter that begins as a case '
                  'of process may ever be converted to a case without process '
                  'under BCO 38-1.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2016-09',
        caseTitle: '2016-09 Fordice v PacificNW',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-09_Fordice_v_PacificNW.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2015-11',
        caseTitle: '2015-11 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-11_Thompson_v_SouthFlorida.pdf',
        summary:
            'Judgment on June 28, 2015.) While that phrase might appear '
                  'to be subjective, its location in BCO 32-6 and the fact that '
                  'it is immediately censurable points to it being objective '
                  'instead.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2011-18',
        caseTitle: 'Ruff v. Nashville',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-18_Ruff_v_Nashville.pdf',
        summary:
            'Alleged P erred in three ways: (1) failed to comply with SJC '
                  'directive in Case 2009-28, (2) erred in receiving a '
                  'confession via BCO 38-1 that was not a full statement of the '
                  'facts, and (3) erred in administering proper censure of TE. '
                  'SJC sustained parts 2 and 3, but not part 1.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-10',
        caseTitle: 'Woodward v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'Therefore, since there is no Constitutional error, we give '
                  'great deference to Presbytery in accordance with BCO 39-3 '
                  'since this involves a factual matter which the lower court '
                  'is more competent to determine, because of its proximity to '
                  'the events in question and because of its knowledge and.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2009-09',
        caseTitle: 'Lyons v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'Therefore, since there is no Constitutional error, we give '
                  'great deference to Presbytery in accordance with BCO 39-3 '
                  'since this involves a factual matter which the lower court '
                  'is more competent to determine, because of its proximity to '
                  'the events in question and because of its knowledge and.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2009-08',
        caseTitle: 'Linton v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'Therefore, since there is no Constitutional error, we give '
                  'great deference to Presbytery in accordance with BCO 39-3 '
                  'since this involves a factual matter which the lower court '
                  'is more competent to determine, because of its proximity to '
                  'the events in question and because of its knowledge and.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2009-05',
        caseTitle: 'Payne v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'P erred procedurally in a 31-2 investigation of a TE and '
                  'erred in not fining a strong presumption of guilt.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Morton Smith v. Western Carolina',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'five errors. SJC sustained two due to an illegitimate '
                  'congregational meeting.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-02',
        caseTitle: 'Malone v. Metro NY',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-02_Malone_v_MetropolitanNY.pdf',
        summary:
            'Involved interpretation of BCO 38-1 and cases without process.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_38-3': [
      SjcReference(
        caseNumber: '2023-07',
        caseTitle: 'TE Evans v. Arizona Presbytery',
        year: '2024',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-07_Evans_v_Arizona.pdf',
        summary:
            'When a minister in good standing voluntarily affiliates with '
                  'another branch of the visible Church, BCO 38-3.a is '
                  'mandatory and self-executing: the presbytery must record the '
                  'irregularity, acknowledge the new membership, and remove his '
                  'name from the roll.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2021-05',
        caseTitle: 'Eudaly et al. v. Southwest Florida Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-05_Eudaly_v_SWFlorida.pdf',
        summary:
            'Therefore, they lacked standing to file this Complaint.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2020-10',
        caseTitle: 'Eagle v. Savannah River Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-10_Eagle_v_SavannahRiver.pdf',
        summary:
            'PCA jurisdiction over Complainants ended on February 9, '
                  '2020, when they affiliated with another branch of the '
                  'visible church (see BCO 38-3).',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2019-13',
        caseTitle: 'Gendy v. Central Florida Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-13_Gendy_v_CentralFL.pdf',
        summary:
            'In addition to the wording of the provision itself, the '
                  'history of BCO 38-4 illustrates this distinction.',
        outcome: 'Dismissed',
      ),
    ],
    'bco_38-4': [
      SjcReference(
        caseNumber: '2019-13',
        caseTitle: 'Gendy v. Central Florida Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-13_Gendy_v_CentralFL.pdf',
        summary:
            'In addition to the wording of the provision itself, the '
                  'history of BCO 38-4 illustrates this distinction.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2002-10',
        caseTitle: 'Goerig v. Pacific Northwest Presbytery',
        year: '2002',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2002-10_Goerig_v_PacificNorthwest.pdf',
        summary:
            'S removed name from roll per BCO 38-4. Complaint alleged P '
                  'should have sustained C and remanded to S.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 39-40 — Appeals / Complaints
    // ─────────────────────────────────────────────────────────────
    'bco_39-2': [
      SjcReference(
        caseNumber: '2015-08',
        caseTitle: '2015-08 Hardie v MetroAtlanta',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-08_Hardie_v_MetroAtlanta.pdf',
        summary:
            'therefore, to give “great deference” to MAP’s decision and '
                  'to reverse only if there is “clear error.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2012-05',
        caseTitle: 'Hedman v. Pacific Northwest',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-05_Hedman_v_PacificNorthwest.pdf',
        summary:
            'P erred by not convicting TE Leithart at trial involving '
                  'doctrinal views.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_39-3': [
      SjcReference(
        caseNumber: '2023-10',
        caseTitle: 'REs Martinez & Cook v. Pacific',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-10_Martinez%26Cook_v_Pacific.pdf',
        summary:
            'therefore the SJC should not feel obligated to give "great '
                  'deference" to Presbytery\'s decision per BCO 39-3.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2021-01',
        caseTitle: 'Michelson v. Northwest Georgia Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-01_Michelson_v_NWGeorgia.pdf',
        summary:
            'judgment which can only be addressed by a court with '
                  'familiar acquaintance of the events and parties (BCO '
                  '39-3.3).',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2020-09',
        caseTitle: 'Oxbalt et al. v. Pacific Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-07_Wilbourne_v_Pacific.pdf',
        summary:
            'BCO 38-1 does not address the time at which additional '
                  'adverse information might be presented; it prohibits the '
                  'introduction of any information adverse to the accused to '
                  'the court beyond the agreed upon statement of facts at any '
                  'point prior to the decision on censure.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-08',
        caseTitle: 'Gendall et al. v. Pacific Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-07_Wilbourne_v_Pacific.pdf',
        summary:
            'BCO 38-1 does not address the time at which additional '
                  'adverse information might be presented; it prohibits the '
                  'introduction of any information adverse to the accused to '
                  'the court beyond the agreed upon statement of facts at any '
                  'point prior to the decision on censure.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-07',
        caseTitle: 'Wilbourne v. Pacific Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-07_Wilbourne_v_Pacific.pdf',
        summary:
            'BCO 38-1 does not address the time at which additional '
                  'adverse information might be presented; it prohibits the '
                  'introduction of any information adverse to the accused to '
                  'the court beyond the agreed upon statement of facts at any '
                  'point prior to the decision on censure.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-06',
        caseTitle: 'Gordon v. Southern New England Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-06_Gordon_v_SNEP.pdf',
        summary:
            'Instead, he recited the general grounds for appeal outlined '
                  'in BCO 42-3.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2019-11',
        caseTitle: 'Crouse v. NW Georgia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-11_Crouse_v_NWGeorgia.pdf',
        summary:
            'Therefore, a higher court should not reverse such a judgment '
                  'by a lower court, unless there is clear error on the part of '
                  'the lower court.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2019-07',
        caseTitle: 'Fozard v. North Texas Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-07_Fozard_v_NorthTX.pdf',
        summary:
            'Therefore, a higher court should not reverse such a judgment '
                  'by a lower court, unless there is clear error on the part of '
                  'the lower court.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2019-03',
        caseTitle: 'Crouse v. NW Georgia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-03_Crouse_v_NWGeorgia.pdf',
        summary:
            'judgment, the SJC doubled down on their decision by '
                  'suggesting that if a Session desires “greater flexibility” '
                  'in the requirements found in BCO 24-1, it should pursue a '
                  'change to the Constitution.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2017-01',
        caseTitle: 'Dailey v. Heritage Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-01_Dailey_v_Heritage.pdf',
        summary:
            'Therefore, the higher court has the duty and authority to '
                  'interpret the Constitution of the Church according to its '
                  'best abilities and understanding.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2016-14',
        caseTitle: '2016-14 Wills v MetroAtlanta',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-14_Wills_v_MetroAtlanta.pdf',
        summary:
            'Therefore, a higher court should not reverse such a judgment '
                  'by a lower court, unless there is clear error on the part of '
                  'the lower court.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2016-09',
        caseTitle: '2016-09 Fordice v PacificNW',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-09_Fordice_v_PacificNW.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2012-05',
        caseTitle: 'Hedman v. Pacific Northwest',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-05_Hedman_v_PacificNorthwest.pdf',
        summary:
            'P erred by not convicting TE Leithart at trial involving '
                  'doctrinal views.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2009-07',
        caseTitle: 'Urish v. Rocky Mountain Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-07_Urish_v_RockyMountain.pdf',
        summary:
            'P erred by ordaining a man who held that women could, under '
                  'Session authority, do any teaching in a church other than '
                  'preaching. (Interpretation of 1 Timothy 2:12)',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2007-08',
        caseTitle: 'Jones v. Louisiana',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-08_Jones_v_Louisiana.pdf',
        summary:
            'P erred in not finding a strong presumption of guilt RE TE '
                  'Wilkins. Jones was joined by seven other complainants.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-02',
        caseTitle: 'Malone v. Metro NY',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-02_Malone_v_MetropolitanNY.pdf',
        summary:
            'Involved interpretation of BCO 38-1 and cases without process.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2005-08',
        caseTitle: 'Appeal of Peter B. Kim v. Korean Eastern',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-08_Kim_v_KoreanEastern.pdf',
        summary:
            'Convicted of being "contumacious against the authority of '
                  'Presbytery." Deposed and excommunicated. SJC upholds '
                  'conviction but reduces excommunication to indefinite '
                  'suspension from sacraments.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_40-1': [
      SjcReference(
        caseNumber: '2017-11',
        caseTitle: 'In re Korean Southwest Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-11_In_Re_Korean_Southwest.pdf',
        summary:
            'MINUTES OF THE GENERAL ASSEMBLY 588 CASE 2017-10 IN RE '
                  'KOREAN EASTERN PRESBYTERY MARCH 1, 2018 The Commission '
                  'recognized that Korean Eastern Presbytery complied with the '
                  'citation from the Commission; that the Presbytery provided '
                  'the necessary materials under BCO 40-1; and that the '
                  'Commission refers.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2017-10',
        caseTitle: 'In re Korean Eastern Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-10_In_Re_Korean_Eastern.pdf',
        summary:
            'MINUTES OF THE GENERAL ASSEMBLY 588 CASE 2017-10 IN RE '
                  'KOREAN EASTERN PRESBYTERY MARCH 1, 2018 The Commission '
                  'recognized that Korean Eastern Presbytery complied with the '
                  'citation from the Commission; that the Presbytery provided '
                  'the necessary materials under BCO 40-1; and that the '
                  'Commission refers.',
        outcome: '',
      ),
    ],
    'bco_40-2': [
      SjcReference(
        caseNumber: '2007-13',
        caseTitle: 'Kniseley v. Rocky Mountain',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-13_Kniseley_v_RockyMountain.pdf',
        summary:
            'P erred by allowing a church to title a female staff person '
                  'as Minister of Church Life.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_40-3': [
      SjcReference(
        caseNumber: '2015-10',
        caseTitle: '2015-10 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-10_Thompson_v_SouthFlorida.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '1983-15',
        caseTitle: 'TE W. Ted Smith, Jr. vs. Central Carolina Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-15_Smith_v_CentralCarolina.pdf',
        summary:
            '(See also Cases 27,29, 31, 33) Was Presbytery negligent '
                  'concerning General Assembly directives and BCO '
                  'responsibilities to exercise proper oversight of past and '
                  'present members of a congregation.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_40-4': [
      SjcReference(
        caseNumber: '2022-22',
        caseTitle: 'RE Tom Turner v. South Florida Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-22_Turner_v_SouthFL.pdf',
        summary:
            'Case partially sustained.',
        outcome: 'Partially Sustained',
      ),
    ],
    'bco_40-5': [
      SjcReference(
        caseNumber: '2018-02',
        caseTitle: 'Lewis v. Mississippi Valley Presbytery',
        year: '2018',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2018-02_Lewis_v_MSValley.pdf',
        summary:
            'judgments on the matters noted in the [Central Carolina '
                  'letter] are properly before the SJC under BCO 13-9.f, 40-4, '
                  '40-5 and SJCM 16.1.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2015-10',
        caseTitle: '2015-10 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-10_Thompson_v_SouthFlorida.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2015-07',
        caseTitle: '2015-07 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-07_Thompson_v_SouthFlorida.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2015-05',
        caseTitle: '2015-05 Application of Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-05_Application_of_Thompson_v_SouthFlorida.pdf',
        summary:
            'DECISION ON BCO 40-5 APPLICATION AUGUST 12, 2015 The '
                  'Standing Judicial Commission (SJC) finds the above-named '
                  'Case Administratively Out of Order (OMSJC 9.1.a.) in that '
                  'The Stated Clerk of South Florida Presbytery has advised '
                  'that this matter is on the Docket of its August 11, 2015, '
                  'Stated Meeting.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2008-09',
        caseTitle: 'Session of Red Mountain v. Evangel Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-09_RedMountain_v_Evangel.pdf',
        summary:
            'Husband complained to P that S failed to indict his wife for '
                  'pursuing an alleged unbiblical divorce. P sustained '
                  'complaint. Session then filed complaint to SJC.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2006-02',
        caseTitle: 'Memorial of Central Carolina v. Louisiana',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-02_Memorial_of_Central_Carolina.pdf',
        summary:
            'C.',
        outcome: 'Sustained',
      ),
    ],
    'bco_40-6': [
      SjcReference(
        caseNumber: '2016-14',
        caseTitle: '2016-14 Wills v MetroAtlanta',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-14_Wills_v_MetroAtlanta.pdf',
        summary:
            'Therefore, a higher court should not reverse such a judgment '
                  'by a lower court, unless there is clear error on the part of '
                  'the lower court.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2006-02',
        caseTitle: 'Memorial of Central Carolina v. Louisiana',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-02_Memorial_of_Central_Carolina.pdf',
        summary:
            'C.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 41-43 — Dissents / Overtures / References
    // ─────────────────────────────────────────────────────────────
    'bco_41-2': [
      SjcReference(
        caseNumber: '2017-07',
        caseTitle: 'Clements v. Blue Ridge Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-06%26-07_Clements_v_BlueRidge.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
    ],
    'bco_41-3': [
      SjcReference(
        caseNumber: '2017-07',
        caseTitle: 'Clements v. Blue Ridge Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-06%26-07_Clements_v_BlueRidge.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
    ],
    'bco_42-2': [
      SjcReference(
        caseNumber: '1997-09',
        caseTitle: 'Appeal of Dr. Shive v. Central Carolina',
        year: '1997',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1997-09_Shive_v_CentralCarolina.pdf',
        summary:
            'errors. SJC sustained on one, ruling S erred by '
                  'excommunicating instead of imposing a lesser censure. '
                  'Remanded for imposition of indef susp from sacraments.',
        outcome: 'Sustained',
      ),
    ],
    'bco_42-3': [
      SjcReference(
        caseNumber: '2020-06',
        caseTitle: 'Gordon v. Southern New England Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-06_Gordon_v_SNEP.pdf',
        summary:
            'Instead, he recited the general grounds for appeal outlined '
                  'in BCO 42-3.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2015-04',
        caseTitle: '2015-04 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-04_Thompson_v_SouthFlorida.pdf',
        summary:
            'Case not sustained.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2015-03',
        caseTitle: '2015-03 Flesher&Weekly v MetroAtlanta',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-03_Flesher%26Weekly_v_MetroAtlanta.pdf',
        summary:
            'DECISION ON COMPLAINT MARCH 3, 2016 The SJC finds the '
                  'Complaint judicially out of order as the objections raised '
                  'in the Complaint ought to be raised by a defendant during '
                  'process with the court of original jurisdiction (BCO 32-14), '
                  'or thereafter, if not satisfied, by an appellant on appeal '
                  '(BCO.',
        outcome: '',
      ),
    ],
    'bco_42-4': [
      SjcReference(
        caseNumber: '2016-02',
        caseTitle: '2016-02 Robertstad v NorthTexas',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-02_Robertstad_v_NorthTexas.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
    ],
    'bco_42-5': [
      SjcReference(
        caseNumber: '1997-04',
        caseTitle: 'Conrad v. Central Carolina',
        year: '1997',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1997-04_Conrad_v_CentralCarolina.pdf',
        summary:
            'S erred by removing her and others from membership roll.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_42-9': [
      SjcReference(
        caseNumber: '1997-09',
        caseTitle: 'Appeal of Dr. Shive v. Central Carolina',
        year: '1997',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1997-09_Shive_v_CentralCarolina.pdf',
        summary:
            'errors. SJC sustained on one, ruling S erred by '
                  'excommunicating instead of imposing a lesser censure. '
                  'Remanded for imposition of indef susp from sacraments.',
        outcome: 'Sustained',
      ),
    ],
    'bco_43-1': [
      SjcReference(
        caseNumber: '2019-13',
        caseTitle: 'Gendy v. Central Florida Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-13_Gendy_v_CentralFL.pdf',
        summary:
            'In addition to the wording of the provision itself, the '
                  'history of BCO 38-4 illustrates this distinction.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2016-12',
        caseTitle: '2016-12 Harwell v Nashville',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-12_Harwell_v_Nashville.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2016-08',
        caseTitle: '2016-08 Doty v Nashville',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-08_Doty_v_Nashville.pdf',
        summary:
            'With respect to this filing, Complainant came under the '
                  'jurisdiction of the Presbytery, and thus met the standards '
                  'of BCO 43-1.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2016-07',
        caseTitle: '2016-07 Avery&Lewelling v Nashville',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-07_Avery%26Lewelling_v_Nashville.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2011-12',
        caseTitle: 
          'Hahn v. Philadelphia Metro West. (also Cases 2011-11 and 2011-15)',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-11_Hahn_v_PhilaMetroWest.pdf',
        summary:
            'P erred in finding him guilty of violating the 5th and 9th '
                  'commandments and the second great commandment.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2011-11',
        caseTitle: 
          'Hahn v. Philadelphia Metro West. (also Cases 2011-12 and 2011-15)',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-11_Hahn_v_PhilaMetroWest.pdf',
        summary:
            'These three Cases all arise out of substantially the same '
                  'set of facts (and Case 2011-16 is a duplicate of 2011-15).',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_43-2': [
      SjcReference(
        caseNumber: '2019-14',
        caseTitle: 'Yoo v. Korean SW Orange Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-14_Yoo_v_KoreanSWOrange.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2016-17',
        caseTitle: '2016-17 Webster&Fowler v Heritage',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-17_Webster%26Fowler_v_Heritage.pdf',
        summary:
            'BCO 43-2 prohibits the parties from circularizing.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2016-16',
        caseTitle: '2016-16 Sartorius v Siouxlands',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-16_Sartorius_v_Siouxlands.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2016-12',
        caseTitle: '2016-12 Harwell v Nashville',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-12_Harwell_v_Nashville.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2016-08',
        caseTitle: '2016-08 Doty v Nashville',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-08_Doty_v_Nashville.pdf',
        summary:
            'With respect to this filing, Complainant came under the '
                  'jurisdiction of the Presbytery, and thus met the standards '
                  'of BCO 43-1.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2015-12',
        caseTitle: '2015-12 Wills v MetroAtlanta',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-12_Wills_v_MetroAtlanta.pdf',
        summary:
            'BCO 43-2 states that “A complaint shall first be made to the '
                  'court whose act or decision is alleged to be in error.” MAP '
                  'has not had the opportunity to respond to the Complaint '
                  'regarding their action on 9/15/15, to wit: declaring the '
                  'July 16, 2015 Complaint to be Administratively Out of Order.',
        outcome: '',
      ),
      SjcReference(
        caseNumber: '2015-07',
        caseTitle: '2015-07 Thompson v SouthFlorida',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-07_Thompson_v_SouthFlorida.pdf',
        summary:
            'Case dismissed.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2005-09',
        caseTitle: 'Peter B. Kim v. Korean Eastern',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-09_Kim_v_KoreanEastern.pdf',
        summary:
            'SJC agreed P erred in denying his complaint, but that did '
                  'not justify his refusal to obey P\'s directive. And in '
                  'light of the deposition and failed appeal in 2005-08, no '
                  'remedy is necessary or possible.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_43-3': [
      SjcReference(
        caseNumber: '2017-01',
        caseTitle: 'Dailey v. Heritage Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-01_Dailey_v_Heritage.pdf',
        summary:
            'Therefore, the higher court has the duty and authority to '
                  'interpret the Constitution of the Church according to its '
                  'best abilities and understanding.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2016-02',
        caseTitle: '2016-02 Robertstad v NorthTexas',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-02_Robertstad_v_NorthTexas.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
    ],
    'bco_43-9': [
      SjcReference(
        caseNumber: '2022-10',
        caseTitle: 'PCA v. Herron (trial)',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-10_PCA_v_Herron.pdf',
        summary:
            'Case not guilty.',
        outcome: 'Not Guilty',
      ),
      SjcReference(
        caseNumber: '2016-16',
        caseTitle: '2016-16 Sartorius v Siouxlands',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-16_Sartorius_v_Siouxlands.pdf',
        summary:
            'Case denied.',
        outcome: 'Denied',
      ),
    ],
    'bco_43-10': [
      SjcReference(
        caseNumber: '2022-10',
        caseTitle: 'PCA v. Herron (trial)',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-10_PCA_v_Herron.pdf',
        summary:
            'Case not guilty.',
        outcome: 'Not Guilty',
      ),
      SjcReference(
        caseNumber: '2009-28',
        caseTitle: 'Ruff v. Nashville',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-28_Ruff_v_Nashville.pdf',
        summary:
            'P did an inadequate BCO 31-2 investigation of a TE and erred '
                  'in declining to indict.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-11',
        caseTitle: 'Edison v. Southwest Florida Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-11-Edison_v_SouthwestFlorida.pdf',
        summary:
            'P sustained transfer exam of TE. Complaint filed against '
                  'that action, and it was sustained. The TE was reexamined, '
                  'but he did not pass. This new Complaint alleged the '
                  'reexamination was unconstitutional.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 44-57 — Commissions / Amendments
    // ─────────────────────────────────────────────────────────────
    'bco_46-3': [
      SjcReference(
        caseNumber: '2002-10',
        caseTitle: 'Goerig v. Pacific Northwest Presbytery',
        year: '2002',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2002-10_Goerig_v_PacificNorthwest.pdf',
        summary:
            'S removed name from roll per BCO 38-4. Complaint alleged P '
                  'should have sustained C and remanded to S.',
        outcome: 'Sustained',
      ),
    ],
    'bco_46-8': [
      SjcReference(
        caseNumber: '2022-23',
        caseTitle: 'TE Michael Woodham v. South Florida',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-23_Woodham_v_SouthFL.pdf',
        summary:
            'The Decision’s deference would apparently grant '
                  'discretionary power to Presbytery to indefinitely augment '
                  'its jurisdictional power over the minister by deciding to '
                  'delay exercising its BCO 46-8 obligation to assign the '
                  'deposed minister to a Session, the only proper judicatory '
                  'for the governance of.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_57-5': [
      SjcReference(
        caseNumber: '2006-06',
        caseTitle: 'Ehrlich v. North Georgia',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-06_Ehrlich_v_NorthGeorgia.pdf',
        summary:
            'Complaint by two members against their Session\'s warning '
                  'and instruction that the members not distribute a letter to '
                  'the church critical of the pastor and Presbytery.',
        outcome: 'Not Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // Westminster Confession of Faith
    // ─────────────────────────────────────────────────────────────
    'wcf_20.2': [
      SjcReference(
        caseNumber: '2006-06',
        caseTitle: 'Ehrlich v. North Georgia Presbytery',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-06_Ehrlich_v_NorthGeorgia.pdf',
        summary:
            'Members complained that their Session erred by warning them not '
            'to distribute a letter critical of the pastor. The SJC did not '
            'sustain the complaint, finding the Session acted within its '
            'authority under WCF 20.2 regarding liberty of conscience.',
        outcome: 'Not Sustained',
      ),
    ],
    'wcf_28.4': [
      SjcReference(
        caseNumber: '1990-08',
        caseTitle: 'Bowen v. Eastern Carolina Presbytery',
        year: '1990',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1990-08_Bowen_v_EasternCarolina.pdf',
        summary:
            'The SJC ruled that Eastern Carolina Presbytery erred in '
            'suspending a ruling elder. The case involved questions about '
            'infant baptism and limited atonement in connection with WCF 28.4.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // Westminster Larger Catechism
    // ─────────────────────────────────────────────────────────────
    'wlc_129': [
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Morton Smith v. Western Carolina Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'The SJC sustained two of five alleged errors relating to an '
            'illegitimate congregational meeting. WLC Q. 129 (duties of '
            'superiors) was cited regarding the obligations of church courts '
            'in exercising authority over congregational proceedings.',
        outcome: 'Sustained',
      ),
    ],
    'wlc_145': [
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Morton Smith v. Western Carolina Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'WLC Q. 145 (sins forbidden in the ninth commandment) was cited '
            'in relation to charges of bearing false witness during '
            'congregational proceedings in the dispute over Presbytery\'s '
            'handling of a local church matter.',
        outcome: 'Sustained',
      ),
    ],
  };

  /// Get all references for a given section key, or empty list if none.
  static List<SjcReference> forSection(String key) {
    return references[key] ?? const [];
  }

  /// Get all unique section keys that have references.
  static Set<String> get allSectionKeys => references.keys.toSet();
}
