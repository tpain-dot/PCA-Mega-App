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
    // ═════════════════════════════════════════════════════════════
    // PART I — FORM OF GOVERNMENT (BCO Chapters 1–24)
    // ═════════════════════════════════════════════════════════════

    // ─────────────────────────────────────────────────────────────
    // BCO Ch 1-4 — Preliminary Principles
    // ─────────────────────────────────────────────────────────────
    'bco_1-4': [
      SjcReference(
        caseNumber: '2007-13',
        caseTitle: 'Kniseley v. Rocky Mountain Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-13_Kniseley_v_RockyMountain.pdf',
        summary:
            'While the BCO uses "minister" synonymously with "teaching elder" '
            'and "pastor" in its technical definitions, the BCO is silent on '
            'the general use of the title "minister" for non-ordained church '
            'staff. However, any such title must make the generic, '
            'non-ordained sense plain to a competent observer so as not to '
            'suggest ordained authority.',
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
            'All communicant members, including those under age eighteen, have '
            'a constitutional right to vote in congregational elections. Under '
            'BCO 6-4, all who have professed faith, been baptized, and '
            'admitted to the Lord\'s Table are entitled to "all the rights and '
            'privileges of the Church," which includes the right to vote. '
            'Local church bylaws cannot set aside the Constitution.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 11-12 — The Church Session
    // ─────────────────────────────────────────────────────────────
    'bco_11-2': [
      SjcReference(
        caseNumber: '2019-07',
        caseTitle: 'Fozard v. North Texas Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-07_Fozard_v_NorthTX.pdf',
        summary:
            'A Session\'s policy for integrating special-case felons into the '
            'congregation was within its discretion under BCO 11-2, and the '
            'complainant failed to demonstrate a violation of Scripture or the '
            'Constitution.',
        outcome: 'Denied',
      ),
    ],
    'bco_11-4': [
      SjcReference(
        caseNumber: '2020-05',
        caseTitle: 'Speck v. Missouri Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-05_Speck_v_Missouri.pdf',
        summary:
            'Missouri Presbytery erred in approving theological judgments '
            'regarding the Revoice 2018 conference because it applied '
            'incorrect criteria (conflating BCO 34-5\'s standard for process '
            'against a minister with BCO 40-5\'s standard for reviewing court '
            'actions). The proper criteria were BCO 11-4 and 13-9(f), which '
            'allow condemning erroneous opinions that injure the purity or '
            'peace of the Church.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_12-1': [
      SjcReference(
        caseNumber: '2018-01',
        caseTitle: 'Mapes v. Metropolitan New York Presbytery',
        year: '2018',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2018-01_Mapes_v_MetropolitanNY.pdf',
        summary:
            'The SJC reversed the censures of indefinite suspension from the '
            'sacraments and deposition from office as excessive for appearing '
            'uninvited at a closed session meeting for approximately five '
            'minutes followed by an apology, substituting the censure of '
            'admonition. The evidence did not support findings of sedition, '
            'riot, or dereliction of duty.',
        outcome: 'Reversed in Part',
      ),
    ],
    'bco_12-5': [
      SjcReference(
        caseNumber: '2004-03',
        caseTitle: 'Harris v. Heritage Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-03_Harris_v_Heritage.pdf',
        summary:
            'Once a pastoral call is approved by the congregation and '
            'Presbytery, subsequent changes in terms become a budgetary matter '
            'under the authority of the Session per BCO 12-5b. The BCO does '
            'not require that budget details be publicized to the '
            'congregation, though the SJC counseled it would be prudent to do '
            'so.',
        outcome: 'Not Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 13-14 — The Presbytery
    // ─────────────────────────────────────────────────────────────
    'bco_13-6': [
      SjcReference(
        caseNumber: '2009-11',
        caseTitle: 'Edison v. Southwest Florida Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-11-Edison_v_SouthwestFlorida.pdf',
        summary:
            'Once a presbytery receives a teaching elder into membership, it '
            'cannot undo that membership by rescission, because Robert\'s '
            'Rules prohibit rescinding actions when a person has been elected '
            'to membership and notified. Membership rights can only be removed '
            'through the disciplinary processes of the BCO.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2019-02',
        caseTitle: 'Schrock v. Philadelphia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-02_Schrock_v_Philadelphia.pdf',
        summary:
            'BCO 13-6 requires a presbytery to judge and record the nature of '
            'a transferring minister\'s differences with the Standards when '
            'receiving him from another denomination. This is a substantive '
            'constitutional duty.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2022-03',
        caseTitle: 'Klett v. Philadelphia Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-03_Klett_v_Philadelphia.pdf',
        summary:
            'A presbytery erred when it judged that a teaching elder\'s views '
            'affirming continuing gifts of prophecy and tongues for corporate '
            'worship were not out of accord with the fundamentals of the '
            'system of doctrine.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2022-21',
        caseTitle: 'Senters v. Savannah River Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-21_Senters_v_Savannah_River.pdf',
        summary:
            'A transfer candidate\'s view that tongues continue until '
            'Christ\'s return constitutes a real difference with the '
            'Westminster Standards (WCF 1.1 and 1.6), and a presbytery erred '
            'by judging it as "not a difference." The proper BCO 13-6 / 21-4 '
            'process must be followed.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2025-12',
        caseTitle: 'Assis & Brown v. South Florida Presbytery',
        year: '2025',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2025-12,%20-13_Assis_and_Brown_v_SFL_final.pdf',
        summary:
            'Ministers do not automatically become "without call" when their '
            'churches leave the PCA. A pastoral call requires formal '
            'presbytery action to dissolve under BCO 23-1; without that '
            'action, the minister retains his called status and BCO 34-10 '
            'divestiture is inapplicable.',
        outcome: 'Sustained',
      ),
    ],
    'bco_13-9': [
      SjcReference(
        caseNumber: '2006-02',
        caseTitle: 'Memorial of Central Carolina v. Louisiana Presbytery',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-02_Memorial_of_Central_Carolina.pdf',
        summary:
            'Louisiana Presbytery failed to conduct an adequate investigation '
            'of TE Wilkins\' Federal Vision theology under BCO 31-2 and then '
            'reached a substantively erroneous decision in exonerating him, '
            'failing in its duty under BCO 13-9.f to condemn erroneous '
            'opinions injuring the purity or peace of the Church.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-08',
        caseTitle: 'Jones v. Louisiana Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-08_Jones_v_Louisiana.pdf',
        summary:
            'Louisiana Presbytery failed in its duty under BCO 13-9.f to '
            'condemn erroneous opinions that injure the purity or peace of the '
            'Church, applying an incorrect constitutional standard for '
            'evaluating TE Wilkins\' Federal Vision views.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-09',
        caseTitle: 'Lee v. Korean Eastern Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'A presbytery erred in filing a civil lawsuit to adjudicate '
            'ecclesiastical matters (such as who was the rightful pastor), as '
            'these matters fall within the jurisdiction of PCA church courts '
            'under BCO 13-9, not civil courts.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-06',
        caseTitle: 'Bordwine v. Pacific Northwest Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-06_Bordwine_v_PacificNW.pdf',
        summary:
            'A presbytery cannot, without formal judicial process, render a '
            'definitive judgment on whether a teaching elder\'s views (here, '
            'Federal Vision theology of TE Leithart) strike at the vitals of '
            'religion. The SJC directed the presbytery to either counsel the '
            'elder to recant or institute process under BCO 31-2.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-05',
        caseTitle: 'Speck v. Missouri Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-05_Speck_v_Missouri.pdf',
        summary:
            'The proper criteria for reviewing a lower court\'s theological '
            'judgments are BCO 11-4 and 13-9(f), which allow condemning '
            'erroneous opinions that injure the purity or peace of the Church, '
            'not BCO 34-5\'s standard for process against an individual '
            'minister.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2023-10',
        caseTitle: 'Martinez & Cook v. Pacific Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-10_Martinez_Cook_v_Pacific.pdf',
        summary:
            'Assigning a Shepherding Committee to "follow-up" with a Session was '
            'not an impermissible visitation under BCO 11-4 and 13-9, but '
            'Presbytery erred in not providing more specific direction. Simply '
            'tasking a committee to "follow-up" without clear intention or scope '
            'was insufficient.',
        outcome: 'Partially Sustained',
      ),
    ],
    'bco_13-10': [
      SjcReference(
        caseNumber: '1983-08',
        caseTitle: 'Eubanks v. Central Carolina Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-08_Eubanks_v_CentralCarolina.pdf',
        summary:
            'The dissolution of a presbytery\'s judicial commission by a '
            'simple majority vote was ruled illegal because Robert\'s Rules '
            'requires a two-thirds vote to dismiss a commission, and the '
            'moderator may not order a dissolved commission to reassemble and '
            'retake a vote.',
        outcome: 'Sustained in Part',
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
            'A Session\'s decision not to distribute a document does not '
            'prohibit a member from doing so. The promise of subjection to '
            'brethren in ordination vow 5 is limited to lawful commands (WLC '
            '127), and distributing an SJC decision to the congregation is not '
            'contumacy. RE Dudt was found not guilty and restored to full '
            'exercise of his office.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 15-18 — Committees & Commissions / Church Orders
    // ─────────────────────────────────────────────────────────────
    'bco_15-1': [
      SjcReference(
        caseNumber: '2005-09',
        caseTitle: 'Kim v. Korean Eastern Presbytery',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-09_Kim_v_KoreanEastern.pdf',
        summary:
            'An administrative commission under BCO 15-1 may not handle '
            'judicial business such as hearing and adjudicating complaints, '
            'and may not dissolve a pastoral relationship without the '
            'Session\'s or congregation\'s request.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Morton Smith v. Western Carolina Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'A Session minority (the pastor alone) may not convene a '
            'congregational meeting that the Session majority voted to cancel. '
            'All actions flowing from that illegitimate congregational meeting '
            'were voided, including dissolution of ruling elders\' calls and '
            'commission appointments.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2012-03',
        caseTitle: 'Tarter v. Evangel Presbytery',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-03_Tarter_v_Evangel.pdf',
        summary:
            'A presbytery committee exceeded its authority by directing a '
            'minister to restructure an independent mission board and attend a '
            'particular church, as committees under BCO 15-1 may only examine, '
            'consider, and report — they may not render judgments or direct '
            'compliance.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2017-02',
        caseTitle: 'Postles v. Heritage Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-02_Postles_v_Heritage.pdf',
        summary:
            'A committee appointed to investigate under BCO 15-1 may recommend '
            'judicial action (such as instituting process under BCO 31-2) '
            'without special authorization, because BCO 15-1 allows committees '
            'to examine, consider, and report — and a recommendation is not '
            'the equivalent of rendering a judgment or censure.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2021-03',
        caseTitle: 'DeJong v. Session of Village Seven Presbyterian Church',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-03_DeJong_v_V7PC_Session.pdf',
        summary:
            'A Governance Commission whose governing document was so broad '
            'that it permitted the commission to function as the Session '
            'itself violated BCO 15-1\'s requirement that commissions be '
            'limited to the particular business referred to them.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2023-06',
        caseTitle: 'Baird v. Grace Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-06_Baird_v_Grace.pdf',
        summary:
            'A presbytery commission erred in hearing a complaint that was '
            'never formally filed and had become moot, in directing a Session '
            'Clerk to produce personal communications beyond the scope of the '
            'Record (as no court may compel submission of personal '
            'correspondence), and in staying pending trials without first '
            'citing the lower court to appear as required by BCO 40-5.',
        outcome: 'Sustained in Part',
      ),
    ],
    'bco_15-3': [
      SjcReference(
        caseNumber: '2008-09',
        caseTitle: 'Red Mountain v. Evangel Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-09_RedMountain_v_Evangel.pdf',
        summary:
            'A presbytery erred under BCO 15-3 by allowing its judicial '
            'commission to amend its report during a recess rather than having '
            'the report approved or disapproved without debate. The presbytery '
            'also erred by effectively judging a member as being in sin '
            'without due process.',
        outcome: 'Sustained',
      ),
    ],
    'bco_16-1': [
      SjcReference(
        caseNumber: '2004-08',
        caseTitle: 'Thornton v. Westminster Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-08_Thornton_v_Westminster.pdf',
        summary:
            'The administrative remedy of BCO 34-10 (divestiture) cannot be '
            'invoked against a minister who has received a legitimate call '
            'from a church session, because a valid call demonstrates the '
            '"manifest approbation of God\'s people" required by BCO 16-1.',
        outcome: 'Sustained',
      ),
    ],
    'bco_16-2': [
      SjcReference(
        caseNumber: '2007-09',
        caseTitle: 'Lee v. Korean Eastern Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-09%2610_Lee_v_KoreanEastern.pdf',
        summary:
            'A presbytery may not authorize a commission to act on behalf of a '
            'local church session without the session\'s or congregation\'s '
            'request or consent, violating BCO 16-2\'s principle that no man '
            'can be placed over a church without the election or consent of '
            'that church.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 19-20 — Licensing Candidates / Ordination
    // ─────────────────────────────────────────────────────────────
    'bco_19-2': [
      SjcReference(
        caseNumber: '1983-13',
        caseTitle: 'Codling v. Eastern Canada Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-13_Codling_v_ECanada.pdf',
        summary:
            'A presbytery illegally changed its standing rules to require a '
            'two-thirds majority for licensure at the same meeting where the '
            'vote was taken, contrary to Robert\'s Rules of Order. Objections '
            'to a candidate\'s ministry emphasis did not justify denial of '
            'licensure.',
        outcome: 'Sustained in Part',
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
            'There is nothing explicit or implicit in the BCO requiring '
            'congregational approval of changes to the terms of a pastor\'s '
            'call after the initial call is approved.',
        outcome: 'Not Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 21-22 — Election & Installation / Resignation
    // ─────────────────────────────────────────────────────────────
    'bco_21-1': [
      SjcReference(
        caseNumber: '2004-08',
        caseTitle: 'Thornton v. Westminster Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-08_Thornton_v_Westminster.pdf',
        summary:
            'A presbytery erred in declining to place a valid pastoral call in '
            'a minister\'s hands and citing BCO 20-10 (which applies to '
            'ministers serving another congregation) rather than BCO 21-1.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2011-14',
        caseTitle: 'Reese & Bech v. Philadelphia Presbytery',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-14_Reese%26Bech_v_Philadelphia.pdf',
        summary:
            'While there is no constitutional obligation to re-examine a '
            'minister transferring within a presbytery, there is no '
            'prohibition against asking pertinent questions related to whether '
            'a call is for the good of the church under BCO 21-1. Deeming '
            'parts of a complaint objectionable is not sufficient grounds to '
            'declare the whole complaint out of order.',
        outcome: 'Sustained',
      ),
    ],
    'bco_21-4': [
      SjcReference(
        caseNumber: '2007-08',
        caseTitle: 'Jones v. Louisiana Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-08_Jones_v_Louisiana.pdf',
        summary:
            'A "difference" with the Westminster Standards under BCO 21-4 does '
            'not require an overt denial or contradiction; it includes '
            'redefining confessional terms, describing the Standards as '
            'incomplete or inaccurate, or asserting positions that differ from '
            'the Standards. The case involved Federal Vision views of TE '
            'Wilkins.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2016-01',
        caseTitle: 'Aven v. Ohio Valley Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-01_Aven_v_OhioValley.pdf',
        summary:
            'A presbytery adequately complied with a prior SJC directive to '
            'hear further from a teaching elder regarding his stated '
            'difference with Larger Catechism 177 on admission to the Lord\'s '
            'Supper by receiving supplemental written materials. The SJC did '
            'not dictate any particular procedure for the follow-up '
            'examination.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2019-02',
        caseTitle: 'Schrock v. Philadelphia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-02_Schrock_v_Philadelphia.pdf',
        summary:
            'A presbytery must require a minister transferring from another '
            'denomination to state his differences with the Standards in his '
            'own words, and must categorize each stated difference as required '
            'by BCO 21-4 and RAO 16-3.e.5. Failure to judge and record the '
            'nature of a transferee\'s views is a failure of constitutional '
            'duty, not merely a record-keeping error.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2022-03',
        caseTitle: 'Klett v. Philadelphia Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-03_Klett_v_Philadelphia.pdf',
        summary:
            'Views affirming continuing gifts of prophecy and tongues as '
            'appropriate elements of corporate worship are hostile to the '
            'Westminster system of doctrine because they conflict with WCF 1.1 '
            'and 1.6 regarding the cessation of revelation, which is '
            'foundational to the system.',
        outcome: 'Sustained',
      ),
    ],
    'bco_21-5': [
      SjcReference(
        caseNumber: '1990-08',
        caseTitle: 'Bowen v. Eastern Carolina Presbytery',
        year: '1990',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1990-08_Bowen_v_EasternCarolina.pdf',
        summary:
            'Infant Baptism and Limited Atonement are fundamentals of the '
            'system of doctrine under BCO 21-5-2 and 24-5-2, and no exceptions '
            'to these doctrines may be given for officers in the church.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '1995-11',
        caseTitle: 'Landrum v. Mississippi Valley Presbytery',
        year: '1995',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1995-11_Landrum_v_MississippiValley.pdf',
        summary:
            'A private prayer language view of tongues was found within the '
            'bounds of the 1974 Pastoral Letter, but a candidate\'s view of '
            'prophecy that left the door open to continuing verbal revelation '
            'failed to maintain the finality and sufficiency of Scripture (WCF '
            '1.1, 1.6). Presbytery was instructed to note his view as an '
            'exception and to instruct him not to teach or preach it.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2005-01',
        caseTitle: 'Chastain v. Heritage Presbytery',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-01_Chastain_v_Heritage.pdf',
        summary:
            'A minister\'s letter-writing campaign to the congregation against '
            'Session decisions violated his ordination vows under BCO 21-5 to '
            'be subject to his brethren and maintain the peace and unity of '
            'the Church. The proper remedy for a minister who disagrees with a '
            'Session action is to file a complaint under BCO 43, not to '
            'publicly campaign against the decision.',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2005-08',
        caseTitle: 'Kim v. Korean Eastern Presbytery',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-08_Kim_v_KoreanEastern.pdf',
        summary:
            'Contumacy under BCO 32-6 can be broadly defined as failure to be '
            'subject to the brethren per the fourth ordination vow of BCO '
            '21-5, not limited to the narrow sense of refusal to appear before '
            'a court. TE Kim\'s conviction was sustained but excommunication '
            'was reduced to indefinite suspension from the sacraments.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2008-01',
        caseTitle: 'Crossroads Community v. Philadelphia Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-01_Crossroads_v_Philadelphia.pdf',
        summary:
            'A candidate who stated a personal difference with the BCO '
            'regarding women deacons but affirmed he would conduct his '
            'ministry in conformity with BCO requirements was properly '
            'approved. BCO 21-5 distinguishes between subscription to '
            'doctrinal standards (judged by whether a view strikes at '
            'fundamentals) and approval of the form of government (judged by '
            'credibility of commitment to the third ordination vow).',
        outcome: 'Not Sustained',
      ),
      SjcReference(
        caseNumber: '2009-07',
        caseTitle: 'Urish v. Rocky Mountain Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-07_Urish_v_RockyMountain.pdf',
        summary:
            'A presbytery did not commit clear error in approving a candidate '
            'who held that 1 Timothy 2:12 prohibits women from "authoritative '
            'teaching" (preaching) but not from all other forms of teaching '
            'under Session oversight, since neither the Westminster Standards '
            'nor the BCO explicitly address this specific question.',
        outcome: 'Not Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 23-24 — Pastoral Relationships / Elections
    // ─────────────────────────────────────────────────────────────
    'bco_23-1': [
      SjcReference(
        caseNumber: '2025-12',
        caseTitle: 'Assis & Brown v. South Florida Presbytery',
        year: '2025',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2025-12,%20-13_Assis_and_Brown_v_SFL_final.pdf',
        summary:
            'A pastoral call is a three-way agreement (minister, calling body, '
            'and presbytery) whose dissolution requires formal presbytery '
            'action under BCO 23-1. A church\'s departure from the PCA does '
            'not automatically dissolve the call.',
        outcome: 'Sustained',
      ),
    ],
    'bco_24-1': [
      SjcReference(
        caseNumber: '2019-03',
        caseTitle: 'Crouse v. Northwest Georgia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-03_Crouse_v_NWGeorgia.pdf',
        summary:
            'BCO 24-1 establishes a mandatory sequence of nomination, '
            'instruction, and examination for ruling elder candidates. A '
            'session may not add a peremptory "vetting" or prescreening step '
            'that eliminates nominees before they have received the required '
            'instruction and examination.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2019-11',
        caseTitle: 'Crouse v. Northwest Georgia Presbytery (Second Case)',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-11_Crouse_v_NWGeorgia.pdf',
        summary:
            'A Session has discretion to determine a deacon\'s eligibility for '
            're-election and may decline to advance a nomination without '
            'bringing formal charges, as no sitting officer is guaranteed '
            're-election at the end of a term. The filing of a complaint or '
            'appeal may never, standing alone, constitute proper grounds to '
            'deny any privilege of membership or office.',
        outcome: 'Denied',
      ),
    ],
    'bco_24-6': [
      SjcReference(
        caseNumber: '1990-08',
        caseTitle: 'Bowen v. Eastern Carolina Presbytery',
        year: '1990',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1990-08_Bowen_v_EasternCarolina.pdf',
        summary:
            'BCO 24-6 makes ordination perpetual, and a presbytery may not '
            'annul the election, ordination, and installation of church '
            'officers years after the fact without a trial. Removal from '
            'office requires due process.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2004-07',
        caseTitle: 'First Presbyterian Augusta v. Savannah River Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-07_FPCAugusta_v_SavannahRiver.pdf',
        summary:
            'BCO 24-6 does not prohibit a Session from informing the '
            'congregation of its right to seek dissolution of its official '
            'relationship with ruling elders and recommending that the '
            'congregation exercise those rights. A presbytery erred in '
            'annulling the Session\'s actions after the congregation voted to '
            'invoke BCO 24-6 proceedings.',
        outcome: 'Sustained',
      ),
    ],
    'bco_24-7': [
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Morton Smith v. Western Carolina Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'A congregational meeting is illegitimate when convened by a '
            'pastor acting alone after the Session majority voted to cancel '
            'it, and all proceedings at such a meeting (including elections '
            'and calls to ruling elders) are void.',
        outcome: 'Sustained in Part',
      ),
      SjcReference(
        caseNumber: '2019-11',
        caseTitle: 'Crouse v. Northwest Georgia Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-11_Crouse_v_NWGeorgia.pdf',
        summary:
            'A Session has discretion to determine a deacon\'s eligibility for '
            're-election and may decline to advance a nomination without '
            'bringing formal charges, as no sitting officer is guaranteed '
            're-election at the end of a term. The filing of a complaint or '
            'appeal may never, standing alone, constitute proper grounds to '
            'deny any privilege of membership or office.',
        outcome: 'Denied',
      ),
    ],
    // ═════════════════════════════════════════════════════════════
    // PART II — RULES OF DISCIPLINE (BCO Chapters 27–46)
    // PART III — WESTMINSTER STANDARDS REFERENCES
    // ═════════════════════════════════════════════════════════════

    // ─────────────────────────────────────────────────────────────
    // BCO Ch 27-28 — Presbytery
    // ─────────────────────────────────────────────────────────────
    'bco_27-5': [
      SjcReference(
        caseNumber: '2019-05',
        caseTitle: 'Goggan v. Missouri Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-05_Goggan_v_Missouri.pdf',
        summary:
            'The appellant failed to demonstrate sufficient reason to sustain any '
            'errors alleged in his appeal of his excommunication. The presbytery '
            'dismissed its judicial commission "with thanks" without a formal '
            'vote to approve or disapprove the commission\'s report as required '
            'by BCO 15-3, though this deficiency did not warrant reversal.',
        outcome: 'Denied',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 29 — General Assembly
    // ─────────────────────────────────────────────────────────────
    'bco_29-1': [
      SjcReference(
        caseNumber: '2005-09',
        caseTitle: 'Kim v. Korean Eastern Presbytery (Second Case)',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-09_Kim_v_KoreanEastern.pdf',
        summary:
            'The SJC found that Korean Eastern Presbytery acted '
            'unconstitutionally by failing to follow congregational meeting '
            'procedures, but because TE Kim had already been deposed in Case '
            '2005-08, the matter was moot. Unconstitutional actions by a '
            'presbytery do not justify a minister\'s refusal to obey the court\'s '
            'authority.',
        outcome: 'Sustained (moot)',
      ),
      SjcReference(
        caseNumber: '2006-06',
        caseTitle: 'Ehrlich v. North Georgia Presbytery',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-06_Ehrlich_v_NorthGeorgia.pdf',
        summary:
            'The Session of Intown Community Church acted within its authority '
            'under BCO 12-5 when it instructed members not to distribute an "open '
            'letter" to the congregation. The Session has jurisdiction to '
            'maintain order and peace within the congregation, and this did not '
            'unconstitutionally restrict the members\' rights under BCO 57-5 or '
            'WCF 20.2.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2007-08',
        caseTitle: 'Jones v. Louisiana Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-08_Jones_v_Louisiana.pdf',
        summary:
            'Louisiana Presbytery failed to apply the correct constitutional '
            'standard when examining TE Wilkins\' views on the Federal Vision, '
            'and erred in its application of BCO 21-4 regarding stated '
            'differences with the Westminster Standards. A presbytery must apply '
            'the denomination\'s doctrinal standards, not its own, when '
            'evaluating a minister\'s views.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2012-05',
        caseTitle: 'Hedman v. Pacific Northwest Presbytery',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-05_Hedman_v_PacificNorthwest.pdf',
        summary:
            'The SJC denied the complaint against Pacific Northwest Presbytery\'s '
            'acquittal of TE Leithart on five Federal Vision-related charges. '
            'Under BCO 39-3, the SJC could not reverse the lower court\'s factual '
            'findings absent clear error. The Presbytery carefully complied with '
            'procedural requirements, and neither the prosecution nor the '
            'complainant proved Leithart\'s views violated the system of '
            'doctrine.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2016-16',
        caseTitle: 'Sartorius v. Siouxlands Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-16_Sartorius_v_Siouxlands.pdf',
        summary:
            'The SJC denied the complaint against Siouxlands Presbytery\'s '
            'acquittal of TE Lawrence on Federal Vision-related charges, applying '
            'BCO 39-3 deference to the lower court. The decision raised '
            'significant concerns about lack of due process protections for '
            'acquitted persons in acquittal complaints and urged the PCA to '
            'consider amending the BCO.',
        outcome: 'Denied',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 30 — Church Censures
    // ─────────────────────────────────────────────────────────────
    'bco_30-1': [
      SjcReference(
        caseNumber: '2021-11',
        caseTitle: 'Park et al. v. Korean Central Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-11_Park_v_KCP.pdf',
        summary:
            'BCO 32-3 requires that at the first meeting of a judicial case, '
            'nothing substantive be done except appointing a prosecutor, ordering '
            'the indictment, and citing the accused. Imposing censure in the same '
            'meeting violated this requirement. An informal suspension by a '
            'non-PCA church cannot count as a valid censure under BCO 30-1.',
        outcome: 'Sustained',
      ),
    ],
    'bco_30-2': [
      SjcReference(
        caseNumber: '2007-12',
        caseTitle: 'Grady v. Southwest Florida Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-12_Grady_v_SouthwestFlorida.pdf',
        summary:
            'Southwest Florida Presbytery erred by reading into its minutes a '
            'committee report containing findings of "sins and errors" against a '
            'TE and appearing to adopt those findings. This effectively imposed '
            'the censure of admonition without due process (BCO 30-2). While a '
            'BCO 31-2 committee may form opinions about sins, the presbytery must '
            'clarify it has not adopted such findings as its own.',
        outcome: 'Sustained',
      ),
    ],
    'bco_30-3': [
      SjcReference(
        caseNumber: '2005-08',
        caseTitle: 'Kim v. Korean Eastern Presbytery',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-08_Kim_v_KoreanEastern.pdf',
        summary:
            'The SJC sustained the charge of contumacy and deposition against TE '
            'Kim but changed excommunication to indefinite suspension under BCO '
            '30-3, reasoning that excommunication was too severe for contumacy in '
            'a church governance dispute rather than a fundamental rejection of '
            'the faith. Deposition (removal from office) and excommunication '
            '(removal from membership) are distinct censures with different '
            'thresholds.',
        outcome: 'Partially Sustained',
      ),
    ],
    'bco_30-4': [
      SjcReference(
        caseNumber: '2023-09',
        caseTitle: 'Myers v. Illiana Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-09_Myers_v_Illiana.pdf',
        summary:
            'Suspension from the Sacraments cannot be elevated to excommunication '
            'without additional judicial process. The court must follow due '
            'process to find the person "incorrigible and contumacious" (BCO '
            '30-4) before elevating censures. The mere fact that a man disagrees '
            'with a guilty verdict is not per se evidence of being incorrigible '
            'or contumacious.',
        outcome: 'Reversed',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 31 — Preliminary Principles of Judicial Process
    // ─────────────────────────────────────────────────────────────
    'bco_31-2': [
      SjcReference(
        caseNumber: '2006-02',
        caseTitle: 'Memorial of Central Carolina Presbytery',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-02_Memorial_of_Central_Carolina.pdf',
        summary:
            'The SJC found that Louisiana Presbytery failed to demonstrate '
            'adequate examination of TE Wilkins\' published views on the Federal '
            'Vision, which raised serious questions about conformity with the '
            'Westminster Standards. The SJC directed Louisiana Presbytery to '
            'conduct a thorough investigation under BCO 31-2 and 13-9.f.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-12',
        caseTitle: 'Grady v. Southwest Florida Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-12_Grady_v_SouthwestFlorida.pdf',
        summary:
            'Southwest Florida Presbytery erred by reading into its minutes a '
            'committee report containing findings of "sins and errors" against a '
            'TE and appearing to adopt those findings. This effectively imposed '
            'the censure of admonition without due process (BCO 30-2). While a '
            'BCO 31-2 committee may form opinions about sins, the presbytery must '
            'clarify it has not adopted such findings as its own.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2008-14',
        caseTitle: 'White v. Siouxlands Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-14_White_v_Siouxlands.pdf',
        summary:
            'BCO 31-2 imposes a duty on presbyteries to investigate "reports '
            'affecting the Christian character" of members, and a report '
            'qualifying under BCO 31-2 does not require pre-validation to the '
            'standard of proof required at trial (BCO 35). The purpose of a BCO '
            '31-2 investigation is to determine whether a strong presumption of '
            'guilt exists, not to convict or absolve.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-28',
        caseTitle: 'Ruff v. Nashville Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-28_Ruff_v_Nashville.pdf',
        summary:
            'Nashville Presbytery erred by failing to conduct an adequate BCO '
            '31-2 investigation and by failing to find a strong presumption of '
            'guilt. A presbytery must document the work of its investigating body '
            'through a written report or in its minutes. The duty to proceed '
            'pastorally does not relieve the responsibility to act judicially — '
            'the two are parallel and complementary, not mutually exclusive.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-05',
        caseTitle: 'Payne et al. v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'BCO 31-2 affords presbyteries "great discretion" in how they conduct '
            'investigations into reports affecting the Christian character of a '
            'minister and does not prescribe particular investigation procedures. '
            'The complaint that the investigating committee failed to interview '
            'certain witnesses was not sustained. Complainants who are not '
            'members of the presbytery lack standing under BCO 43-1.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2009-06',
        caseTitle: 'Bordwine v. Pacific Northwest Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-06_Bordwine_v_PacificNW.pdf',
        summary:
            'The SJC sustained the complaint that Pacific Northwest Presbytery '
            'erred in its handling of TE Leithart\'s fitness to continue as a PCA '
            'Teaching Elder. The Record suggested aspects of his teachings '
            'conflicted with PCA standards and could be injurious to the peace '
            'and purity of the Church under BCO 13-9(f). The case was remanded '
            'with instructions to proceed with a BCO 31-2 investigation.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2011-18',
        caseTitle: 'Ruff v. Nashville Presbytery (Second Complaint)',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-18_Ruff_v_Nashville.pdf',
        summary:
            'Following remand, the SJC found that Presbytery conducted an '
            'adequate BCO 31-2 investigation and was permitted to conclude the '
            'matter under BCO 38-1. However, the confession was inadequate '
            'because it was "almost entirely abstract" and did not acknowledge '
            'particular sins against particular people. Citing WCF 15.5-6, men '
            'ought not content themselves with general repentance but must repent '
            'of particular sins particularly.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2015-08',
        caseTitle: 'Hardie v. Metro Atlanta Presbytery',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-08_Hardie_v_MetroAtlanta.pdf',
        summary:
            'An investigation conducted by a presbytery commission that resulted '
            'in a finding of strong presumption of guilt satisfied BCO 31-2. '
            'Presbytery\'s subsequent action to form a judicial commission, '
            'appoint a prosecutor, and suspend the appellant under BCO 31-10 was '
            'proper. The SJC applied BCO 39-3\'s "great deference" standard and '
            'found no clear error.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2020-12',
        caseTitle: 'Speck v. Missouri Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-12_Speck_v_Missouri.pdf',
        summary:
            'The BCO provides neither detailed standards for a BCO 31-2 '
            'investigation nor specific requirements for determining a strong '
            'presumption of guilt, leaving those matters to the court\'s judgment '
            'subject to BCO 39-3.3 deference. The complainant\'s '
            'characterizations of the accused\'s views were not shown to be '
            'accurate by the record.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2022-22',
        caseTitle: 'Turner v. South Florida Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-22_Turner_v_SouthFL.pdf',
        summary:
            'A presbytery has authority to investigate a Session under BCO 31-2, '
            'but a judicial commission cannot render judgments of guilt without '
            'presenting specific charges and conducting a trial, even when a '
            'Session refuses to appear. A trial is required before adjudicating '
            'guilt.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2022-04',
        caseTitle: 'Sheppard v. Highlands Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-04_Sheppard_v_Highlands.pdf',
        summary:
            'BCO 31-2 is unambiguous: once a court determines a strong '
            'presumption of guilt, it "shall institute process" — the court has '
            'no discretion to substitute pastoral reconciliation. Under BCO '
            '32-20, the matter was also time-barred since the offense occurred in '
            '2017 and process was not timely instituted.',
        outcome: 'Sustained',
      ),
    ],
    'bco_31-7': [
      SjcReference(
        caseNumber: '2009-06',
        caseTitle: 'Bordwine v. Pacific Northwest Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-06_Bordwine_v_PacificNW.pdf',
        summary:
            'The SJC sustained the complaint that Pacific Northwest Presbytery '
            'erred in its handling of TE Leithart\'s fitness to continue as a PCA '
            'Teaching Elder. The Record suggested aspects of his teachings '
            'conflicted with PCA standards and could be injurious to the peace '
            'and purity of the Church under BCO 13-9(f). The case was remanded '
            'with instructions to proceed with a BCO 31-2 investigation.',
        outcome: 'Sustained',
      ),
    ],
    'bco_31-8': [
      SjcReference(
        caseNumber: '2011-15',
        caseTitle: 'Hahn v. Philadelphia Metro West Presbytery',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-15_Hahn_v_PhilaMetroWest.pdf',
        summary:
            'While BCO 32-2 generally requires a court to commence process upon '
            'the filing of charges, BCO 31-8 affords the court discretion to '
            'decline when the accuser "is known to indulge a malignant spirit," '
            '"is himself under censure or process," or "is known to be litigious, '
            'rash or highly imprudent."',
        outcome: 'Denied',
      ),
    ],
    'bco_31-10': [
      SjcReference(
        caseNumber: '2015-08',
        caseTitle: 'Hardie v. Metro Atlanta Presbytery',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-08_Hardie_v_MetroAtlanta.pdf',
        summary:
            'An investigation conducted by a presbytery commission that resulted '
            'in a finding of strong presumption of guilt satisfied BCO 31-2. '
            'Presbytery\'s subsequent action to form a judicial commission, '
            'appoint a prosecutor, and suspend the appellant under BCO 31-10 was '
            'proper. The SJC applied BCO 39-3\'s "great deference" standard and '
            'found no clear error.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2021-06',
        caseTitle: 'Herron et al. v. Central Indiana Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-06_Herron_v_CIP.pdf',
        summary:
            'A BCO 31-10 suspension does not remove one as a member of the court, '
            'and denying a suspended minister access to presbytery minutes and '
            'meetings constitutes a "refusal of reasonable indulgence" (BCO '
            '43-2). Courts must ensure non-censure suspensions under BCO 31-10 '
            'are "never" done as censure.',
        outcome: 'Partially Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 32 — The Parties in Cases of Process
    // ─────────────────────────────────────────────────────────────
    'bco_32-2': [
      SjcReference(
        caseNumber: '2008-14',
        caseTitle: 'White v. Siouxlands Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-14_White_v_Siouxlands.pdf',
        summary:
            'BCO 31-2 imposes a duty on presbyteries to investigate "reports '
            'affecting the Christian character" of members, and a report '
            'qualifying under BCO 31-2 does not require pre-validation to the '
            'standard of proof required at trial (BCO 35). The purpose of a BCO '
            '31-2 investigation is to determine whether a strong presumption of '
            'guilt exists, not to convict or absolve.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2011-15',
        caseTitle: 'Hahn v. Philadelphia Metro West Presbytery',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-15_Hahn_v_PhilaMetroWest.pdf',
        summary:
            'While BCO 32-2 generally requires a court to commence process upon '
            'the filing of charges, BCO 31-8 affords the court discretion to '
            'decline when the accuser "is known to indulge a malignant spirit," '
            '"is himself under censure or process," or "is known to be litigious, '
            'rash or highly imprudent."',
        outcome: 'Denied',
      ),
    ],
    'bco_32-3': [
      SjcReference(
        caseNumber: '2007-11',
        caseTitle: 'Lee v. Korean Eastern Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-11_Lee_v_KoreanEastern.pdf',
        summary:
            'The SJC reversed the deposition and excommunication of TE Lee on '
            'procedural grounds. "Interim pastor" and "stated supply" are the '
            'same designation under BCO 22-6, limited to one year unless renewed '
            'by presbytery. The prosecution failed to meet BCO 32-3 requirements '
            'for proper service of the indictment — certified mail returned '
            'undelivered does not satisfy notice requirements.',
        outcome: 'Reversed',
      ),
      SjcReference(
        caseNumber: '2019-04',
        caseTitle: 'Williams v. Chesapeake Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-04_Williams_v_Chesapeake.pdf',
        summary:
            'Once an indictment is issued and a plea entered, the case is one of '
            'process under BCO 32 and cannot be converted to BCO 38-1 (case '
            'without process). BCO 38-1 requires the person to come forward '
            'voluntarily as his own accuser with a full confession; a partial '
            'plea to charges framed by a prosecutor does not satisfy this '
            'standard.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2021-11',
        caseTitle: 'Park et al. v. Korean Central Presbytery',
        year: '2021',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2021-11_Park_v_KCP.pdf',
        summary:
            'BCO 32-3 requires that at the first meeting of a judicial case, '
            'nothing substantive be done except appointing a prosecutor, ordering '
            'the indictment, and citing the accused. Imposing censure in the same '
            'meeting violated this requirement. An informal suspension by a '
            'non-PCA church cannot count as a valid censure under BCO 30-1.',
        outcome: 'Sustained',
      ),
    ],
    'bco_32-6': [
      SjcReference(
        caseNumber: '2015-11',
        caseTitle: 'Thompson v. South Florida Presbytery',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-11_Thompson_v_SouthFlorida.pdf',
        summary:
            'A BCO 30 censure cannot be imposed unless guilt is proven by a '
            'mutually acceptable BCO 38-1 confession, a guilty plea, or '
            'conviction at trial. The defendant\'s behavior did not constitute '
            'the immediately censurable contumacy envisioned in BCO 32-6(b), and '
            'the commission could not declare contumacy and excommunicate before '
            'trial.',
        outcome: 'Sustained',
      ),
    ],
    'bco_32-8': [
      SjcReference(
        caseNumber: '1978-01',
        caseTitle: 'Campbell v. Mid-Atlantic Presbytery',
        year: '1978',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1978-01_Campbell_v_Mid-Atlantic.pdf',
        summary:
            'The General Assembly found that Mid-Atlantic Presbytery had failed '
            'to properly hear the case and instructed the Presbytery to schedule '
            'a new hearing. The case addressed procedural questions about '
            'moderator conflicts of interest in judicial hearings.',
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
            'The SJC found multiple procedural errors: the judicial commission '
            'improperly constituted itself as a BCO 15-1 administrative '
            'commission rather than a judicial commission; witnesses were not '
            'examined in the presence of the accused as required by BCO 32-13; '
            'and the commission confused the standard of proof under BCO 35-5.',
        outcome: 'Sustained',
      ),
    ],
    'bco_32-20': [
      SjcReference(
        caseNumber: '2016-05',
        caseTitle: 'Troxell v. Presbytery of the Southwest',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-05_Troxell_v_Southwest.pdf',
        summary:
            'BCO 32-20\'s one-year limitation bars prosecution of offenses when '
            'process was not commenced within one year and the offense has not '
            '"recently become flagrant." When a presbytery initially chooses '
            'pastoral rather than judicial handling, it cannot later reset the '
            'timeline for prosecution.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2022-04',
        caseTitle: 'Sheppard v. Highlands Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-04_Sheppard_v_Highlands.pdf',
        summary:
            'BCO 31-2 is unambiguous: once a court determines a strong '
            'presumption of guilt, it "shall institute process" — the court has '
            'no discretion to substitute pastoral reconciliation. Under BCO '
            '32-20, the matter was also time-barred since the offense occurred in '
            '2017 and process was not timely instituted.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 33 — Original Jurisdiction by Higher Courts
    // ─────────────────────────────────────────────────────────────
    'bco_33-1': [
      SjcReference(
        caseNumber: '2008-11',
        caseTitle: 'Broadwater v. Chesapeake Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-11_Broadwater_v_Chesapeake.pdf',
        summary:
            'Chesapeake Presbytery erred when it assumed original jurisdiction '
            'under BCO 33-1 without first making a preliminary finding that the '
            'Session had refused to act. BCO 33-1 authorizes a presbytery to '
            'assume original jurisdiction only when the session refuses to act in '
            'doctrinal cases or cases of public scandal and two or more sessions '
            'request it.',
        outcome: 'Sustained in part',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 34 — Special Rules Pertaining to Process
    // ─────────────────────────────────────────────────────────────
    'bco_34-1': [
      SjcReference(
        caseNumber: '2004-08',
        caseTitle: 'Thornton v. Westminster Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-08_Thornton_v_Westminster.pdf',
        summary:
            'Westminster Presbytery erred in beginning divestiture under BCO '
            '34-10 when the minister\'s call had not actually been dissolved and '
            'he was not truly "without call for a prolonged period." The '
            'Presbytery also erred in declining to place a call from a church it '
            'had organized, violating BCO 20-10 and 21-1.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2016-08',
        caseTitle: 'Doty v. Nashville Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-08_Doty_v_Nashville.pdf',
        summary:
            'A church member not under presbytery jurisdiction lacks standing '
            'under BCO 43-1 to complain against a presbytery\'s action. When a '
            'presbytery treats allegations as reports under BCO 31-2 and 34-1 '
            'rather than a formal complaint, only members subject to the '
            'presbytery\'s jurisdiction may complain.',
        outcome: 'Dismissed (Judicially Out of Order)',
      ),
    ],
    'bco_34-7': [
      SjcReference(
        caseNumber: '2005-08',
        caseTitle: 'Kim v. Korean Eastern Presbytery',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-08_Kim_v_KoreanEastern.pdf',
        summary:
            'The SJC sustained the charge of contumacy and deposition against TE '
            'Kim but changed excommunication to indefinite suspension under BCO '
            '30-3, reasoning that excommunication was too severe for contumacy in '
            'a church governance dispute rather than a fundamental rejection of '
            'the faith. Deposition (removal from office) and excommunication '
            '(removal from membership) are distinct censures with different '
            'thresholds.',
        outcome: 'Partially Sustained',
      ),
    ],
    'bco_34-10': [
      SjcReference(
        caseNumber: '2004-08',
        caseTitle: 'Thornton v. Westminster Presbytery',
        year: '2004',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2004-08_Thornton_v_Westminster.pdf',
        summary:
            'Westminster Presbytery erred in beginning divestiture under BCO '
            '34-10 when the minister\'s call had not actually been dissolved and '
            'he was not truly "without call for a prolonged period." The '
            'Presbytery also erred in declining to place a call from a church it '
            'had organized, violating BCO 20-10 and 21-1.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2023-07',
        caseTitle: 'Evans v. Arizona Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-07_Evans_v_Arizona.pdf',
        summary:
            'At the time of divestiture, the minister was no longer subject to '
            'the presbytery\'s jurisdiction because he had affiliated with '
            'another branch of the visible church under BCO 38-3(a). Standing and '
            'jurisdiction must stand or fall together — a presbytery cannot claim '
            'jurisdiction to divest a minister while simultaneously denying him '
            'standing to appeal.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2025-12',
        caseTitle: 'Assis & Brown v. South Florida Presbytery',
        year: '2025',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2025-12,-13_Assis_and_Brown_v_SFL_final.pdf',
        summary:
            'South Florida Presbytery erred in divesting ministers of ordination '
            'under BCO 34-10 when the ministers were actively pastoring churches '
            'and seeking to transfer credentials. BCO 34-10 requires a minister '
            'truly be without a call. The divestiture was reversed and Presbytery '
            'was instructed to either approve calls to labor out of bounds per '
            'BCO 8-7 or pursue another course consistent with the BCO.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 35 — Evidence
    // ─────────────────────────────────────────────────────────────
    'bco_35-5': [
      SjcReference(
        caseNumber: '2012-03',
        caseTitle: 'Tarter v. Evangel Presbytery',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-03_Tarter_v_Evangel.pdf',
        summary:
            'The SJC found multiple procedural errors: the judicial commission '
            'improperly constituted itself as a BCO 15-1 administrative '
            'commission rather than a judicial commission; witnesses were not '
            'examined in the presence of the accused as required by BCO 32-13; '
            'and the commission confused the standard of proof under BCO 35-5.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 36 — Rendering of Judgment
    // ─────────────────────────────────────────────────────────────
    'bco_36-5': [
      SjcReference(
        caseNumber: '2007-04',
        caseTitle: 'Engel v. Evangel Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-04_Engel_v_Evangel.pdf',
        summary:
            'Evangel Presbytery erred by failing to remand the case to the '
            'Session with instructions either to initiate process or formally '
            'dismiss all charges. The Session had suspended the complainant from '
            'the sacraments without conducting a trial or receiving a confession, '
            'violating BCO 36. Presbytery could not determine guilt or innocence '
            'because no trial record existed.',
        outcome: 'Sustained in part',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 37 — Inflicting and Removing Church Censures
    // ─────────────────────────────────────────────────────────────
    'bco_37-3': [
      SjcReference(
        caseNumber: '2023-09',
        caseTitle: 'Myers v. Illiana Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-09_Myers_v_Illiana.pdf',
        summary:
            'Suspension from the Sacraments cannot be elevated to excommunication '
            'without additional judicial process. The court must follow due '
            'process to find the person "incorrigible and contumacious" (BCO '
            '30-4) before elevating censures. The mere fact that a man disagrees '
            'with a guilty verdict is not per se evidence of being incorrigible '
            'or contumacious.',
        outcome: 'Reversed',
      ),
    ],
    'bco_37-9': [
      SjcReference(
        caseNumber: '2022-23',
        caseTitle: 'Woodham v. South Florida Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-23_Woodham_v_SouthFL.pdf',
        summary:
            'While BCO 46-8 assignment of a deposed minister to a particular '
            'church is obligatory, it specifies neither a timeframe nor '
            'particular means. Until transferred, the deposed minister remains '
            'under Presbytery\'s jurisdiction. BCO 37-9(a) provides that the '
            'presbytery inflicting censures retains authority to remove them and '
            'restore to office, even after BCO 46-8 assignment.',
        outcome: 'Denied',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 38 — Cases Without Process
    // ─────────────────────────────────────────────────────────────
    'bco_38-1': [
      SjcReference(
        caseNumber: '2007-02',
        caseTitle: 'Malone v. Metropolitan New York Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-02_Malone_v_MetropolitanNY.pdf',
        summary:
            'Metropolitan New York Presbytery\'s commission exceeded its '
            'authority by rendering judgment when it was only authorized to '
            'investigate under BCO 31-2. A commission may not act beyond the '
            'powers clearly stated on the record by the presbytery (BCO 15-2, '
            '15-3). An exchange of letters acknowledging sin does not constitute '
            'the clear record required for a case without process under BCO 38-1.',
        outcome: 'Sustained in part',
      ),
      SjcReference(
        caseNumber: '2011-18',
        caseTitle: 'Ruff v. Nashville Presbytery (Second Complaint)',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-18_Ruff_v_Nashville.pdf',
        summary:
            'Following remand, the SJC found that Presbytery conducted an '
            'adequate BCO 31-2 investigation and was permitted to conclude the '
            'matter under BCO 38-1. However, the confession was inadequate '
            'because it was "almost entirely abstract" and did not acknowledge '
            'particular sins against particular people. Citing WCF 15.5-6, men '
            'ought not content themselves with general repentance but must repent '
            'of particular sins particularly.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2015-11',
        caseTitle: 'Thompson v. South Florida Presbytery',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-11_Thompson_v_SouthFlorida.pdf',
        summary:
            'A BCO 30 censure cannot be imposed unless guilt is proven by a '
            'mutually acceptable BCO 38-1 confession, a guilty plea, or '
            'conviction at trial. The defendant\'s behavior did not constitute '
            'the immediately censurable contumacy envisioned in BCO 32-6(b), and '
            'the commission could not declare contumacy and excommunicate before '
            'trial.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2016-09',
        caseTitle: 'Fordice v. Pacific Northwest Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-09_Fordice_v_PacificNW.pdf',
        summary:
            'After an investigative committee found a "strong presumption of '
            'guilt" and unanimously recommended judicial process, the presbytery '
            'improperly accepted the TE\'s BCO 38-1 confession but then adopted a '
            'substitute motion commending the TE instead of imposing censure. The '
            'SJC distinguished between deference on factual/discretionary matters '
            'and de novo review on constitutional interpretation (BCO 39-3(4)).',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2019-04',
        caseTitle: 'Williams v. Chesapeake Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-04_Williams_v_Chesapeake.pdf',
        summary:
            'Once an indictment is issued and a plea entered, the case is one of '
            'process under BCO 32 and cannot be converted to BCO 38-1 (case '
            'without process). BCO 38-1 requires the person to come forward '
            'voluntarily as his own accuser with a full confession; a partial '
            'plea to charges framed by a prosecutor does not satisfy this '
            'standard.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2020-07',
        caseTitle: 'Wilbourne v. Pacific Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-07_Wilbourne_v_Pacific.pdf',
        summary:
            'In a BCO 38-1 case without process, the accused comes forward with a '
            'mutually approved statement of facts. Reading a detailed negative '
            'report at the presbytery meeting that was not part of the agreed '
            'statement violated BCO 38-1 requirements. Introducing additional '
            'prejudicial material beyond the agreed statement was '
            'constitutionally improper.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2023-19',
        caseTitle: 'Huffman v. Tennessee Valley Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-19_Huffman_v_TNValley.pdf',
        summary:
            'BCO amendments affecting judicial rights should not be applied '
            'retroactively to cases already in progress under the prior rule. '
            'When the 2023 amendment to BCO 38-1 changed the right from complaint '
            'to appeal, a case near completion under the old rule should be '
            'adjudicated under pre-amendment terms.',
        outcome: 'Remanded',
      ),
    ],
    'bco_38-3': [
      SjcReference(
        caseNumber: '2009-11',
        caseTitle: 'Edison v. Southwest Florida Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-11-Edison_v_SouthwestFlorida.pdf',
        summary:
            'Once membership was conferred and a call approved, those actions '
            'could only be reversed through proper due process. A presbytery '
            'cannot retroactively undo reception of a member and approval of a '
            'call without following proper constitutional procedures. The '
            'Presbytery\'s unilateral rescission of membership was erroneous.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2023-07',
        caseTitle: 'Evans v. Arizona Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-07_Evans_v_Arizona.pdf',
        summary:
            'At the time of divestiture, the minister was no longer subject to '
            'the presbytery\'s jurisdiction because he had affiliated with '
            'another branch of the visible church under BCO 38-3(a). Standing and '
            'jurisdiction must stand or fall together — a presbytery cannot claim '
            'jurisdiction to divest a minister while simultaneously denying him '
            'standing to appeal.',
        outcome: 'Sustained',
      ),
    ],
    'bco_38-4': [
      SjcReference(
        caseNumber: '2002-10',
        caseTitle: 'Goerig v. Pacific Northwest Presbytery',
        year: '2002',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2002-10_Goerig_v_PacificNorthwest.pdf',
        summary:
            'The Session failed to follow the provisions of BCO 38-4 regarding '
            'erasure of membership. The procedural protections in BCO 38-4 '
            '(proper notice and waiting period) are mandatory before a name can '
            'be erased from the rolls.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2005-01',
        caseTitle: 'Chastain v. Heritage Presbytery',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-01_Chastain_v_Heritage.pdf',
        summary:
            'The case addressed questions about membership erasure under BCO '
            '38-4, including due process and proper notification requirements. '
            'The decision generated significant discussion about the scope of '
            'appellate review under BCO 42-9.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2018-02',
        caseTitle: 'Lewis v. Presbytery of the Mississippi Valley',
        year: '2018',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2018-02_Lewis_v_MSValley.pdf',
        summary:
            'The SJC ruled that a BCO 40-5 filing was out of order because the '
            'SJC\'s responsibility under Chapter 40 is upon referral from the '
            'General Assembly per RAO 16-10.c, not by direct filing. The SJC also '
            'noted that if the Session did not provide notice of erasure per BCO '
            '38-4, the member remains in good standing.',
        outcome: 'Out of Order',
      ),
      SjcReference(
        caseNumber: '2019-13',
        caseTitle: 'Gendy v. Central Florida Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-13_Gendy_v_CentralFL.pdf',
        summary:
            'A person removed from membership under BCO 38-4 retains standing to '
            'complain about that removal. BCO 38-4 erasure is explicitly "an act '
            'of pastoral discipline," and fundamental fairness requires that a '
            'member facing removal retains standing to challenge it; otherwise, a '
            'Session could remove any member without recourse.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 39 — General Review and Control
    // ─────────────────────────────────────────────────────────────
    'bco_39-3': [
      SjcReference(
        caseNumber: '2007-08',
        caseTitle: 'Jones v. Louisiana Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-08_Jones_v_Louisiana.pdf',
        summary:
            'Louisiana Presbytery failed to apply the correct constitutional '
            'standard when examining TE Wilkins\' views on the Federal Vision, '
            'and erred in its application of BCO 21-4 regarding stated '
            'differences with the Westminster Standards. A presbytery must apply '
            'the denomination\'s doctrinal standards, not its own, when '
            'evaluating a minister\'s views.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-28',
        caseTitle: 'Ruff v. Nashville Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-28_Ruff_v_Nashville.pdf',
        summary:
            'Nashville Presbytery erred by failing to conduct an adequate BCO '
            '31-2 investigation and by failing to find a strong presumption of '
            'guilt. A presbytery must document the work of its investigating body '
            'through a written report or in its minutes. The duty to proceed '
            'pastorally does not relieve the responsibility to act judicially — '
            'the two are parallel and complementary, not mutually exclusive.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2009-07',
        caseTitle: 'Urish v. Rocky Mountain Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-07_Urish_v_RockyMountain.pdf',
        summary:
            'Rocky Mountain Presbytery did not err in sustaining a candidate\'s '
            'theological examination when the candidate would allow a woman to '
            'teach from Scripture to men and women in non-preaching ministries '
            'under the authority of the Session. The matter involved the '
            'interpretation of Scripture not authoritatively exposited by the '
            'doctrinal standards, and the presbytery\'s latitude fell within '
            'permissible bounds under BCO 39-3.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2011-12',
        caseTitle: 'Appeal of Hahn v. Philadelphia Metro West Presbytery',
        year: '2011',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2011-15_Hahn_v_PhilaMetroWest.pdf',
        summary:
            'Under BCO 39-3(2), the higher court must defer to the lower court\'s '
            'factual findings regarding credibility of witnesses and should not '
            'reverse unless there is clear error. The Presbytery conducted a '
            'thorough trial with full opportunity for cross-examination, and the '
            'SJC found no clear error.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2012-05',
        caseTitle: 'Hedman v. Pacific Northwest Presbytery',
        year: '2012',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2012-05_Hedman_v_PacificNorthwest.pdf',
        summary:
            'The SJC denied the complaint against Pacific Northwest Presbytery\'s '
            'acquittal of TE Leithart on five Federal Vision-related charges. '
            'Under BCO 39-3, the SJC could not reverse the lower court\'s factual '
            'findings absent clear error. The Presbytery carefully complied with '
            'procedural requirements, and neither the prosecution nor the '
            'complainant proved Leithart\'s views violated the system of '
            'doctrine.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2016-09',
        caseTitle: 'Fordice v. Pacific Northwest Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-09_Fordice_v_PacificNW.pdf',
        summary:
            'After an investigative committee found a "strong presumption of '
            'guilt" and unanimously recommended judicial process, the presbytery '
            'improperly accepted the TE\'s BCO 38-1 confession but then adopted a '
            'substitute motion commending the TE instead of imposing censure. The '
            'SJC distinguished between deference on factual/discretionary matters '
            'and de novo review on constitutional interpretation (BCO 39-3(4)).',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2016-16',
        caseTitle: 'Sartorius v. Siouxlands Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-16_Sartorius_v_Siouxlands.pdf',
        summary:
            'The SJC denied the complaint against Siouxlands Presbytery\'s '
            'acquittal of TE Lawrence on Federal Vision-related charges, applying '
            'BCO 39-3 deference to the lower court. The decision raised '
            'significant concerns about lack of due process protections for '
            'acquitted persons in acquittal complaints and urged the PCA to '
            'consider amending the BCO.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2019-07',
        caseTitle: 'Fozard v. North Texas Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-07_Fozard_v_NorthTX.pdf',
        summary:
            'The SJC denied the complaint regarding a church\'s policy '
            'restricting integration of special case felons. The Session has '
            'discretion under BCO 11-2 over "circumstantial details" left to '
            '"Christian prudence." The SJC deferred to the lower court\'s '
            'discretion under BCO 39-3(3) and explicitly disclaimed endorsement '
            'of the Session\'s arguments from the Preliminary Principles.',
        outcome: 'Denied',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 40 — General Review and Control
    // ─────────────────────────────────────────────────────────────
    'bco_40-2': [
      SjcReference(
        caseNumber: '2007-13',
        caseTitle: 'Kniseley v. Rocky Mountain Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-13_Kniseley_v_RockyMountain.pdf',
        summary:
            'While the BCO uses "minister" synonymously with "teaching elder" and '
            '"pastor" in its formal definitions (BCO 4-1, 4-3), the BCO is silent '
            'on the general or colloquial use of the title "minister" for '
            'unordained church staff. Rocky Mountain Presbytery did not err in '
            'acknowledging this distinction.',
        outcome: 'Denied',
      ),
    ],
    'bco_40-3': [
      SjcReference(
        caseNumber: '1983-15',
        caseTitle: 'Smith v. Central Carolina Presbytery',
        year: '1983',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1983-15_Smith_v_CentralCarolina.pdf',
        summary:
            'Complaint about General Assembly directives and BCO responsibilities '
            'regarding exercise of proper oversight over presbyteries.',
        outcome: 'Not Sustained',
      ),
    ],
    'bco_40-4': [
      SjcReference(
        caseNumber: '2022-22',
        caseTitle: 'Turner v. South Florida Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-22_Turner_v_SouthFL.pdf',
        summary:
            'A presbytery has authority to investigate a Session under BCO 31-2, '
            'but a judicial commission cannot render judgments of guilt without '
            'presenting specific charges and conducting a trial, even when a '
            'Session refuses to appear. A trial is required before adjudicating '
            'guilt.',
        outcome: 'Partially Sustained',
      ),
    ],
    'bco_40-5': [
      SjcReference(
        caseNumber: '2006-02',
        caseTitle: 'Memorial of Central Carolina Presbytery',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-02_Memorial_of_Central_Carolina.pdf',
        summary:
            'The SJC found that Louisiana Presbytery failed to demonstrate '
            'adequate examination of TE Wilkins\' published views on the Federal '
            'Vision, which raised serious questions about conformity with the '
            'Westminster Standards. The SJC directed Louisiana Presbytery to '
            'conduct a thorough investigation under BCO 31-2 and 13-9.f.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2007-14',
        caseTitle: 'PCA v. Louisiana Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-14_PCA_v_Louisiana.pdf',
        summary:
            'Louisiana Presbytery was charged with dereliction of duty for '
            'failing to find a strong presumption of guilt that TE Wilkins\' '
            'views were out of conformity with the Standards and for failing to '
            'press forward with a trial. The Presbytery pled guilty, and the SJC '
            'imposed a public censure of admonition under BCO 13-9 and 40-5.',
        outcome: 'Guilty (Admonition)',
      ),
      SjcReference(
        caseNumber: '2018-02',
        caseTitle: 'Lewis v. Presbytery of the Mississippi Valley',
        year: '2018',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2018-02_Lewis_v_MSValley.pdf',
        summary:
            'The SJC ruled that a BCO 40-5 filing was out of order because the '
            'SJC\'s responsibility under Chapter 40 is upon referral from the '
            'General Assembly per RAO 16-10.c, not by direct filing. The SJC also '
            'noted that if the Session did not provide notice of erasure per BCO '
            '38-4, the member remains in good standing.',
        outcome: 'Out of Order',
      ),
    ],
    'bco_40-6': [
      SjcReference(
        caseNumber: '2016-14',
        caseTitle: 'Wills v. Metro Atlanta Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-14_Wills_v_MetroAtlanta.pdf',
        summary:
            'BCO 13-9(f) grants presbyteries the power to dissolve churches '
            'without mandating any particular procedure. BCO 40-6 (process '
            'against a lower court) does not apply to the dissolution authority '
            'of BCO 13-9(f). Under BCO 39-3.3, the SJC found no clear error in '
            'Presbytery\'s judgment, though a presbytery cannot dissolve without '
            'sufficient justification.',
        outcome: 'Denied',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 41-43 — Dissents / Overtures / References / Complaints / Appeals
    // ─────────────────────────────────────────────────────────────
    'bco_41-2': [
      SjcReference(
        caseNumber: '2022-10',
        caseTitle: 'PCA v. Herron',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-10_PCA_v_Herron.pdf',
        summary:
            'After a BCO 41 Reference trial accepted from Central Indiana '
            'Presbytery on charges of sexual harassment and bullying, the SJC '
            'conducted a 42-hour week-long trial and unanimously found the '
            'defendant not guilty on all charges after hearing 18 prosecution '
            'witnesses and 24 defense witnesses.',
        outcome: 'Not Guilty',
      ),
    ],
    'bco_42-3': [
      SjcReference(
        caseNumber: '2015-04',
        caseTitle: 'Thompson v. South Florida Presbytery',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-04_Thompson_v_SouthFlorida.pdf',
        summary:
            'A defendant in an ongoing judicial case may not use a BCO 43-1 '
            'complaint to obtain interlocutory appellate review of pre-trial '
            'rulings. Objections must be raised during process under BCO 32-14 or '
            'thereafter on appeal under BCO 42-3. PCA polity does not permit '
            'interlocutory appeals.',
        outcome: 'Dismissed (Judicially Out of Order)',
      ),
      SjcReference(
        caseNumber: '2020-06',
        caseTitle: 'Gordon v. Southern New England Presbytery',
        year: '2020',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2020-06_Gordon_v_SNEP.pdf',
        summary:
            'The appellant failed to identify specific errors with particularity, '
            'instead merely reciting the general grounds for appeal under BCO '
            '42-3 without supporting evidence. A higher court on appeal cannot '
            'consider evidence not presented at trial and will not speculate '
            'about defenses not raised in lower courts per BCO 39-3(1).',
        outcome: 'Denied',
      ),
    ],
    'bco_42-8': [
      SjcReference(
        caseNumber: '1997-06',
        caseTitle: 'Fitzsimmons v. Evangel Presbytery',
        year: '1997',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1997-06_Fitzsimmons_v_Evangel.pdf',
        summary:
            'The SJC found that Evangel Presbytery erred by failing to notify the '
            'appellant of the hearing date and by rescinding its finding that the '
            'appeal was in order rather than adjudicating it. Once an appeal is '
            'found to be in order under BCO 42-8, the court must adjudicate it; '
            'it cannot reverse that finding.',
        outcome: 'Sustained',
      ),
    ],
    'bco_42-9': [
      SjcReference(
        caseNumber: '1997-06',
        caseTitle: 'Fitzsimmons v. Evangel Presbytery',
        year: '1997',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/1997-06_Fitzsimmons_v_Evangel.pdf',
        summary:
            'The SJC found that Evangel Presbytery erred by failing to notify the '
            'appellant of the hearing date and by rescinding its finding that the '
            'appeal was in order rather than adjudicating it. Once an appeal is '
            'found to be in order under BCO 42-8, the court must adjudicate it; '
            'it cannot reverse that finding.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2005-01',
        caseTitle: 'Chastain v. Heritage Presbytery',
        year: '2005',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2005-01_Chastain_v_Heritage.pdf',
        summary:
            'The case addressed questions about membership erasure under BCO '
            '38-4, including due process and proper notification requirements. '
            'The decision generated significant discussion about the scope of '
            'appellate review under BCO 42-9.',
        outcome: 'Partially Sustained',
      ),
      SjcReference(
        caseNumber: '2007-04',
        caseTitle: 'Engel v. Evangel Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-04_Engel_v_Evangel.pdf',
        summary:
            'Evangel Presbytery erred by failing to remand the case to the '
            'Session with instructions either to initiate process or formally '
            'dismiss all charges. The Session had suspended the complainant from '
            'the sacraments without conducting a trial or receiving a confession, '
            'violating BCO 36. Presbytery could not determine guilt or innocence '
            'because no trial record existed.',
        outcome: 'Sustained in part',
      ),
    ],
    'bco_43-1': [
      SjcReference(
        caseNumber: '2009-05',
        caseTitle: 'Payne et al. v. Western Carolina Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-05-08-09-10_Payne_Linton_Lyons_Woodward_v_WesternCarolina.pdf',
        summary:
            'BCO 31-2 affords presbyteries "great discretion" in how they conduct '
            'investigations into reports affecting the Christian character of a '
            'minister and does not prescribe particular investigation procedures. '
            'The complaint that the investigating committee failed to interview '
            'certain witnesses was not sustained. Complainants who are not '
            'members of the presbytery lack standing under BCO 43-1.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2015-04',
        caseTitle: 'Thompson v. South Florida Presbytery',
        year: '2015',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2015-04_Thompson_v_SouthFlorida.pdf',
        summary:
            'A defendant in an ongoing judicial case may not use a BCO 43-1 '
            'complaint to obtain interlocutory appellate review of pre-trial '
            'rulings. Objections must be raised during process under BCO 32-14 or '
            'thereafter on appeal under BCO 42-3. PCA polity does not permit '
            'interlocutory appeals.',
        outcome: 'Dismissed (Judicially Out of Order)',
      ),
      SjcReference(
        caseNumber: '2016-07',
        caseTitle: 'Avery & Lewelling v. Nashville Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-07_Avery%26Lewelling_v_Nashville.pdf',
        summary:
            'Actions by a committee of presbytery are not the same as actions of '
            'the presbytery itself. A BCO 43-1 complaint must be directed at a '
            'court action, not a committee action. The 60-day filing requirement '
            'of BCO 43-2 is strictly applied.',
        outcome: 'Dismissed (Judicially Out of Order)',
      ),
      SjcReference(
        caseNumber: '2016-08',
        caseTitle: 'Doty v. Nashville Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-08_Doty_v_Nashville.pdf',
        summary:
            'A church member not under presbytery jurisdiction lacks standing '
            'under BCO 43-1 to complain against a presbytery\'s action. When a '
            'presbytery treats allegations as reports under BCO 31-2 and 34-1 '
            'rather than a formal complaint, only members subject to the '
            'presbytery\'s jurisdiction may complain.',
        outcome: 'Dismissed (Judicially Out of Order)',
      ),
      SjcReference(
        caseNumber: '2017-01',
        caseTitle: 'Dailey v. Heritage Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-01_Dailey_v_Heritage.pdf',
        summary:
            'BCO 43-3 permits elevation to a higher court only when the lower '
            'court denies the complaint or fails to consider it by the next '
            'stated meeting. When a Session ruled a document did not meet BCO '
            '43-1 complaint criteria (rather than denying the complaint), the '
            'proper course was a new complaint against the Session\'s procedural '
            'ruling, not direct elevation under BCO 43-3.',
        outcome: 'Sustained',
      ),
      SjcReference(
        caseNumber: '2019-13',
        caseTitle: 'Gendy v. Central Florida Presbytery',
        year: '2019',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2019-13_Gendy_v_CentralFL.pdf',
        summary:
            'A person removed from membership under BCO 38-4 retains standing to '
            'complain about that removal. BCO 38-4 erasure is explicitly "an act '
            'of pastoral discipline," and fundamental fairness requires that a '
            'member facing removal retains standing to challenge it; otherwise, a '
            'Session could remove any member without recourse.',
        outcome: 'Sustained',
      ),
    ],
    'bco_43-2': [
      SjcReference(
        caseNumber: '2007-16',
        caseTitle: 'Appeal of Grady v. Southwest Florida Presbytery',
        year: '2007',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2007-16_Grady_v_SWFlorida.pdf',
        summary:
            'The SJC affirmed the guilty verdicts on three charges but found that '
            'Presbytery\'s misapplication of BCO 13-9.c was so significant that '
            'it materially prejudiced the censure outcome. BCO 13-9 does not give '
            'a presbytery the power to direct a TE to resign. A complaint about '
            'an administrative BCO 31-10 suspension must be filed within 30 days '
            'under BCO 43-2 and cannot be raised for the first time on appeal.',
        outcome: 'Affirmed in part, reversed in part',
      ),
      SjcReference(
        caseNumber: '2016-07',
        caseTitle: 'Avery & Lewelling v. Nashville Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-07_Avery%26Lewelling_v_Nashville.pdf',
        summary:
            'Actions by a committee of presbytery are not the same as actions of '
            'the presbytery itself. A BCO 43-1 complaint must be directed at a '
            'court action, not a committee action. The 60-day filing requirement '
            'of BCO 43-2 is strictly applied.',
        outcome: 'Dismissed (Judicially Out of Order)',
      ),
      SjcReference(
        caseNumber: '2016-17',
        caseTitle: 'Webster & Fowler v. Heritage Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-17_Webster%26Fowler_v_Heritage.pdf',
        summary:
            'Heritage Presbytery did not err when it passed a motion advising a '
            'Session to postpone the election of a deacon candidate who might be '
            'unqualified. The motion constituted advice and counsel, not a '
            'binding directive that usurped Session authority under BCO 13-9. BCO '
            '43-2\'s anti-circularization provision applies to parties in a '
            'complaint, not general discussions among presbyters.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2023-19',
        caseTitle: 'Huffman v. Tennessee Valley Presbytery',
        year: '2023',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2023-19_Huffman_v_TNValley.pdf',
        summary:
            'BCO amendments affecting judicial rights should not be applied '
            'retroactively to cases already in progress under the prior rule. '
            'When the 2023 amendment to BCO 38-1 changed the right from complaint '
            'to appeal, a case near completion under the old rule should be '
            'adjudicated under pre-amendment terms.',
        outcome: 'Remanded',
      ),
    ],
    'bco_43-3': [
      SjcReference(
        caseNumber: '2016-02',
        caseTitle: 'Robertstad v. North Texas Presbytery',
        year: '2016',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2016-02_Robertstad_v_NorthTexas.pdf',
        summary:
            'A complaint filed via email does not satisfy BCO 43-3 filing '
            'requirements. The reference to email in BCO 43-3 applies only to the '
            'lower court\'s notification of its decision to the complainant, not '
            'to parties filing cases with a higher court.',
        outcome: 'Dismissed',
      ),
      SjcReference(
        caseNumber: '2017-01',
        caseTitle: 'Dailey v. Heritage Presbytery',
        year: '2017',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2017-01_Dailey_v_Heritage.pdf',
        summary:
            'BCO 43-3 permits elevation to a higher court only when the lower '
            'court denies the complaint or fails to consider it by the next '
            'stated meeting. When a Session ruled a document did not meet BCO '
            '43-1 complaint criteria (rather than denying the complaint), the '
            'proper course was a new complaint against the Session\'s procedural '
            'ruling, not direct elevation under BCO 43-3.',
        outcome: 'Sustained',
      ),
    ],
    'bco_43-10': [
      SjcReference(
        caseNumber: '2008-09',
        caseTitle: 'Red Mountain v. Evangel Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-09_RedMountain_v_Evangel.pdf',
        summary:
            'The SJC sustained all four specifications of error against Evangel '
            'Presbytery in its handling of a divorce case. Evangel Presbytery '
            'erred by improperly overturning the Session\'s findings, by '
            'mishandling its judicial commission report, and by incorrectly '
            'finding that the complainant did not have biblical grounds for '
            'divorce. The case established important principles about the proper '
            'relationship between session-level pastoral judgments and '
            'presbytery-level oversight.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 46 — Jurisdiction
    // ─────────────────────────────────────────────────────────────
    'bco_46-3': [
      SjcReference(
        caseNumber: '2002-10',
        caseTitle: 'Goerig v. Pacific Northwest Presbytery',
        year: '2002',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2002-10_Goerig_v_PacificNorthwest.pdf',
        summary:
            'The Session failed to follow the provisions of BCO 38-4 regarding '
            'erasure of membership. The procedural protections in BCO 38-4 '
            '(proper notice and waiting period) are mandatory before a name can '
            'be erased from the rolls.',
        outcome: 'Sustained',
      ),
    ],
    'bco_46-5': [
      SjcReference(
        caseNumber: '2009-11',
        caseTitle: 'Edison v. Southwest Florida Presbytery',
        year: '2009',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2009-11-Edison_v_SouthwestFlorida.pdf',
        summary:
            'Once membership was conferred and a call approved, those actions '
            'could only be reversed through proper due process. A presbytery '
            'cannot retroactively undo reception of a member and approval of a '
            'call without following proper constitutional procedures. The '
            'Presbytery\'s unilateral rescission of membership was erroneous.',
        outcome: 'Partially Sustained',
      ),
    ],
    'bco_46-8': [
      SjcReference(
        caseNumber: '2022-23',
        caseTitle: 'Woodham v. South Florida Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-23_Woodham_v_SouthFL.pdf',
        summary:
            'While BCO 46-8 assignment of a deposed minister to a particular '
            'church is obligatory, it specifies neither a timeframe nor '
            'particular means. Until transferred, the deposed minister remains '
            'under Presbytery\'s jurisdiction. BCO 37-9(a) provides that the '
            'presbytery inflicting censures retains authority to remove them and '
            'restore to office, even after BCO 46-8 assignment.',
        outcome: 'Denied',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // BCO Ch 57 — Amendments
    // ─────────────────────────────────────────────────────────────
    'bco_57-5': [
      SjcReference(
        caseNumber: '2006-06',
        caseTitle: 'Ehrlich v. North Georgia Presbytery',
        year: '2006',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2006-06_Ehrlich_v_NorthGeorgia.pdf',
        summary:
            'The Session of Intown Community Church acted within its authority '
            'under BCO 12-5 when it instructed members not to distribute an "open '
            'letter" to the congregation. The Session has jurisdiction to '
            'maintain order and peace within the congregation, and this did not '
            'unconstitutionally restrict the members\' rights under BCO 57-5 or '
            'WCF 20.2.',
        outcome: 'Denied',
      ),
      SjcReference(
        caseNumber: '2022-07',
        caseTitle: 'Appeal of Harrell et al. v. Covenant Presbytery',
        year: '2022',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2022-07_Harrell_v_Covenant.pdf',
        summary:
            'Members expressing disagreement about a pastoral candidate to the '
            'Session did not constitute chargeable offenses under BCO 57-5 or '
            'violations of the fifth and ninth commandments. The Session '
            'improperly tried and censured members for communicating their '
            'concerns about the organizing pastor.',
        outcome: 'Sustained',
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
            'The Session of Intown Community Church acted within its authority '
            'under BCO 12-5 when it instructed members not to distribute an "open '
            'letter" to the congregation. The Session has jurisdiction to '
            'maintain order and peace within the congregation, and this did not '
            'unconstitutionally restrict the members\' rights under BCO 57-5 or '
            'WCF 20.2.',
        outcome: 'Denied',
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
            'The SJC ruled that Eastern Carolina Presbytery erred in suspending a '
            'ruling elder. The case involved questions about infant baptism and '
            'limited atonement, establishing that these doctrines are '
            'fundamentals of the PCA\'s system of doctrine as defined in the '
            'Westminster Standards.',
        outcome: 'Sustained',
      ),
    ],
    // ─────────────────────────────────────────────────────────────
    // Westminster Larger Catechism
    // ─────────────────────────────────────────────────────────────
    'wlc_129': [
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Smith v. Western Carolina Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'WLC Q. 129 (duties of superiors) and Q. 145 (sins forbidden in the '
            'ninth commandment) were cited regarding charges of bearing false '
            'witness and abuse of authority during congregational proceedings in '
            'the dispute over Presbytery\'s handling of a local church matter.',
        outcome: 'Sustained in part',
      ),
    ],
    'wlc_145': [
      SjcReference(
        caseNumber: '2008-15',
        caseTitle: 'Smith v. Western Carolina Presbytery',
        year: '2008',
        pdfUrl:
            'https://pcahistory.org/pca/sjc/cases/2008-15_and_group_MHSmith_v_WesternCarolina.pdf',
        summary:
            'WLC Q. 129 (duties of superiors) and Q. 145 (sins forbidden in the '
            'ninth commandment) were cited regarding charges of bearing false '
            'witness and abuse of authority during congregational proceedings in '
            'the dispute over Presbytery\'s handling of a local church matter.',
        outcome: 'Sustained in part',
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
