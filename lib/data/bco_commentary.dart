// Historical commentary data for the PCA Book of Church Order.
// Sourced from https://pcahistory.org/bco/
// Primary source: F.P. Ramsay, Exposition of the Book of Church Order (1898)
// Additional source for Directory for Worship: Morton H. Smith,
//   Commentary on the Book of Church Order (6th ed., 2007)

class BcoCommentary {
  final String source;
  final String year;
  final String pageRef;
  final String text;
  final String webUrl;

  const BcoCommentary({
    required this.source,
    required this.year,
    required this.pageRef,
    required this.text,
    required this.webUrl,
  });
}

class BcoCommentaryData {
  static const Map<String, List<BcoCommentary>> commentaries = {
    'bco_1-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 11\u20132',
        text:
            'The supreme standard, the one rule of faith and practice, of the '
            'Presbyterian Church in the United States, is the Bible. Its subordinate '
            'standards are the doctrinal symbols (which are the Confession of Faith '
            'and the Catechisms) and the Book of Church Order. This book has three '
            'parts: the Form of Government, which treats of the ecclesiastical '
            'organization, its parts and their functions; the Rules of Discipline, '
            'which gives special regulations for directing the exercise of the '
            'ecclesiastical power of censure; and the Directory for Worship, which '
            'gives special directions for the conduct of public worship.\n\nThe Form '
            'of Government has seven chapters: the first on preliminary definitions; '
            'the next five on the five heads of the doctrine of church government ; '
            'and the seventh on amending the standards.\n\nSimilarly, the first '
            'chapter,\n\nCHAPTER I. - Of the Doctrine of Church Government,\n\nhas '
            'seven sections: one preliminary, one on each of the five heads of '
            'doctrine, and one on the relation of this doctrine to the existence and '
            'perfection of the Church :\n\nI. The scriptural form of church '
            'government, which is that of Presbytery, is comprehended under these '
            'five heads of doctrine, viz.: 1. Of the Church; 2. Of its Members; 3. Of '
            'its Officers: 4. Of its Courts; and 5. Of its Orders.\n\nHowever little '
            'the Scripture may lay down prescriptions in detail in the matter of '
            'church government, it teaches a form of church government; so that both '
            'those are in error who deny church government altogether, and those who, '
            'admitting that the Scripture teaches government, deny that it teaches '
            'any particular form of government. And the form of government is neither '
            'a form in which all are equally rulers nor a form in which one rules '
            'over many, but a form in which some rule over all. Neither any '
            'Congregational form in which the authority is in the body of the people, '
            'nor any Episcopal form in which the authority is in an individual, is '
            'scriptural, but only that form in which the authority is in a selected '
            'few acting together as a court. This is Presbytery, which means a court '
            'of elders. And the doctrine concerning this scriptural form of church '
            'government naturally falls under five heads. After telling what the '
            'Church is, it will be next in place to tell who constitute it, that is, '
            'of what members it consists. As it is governed by officers and not by '
            'the members, the next thing must be to tell what officers it has; but as '
            'these officers do not govern severally but jointly, the courts come next '
            'in place; and finally, when we have the courts for admitting to office, '
            'we may learn concerning orders, or how officers are ordained. It is this '
            'exhaustive and logical treatment that the Form of Government '
            'proposes.',
        webUrl: 'https://pcahistory.org/bco/fog/01/01.html',
      ),
    ],
    'bco_1-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '\u201cThis is a definition of the Church which the Lord Jesus Christ has '
            'erected in this world, and not of the Church as it is to be in the final '
            'consummation, nor of the Church as it now is in heaven as well as earth. '
            'The Church thus limited, the Lord Jesus Christ has erected; and he has '
            'erected it for this purpose, for the gathering and perfecting of the '
            'saints. For it is not the office of the Church to do all good in human '
            'society, nor even to work upon all men except so far as it does this in '
            'working upon a class, the saints. For them it has two things to do: '
            'first, to gather them, that is, out of the world into the Church; and '
            'second, to perfect them. The Church works upon men not already saints in '
            'their own consent in order to make them such, not in order to other '
            'ends, and upon saints, in order to make them perfect. By saints is meant '
            'persons that belong to Christ in sacred covenant.\n\nThis Church, this '
            'gathered body of saints on earth, is his visible kingdom of grace. His '
            'kingdom comprehends all things and persons, but his kingdom of grace is '
            'more especially the saints; and his kingdom of grace includes saints '
            'that have fallen asleep, but the Church, as an organization with a '
            'government administered through men in the flesh, is his visible kingdom '
            'of grace. But the point of the definition lies in this, that the Church '
            'is a kingdom, having Christ as King. This kingdom is not two, one before '
            'the coming of Christ in the flesh and the other after his coming; nor is '
            'it in accord with this definition to distinguish sharply between Church '
            'and Kingdom. All ages must include the millennial age, if there is to be '
            'a millennium. Nor can there be more than one Church in the world at the '
            'same time; and the use of the term to designate a part of the Church '
            'ought to be guarded from the implication that the part is the '
            'whole.\u201d',
        webUrl: 'https://pcahistory.org/bco/fog/01/02.html',
      ),
    ],
    'bco_1-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 14\u201315',
        text:
            '\u201cAlready by implication the membership of the Church is limited to '
            'saints; but here is a formal definition:\n\nIII. The members of this '
            'visible Church catholic are all those persons in every nation, together '
            'with their children, who make profession of the holy religion of Christ, '
            'and of submission to his laws.\n\nCatholic, which means universal, is '
            'added in order to lay emphasis upon the doctrine that the Church is not '
            'limited to some section of it, whatever name some section may assume for '
            'itself. Its members are persons who make profession of the religion of '
            'Christ. That this does not mean a profession of opinion merely, but of '
            'consent of will also, is made certain by the explicit mention of what is '
            'implied, \u201dand of submission to his laws.\u201c And the word '
            '\u201dholy\u201c implies the same idea as the word \u201dsaints,\u201c '
            'for by such a profession one becomes a saint, or discloses that he is a '
            'saint, that is, one belonging to Christ in sacred covenant. Not only are '
            'all persons making this profession members of the Church visible, but '
            'their children also. This includes the children of parents that reject '
            'infant baptism; for it is not baptism that makes them members. Baptism '
            'recognizes the membership that exists before the baptism is '
            'administered; for whoever binds himself to Christ in sacred covenant, '
            'thereby binds his children in the same covenant ; so that his child is '
            'holy as well as himself.\n\nIf it be objected that an infant cannot be '
            'holy, the answer to the objection is to be found in understanding the '
            'meaning of holy as here used, belonging to Christ in sacred covenant; '
            'for these infants of the saints must either be classed with the saints '
            'or with the profane, and the definition classes them with the '
            'saints.\n\nIt is to be observed that the visible Church includes all who '
            'profess the religion of Christ; that is, profess subjection to his laws, '
            'whether they are regenerated or not, and does not include any '
            'regenerated persons that do not make such profession, since without such '
            'profession, they are not visible as members of the Church. But is the '
            'visible Church of this paragraph identical with the visible kingdom of '
            'grace of the preceding paragraph? Yes. Christ uses false professors, and '
            'uses them as parts of his visible Church or Kingdom; for they are, '
            'temporarily, in and of this organization, even as a dead tooth is a part '
            'of the body.\n\nAgainst the doctrine that the Church is to be governed '
            'by all its members, the doctrine of Presbytery sets the assertion that '
            'all the powers of the Church are to be administered by officers, and '
            'against all claimants of right to exercise ecclesiastical power, besides '
            'the classes of officers here enumerated, it is denied that their claim '
            'is scriptural.',
        webUrl: 'https://pcahistory.org/bco/fog/01/03.html',
      ),
    ],
    'bco_1-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 15\u201316',
        text:
            '4.--IV. The officers of the Church, by whom all its powers\n\nthe other '
            'powers as well as powers of government strictly,\n\nare administered, '
            'are, according to the Scriptures, Ministers of the Word, Ruling Elders, '
            'and Deacons.\n\nThe power is vested in the body, but it is to be '
            'administered, not by the whole body, nor by committees appointed from '
            'the body, but by permanent Officers. These officers are not all one '
            'class, appointed to different functions from time to time, nor two '
            'classes only, as Elders and Deacons, the Elders being assigned from time '
            'to time to different works, but three classes: Ministers of the Word, '
            'Ruling Elders, and Deacons.',
        webUrl: 'https://pcahistory.org/bco/fog/01/04.html',
      ),
    ],
    'bco_1-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 16',
        text:
            'As already implied, the power of government in the stricter '
            'sense,\n\n5.--V. Ecclesiastical jurisdiction is not a several,\n\npower, '
            'to be exercised by an individual,\n\nbut a joint power, to be exercised '
            'by Presbyters in courts.\n\nPresbyter means an officer having joint '
            'jurisdiction with other officers.\n\nThese courts may have jurisdiction '
            'over one or many churches; but they sustain such mutual relations as to '
            'realize the idea of the unity of the Church.\n\nIt is necessary to note '
            'the distinction between \u201cchurch\u201d and \u201cChurch.\u201d The '
            'latter has been already defined in paragraph 2, and the former will be '
            'defined in paragraph 20. The Church is one. No group of churches is '
            'together independent of the whole Church; and especially can no '
            'particular church be, of right, independent of the Church catholic, any '
            'more than an individual member. This is an emphatic denial of '
            'Independency.',
        webUrl: 'https://pcahistory.org/bco/fog/01/05.html',
      ),
    ],
    'bco_1-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 16\u201317',
        text:
            'VI.--The ordination of officers is ordinarily by a court.\n\nis an '
            'emphatic denial of Episcopacy. For \u201cordinarily\u201d does not admit '
            'that sometimes an individual may, in his own authority rather than in '
            'the authority of a court, ordain officers, but that sometimes officers '
            'may be immediately appointed by Jesus Christ without the intervention of '
            'a court, as in the case of the Twelve Apostles.',
        webUrl: 'https://pcahistory.org/bco/fog/01/06.html',
      ),
    ],
    'bco_2-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 22\u201323',
        text:
            'Section II.--The Visible Church Defined.\n\nWhile the visible Church is '
            'one, it has two sorts of divisions, into different denominations and '
            'into particular churches; accordingly, this section, after affirming the '
            'unity of the Church in the first paragraph, discusses the division into '
            'denominations in the second paragraph, and the division into particular '
            'churches in the third paragraph.\n\n12.--I. The visible Church before '
            'the law, under the law, and now under the gospel, is one and the same, '
            'and consists of all those who make profession of the true religion, '
            'together with their children.\n\nThis is the same principle as that '
            'stated in paragraph 2; but, instead of the more sweeping \u201cin all '
            'ages,\u201d this particularizes three ages : before Moses, from Moses to '
            'Christ, and since Christ. This also repeats the principle stated in '
            'paragraph 3, only substituting for \u201cthe holy religion of Christ and '
            'of submission to his laws\u201d its equivalent, \u201cthe true '
            'religion.\u201d',
        webUrl: 'https://pcahistory.org/bco/fog/02/01.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 33',
        text:
            'This paragraph essentially restates what was found in BCO 1-2, namely, '
            'the definition of the visible Church in terms of those who profess their '
            'faith in the Lord Jesus together with their children. It is again '
            'asserted that this visible Church is the same in all ages, though the '
            'ages are here more/explicitly defined. The visible Church in these three '
            'periods is said to be \u201cone and the same.\u201d Again, as we have '
            'already noted, this excludes any view of the Church which would make a '
            'sharp distinction between the Old Testament people and the New Testament '
            'people. The Presbyterian view of the Church maintains the unity of '
            'God\'s people from the beginning of the Old Testament to the end of the '
            'New Testament.',
        webUrl: 'https://pcahistory.org/bco/fog/02/01.html',
      ),
    ],
    'bco_2-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 23\u201324',
        text:
            '13.--II. This visible unity of the body of Christ, though obscured, is '
            'not destroyed by its division into different denominations of professing '
            'Christians; but all of those which maintain the Word and Sacraments in '
            'their fundamental integrity are to be recognized as true branches of the '
            'Church of Jesus Christ.\n\nTwo principles are here conceded : that '
            'visible unity is desirable, and that the division into different '
            'denominations, into separate associations of churches, makes against '
            'this visible unity. As the separation of a particular church from other '
            'particular churches in one organization obscures church unity, so does '
            'the separation of an association of churches from union with other '
            'associations in one organization. But such division does not destroy '
            'visible unity. The real unity of the invisible Church is unity in '
            'Christ, the one Head ; and, since the members of different denominations '
            'are, in their profession, visibly united to Christ, their visible unity '
            'is not destroyed by this degree of separation. Indeed, it is not so much '
            'organizational separateness that contravenes organic unity as it is '
            'organizational disfellowship that argues organic disunity. Hence, a '
            'broad recognition is here given to other denominations. For, on the one '
            'hand, this recognition is explicitly extended to all that maintain the '
            'Word and Sacraments in their fundamental integrity ; and, on the other, '
            'it is not withheld from any professing Christians, though they reject '
            'some of the canon, or deny some of the teachings of Scripture, or '
            'pervert or omit the sacraments, even to the extent of trenching upon '
            'fundamental integrity. As to such, it must be inquired whether they '
            'really profess the true religion, that is, whether they profess the true '
            'religion of Christ and submission to his laws. And even if order should '
            'be found altogether absent from an association of those making such '
            'profession, they would themselves be a part of the Church, in spite of '
            'their lack of order.\n\nThe Presbyterian Church in the United States, '
            'then, continues its separate existence as a denomination only upon the '
            'ground that its members would not be allowed to obey all the laws of '
            'Christ in any other organization ; and it stands pledged to '
            'organizational union upon any basis permitting full obedience to all the '
            'teachings of Christ. And in call itself \u201cChurch,\u201d it does not '
            'mean to reserve this title for itself exclusively, but only to claim '
            'that it is tentatively endeavoring to make itself, as nearly as its '
            'enforced separateness will allow, conform to what Christ would have his '
            'one catholic visible Church to be.',
        webUrl: 'https://pcahistory.org/bco/fog/02/02.html',
      ),
      BcoCommentary(
        source: 'J. Aspinwall Hodge, What Is Presbyterian Law?',
        year: '1882',
        pageRef: 'p. 29',
        text:
            'Wherein consists the unity of the Church?\n\nNot in outward '
            'organization, nor in allegiance to any visible head, but in union with '
            'Christ, belief in and profession of his religion, and submission to his '
            'authority (John 10:16; Eph. 4:1-16). \u201cThis visible unity of the '
            'body of Christ, though obscured, is not destroyed by its divisions into '
            'different denominations of professing Christians, but all of those which '
            'maintain the word and sacraments in their fundamental integrity are to '
            'be recognized as true branches of the Church of Jesus Christ.\u201d This '
            'is the declaration of the Southern Presbyterian Church.*\n\n*Book of '
            'Church Order, ch. ii., sect. ii.',
        webUrl: 'https://pcahistory.org/bco/fog/02/02.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 33\u201334',
        text:
            'The existence of different denominations in the world may obscure the '
            'visible unity of the Body of Christ, but it does not destroy it. The '
            'truth of this statement is based upon the spiritual unity of the Church '
            'and not merely upon its external organizational unity. Ramsay '
            'says,\n\nThe real unity of the invisible Church is unity in Christ, the '
            'one head; and, since the members of different denominations are, in '
            'their profession, visibly united to Christ, their visible unity is not '
            'destroyed by this degree of separation. Indeed, it is not so much '
            'organizational separateness that contravenes organic unity as it is '
            'organizational disfellowship that argues organic disunity. Hence, a '
            'broad recognition is here given to\n\nother denominations.The '
            'Presbyterian Church in America thus recognizes all denominations, who '
            'maintain the Word and sacraments in their fundamental integrity.',
        webUrl: 'https://pcahistory.org/bco/fog/02/02.html',
      ),
    ],
    'bco_2-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 25',
        text:
            '14.--III. It is according to scriptural example that the Church should '
            'be divided into many particular churches.\n\nThe division of the Church '
            'into particular churches does not obscure its unity, provided the courts '
            'of the particular churches are not independent of the court of the '
            'Church. (Cf. Par. 5 [i.e., 1-5] ).',
        webUrl: 'https://pcahistory.org/bco/fog/02/03.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 34',
        text:
            'Here is a simple statement to the effect that by scriptural example\n '
            'the Church is seen to be divided into individual congregations.',
        webUrl: 'https://pcahistory.org/bco/fog/02/03.html',
      ),
    ],
    'bco_3-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 26\u201327',
        text:
            '16.--II. Ecclesiastical power, which is wholly spiritual, is twofold; '
            'the officers exercise it sometimes severally, as in preaching the '
            'Gospel, administering the Sacraments, reproving the erring, visiting the '
            'sick, and comforting the afflicted, which is the power of order; and '
            'they exercise it sometimes jointly in Church courts, after the form of '
            'judgment, which is the power of jurisdiction.\n\nThis must not be '
            'understood to contradict paragraph five. Even in exercising the power of '
            'order, that is, power that the individual has been ordained to exercise, '
            'he is subject to the orders of the court and to its review and control ; '
            'hence, what he does severally, that is, as an individual officer, he '
            'does as the agent of a court. This is true even of deacons, since they '
            'act under the immediate control of the Session. And so all official acts '
            'are as such to be according to the judgment of the court having '
            'jurisdiction. But the power of jurisdiction itself cannot be committed '
            'to an individual officer. For even official reproof of the erring by an '
            'individual officer cannot affect the ecclesiastical standing of the '
            'reproved. But it is important to note that the exercise of '
            'ecclesiastical power is not unofficial when it is exercised severally '
            'any more than when it is exercised jointly.',
        webUrl: 'https://pcahistory.org/bco/fog/03/02.html',
      ),
    ],
    'bco_3-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 27\u201328',
        text:
            '17.--III. The sole functions of the Church, as a kingdom and government '
            'distinct from the civil commonwealth, are to proclaim, to administer, '
            'and to enforce the law of Christ revealed in the Scriptures.\n\nThree '
            'functions, though really running into one another in action, are '
            'distinguished : to proclaim law, which is not legislation, but the '
            'publication of law ; to administer law, which is judicially to praise '
            'and censure actions as conforming or contrary to law, and to enforce '
            'law, which is the infliction of penalty for violation of law. The nature '
            'of penalties that the Church may inflict is not in this paragraph '
            'defined ; the law with which church government concerns itself is '
            'carefully limited. It is not the will of the Church or of its officers, '
            'but only the law of Christ, nor is it the law of Christ known, or '
            'supposed to be known, in any way, but only the law of Christ revealed in '
            'the Scriptures. The law there revealed, and that only. The Church may '
            'require nothing that Christ in the Scriptures does not require ; and the '
            'Church may endorse nothing that Christ does not in the Scriptures teach. '
            'Emphatically is nothing to be enforced because it is in the subordinate '
            'standards unless it is in the Scriptures. But the Church is not '
            'inhibited from formulating Christ\'s law as given in the Scriptures ; '
            'only it must be mere formulation of his law already thus revealed, and '
            'not some extra-scriptural regulation.\n\nThe proclaiming, administering '
            'and enforcing of this law is not only the function of the Church, but '
            'the only function of the Church as a government.\n\nThe scope of the '
            'Church\'s work is broader.',
        webUrl: 'https://pcahistory.org/bco/fog/03/03.html',
      ),
    ],
    'bco_3-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 28\u201329',
        text:
            '18.--IV. The Church, with its ordinances, officers, and courts, is the '
            'agency which Christ has ordained for the edification and government of '
            'His people, for the propagation of the faith, and for the evangelization '
            'of the world.\n\nThe meaning is not that the Church and its ordinances, '
            'etc., but that the Church, is the agency, and that to the Church, as '
            'equipment for its work, have been given, besides its life in all its '
            'members in varied forms and relations, especially ordinances, which are '
            'in the Scriptures, and officers and courts. The Church, then, and not '
            'the government of the Church, is the agency which Christ has ordained '
            'for this end : the edification and government of his people, the '
            'propagation of the faith from generation to generation, and the '
            'evangelization of the world. This work of edification and evangelization '
            'is not the work of church officials alone, but of the whole Church ; and '
            'it is not a work for voluntary combinations of saints and others to do, '
            'but for the Church only. While work done by members of the Church in '
            'voluntary societies among themselves, more or less apart from '
            'ecclesiastical organization, is work done by the Church, yet '
            'organizations, to do what the Church as an organization may do, tend to '
            'weaken and belittle the Church. Whatever is accomplished by '
            'organizations and societies for the edification of saints and the '
            'evangelization of the world, is not due to their not being Church so '
            'much as to the Church\'s putting forth its energies in them.\n\nAn '
            'exercise of ecclesiastical power, though put forth by courts or officers '
            'appointed according to the Scriptures, fails of the divine sanction, '
            'unless it conforms to the law of Christ ; and likewise will it fail of '
            'this sanction as an exercise of power, however fully it otherwise '
            'conforms to his law, if it is put forth by the unauthorized. '
            'For\n\n19.--V. The exercise of ecclesiastical power, whether joint or '
            'several, has the Divine sanction, when in conformity with the statutes '
            'enacted by Christ, the Lawgiver, and when put forth by courts or by '
            'officers appointed thereunto in His Word.',
        webUrl: 'https://pcahistory.org/bco/fog/03/05.html',
      ),
    ],
    'bco_3-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 29',
        text:
            '19.--V. The exercise of ecclesiastical power, whether joint or several, '
            'has the Divine sanction, when in conformity with the statutes enacted by '
            'Christ, the Lawgiver, and when put forth by courts or by officers '
            'appointed thereunto in His Word.\n\nAnd this holds even when the persons '
            'are in an office to which Christ has not really appointed them by his '
            'Spirit, but when he has appointed the office in his Word, and they have '
            'come into the office in the governmental method prescribed in Scripture. '
            'And it is important to remember that to resist official authority, put '
            'forth within the limitations here indicated, even by men secretly wicked '
            'themselves, is to resist Christ in his official dignity.',
        webUrl: 'https://pcahistory.org/bco/fog/03/06.html',
      ),
    ],
    'bco_4-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 30\u201331',
        text:
            '20.--I. A particular church consists of a number of professing '
            'Christians, with their offspring, associated together for Divine worship '
            'and godly living, agreeably to the Scriptures, and submitting to the '
            'lawful government of Christ\'s kingdom.\n\nThe language, '
            '\u201cprofessing Christians with their offspring,\u201d supplies the '
            'principle of paragraph 3 to a particular church. Besides this, five '
            'points are to be noticed : (a), One professing Christian cannot be a '
            'church; it requires a number. And yet, supposing a church loses its '
            'members until only one remains, is he a church? Strictly, while he is a '
            'member of the Church, he is not a member of a church; and yet Presbytery '
            'might, in such a case, continue the name of the church on its roll as '
            'having in the one member a potential nucleus of a church. But he '
            'certainly continues a member of the Church. (b) It is not any church '
            'members put down in the same list that constitute a church, but they '
            'must be associated together. (c) They must be associated together for '
            'divine worship and godly living. An association of such characters for '
            'conducting a certain industry would not be a church; but the object of '
            'their association in its meetings together; for, though the association '
            'were for godly living, and its meetings mainly for the study of the '
            'Scriptures, rather than for worship, it would not be a church. On the '
            'other hand, an association that aimed at worship, without godly living, '
            'would be a mockery of a church. (d) They must be associated for these '
            'objects agreeably to the Scriptures. This must not be pressed so far as '
            'to contravene the principles laid down in paragraphs 3 and 7; and yet an '
            'association fails of the idea of a church just so far as it does not '
            'proceed agreeably to the Scriptures. (e) The association must submit to '
            'the lawful government of Christ\'s kingdom; for so far as any '
            'association is rebellious against the lawful authority of Christ\'s '
            'kingdom, it is the contradiction of a church. Yet it must not be '
            'forgotten that bona fide submission to Christ is submission to the '
            'lawful government of his kingdom in its source and essence. Perfect '
            'submission to this lawful government involves submission to courts of '
            'Presbyters over many churches. (Cf. pars. 5 and 7.)',
        webUrl: 'https://pcahistory.org/bco/fog/04/01.html',
      ),
    ],
    'bco_4-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 31',
        text:
            '21.--II. Its officers are the Pastor, the Ruling Elders, and the '
            'Deacons.\n\nThis implies that, ordinarily, a particular church should '
            'have one Pastor, but a plurality of Ruling Elders and of Deacons. A '
            'church has no other officers than these; therefore trustees, '
            'Sunday-school officers, society officers, etc., are not officers of the '
            'church, nor independent of the control of the proper officers.',
        webUrl: 'https://pcahistory.org/bco/fog/04/02.html',
      ),
    ],
    'bco_4-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 31\u201332',
        text:
            '22. III.\n\nAnd the Deacons have no authority of rule whatever.\n\nIts '
            'jurisdiction being a joint power,\n\nas is all ecclesiastical '
            'jurisdiction,\n\nis lodged in the hands of the Church Session, '
            'consisting of the Pastor and Ruling Elders.\n\nThis jurisdiction is not '
            'committed to the Pastor acting severally, nor to the membership '
            'generally, but to the Session, which is a Presbytery, that is, a court '
            'of Presbyters. (Cf. par. 5) And no one can be a member of the Session, '
            'or have a vote therein, unless he is the Pastor or a Ruling Elder of the '
            'church.\n\nOVERTURES & AMENDMENTS:\n\n1988 - On recommendation from the '
            'Committee of Commissioners on Judicial Business [M16GA, 16-77, III, Item '
            '3, p. 170],\n it was proposed in part to \u201ca) Amend BCO 4-3 by '
            'omitting \u201dpastors\u201c and inserting \u201d(s)\u201c after '
            '\u201dpastor\u201c.\n\nAdopted and sent down to presbyteries for advice '
            'and consent.\n\n1989 - Proposed amendment failed, on not being approved '
            'by a sufficient number of Presbyteries, with 26 Presbyteries voting in '
            'favor and 12 against the amendment. [M17GA, 17-6, Item 3, '
            'pp.43-44]\n\nCONSTITUTIONAL INQUIRY:\n\n1985 - Inquiry #7, from the '
            'Session of Evangelical Presbyterian Church, Levittown, PA [M13GA, '
            'Appendix I, Item 7, p. 241]\n\nQuestion - Does the associate pastor, '
            'when he is not moderating Session, have a vote in that court?\n\nAnswer '
            '- The BCO 4-3, 12-1, 22-2 lists the member of Session which includes '
            'Pastors, Associate Pastors, and Ruling Elders. Every member of the '
            'Session, including the Moderator, is entitled to vote by virtue of his '
            'membership in the Session.\n\nAction - That the advice regarding Inquiry '
            '#7 be ratified. Adopted. [M13GA, 13-45, III, 49, p. 109]\n\n1985 - '
            'Inquiry #10, from the Session of Progressive Presbyterian Church, '
            'Princeton, NC [M13GA, Appendix I, Item 10, p. 242]\n\nQuestion - During '
            'a Session meeting, except in voting to break a tie vote, does the '
            'Moderator have a vote?\n\nAnswer - The BCO 4-3, 12-1, 22-2 lists the '
            'member of Session which includes Pastors, Associate Pastors, and Ruling '
            'Elders. Every member of the Session, including the Moderator, is '
            'entitled to vote by virtue of his membership in the Session.\n\nThe '
            'moderator may vote on all issues, not only in breaking or creating a tie '
            'vote.\n\nAction -\n That the advice regarding Inquiry #10 be ratified. '
            'Adopted. [M13GA, 13-45, III, Item 52, p. 109]\n\n1986 - Inquiry #1, from '
            'the Gainesville Presbyterian Church [M14GA, Appendix I, 9, p. 329 and '
            '14-52, Item 9, p. 124]\n\nQuestion - As we have read the Book of Church '
            'Order we cannot find any rule that forbids us from having several '
            'pastors on the staff of our church (as opposed to associate and '
            'assistant pastors). . . . If there is something in our standards that '
            'prohibits this practice, please inform us of it.\n\nAnswer - The PCA BCO '
            '4-3 reads \u201dIts jurisdiction, being a joint power, is lodged in the '
            'church session, which consists of its Pastor, Pastors, its Associate '
            'Pastor(s) and its Ruling Elders.\u201c BCO 12-1 (4) reads \u201dThe '
            'church Session consists of the Pastor, Associate Pastor(s), if there be '
            'any, and the Ruling Elders of a church.\u201c The the BCO is '
            'consistent.\n\nPCA practice has been to recognize one pastor as the '
            '\u201dsenior pastor\u201c in churches served by multiple pastors. (See '
            'BCO 12-1 and 23-1,3)\n\nSince the BCO makes no specific provision for '
            'co-pastors, various sections which clearly envision a single pastor '
            'would cause difficulties for which the BCO provides no solution (e.g., '
            'the Moderator of the Session, succession to the Senior Pastor).\n\nOn '
            'the principle of plurality of elders, the concept of co-pastor would not '
            'be inimical to presbyterianism. That \u201dmultiple pastors\u201c or '
            '\u201dco-pastors\u201c have historical precedent in presbyterianism is '
            'found in What is Presbyterian Law?, by J.A. Hodge, 1903 edition, p. 49: '
            '\u201dWhat are co-pastors? They are two or more Ministers associated '
            'together as Pastors of one or more churches, having equal '
            'authority.\u201c The BCO of the PCUS, 1932, XIV, 64 reads \u201dIn '
            'churches where there are 2 or more Pastors, they shall, when present, '
            'alternately preside\u201c (at a Session meeting).\n\nTherefore, the '
            'General Assembly instructs the Committee on Judicial Business to prepare '
            'language to clarify the procedures for utilizing co-pastors in a manner '
            'consistent with Biblical teaching on the plurality of elders as has been '
            'recognized in Presbyterian polity.\u201d\n\nGrounds - The recognition of '
            'ambiguity in the BCO and the absence of specific provisions for the '
            'functioning of co-pastors is insufficient reason to advise against the '
            'practice of co-pastors which both the majority and minority reports '
            'recognize as having Biblical warrant and historical Presbyterian '
            'precedent. The BCO Chapter 1 specifically addresses the priority of '
            'Scripture and the obligation of church courts to uphold the laws of '
            'Scripture.\n\n[Note 1: the response adopted, as per page 129 indicates '
            'that the concluding statement on p. 329, to wit, \u201c...the use of '
            'multiple pastors should be avoided...\u201d must be seen as superceded '
            'by the wording in the Grounds portion of the above answer.]\n\n[Note 2: '
            'In 1988, BCO amendments were sent down to presbyteries (see M16GA, '
            '16-77, III, 3, p. 170), but defeated in 1989 (see M17GA, 17-6, Item 3, '
            'p. 43).\n\n1986 - Inquiry #16, from Faith Presbyterian Church, Brandon, '
            'MS [M14GA, Appendix I, Item 16, p. 336 and 14-52, Item 45, p. '
            '128]\n\nQuestions -\n\n1. Does the Teaching Elder have full voting '
            'rights in the Session?\n\n2. Secondly, we need to know whether or not a '
            'raise or reduction in the pastor\'s salary is subject to congregational '
            'approval.\n\nAnswers -\n\n1. The BCO 4-3, 12-1, 22-2 lists the members '
            'of the Session which include Pastors, Associate Pastors, and Ruling '
            'Elders. Every member of the Session, including the moderator, is '
            'entitled to vote by virtue of his membership in the Session.\n\nThe '
            'moderator may vote on all issues, not only in breaking or creating a tie '
            'vote. M13GA, Appendix I, Item 10, p. 242.\n\n2. The BCO is not explicit '
            'on this matter of changes in terms of call. Since BCO 20-6 requires that '
            'terms of call be determined by the congregation (including financial '
            'stipulations) any changes in those terms may also be approved by the '
            'congregation.\n\nGrounds - This response is supported by the prior '
            'action of the General Assembly in the parallel matter of Presbytery '
            'approval of changes in the terms of call: BCO 20-1 indicates that '
            'Presbytery must approve the call of a pastor. The call establishes the '
            'relationship of the pastor to the calling body. The BCO is silent '
            'concerning amending the call; however, inasmuch as the initial '
            'relationship must be approved by Presbytery, it would follow that if any '
            'changes are made in the original call, the Presbytery would necessarily '
            'have to approve the changes in the call for the protection of both the '
            'pastor and the calling body. [M11GA (1983), 11-36, III, Item 55, p. '
            '101].\n\nAdopted, 4-3, 1 abstention.',
        webUrl: 'https://pcahistory.org/bco/fog/04/03.html',
      ),
    ],
    'bco_4-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 34\u201335',
        text:
            '24.--V. The ordinances established by Christ, the Head, in His Church, '
            'are\n\nnine in number :\n\n1.\n prayer;\n\na form of worship in which '
            'all are to engage either audibly or silently ;\n\n2.\n singing '
            'praises;\n\nwhich differs from prayer more in the manner of the '
            'expression than in the matter of it, though petition is the prevalent '
            'element in prayer, and praise in song, and in which those that cannot '
            'sing with the voice may yet join in attention and consent ;\n\n3.\n '
            'reading, expounding and preaching the Word of God;\n\nin which not only '
            'the reader, expounder, or preacher worships, but also the hearer, if he '
            'listens to it not as the word of men, but as the word of God ;\n\n4.\n '
            'administering the sacraments of baptism and the Lord\'s Supper;\n\nin '
            'which not only the administrator and the immediate participants worship, '
            'but any spectator that reverences God and his will as set forth in these '
            'ordinances ;\n\n5.\n public solemn fasting and thanksgiving;\n\nin which '
            'all may immediately participate, as well as through attention and '
            'consent ;\n\n6.\n catechising;\n\nwhich is a form of instruction helpful '
            'to all that listen, and a form of worship to all that even listen with '
            'consent ;\n\n7.\n making offerings for the relief of the poor and for '
            'other pious uses;\n\nin which all should join according to their several '
            'ability, or, if unable to make an outward offering, with their consent '
            'and desire, and which is worship if done in expression of reverence '
            'toward God ;\n\n8.\n exercising discipline;\n\nwhich is worship to all '
            'who act in it or witness it with reverence for God as thus manifesting '
            'his will and authority;\n\n9.\n and blessing the people.\n\nwhich is '
            'worship to him that pronounces the blessing, and to him that accepts it '
            'in reverence for God thus declaring his mind. All these are parts of '
            'worship, and of joint worship ; and this and godly living are what the '
            'members of a particular church are associated together for. These are '
            'all to be done in the assembled church, but only as acts of worship ; '
            'and only these are to be done.\n\nThe election of officers by the people '
            'lying back of the exercise of all official functions in the church\'s '
            'ordinances is included in them, and the term discipline is to be '
            'understood here in its broadest sense, as indeed all these terms.',
        webUrl: 'https://pcahistory.org/bco/fog/04/04.html',
      ),
    ],
    'bco_6-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 42\u201344',
        text:
            '[no comparable text for comment by Ramsay]\n\nCONSTITUTIONAL '
            'INQUIRY:\n\n[Under BCO 24-3, compare Reference #3 from 1982 and Inquiry '
            '#9 from 1984]',
        webUrl: 'https://pcahistory.org/bco/fog/06/02.html',
      ),
    ],
    'bco_6-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 42\u201343',
        text:
            '30.--II. All baptized persons\n\nhowever long they may have persisted in '
            'not embracing Christ,\n\nare\n\nby reason of the covenant still binding '
            'upon all the parties,\n\nentitled to the watchful care, instruction and '
            'government of the Church, even though they are adults, and have made no '
            'profession of faith in Christ.\n\n31.--III. Those only who have made a '
            'profession of faith in Christ are entitled to all the rights and '
            'privileges of the Church.\n\nFor if they are not yet competent to act '
            'for themselves, there are some rights and privileges that they are not '
            'yet capable of exercising and enjoying ; and much more is this so if '
            'they neglect to have faith in Christ. They cannot be recognized as '
            'having this faith if they do not profess it.',
        webUrl: 'https://pcahistory.org/bco/fog/06/03.html',
      ),
    ],
    'bco_6-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 42\u201343',
        text:
            '31--III Those only who have made a profession of faith in Christ are '
            'entitled to all the rights and privileges of the Church.\n\nFor if they '
            'are not yet competent to act for themselves, there are some rights and '
            'privileges that they are not yet capable of exercising and enjoying; and '
            'much more is this so if they neglect to have faith in Christ. They '
            'cannot be recognized as having this faith if they do not profess it.',
        webUrl: 'https://pcahistory.org/bco/fog/06/04.html',
      ),
    ],
    'bco_7-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 44',
        text:
            'Enlarging upon paragraph 4, this chapter has a preliminary section on '
            'the classification of these officers, followed by three sections on the '
            'three classes of officers.\n\nSection 1 -- Of their General '
            'Classification.\n\nThere are three paragraphs : one on extraordinary '
            'officers that have ceased ; another on the permanent officers ; and a '
            'third against assuming any titles or functions beyond what the Scripture '
            'assigns.\n\n32.--I. Under the New Testament,\n\nit being assumed here '
            'that the order of the Church under the previous dispensation does not '
            'now obtain except so far as it continued into and through the change '
            'from that dispensation to this,\n\nour Lord at first collected his '
            'people out of different nations, and united them to the household of '
            'faith by the mission of extraordinary officers, endued by miraculous '
            'gifts, which have long since ceased.\n\nAnd since the miraculous gifts '
            'have ceased, all classes of officers having functions that require '
            'miraculous gifts have also ceased.',
        webUrl: 'https://pcahistory.org/bco/fog/07/01.html',
      ),
    ],
    'bco_7-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 45\u201346',
        text:
            '33.--II. The whole polity of the Church consists in doctrine, '
            'government, and distribution.\n\nBy polity is meant activity as an '
            'organization. This whole activity consists in, or the sole work of the '
            'organized Church is limited to, doctrine, which is teaching or '
            'proclaiming the law of Christ revealed in the Scriptures; government, '
            'which is administering and enforcing this law (par. 17); and '
            'distribution, which is the application of the material offerings '
            'presented in the worship that the Church maintains in obedience to this '
            'law. And as the Church has nothing else to do but these three things, so '
            'it needs only the three classes of officers corresponding to these three '
            'functions.\n\nAnd the ordinary and perpetual officers in the Church are, '
            'Teaching Elders, or Ministers of the Word, who are commissioned to '
            'preach the gospel and administer the sacraments, and also to rule ; '
            'Ruling Elders, whose office is to wait on government ; and Deacons, '
            'whose function is the distribution of the offerings of the faithful for '
            'pious uses.\n\nThe philosophy of the classification is this, that '
            'government and distribution are ways or means of teaching, or means of '
            'preserving the Church as a teaching organization ; and all the functions '
            'of the organized Church may be reduced to one, TEACHING and what is '
            'necessary thereto. The official teacher, then, has also ex officio the '
            'powers of government and distribution. So far as this teaching takes the '
            'form of ruling, there are joined with the teaching elders other elders, '
            'that, while not having the teaching office in its fullest scope, have it '
            'on its governmental side. And these officers, as rulers, must either '
            'themselves distribute the offerings, or have it done under their '
            'supervision ; and for this function the deacons are provided. It is, '
            'therefore, the office of the Deacons to relieve the Elders of the care '
            'of the secular affairs of the Church, and it is the office of the Ruling '
            'Elders to co-operate with the Teaching Elders in the governmental side '
            'of their work. (Administering the sacraments, being a form of teaching '
            'as distinguished from ruling, is reserved to the Teaching Elder.)',
        webUrl: 'https://pcahistory.org/bco/fog/07/02.html',
      ),
    ],
    'bco_8-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 46\u201348',
        text:
            'Section II.--Of the Ministers of the Word.\n\nAfer a paragraph on the '
            'dignity and functions of this officer, and another on his '
            'qualifications, a third points out different works to which he may be '
            'called, of which three different works are named particularly ; and then '
            'follows a paragraph on each of these three sorts of work, and a '
            'paragraph on the unclassified sorts of work.\n\n35.--I. This office is '
            'the first in the Church, both for dignity and usefulness.\n\nThere are, '
            'then, three grades of office, of which the Minister of the Word is the '
            'highest, and the Deacon is the lowest.\n\nThe person who fills it has in '
            'Scripture different titles expressive of his various duties.\n\nSome of '
            'these titles may also be given to Ruling Elders, since they share in the '
            'functions of this office in one aspect of it.\n\nAs he has the oversight '
            'of the flock of Christ, he is termed Bishop. As he feeds them with '
            'spiritual food, he is termed Pastor.\n\nThis is the Latin word for '
            'shepherd.\n\nAs he serves\n Christ in the Church, he is termed Minister. '
            'As it is his duty to be grave and prudent, and an example to the flock, '
            'and to govern well in the house and kingdom of Christ, he is termed '
            'Presbyter or Elder.\n\n(Greek and English terms of the same '
            'meaning).\n\nAs he is the messenger\n\n(the Greek for which is '
            'angel)\n\nof God, he is termed Angel of the Church. As he is sent to '
            'declare the will of God to sinners, and to beseech them to be reconciled '
            'to God through Christ, he is termed Ambassador. As he bears the glad '
            'tidings of salvation to the ignorant and perishing, he is termed '
            'Evangelist. As he stands to proclaim the Gospel, he is termed Preacher. '
            'As he expounds the Word, and by sound doctrine both exhorts and '
            'convinces the gainsayer, he is termed Teacher. As he dispenses the '
            'manifold grace of God, and the ordinances instituted by Christ, he is '
            'termed Steward of the mysteries of God. These titles do not indicate '
            'different grades of office, but all describe one and the same '
            'officer.\n\nThese ten terms, though applied even to Apostles in the New '
            'Testament, do not designate what is peculiar to their extraordinary '
            'office, but only what office they had in common with all other officers '
            'of this class. Even then their special functions were not dependent upon '
            'their holding a higher grade of office (for the Apostles themselves did '
            'not belong to a higher grade of officers than ordinary Ministers of the '
            'Word), but upon their miraculous gifts. And now Ministers should be set '
            'to different sorts of work, according to their different enduements and '
            'gifts ; but this specialization in functions does not destroy parity in '
            'official rank.',
        webUrl: 'https://pcahistory.org/bco/fog/08/01.html',
      ),
    ],
    'bco_8-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 48\u201349',
        text:
            '36.--II. He that fills this office should possess a competency of human '
            'learning, and be blameless in life, sound in the faith, and apt to teach '
            '; he should exhibit a sobriety and holiness of conversation becoming the '
            'gospel; he should rule his own house well ; and should have a good '
            'report of them that are without.\n\nHere are named four kinds of '
            'administrations, of which the first kind is in the man, and the other '
            'three manifestations of what is in him and thus evidential of the '
            'fundamental qualifications being in him. And the fundamental '
            'qualifications are four. One of these he should possess, for it is '
            'extrinsic to his individuality : a competency of human learning. What is '
            'a competency is not here indicated. The other three he should be, for '
            'they are qualifications intrinsic to his individuality. The most '
            'important is a blameless life. While the word must not be pressed to '
            'mean more than relative blamelessness, yet it must not be weakened so as '
            'to admit any into this office that would not be properly classed as '
            'blameless in life in a comparative classification of professors into the '
            'blameless and the blemished. Among those that might in this sense be '
            'classed as blameless in life, some are relatively sound in their '
            'beliefs, and others are erratic. The latter class, however blameless in '
            'life, are not qualified for the ministry of the truth. Some men that are '
            'blameless in life and sound in the faith are not apt at teaching others, '
            'and for this reason are disqualified for the teaching office. If now a '
            'man has these fundamental qualifications, they should manifest '
            'themselves in three ways. In general there should appear in his '
            'conversation or behavior a sobriety or propriety, and a holiness or '
            'savor of consecration, such as become the gospel; for the life should '
            'not only be negatively blameless, but positively exhibiting a gospel '
            'sobriety and holiness. If he is in any relation of authority over '
            'others, he ought to show ability to rule well; and this is especially '
            'true of the head of a family. For no man is qualified to rule in God\'s '
            'house who cannot rule in his own. And, unreasonable as men of the world '
            'may be in judging the saints, yet no one is fit to be in a position of '
            'leadership in the Church before the world who cannot command the '
            'world\'s respect for his piety and morality. Jesus, even at the very '
            'moment of his condemnation and rejection, had a good report of them that '
            'were without.',
        webUrl: 'https://pcahistory.org/bco/fog/08/02.html',
      ),
    ],
    'bco_8-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 49\u201352',
        text:
            '38.--IV. When a minister is called to labour as a Pastor, it belongs to '
            'his office to pray for and with his flock, as the mouth of the people '
            'unto God ; to feed the flock by reading, expounding and preaching the '
            'Word ; to direct the congregation in singing the praises of God ; to '
            'administer the sacraments ; to bless the people from God ; to catechise '
            'the children and youth ; to visit officially the people, devoting '
            'especial attention to the poor, the sick, the afflicted, and the dying ; '
            'and, with the other Elders, to exercise the joint power of '
            'government.\n\nAll ministers are pastors, inasmuch as it is the duty of '
            'them all to feed the people of God with spiritual food (par. 35); but '
            'here the term is used of one appointed specially to this work in a '
            'particular church; and while what he is charged with, all ministers are '
            'charged with in their several positions, the duties that specially '
            'belong to him in his position are here enumerated. Seven things he is to '
            'do severally, or by himself. Some of these it may be proper for all '
            'saints to do according to their capacities and opportunities, and some '
            'of them it may be the duty of the Ruling Elders to do in their official '
            'capacity; but all of them it is the official duty of the Pastor to do. '
            'The first of these is not preaching, but prayer, both apart from his '
            'flock in intercession for them, and with them as their mouth unto God. '
            'The Pastor makes a mistake to put all his care upon the sermon and none '
            'upon the public prayer. Yet his distinctive work as Pastor is to feed '
            'the flock. This he is to do by reading the Word as well as by expounding '
            'it, and by exposition as well as by simply proclaiming what needs no '
            'further exposition. It is not enough to handle the Word ; he must cause '
            'them to eat it. Nor is it his whole work to do this in the public '
            'assembly. His third function is to direct the congregation in singing '
            'the praises of God. As there should be no singing that is not worship, '
            'so this part of the worship should be kept under the Pastor\'s '
            'direction; and it is a serious abdication of his official duty when he '
            'hands this over to those who are not qualified, as well as not duly '
            'authorized, to direct this part of the worship. How far he shall go in '
            'determining details is matter for wise discretion; but he and those who '
            'lead the music as such, and all the congregation, should recognize him '
            'as having this entire part of worship under his direction. It is the '
            'fourth function of the pastoral office to administer the sacraments. '
            'Accordingly, neither baptism nor the Lord\'s supper is to be '
            'administered in his congregation by another minister without his '
            'concurrence, and he should not for every cause remit to another the '
            'administration of baptisms, nor forego presiding at the Lord\'s Supper. '
            'It belongs to the Pastor to bless the people from God; wherefore the '
            'benediction is by him pronounced as an official declaration of the '
            'divine mind. The sixth function, to catechise the children and youth, he '
            'is to do as Pastor, and it is a deplorable disuse of official function '
            'when he leaves this work altogether to other agencies, as to '
            'Sunday-schools; for this is the Pastor\'s specific office for the young. '
            'His seventh function is happily described. It is not enough to visit the '
            'people, but he should visit them officially, that is, he should visit '
            'them as their Pastor, and in his visits pray with and for them, feed '
            'them with the Word, catechize the children and youth, and perform such '
            'like pastoral functions. Social visiting that is not also manifestly and '
            'really pastoral visiting is a substitution to be made only in order to '
            'official visiting. So far as a distinction is admissible, the people '
            'need to know him officially rather than socially. And in his official '
            'visitation he is to devote special attention to four classes : the poor, '
            'who cannot contribute much in the offerings; the sick, who cannot attend '
            'the public worship; the afflicted, who need special comfort, and the '
            'dying, who are both sick and afflicted. So far in the discharge of his '
            'duties severally; and, with the other Elders, he is to exercise the '
            'joint power of government, having, in this sphere, no more and no less '
            'authority and obligation than a Ruling Elder.',
        webUrl: 'https://pcahistory.org/bco/fog/08/03.html',
      ),
    ],
    'bco_8-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 49',
        text:
            '37.--III. As the Lord has given different gifts to the Ministers of the '
            'word, and has committed to them various works to execute, the Church is '
            'authorized to call and appoint them to labour as Pastors, Teachers, and '
            'Evangelists, and in such other works as may be needful to the Church, '
            'according to the gifts in which they excel.\n\nPastors, Teachers and '
            'Evangelists are different classes of Ministers, but Ministers engaged in '
            'more or less different functions of the one Ministry of the Word; and '
            'this is equally true of Ministers engaged in other special work, '
            'provided only it is work of the Ministry of the Word.',
        webUrl: 'https://pcahistory.org/bco/fog/08/04.html',
      ),
    ],
    'bco_8-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 49\u201352',
        text:
            '38.--IV. When a minister is called to labour as a Pastor, it belongs to '
            'his office to pray for and with his flock, as the mouth of the people '
            'unto God; to feed the flock by reading, expounding, and preaching the '
            'Word; to direct the congregation in singing the praises of God ; to '
            'administer the sacraments ; to bless the people from God ; to catechise '
            'the children and youth ; to visit officially the people, devoting '
            'especial attention to the poor, the sick, the afflicted, and the dying ; '
            'and with the other Elders, to exercise the joint power of '
            'government.\n\nAll ministers are pastors, inasmuch as it is the duty of '
            'them all to feed the people of God with spiritual food (par. 35) ; but '
            'here the term is used of one appointed specially to this work in a '
            'particular church ; and while what he is charged with, all ministers are '
            'charged with in their several positions, the duties that specially '
            'belong to him in his position are here enumerated. Seven things he is to '
            'do severally, or by himself. some of these it may be proper for all '
            'saints to do according to their capacities and opportunities, and some '
            'of them it may be the duty of the Ruling Elders to do in their official '
            'capacity ; but all of them it is the official duty of the Pastor to do. '
            'The first of these is not preaching, but prayer, both apart from his '
            'flock in intercession for them, and with them as their mouth unto God. '
            'The Pastor makes a mistake to put all his care upon the sermon and none '
            'upon the public prayer. Yet his distinctive work as Pastor is to feed '
            'the flock. This he is to do by reading the Word as well as by expounding '
            'it, and by exposition as well as by simply proclaiming what needs no '
            'further exposition. It is not enough to handle the Word ; he must cause '
            'them to eat it. Nor is it his whole work to do this in the public '
            'assembly. His third function is to direct the congregation in singing '
            'the praises of God. As there should be no singing that is not worship, '
            'so this part of the worship should be kept under the Pastor\'s direction '
            '; and it is a serious abdication of his official duty when he hands this '
            'over to those who are not qualified, as well as not duly authorized, to '
            'direct this part of the worship. How far he shall go in determining '
            'details is matter for wise discretion ; but he and those who lead the '
            'music as such, and all the congregation, should recognize him as having '
            'this entire part of worship under his discretion. It is the fourth '
            'function of the pastoral office to administer the sacraments. '
            'Accordingly, neither baptism nor the Lord\'s supper is to be '
            'administered in his congregation by another minister without his '
            'concurrence, and he should not for every cause remit to another the '
            'administration of baptisms, nor forego presiding at the Lord\'s Supper. '
            'It belongs to the Pastor to bless the people from God ; wherefore the '
            'benediction is by him pronounced as an official declaration of the '
            'divine mind. The sixth function, to catechise the children and youth, he '
            'is to do as Pastor, and it is a deplorable disuse of official function '
            'when he leaves this work altogether to other agencies, as to '
            'Sunday-schools ; for this is the Pastor\'s specific office for the '
            'young. His seventh function is happily described. It is not enough to '
            'visit the people, but he should visit them officially, that is, he '
            'should visit them as their Pastor, and in his visits pray with and for '
            'them, feed them with the Word, catechize the children and youth, and '
            'perform such like pastoral functions. Social visiting that is not also '
            'manifestly and really pastoral visiting is a substitution to be made '
            'only in order to official visiting. So far as a distinction is '
            'admissible, the people need to know him officially rather than socially. '
            'And in his official visitation he is to devote special attention to four '
            'classes : the poor, who cannot contribute much in the offerings ; the '
            'sick, who cannot attend the public worship ; the afflicted, who need '
            'special comfort, and the dying, who are both sick and afflicted. So far '
            'in the discharge of his duties severally ; and, with the other Elders, '
            'he is to exercise the joint power of government, having, in this sphere, '
            'no more and no less authority and obligation than a Ruling Elder.',
        webUrl: 'https://pcahistory.org/bco/fog/08/05.html',
      ),
    ],
    'bco_8-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 52\u201354',
        text:
            '40.--VI. When a Minister is appointed to the work of the Evangelist, he '
            'is commissioned to preach the Word and administer the sacraments in '
            'foreign countries, frontier settlements, or the destitute parts of the '
            'Church; and to him may be entrusted power to organize churches, and '
            'ordain Ruling Elders and Deacons therein.\n\nThe philosophy of the '
            'matter is, not that the Evangelist has an office different in order, '
            'grade or nature from that of other Ministers of the Word, but that he is '
            'in a position calling specially for the use of those evangelistic '
            'functions which are inherent in the very office of the ministry, that '
            'is, to preach the Word and administer the sacraments, not in the '
            'organized or fully organized portions of the Church, but elsewhere : in '
            'countries where the Church is not yet organized; in countries where the '
            'Church is already organized, but in those parts where it is not '
            'organized; and in such parts of the organized Church as are not fully '
            'organized, lacking a settled ministry adequate to the work to be done. '
            'It is not here decided that it would be unscriptural to call a minister '
            'distinctively an evangelist who was engaged in fully organized parts of '
            'the Church in preaching specially to those who had not yet accepted the '
            'gospel; but that is not the sense in which the term is used in this '
            'paragraph.\n\nThe organization of churches and the ordination of '
            'officers, being an exercise of jurisdiction, is a function of joint '
            'power, for which the individual Presbyter as such is not competent; but '
            'the court having jurisdiction may commission him to do these things as '
            'its commissioner, his acts being the acts of the court through him. This '
            'may be made really the court\'s action by previous orders and subsequent '
            'validation or annulment; and the nature of these acts as joint and not '
            'several should always be thus preserved. The paragraph says that the '
            'court may entrust the Evangelist with power as its commissioner to '
            'organize churches, and to ordain Ruling Elders and Deacons in churches; '
            'but the power to ordain Ministers, while it might, without making the '
            'ordination a several act, be entrusted to the Evangelist, the Form of '
            'Government does not permit to be thus entrusted. Consequently, there is '
            'no way provided in the Form of Government for the ordination of '
            'Ministers unless the candidates to be ordained first come to the '
            'Presbytery. To meet this requirement, a candidate in a foreign land must '
            'come to where the Presbytery meets, or the Presbytery must hold a '
            'meeting where the candidate is, or the candidate must wait till there '
            'are several Ministers and a Ruling Elder in the country of the '
            'candidate, and these Presbyters are regularly constituted a Presbytery. '
            'Scott, E.C., A Digest of the Acts and Proceedings of the General '
            'Assembly of the Presbyterian Church in the United States, 1861-1944 '
            '(Richmond, VA : Presbyterian Committee of Publication, 1945), pp. 63-64 '
            ':\n\nForm of Government, Par. 38.\n\nHas the Evangelist any powers '
            'beyond those specifically given him?\n\n[Ed. note : This question was '
            'debated from 1879 to 1887 without issuing in a single positively '
            'interpretative action by the Assembly.\n\nThe matter arose out of the '
            'ordination of a man to the ministry of the Gospel by Dr. J.L. Stuart, '
            'missionary and evangelist in China*. An adopted committee report in '
            '1881, p. 387 said of the Evangelist : \u201cWhen his field lies beyond '
            'the territory which the Church occupies, his powers are necessarily '
            'enlarged. There being no court to discharge these functions, the '
            'Constitution recognizes as inhering in his office all the powers that '
            'are necessary to constitute the Church.\u201d\n\nThis interpretation, '
            'however, met with disapproval throughout the Church, as evidenced by a '
            'flow of overtures in subsequent years. In 1883, p. 60, and 1885, p. 425, '
            'amendments to the Form of Government, seeking to enlarge the powers of '
            'the Evangelist along the particular line suggested by the debate were '
            'sent to the presbyteries. Neither of these was enacted. And in 1887, p. '
            '230, the Assembly dropped the entire affair by saying : \u201cThe '
            'solution is found in recognizing the autonomy of the Church as a free '
            'Christian commonwealth, and investing it with the power of '
            'self-government as soon as it is organized.\u201d This last statement is '
            'tacit admission that the Evangelist\'s powers are limited by the Form of '
            'Government.]\n\n*For one side of this debate, see John B. Adger\'s '
            'article,\n\n\n\n\n\n \u201cThe Recent Ordination at Hangchow,\u201d in '
            'The Southern Presbyterian Review, 30.4 (October 1879) '
            '754-770.\n\nCONSTITUTIONAL INTERPRETATION (PCA Digest, 1973-1993, pp. '
            '259-260):\n\n1987, 15-83, III, 13, p. 172. That Constitutional Inquiry '
            '#7 be answered as follows :\n\nConstitutional Inquiry #7. From Calvin '
            'Presbyterian Church, Phoenix, AZ, regarding the role of an Evangelist in '
            'disciplinary matters.\n\n\u201cMay a man, called to the position of '
            'Presbytery Evangelist, who is granted the powers of receiving and '
            'holding members, also exercise discipline over those members in the '
            'following areas:\n\n(1) grant requests for transfer of letter of '
            'membership to another church\n\n(2) removed from the roll names of '
            'members who have indicated that they no longer intend to fulfill their '
            'vows of church membership (having no court available to act upon the '
            'situation), and\n\n(3) discipline those who ignore the regular '
            'responsibilities of church membership (i.e., who have not been in '
            'attendance at worship for the past year)?\u201d\n\n1. Yes. See BCO '
            '8-6.\n\n2. and 3. No. See BCO 3-2, and BCO 5-5.\n\nGROUNDS : The removal '
            'of a name from the church roll is an act of judgment, which is '
            'disciplinary, and should therefore be enacted by a court, not by a '
            'single individual (see BCO 3-2). Likewise, other acts of church '
            'discipline must be considered and addressed by the church courts, which '
            'have oversight of mission churches, and not by a single individual (see '
            'BCO 5-5).',
        webUrl: 'https://pcahistory.org/bco/fog/08/06.html',
      ),
    ],
    'bco_8-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discussion.]',
        webUrl: 'https://pcahistory.org/bco/fog/08/07.html',
      ),
    ],
    'bco_8-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 55',
        text:
            '42.--I. As there were in the Church, under the law, Elders of the people '
            'for the government thereof, so in the gospel Church, Christ has '
            'furnished others besides the Ministers of the Word with gifts and '
            'commission to govern when called thereunto, which officers are entitled '
            'Ruling Elders.\n\nIt is not asserted that they are called Ruling Elders '
            'in the Scriptures, but in this Form of Government; but it is asserted '
            'that according to the Scriptures there are in the New Testament '
            'dispensation as there were in the Old, Elders or rulers that are not '
            'Ministers of the Word.',
        webUrl: 'https://pcahistory.org/bco/fog/08/08.html',
      ),
    ],
    'bco_8-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 55\u201356',
        text:
            '43.--II. These Ruling Elders do not labour in the Word and doctrine, but '
            'possess the same authority in the courts of the Church as the Ministers '
            'of the Word.\n\nofficially (for nothing is here decided as to what '
            'others than Ministers of the Word may do unofficially in the Word and '
            'doctrine),\n\nbut possess he same authority in the courts of the Church '
            'as the Ministers of the Word.\n\nMay he then be Moderator of a court, '
            'and of the higher courts as well as of a Session, seeing that to '
            'Moderators are assigned certain duties that only Ministers can perform? '
            'Yes.\n\nWhen, however, a Ruling Elder is Moderator of a Presbytery, '
            'Synod, or General Assembly, any official duty devolving on him, the '
            'performance of which requires the exercise of functions pertaining only '
            'to the teaching Elder, shall be remitted by him for execution to such '
            'Minister of the Word, being a member of the court, as he may '
            'select.\n\nThe Minister must be a member of the same court, so that he '
            'may be under the control of the court. It is to be observed that by a '
            'court consisting of the Word, men may be appointed to ministerial '
            'functions, and are subject to the control of the court, the power of '
            'government extending over the Church and its officers in all their '
            'functions. It is also to be observed that the Moderator is appointed to '
            'a special work by a court, and is answerable to the court appointing '
            'him. It is further to be observed that there is no fundamental principle '
            'requiring that the Moderator shall be of this or that class of Elders; '
            'but, since, as a matter of conveniency and prudence, certain ministerial '
            'functions are, in the detailed regulations of the Form of Government, '
            'assigned to the Moderator, the principles of the system do require '
            'either that these regulations should be abolished, or that Ruling Elders '
            'be kept out of the position of Moderator, or that a special provision, '
            'such as this, determine the assignment of ministerial functions. '
            'Provision is made elsewhere as to the Moderator of the '
            'Session.\n\nScott, E.C., A Digest of the Acts and Proceedings of the '
            'General Assembly of the Presbyterian Church in the United States, '
            '1861-1944 (Richmond, VA : Presbyterian Committee of Publication, 1945), '
            'p. 64 :\n\nElders may be appointed by the Presbyteries to conduct '
            'services in neighboring congregations.\n\n1866, p. 37. Resolved that '
            'every presbytery be enjoined to require the sessions of the vacant '
            'congregations to come up to the discharge of the duties devolved upon '
            'them in the twenty-first chapter of the Form of Government, in '
            'assembling of their respective congregations for the worship of God, to '
            'which it may be proper to add exhortation. And in order that this duty '
            'may be performed to the greater acceptance of the worshippers, it is '
            'further required that the presbyteries do seek out those elders who have '
            'the best gifts, and do especially appoint them to the performance of '
            'these duties.\n\n1867, p. 148. [In answer to an Overture from the '
            'Presbytery of East Alabama:] Resolved, that the action of the last '
            'Assembly, on pp. 36 and 37 of the Minutes, is hereby reaffirmed, and the '
            'parts relating to the services of elders explained to mean, '
            'substantially, that, in accordance with our Constitution, when a vacant '
            'congregation does not enjoy the services of any elder, who, for any '
            'proper reason, is competent to perform the duties contemplated, it shall '
            'be the duty of the presbytery to appoint an elder or elders from some '
            'neighboring congregation ; provided nothing herein contained shall be '
            'regarded as justifying a presbytery in extending its jurisdiction within '
            'the bounds of another.\n\n1919, p. 51. From the Presbytery of Central '
            'Texas, asking that active steps be taken to use more fully capable '
            'ruling elders in conducting services in our vacant churches, in view of '
            'the absence of so many ministers engaged in war work.\n\nAnswer : The '
            'law of the Church already gives to churches and elders full opportunity '
            'in this matter. In view of the present need, the Assembly urges a fuller '
            'use of this opportunity.\n\n1943, p. 76. That our ruling elders be '
            'called on to help look after pastorless churches in the absence of so '
            'many pastors now serving as chaplains in our Army and Navy, remembering '
            'their ordination vow, \u201cto take oversight of the spiritual interests '
            'of the particular church committed to their charge\u201d.\n\n[See also '
            'this Digest, Form of Govt., Par. 25.]',
        webUrl: 'https://pcahistory.org/bco/fog/08/09.html',
      ),
    ],
    'bco_9-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'Section IV.--Of the Deacon.\n\nHere are given the scriptural warrant for '
            'the office, the duties of it, and the qualifications for it. To these '
            'three paragraphs three others are added : a special regulation for '
            'securing a proper supervision of the Deacon\'s work by the Session ; a '
            'provision for supplying the place of Deacons when there are no Deacons ; '
            'and an explicit statement of a power inherent in the Session to appoint '
            'women to certain diaconal functions.\n\n46.--I. The office of Deacon is '
            'set forth in the Scriptures as ordinary and perpetual in the '
            'Church.\n\n(Cf. pars. 32, 33).',
        webUrl: 'https://pcahistory.org/bco/fog/09/01.html',
      ),
      BcoCommentary(
        source: 'J. Aspinwall Hodge, What Is Presbyterian Law?',
        year: '1882',
        pageRef: 'p. 60\u201361',
        text:
            'What are Deacons ?\n\n\u201cThe Scriptures clearly point out Deacons as '
            'distinct officers in the church, whose business it is to take care of '
            'the poor, and to distribute among them the collections which may be '
            'raised for their use. To them also may be properly committed the '
            'management of the temporal affairs of the church.\u201d\n\nWhen was this '
            'office introduced into the Church ?\n\nThere is no mention of Deacons '
            'under the Old Testament dispensation. The contributions of money were '
            'under the care of the Levites and Priests (Ex. 38: 21; Num. 1: 50, 53; '
            'Ezra. 8: 24-30, 33). Special provisions were made under the law for the '
            'relief of the poor by individual, instead of official, contributions and '
            'care (Ex. 23:11; Lev. 19: 9, 10; 25: 25-55). Rev. James M. Wilson, D. '
            'D., in a pamphlet on \u201cThe Deacon\u201d (p. 23), says: \u201cIn the '
            'language of Dr. McLeod, \u2018There were several officers in the Jewish '
            'synagogue, and these were authorized to conduct the public worship, '
            'preserve order and manage the finances of the congregation\u2019 '
            '(Ecclesiastical Catechism, Q. 51). This latter officer was the Chazan or '
            'Deacon of the synagogue (\u2018Prideaux\u2019s Connections,\u2019 part '
            'i., book vi.), and in the words of Prideaux, \u2018the Chazanim '
            '\u2014that is, Overseers\u2014who were also fixed Ministers and under '
            'the Rulers of the synagogue, had charge and oversight of all things in '
            'it, kept the sacred books of the law and the prophets and other Holy '
            'Scriptures, as also the books of their public liturgies, and all other '
            'utensils belonging to the synagogue.\u2019 The order of the synagogue '
            'was, as all Presbyterians hold, the model of that of the Church under '
            'the New-Testament dispensation. In the synagogue was an officer that '
            'attended to the poor, had oversight of the place of worship and managed '
            'the finances.\u201c We have in Acts 6: 1-6 the history of the '
            'introduction of this office into the Christian Church, the occasion, '
            'necessity of the office, the qualifications and duties of Deacons, their '
            'election and ordination.\n\nWas this office designed to be '
            'permanent?\n\nIt is evident from Acts 6: 1-6 that the office was not '
            'introduced because of a temporary emergency. The work committed to '
            'Deacons is a permanent one, for the poor we shall have with us always '
            '(Matt. 26:\n\n 11), the Church is enjoined to make provision for them '
            '(Gal. 2: 10), and contributions always will be given for the relief of '
            'Christians and for the extension of the Church, as in the days of the '
            'Apostles. The qualifications \u2014honesty, good report, being filled '
            'with the Holy Ghost and wisdom, being the husband of one wife, ruling '
            'his children and own house well (Acts 6: 3; 1 Tim. 3: 12)\u2014are not '
            'those which indicate an extraordinary and temporary office. Deacons were '
            'recognized as regular officers of fully-organized churches (Phil. 1: 1; '
            'Horn. 12: 7 (\u201cministry,\u201d diakonian); 1 Pet. 4 :11 (ei tis '
            'diakonei). The office has always continued in the Church in some form, '
            'was recognized by all the Reformers, and is continued in all branches of '
            'the Church.\n\nIt is \u201cperpetual,\u201d in the sense that \u201cit '
            'cannot be laid aside at pleasure. No person can be divested of it but by '
            'deposition.\u201d But under certain circumstances (see below) a Deacon '
            'may cease to exercise his office and to be an acting Deacon.*\n\n[* Form '
            'of Government, ch. xiii.. sect. vi.; Presbyterian Digest, p. 348.]',
        webUrl: 'https://pcahistory.org/bco/fog/09/01.html',
      ),
    ],
    'bco_9-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '47.--II. The duties of this office especially relate to the care of the '
            'poor, and to the collection and distribution of the offerings of the '
            'people for pious uses, under the direction of the Session.\n\nThis is '
            'the same as in paragraph 23, only that here is stated what is there '
            'implied, that they are to care for the poor, and that they are to '
            'collect the offerings as well as distribute them ; but this does not '
            'imply that it is the duty of Deacons to collect anything but offerings, '
            'yet they are engaged in a part of their distinctive work when promoting '
            'in the people the grace of liberality. It is also here explicitly stated '
            'that they are to do their work under the direction of the Session, which '
            'is something more than mere review.\n\nTo the Deacons, also, may be '
            'properly committed the management of the temporal affairs of the '
            'Church.\n\nSee exposition of paragraph 23 [provided here '
            'below]:\n\n23.--IV. To the Deacons belong the administration of the '
            'offerings for the poor and other pious uses. To them, also, may be '
            'properly committed the charge of the temporal affairs of the '
            'Church.\n\nOver against the opinion that the function of the Deacons is '
            'limited to the care of the poor, this affirms that to them belongs the '
            'administration, not only of the offerings for the poor, but also of the '
            'offerings for other pious uses. The making of offerings is a part of the '
            'worship, and the administration of these, that is, the application of '
            'them to their uses, cannot be taken from the Deacons without depriving '
            'them of their office. But, while it may be assumed that the kingdom of '
            'Christ can have no temporal interest or property except in these '
            'offerings and the investment of them, yet it comes about that the use '
            'and control of these temporal interests and properties are, on the one '
            'side, matters of purely secular business, but, on the other, not '
            'separable altogether from the government of the kingdom in its spiritual '
            'activities. Therefore the charge of temporal affairs, that is, the '
            'management of them, the courts of Presbyters may retain in their own '
            'hands, or may commit to the Deacons under such limitations and '
            'directions as will not impair the full control of the courts over all '
            'matters. This principle may be applied, not only in the particular '
            'church, but also in the Church at large; for just as Ruling Elders, '
            'though primarily officers of the particular church, are called to assist '
            'in the government of the Church generally, so may the Deacons, though '
            'primarily officers of the particular church, be called to the charge of '
            'the temporal affairs of the whole Church. Three principles, then, are '
            'stated : that to the Deacons may be committed the charge of temporal '
            'affairs, as well as the mere administration of them ; the charge of '
            'temporal affairs generally, as well as of the immediate administration '
            'of offerings ; and the charge of the temporal affairs of the whole '
            'Church as well as of the particular church. Of course, this commitment '
            'should, in each case, be by the court of Presbyters having authority '
            'over the interests thus committed.\n\nThe Form of Government says '
            'nothing about trustees, because the only officers are Pastor, Ruling '
            'Elder, and Deacon. To observe the institutions of government and '
            'administration as ordained by Christ, the trustees necessary as a legal '
            'instrument under the laws of the civil government should either be the '
            'Session ex officio, or, if the Session commits the charge of the '
            'temporal affairs to the Deacons, the Deacons ex officio, or appointees '
            'of the Session, with no authority whatever except to legally execute '
            'what the Session may authorize. And if the civil laws happen to require '
            'that the trustees be elected by the body of members, then the Session, '
            'the Deacons, or nominees of the Session, should always be elected. It '
            'does not belong to the congregation to determine questions in temporal '
            'affairs, for the sole government is vested in the Session ; but, as the '
            'Session may commit the charge of temporal affairs to the Deacons, so it '
            'may consult with the congregation as to these affairs, and, indeed, as '
            'to all concerns. Since the Pastor is a member of the Session, he ought '
            'to have the same authority and responsibility for the management of '
            'temporal affairs as any other members of the Session.\n\nI am expounding '
            'the rule of the Church as here laid down, and not the practice.',
        webUrl: 'https://pcahistory.org/bco/fog/09/02.html',
      ),
      BcoCommentary(
        source: 'J. Aspinwall Hodge, What Is Presbyterian Law?',
        year: '1882',
        pageRef: 'p. 61',
        text:
            'What are the duties of Deacons ?\n\n\u201cTo take care of the poor, and '
            'to distribute among them the collections which may be raised for their '
            'use. To them also may be properly committed the management of the '
            'temporal affairs of the church. \u201d This includes visitation of those '
            'in need, inquiring into their real wants, helping them to obtain work '
            'and comforting them. Being church officers, they should always unite '
            'with temporal relief spiritual consolation, instruction and prayer. In '
            'many churches it is the duty of the Deacons to take charge of the '
            'communion set, and to bring it, with clean table-linen, to the church on '
            'the communion Sabbath, and from the poor fund, or some other designated '
            'fund, to provide the bread and wine for the Lord\'s table.',
        webUrl: 'https://pcahistory.org/bco/fog/09/02.html',
      ),
    ],
    'bco_9-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 60\u201361',
        text:
            '48.--III. To this office should be chosen men of honest repute and '
            'approved piety, who are esteemed for their prudence and sound judgment, '
            'whose conversation becomes the gospel, and whose lives are exemplary ; '
            'seeing that those duties to which all Christians are called in the way '
            'of beneficence are especially incumbent on the Deacon as an officer in '
            'Christ\'s house.\n\nThese are substantially the same as the '
            'qualifications of Ruling Elders, except that special emphasis is not '
            'here laid on soundness in the faith, nor quite so distinct a place given '
            'to wisdom as distinguished from prudence. Yet, soundness of judgment is '
            'insisted upon. As the Ministers are to stand forth as examples embodying '
            'the full truth in life, and the Ruling Elders examples embodying '
            'especially the idea of reverence for the law of Christ, so the Deacons '
            'are to stand forth as examples embodying especially the idea of '
            'beneficence for Christ\'s sake ; and they, therefore, need for their '
            'official work the whole complex of graces, without which beneficence '
            'loses its Christian significance.\n\nAll officers, then, are to excel in '
            'a living piety, deep and manifest, and in mental balance, or good sense; '
            'to these qualities Ruling Elders are to add pre-eminence in wisdom and a '
            'grasp of the system of truth ; and to all these qualities the Ministers '
            'are to add pre-eminence in learning and aptness to teach.',
        webUrl: 'https://pcahistory.org/bco/fog/09/03.html',
      ),
      BcoCommentary(
        source: 'J. Aspinwall Hodge, What Is Presbyterian Law?',
        year: '1882',
        pageRef: 'p. 61',
        text:
            'Who may be chosen Deacons?\n\n\u201cIn all cases the persons elected '
            'must be male members in full communion in the church in which they are '
            'to exercise their office.\u201d[1]\n\nA Minister, therefore, though '
            'without charge, not being a member of a particular church, cannot be '
            'elected Deacon. This was reaffirmed by the New School Assembly in 1865 '
            'and 1869;[2] and the principle is stated (the application, however, is '
            'to the eligibility to the office of Ruling Elder) by the General '
            'Assembly of 1874.[3]\n\n[1] Form of Government, ch. xiii., sect. '
            'ii.\n\n[2] Presbyterian Digest, p. 340.\n\n[3] Minutes General Assembly '
            '1874, p. 84.\n\nOVERTURES ANSWERED IN THE NEGATIVE:\n\n1984 - Overture '
            '28 From the Presbytery of Delmarva [M12GA, 12-10, B, p. 42 and 12-31, '
            'III, 4, p. 102]\n\nWhereas, there is much divergent opinion in the '
            'church concerning what the Bible actually says about women and the '
            'diaconate; and\n\nWhereas, a young candidate for ordination in our '
            'denomination was denied his quest, with one of the reasons for this '
            'rejection being that his opinion on women and the diaconate was contrary '
            'to our BCO; and\n\nWhereas, the possibility exists that our church is '
            'going beyond the requirements of Scripture and thereby may be '
            'impoverishing herself\n\nTherefore, we the Delmarva Presbytery do '
            'overture the Twelfth General Assembly of the PCA to study the particular '
            'question of women in the diaconate.\n\nAttest: Thomas G. Webb, Stated '
            'Clerk.\n\nAnswered in the negative, 12-31, III, 4, p. 102:\n\n4. That '
            'Overture 28 (p. 42) be answered in the negative. Refer to I Timothy 3:8, '
            '12; Acts 6:3 and BCO 9-3, 7. Adopted.\n\nThe following commissioners '
            'requested their negative votes recorded:Eric Stedfeld\n\nMaxwell '
            'Harris\n\nTimothy B. Dobbins\n\nHarold E. Burkhart\n\nJames '
            'Urish\n\nPhilip O. Evaul\n\nDavid M. O\'Dowd\n\nC. Kenneth '
            'Kuyk\n\nWilliam H. Moore\n\nStephen W. Brown Allan Baldwin\n\nEgon '
            'Middelman\n\nDavid W. Hall\n\nCalhoun Boroughs\n\nHugh Wessel\n\nRobert '
            'D. Hopper\n\nCarl H. Derk\n\nRobert P. Eickelberg\n\nDaniel '
            'Bust\n\nGeorge M. StulacThomas Wenger\n\nHoward Griffith\n\nStephen P. '
            'Beck\n\nLouis I. Hodges\n\nGordon W. Frost\n\nBruce Mawhinney\n\nGeorge '
            'Smith\n\nRonald C. Harding\n\nArnold L. Frank\n\nPetros Reukas A motion '
            'to add \u201cRomans 16:1,\u201d to the references above was defeated. TE '
            'John Register and TE Bruce B. Howes requested the recording of their '
            'affirmative votes on the lost motion to include Romans 16:1. Permission '
            'to do so was granted.',
        webUrl: 'https://pcahistory.org/bco/fog/09/03.html',
      ),
    ],
    'bco_9-4': [
      BcoCommentary(
        source: 'J. Aspinwall Hodge, What Is Presbyterian Law?',
        year: '1882',
        pageRef: 'p. 61',
        text:
            'What is the Board of Deacons ?\n\nThe Deacons cannot act on individual '
            'responsibility, but must meet together and organize as a Board of '
            'Deacons. They should appoint a Moderator, a Clerk and a Treasurer, '
            'attend to their business in an orderly way, determine methods for '
            'searching out the poor, visiting the sick, obtaining work and relieving '
            'the distressed. They should consider the cases brought before them, and '
            'determine how to answer their applications. They should keep full '
            'records and accounts of money received and distributed, and at certain '
            'times present them to Session for approval. If the management of the '
            'temporal affairs is also committed to them, they should keep a separate '
            'account of property and moneys of the congregation.\n\nOften the members '
            'of Session are expected to be present at the Deacons\u2019 meeting, to '
            'advise, but not to vote. [1] The Southern Presbyterian Church declares '
            'that one of the duties of the Session is \u201cto examine the records of '
            'the proceedings of the Deacons.\u201d[2]\n\n[1] See above. Form of '
            'Government, ch. ix., sect. viii.; cli. x., sect. ix.; ch. xi., sect. '
            'vi.; chs. xix. and xx.\n\n[2] Book of Church Order, ch. v., sect, iii., '
            'sub-sect, v.\n\nCONSTITUTIONAL INQUIRY:\n\n1987, 15-83, III, Item 9, p. '
            '170\n\nThat the advice of the Permanent Committee regarding '
            'Constitutional Inquiry #3 be ratified.\n\nConstitutional Inquiry #3. '
            'From All Saints Reformed Presbyterian Church, Richmond, VA, regarding a '
            'church treasurer.\n\n\u201cIs it in conflict with BCO 9-4 for deacons to '
            'delegate the responsibilities of treasurer to a capable member of the '
            'congregation who is not a deacon?\u201d\n\nAnswer: \u201cNo.\u201d',
        webUrl: 'https://pcahistory.org/bco/fog/09/04.html',
      ),
    ],
    'bco_9-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '[no comparable text in this section of Ramsay\'s exposition]\n\nEdward '
            'Mack, The Office of the Deacon. [Richmond, VA: Presbyterian Committee of '
            'Publication, revised, 1929, pp. 35-36.]\n\nChapter VII. The Deacon in '
            'Relation to the Church at Large.\n\nDeacons may properly be appointed by '
            'the higher courts to serve on committees, especially as treasurers. It '
            'is suitable also that they be appointed trustees of any fund held by any '
            'of the Church courts. It may also be helpful for the Church courts, when '
            'devising plans of church finance, to invite wise and consecrated Deacons '
            'to their counsels.\n\nIn this paragraph it is contemplated that this '
            'office now so widened and dignified may henceforth be used in the larger '
            'and more general activities of the Church. Finding men of the Barnabas '
            'spirit and stature, the Church proposes to use them in its great '
            'enterprises. Many great-hearted and large-minded men of affairs have '
            'been serving in the office of Deacons. Let us expect that the new '
            'emphasis put upon the office will be a call to them to consecrate their '
            'tlaents in yet wider spheres to the cause of the Gospel, in this '
            'official way, as many are now doing through laymen\'s organizations and '
            'in other groups of Christian men.\n\nOften there is need for such men in '
            'the counsels and financial work of Presbytery, Synod and General '
            'Assembly. This paragraph authorizes their appointment by the Higher '
            'Courts as members of their committees, when they are concerned with '
            'matters falling within the sphere of the Deacon\'s service. This may '
            'have been done heretofore in isolated and informal cases. It now becomes '
            'a matter of regular procedure, and offers another challenge to our '
            'strong men to devote themselves to service for Christ in channels where '
            'their talents may flow so well and strong.',
        webUrl: 'https://pcahistory.org/bco/fog/09/05.html',
      ),
    ],
    'bco_9-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '[no comparable text]\n\nEdward Mack, The Office of the Deacon. '
            '[Richmond, VA: Presbyterian Committee of Publication, revised, 1929, pp. '
            '37-38.]\n\nChapter VIII. Conferences of Deacons.\n\nThe Deacons may, '
            'with much advantage, hold conferences from time to time for the '
            'discussion of interests committed to them. Such conferences may include '
            'representatives of churches covering areas of smaller or larger extent. '
            'Any actions taken by these conferences shall have only an advisory '
            'character.\u2014Form of Government, Sect. IV, Parag. 51.\n\nMinisters '
            'and Ruling Elders of our churches in both limited and extended areas, '
            'render valuable assistance to each other by frequent meetings, in Church '
            'Courts, where common difficulties are considered, provision made for '
            'overcoming them, and individual experiences made profitable for all. '
            'These Courts of the Church meet regularly, and have legislative and '
            'administrative authority. Such is not possible, of course, for the '
            'Deacons, whose relations are sustained solely to the local '
            'church.\n\nBut under this paragraph provision is made for conferences '
            'for discussion, counsel and inspiration in matters of common concern, '
            'although no such conference may have more than advisory character. Such '
            'conferences of Deacons have in reality been held time and again in past '
            'years. But such meetings have been too seldom. Our Boards of Deacons '
            'throughout the Church will do well to heed this recommendation of our '
            'Form of Government, and help bear one another\'s burdens through the '
            'sympathy and wider information of such meetings. The issues which occupy '
            'the counsels of a laymen\'s convention are no larger than those which '
            'call for a Deacon\'s Conference. And the mutual gain will be as great '
            'for the latter as for the former.',
        webUrl: 'https://pcahistory.org/bco/fog/09/06.html',
      ),
    ],
    'bco_9-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 62',
        text:
            '51.--VI. Where is shall appear needful, the Church Session may select, '
            'and appoint godly women for the care of the sick, of prisoners, of poor '
            'widows and orphans, and in general for the relief of distress.\n\nThese '
            'differ from the male Deacons in the fact that they are not selected by '
            'the congregation, and in the fact that they do not have charge of '
            'distribution generally. It would save much to the credit of the Church, '
            'and promote greatly the efficiency of its beneficent work, if this '
            'paragraph were put into general execution, so that what is done would '
            'appear to be done by the Church, as it really is, and would be done with '
            'fuller counsel and supervision.\n\nEdward Mack, The Office of the '
            'Deacon. [Richmond, VA: Presbyterian Committee of Publication, revised, '
            '1929, pp. 42-43.]\n\nChapter X. Co-operation of Godly Women.\n\nIt is '
            'often expedient that the Session of a church should select and appoint '
            'godly women of the congregation to assist the Deacons in ministering to '
            'the sick, to widows, to orphans, to prisoners, and to others who may be '
            'in any distress or need. They may also aid the Deacons in collecting and '
            'distributing the offerings of the people.\u2014Form of Government, '
            'Section IV, Parag. 51a.\n\nThis paragraph must not be taken as '
            'instituting an order of Deaconesses. As a matter of fact, many of the '
            'duties assigned to the Deacon under the revised chapter have been '
            'performed in an informal way all the while by the devoted women of the '
            'Church. Care for the cleanliness and beauty of the House of God has '
            'often fallen to their charge. They have rendered invaluable assistance '
            'in canvassing for funds. The poor, the sick and the stranger rejoice in '
            'the comfort of their ministrations. Their zeal and hard work account for '
            'the raising of large funds for church repairs and for mission purposes. '
            'As pastor\'s aids, in missioniary and aid society, always with the same '
            'tact and talent, cheer and comfort as in the home, so also in the Churhc '
            'they have been able allies of the Deacons. The Session and Deacons are '
            'not to forget \u201cthose women, who labored in the Lord.\u201d Many a '
            'pastor and church today enters into the spirit of Paul, when he wrote to '
            'those at Rome: \u201cI commend to you, Phoebe, the deaconess of the '
            'church at Cenchraea . . . who has been a succourer of many, and of me '
            'also.\u201d\n\nIn fitting and grateful recognition of this blessed '
            'service, the closing paragraph of the new law suggests to Sessions the '
            'wisdom of continuing this ministration of women, now in a constitutional '
            'way. As she ministered to Christ Himself, so there are occasions and '
            'needs in our times, when her presence can comfort and her hands bind up '
            'the broken of heart.',
        webUrl: 'https://pcahistory.org/bco/fog/09/07.html',
      ),
    ],
    'bco_10-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 62\u201363',
        text:
            'CHAPTER V. - OF CHURCH COURTS\n\nThe chapter has seven sections, as '
            'follows : one treating generally of the courts and their officers ; one '
            'treating particularly of the jurisdiction of the courts ; then one each '
            'on the four kinds of courts ; and, lastly, one on a sort of special '
            'courts, called commissions.\n\nSection I.--Of the Courts in '
            'General.\n\nAfter a paragraph on the gradation and nature of these '
            'courts, and another paragraph enumerating them, there come three '
            'paragraphs on their officers : two on the Moderator--one providing the '
            'Moderator for each court, and one defining his duties--and one on the '
            'clerk. Then is added a paragraph on the devotional exercises that shall '
            'be observed in the sessions of the higher courts (directions as to this '
            'matter for the Session being reserved to the section on the Session) ; '
            'and another prescribes the payment of the expenses of attendance on the '
            'higher courts.\n\n52.--I. The Church is governed by various courts, in '
            'regular gradation ; which are all, nevertheless, Presbyteries, as being '
            'composed exclusively of Presbyters.\n\nThe underlying principle is, '
            'that, so far as the facilities of intercommunication between the '
            'different parts of the Church permit, the courts of the Church shall be '
            'so related to one another that whatever is done by one part of the '
            'Church shall be done by the one Church in that part. All courts are '
            'essentially the same, being exclusively Elders acting jointly, and their '
            'powers being, therefore, the joint powers of Elders. (Cf. par. 5)',
        webUrl: 'https://pcahistory.org/bco/fog/10/01.html',
      ),
    ],
    'bco_10-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 63',
        text:
            '53.--II. These courts are : Church Sessions, Presbyteries, Synods, and '
            'the General Assembly.\n\nThe first is called church Session, as being '
            'the sitting together of the Elders of a church ; the second, Presbytery, '
            'as having assigned to it more fully than any other all the joint powers '
            'of Presbyters ; the third, Synod, as being the coming together of many '
            'Presbyters ; and the fourth, the General Assembly, as being the assembly '
            'in which the whole Church convenes.',
        webUrl: 'https://pcahistory.org/bco/fog/10/02.html',
      ),
    ],
    'bco_10-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 63\u201365',
        text:
            '54.--III. The Pastor is Moderator of the Session.\n\nThe real ground for '
            'this regulation is, that the Moderator is accountable to the court '
            'appointing him, and a Ruling Elder, being directly accountable to the '
            'Session, would be himself too far removed from the control of Presbytery '
            '; and this and other regulations proceed upon the assumption that the '
            'Session may not be as well qualified to handle weighty matters as the '
            'Presbytery.\n\nThe Moderator of the Presbytery, the Synod, and the '
            'General Assembly, shall be chosen at each stated meeting of these courts '
            '; and the Moderator, or in case of his absence, the last Moderator '
            'present, or, the oldest minister in attendance, shall open the meeting '
            'with a sermon, less it be highly inconvenient, and shall hold the chair '
            'until a new Moderator be chosen.\n\nThe court may have several '
            'Moderators at the same time, provided their respective functions are '
            'defined, and to no one of them is assigned any function not properly '
            'pertaining to a Moderator. (Cf. 56 ; but as to Session, see 63.) While '
            'no explicit provision is made for the removal of a Moderator during his '
            'term, it lies in the nature of the case that the court may revoke its '
            'own appointment. The election of a new Moderator at each stated meeting '
            'is a prudential regulation, that the court may not practically lose the '
            'power of appointing its own Moderator, and come to be, in reality, but a '
            'counsel of advice to him as a superior ; but it is a matter of '
            'discretion with the court to re-elect the same man, or to elect another. '
            'It lies with the court to determine at what point in the proceedings of '
            'its stated meeting the election of Moderator shall occur. The Moderator '
            'retains all his authority as Moderator until the election of his '
            'successor ; but, if he should, at any time during his moderatorship, not '
            'be a member of the court, he would have no vote as a member, and '
            'therefore no casting vote in case of a tie. The opening sermon may be '
            'omitted when circumstances make it highly inconvenient to have it, of '
            'which the Moderator is the judge. The Moderator, as there is no '
            'prohibition of it, may appoint another to act in his place, the court '
            'not objecting.\n\n55.--IV. The Moderator possesses all authority '
            'necessary for the preservation of order, and for convening and '
            'adjourning the court, according to his own ruling.\n\nThis gives to the '
            'Moderator very great authority, but it must not be so understood as to '
            'give him absolute power. He has no authority beyond other members to '
            'determine the actions of the court, but only to preserve order ; and his '
            'power to convene and adjourn the court, according to his own ruling, '
            'does not mean independently of the order of the court, but independently '
            'of what any one, not the court, may order, or may rule that the court '
            'orders.\n\nHe may also, on any extraordinary emergency, convene the '
            'court by his circular letter before the ordinary time of meeting. And in '
            'case of the failure of the appointed meeting, he may convene the court '
            'at a suitable time and place.\n\nOf the extraordinary emergency, and of '
            'the suitable time and place, he is, of course, to be the judge ; but see '
            'paragraph 79. if it should happen that this regulation, which is '
            'designed to provide for necessary meetings that the court did not '
            'foresee to provide for, fails to thus provide, it must be remembered '
            'that the court exists when not in session, and that, in the nature of '
            'the case, a majority of the court may always call a meeting, in the '
            'absence of all express provisions to the contrary.\n\nThe Moderator, if '
            'a member of the court, has the same right to vote on all questions as '
            'any other member, but he can cast only one vote; and he cannot vote at '
            'all if he is not himself a member of the court.',
        webUrl: 'https://pcahistory.org/bco/fog/10/03.html',
      ),
    ],
    'bco_10-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 66',
        text:
            '55.--V. It is the duty of the Clerk, whose continuance in office shall '
            'be during the pleasure of the court, besides recording the transactions, '
            'to preserve the records carefully, and to grant extracts from them '
            'whenever properly required. Such extracts under the hand of the Clerk, '
            'shall be evidence to any ecclesiastical court, and to every part of the '
            'Church.\n\nIt has not been deemed necessary, for prudential reasons, to '
            'require the election of a Clerk at each stated meeting ; but each court '
            'is at liberty to fix a term of office for its Clerk. It is a matter of '
            'course that the Clerk is not superior to the court appointing him, and '
            'in all his duties is subject to the order of the court ; nor has he any '
            'vote or voice in the actions of the court, unless he is a member of the '
            'court, and then he has only the same authority as any other member. His '
            'duties are three : to record the transactions ; to preserve the records '
            '; and to grant extracts. All his work is subject to the correction of '
            'the court itself. But extracts under his hand are legal evidence '
            'everywhere of what the transactions of the court are ; but no evidence '
            'is final that has in it the possibility of error, if it is possible by '
            'superior evidence to show and correct the error. The Moderator has '
            'nothing to do with certifying the record. See, however, paragraphs 88 '
            'and 213. A court may have several Clerks at the same time, provided '
            'their respective functions are defined, and to no one is assigned any '
            'function not properly pertaining to a Clerk. (Cf. 54.)',
        webUrl: 'https://pcahistory.org/bco/fog/10/04.html',
      ),
    ],
    'bco_10-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 66\u201367',
        text:
            '57.--VI. Every meeting of the Presbytery, Synod, and General Assembly '
            'shall be opened and closed with prayer, and in closing the final meeting '
            'a psalm or hymn may be sung and the benediction pronounced.\n\nSo much '
            'ought men engaged in ruling in the Church to seek as courts the blessing '
            'of God upon themselves and their work as rulers. If the benediction is '
            'pronounced, and a Ruling Elder is at the time Moderator, he should remit '
            'this function to a Minister. (Cf. par. 43, and pars. 24 and 35.)',
        webUrl: 'https://pcahistory.org/bco/fog/10/05.html',
      ),
    ],
    'bco_10-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 67',
        text:
            '58.--VII. The expenses of Ministers and Ruling Elders in their '
            'attendance on the courts shall be defrayed by the bodies which they '
            'respectively represent.\n\nThe expenses of attendance are always what '
            'has to be paid out above what is provided in the way of voluntary '
            'entertainment. There might have been a regulation providing for each '
            'court a fund for the expenses of its members ; but that is not the '
            'regulation. By analogy the expenses of members of a commission in excess '
            'of their expenses as members of a court appointing the commission must '
            'be borne by this court itself ; and the same principle would apply to '
            'committees and other appointees.\n\nWhat body is represented is not '
            'easily answered in all cases. A Ruling Elder in Session, Presbytery, or '
            'Synod represents his church, and in the General Assembly represents his '
            'Presbytery. So a Minister in the General Assembly represents his '
            'Presbytery. But in the other courts, what body does a Minister '
            'represent? If a pastor, he might be thought to represent his church or '
            'churches ; if engaged in Evangelistic, or other work, the body for which '
            'he is doing the work ; and if not engaged in ministerial work, for some '
            '\u201cbody\u201d ; What? The two things made unmistakable by the '
            'paragraph is, that the expenses of delegates to the General Assembly are '
            'to be paid by their respective Presbyteries, and of Ruling Elders in '
            'attendance on all other courts, by their churches.',
        webUrl: 'https://pcahistory.org/bco/fog/10/06.html',
      ),
    ],
    'bco_11-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 68\u201369',
        text:
            'Section II.--Of the Jurisdiction of Church Courts.\n\nThe first '
            'paragraph distinguishes these courts from civil government, and the '
            'second states positively the nature and scope of their jurisdiction ; '
            'and the third states the principle underlying the gradation of these '
            'courts, while the fourth shows the particular gradation agreed upon for '
            'this branch of the Church.\n\n59.--I. These assemblies are altogether '
            'distinct from the civil magistracy, and have no jurisdiction in '
            'political or civil affairs. They have no power to inflict temporal pains '
            'and penalties, but their authority is in all respects moral or '
            'spiritual.\n\nEven when the same individual is both a Presbyter and a '
            'civil functionary, he is not the one by reason of being the other. While '
            'he is appointed unto each office by Christ the Lord of all, and is '
            'accountable to him, the method and means of his appointment, and offices '
            'to which he is appointed, are so utterly separate that his holding or '
            'not holding one of them does not modify his duties in the other. The '
            'ecclesiastical courts have no jurisdiction in political or civil '
            'affairs, but only in ecclesiastical affairs. But may the same affair be '
            'at the same time political or civil and ecclesiastical? It may, and then '
            'the ecclesiastical court may deal with it. If, for instance, a member of '
            'a church should be charged with murder, it would pertain to the civil '
            'authority to try him, and, if guilty, to inflict upon him the civil '
            'penalty; and it would pertain to the session of his church to deal with '
            'him for the same offence. Nor would the ecclesiastical court be bound to '
            'conclude him guilty or innocent of the charge according to the decision '
            'of the civil authority. An ecclesiastical affair is any question of '
            'doctrine taught in the Scriptures or any action commanded or forbidden '
            'in the Scriptures, or any matter of temporal concern having to do with '
            'the use and disposition of offerings for pious uses ; but only so far as '
            'any question or action or concern is within what Christ in the Scripture '
            'has commanded his Church to teach or enforce or do as organized for the '
            'edification of the faith and the evangelization of the world, is it an '
            'ecclesiastical affair. That question is ecclesiastical which the Church '
            'cannot expound and apply the whole Scripture without answering ; and '
            'that is not ecclesiastical which may be differently answered by men that '
            'agree in their understanding of the Scriptures.\n\nIn no case, not even '
            'in a case of murder left unpunished by the civil authority, or in the '
            'case of the most awful blasphemies whatsoever, can the ecclesiastical '
            'court inflict or adjudge to be deserved, any penalty whatsoever except '
            'the declaration of the mind of Christ concerning the sin, and such '
            'treatment in the matter of fellowship in the Church as shall express '
            'this mind of Christ. The censure of Christ through the Church is the '
            'only instrument for enforcing the law of Christ.',
        webUrl: 'https://pcahistory.org/bco/fog/11/01.html',
      ),
    ],
    'bco_11-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 69\u201373',
        text:
            '60.--II. The jurisdiction of Church courts is only ministerial and '
            'declarative,\n\nthat is, these courts can act only as servants to '
            'declare what he, as their King, commands them,\n\nand relates to the '
            'doctrines and precepts of Christ, to the order of the Church, and to the '
            'exercise of discipline.\n\nTheir sphere of action has three sections, '
            'more or less overlapping : teaching, assigning to place and work in the '
            'Church, and censure of offenders.\n\nFirst. They can make no laws '
            'binding the conscience; but may frame symbols of faith, bear testimony '
            'against error in doctrine and immorality in practice, within or without '
            'the pale of the Church, and decide cases of conscience.\n\nSymbols of '
            'faith do not make the courts, but the courts make the symbols of faith. '
            'The courts exist and have all their authority before they frame the '
            'symbols, for the courts are nothing but Presbyters (appointed by Christ '
            'and furnished by him with the Word and Spirit) acting jointly. They may, '
            'therefore, not only formulate systems of truth, but also bear testimony, '
            'as occasion demands, against particular errors and immoralities, and '
            'give answers to questions propounded to them by doubtful consciences. '
            'Since the church is in the world as a witness to it from Christ, these '
            'courts need not confine their testimony to errors and immoralities of '
            'its own members. But with all this, these courts cannot make a law, they '
            'can only declare what laws Christ has already made and set forth in the '
            'Scriptures.\n\nSecondly, They have power to establish rules for the '
            'government, discipline, worship, and extension of the Church, which must '
            'be agreeable to the doctrines relating thereto contained in the '
            'Scriptures, the circumstantial details only of these matters being left '
            'to the Christian prudence and wisdom of church officers and '
            'courts.\n\nThe Scriptures do not undertake to lay down minute '
            'regulations for the activities of the organized Church, as they do not '
            'lay down minute regulations for the conduct of the individual, but for '
            'each, regulating principles; and the Church, as the individual, is to '
            'apply these regulating principles to every point of activity. This s to '
            'be done always under the guidance of the Holy Spirit, but the Holy '
            'Spirit working within and not speaking from without. The Spirit is in '
            'the Word to be understood, and in the mind seeking to understand, using '
            'the Word and the mind, and not superseding them or suspending them. The '
            'individual, then, is to decide upon his act in every set of '
            'circumstances, and ofttimes with only regulating principles in the '
            'Scriptures to guide him; and so must the organized Church. The Church '
            'must decide, not in a general parliament of all its members, nor in the '
            'counsel of any one select mind, but in the parliament and counsel of '
            'select minds appointed to this very function in the Church. This does '
            'not make the Church inerrant in these matters, even as the individual is '
            'not inerrant ; but the liability to error does not free the Church from '
            'the responsibility of self-direction any more than the '
            'individual.\n\nSince both the Church and the individual are liable to '
            'err, which must yield to the other in case of difference? Neither to the '
            'other, but both to Christ. The disagreement may be due to error in the '
            'individual, then he ought to correct his error ; or to error in Church, '
            'then the Church ought to correct its error ; or to error in both, then '
            'both should correct their error. But the individual and the Church are '
            'equally answerable to Christ alone, and equally free from control by the '
            'other, except so far as each speaks the mind of Christ. The Church must '
            'show the gentleness of Christ toward the individual, and the individual '
            'must show the humility of Christ toward the Church ; but each must obey '
            'Christ, and each must judge what Christ commands. And woe to the '
            'individual that sets us his error against the teaching of Christ in the '
            'Church ; and woe to the Church that sets up its error against the '
            'teaching of Christ in the individual. But so far as the rules '
            'established by the Church are agreeable to the doctrines relating '
            'thereto contained in Scripture, Christ requires the individual to obey '
            'them, however unwisely they order circumstantial details.\n\nThese rules '
            'may have to do with the administration of government in general, as the '
            'regulations laid down in the Form of Government, or with the exercise of '
            'discipline in particular, as the regulations laid down in the Rules of '
            'Discipline, with the conduct of worship, as the regulations laid down in '
            'the Directory for Worship, or with the work of extending the Church, as '
            'the regulations adopted from time to time touching the various '
            'missionary activities of the Church. The very fact that these '
            'regulations are not wrought out in detail in the Scriptures, implies '
            'that they should be adapted to changing conditions from time to '
            'time.\n\nThirdly, They possess the right to requiring obedience to the '
            'laws of Christ. Hence, they admit those qualified to sealing ordinances '
            'and to their respective offices and they exclude the disobedient and '
            'disorderly from their offices or from sacramental privileges; but the '
            'highest censure to which their authority extends is to cut off the '
            'contumacious and impenitent from the congregation of believers.\n\nThe '
            'right of requiring obedience implies the possession of means of '
            'enforcing obedience ; but the only means in the hands of church courts '
            'is sentence of approval or censure. The sentence of approval may extend '
            'to admission to sacraments and office ; and the sentence of censure to '
            'exclusion from sacraments and office. Since the use of the sacraments is '
            'limited to the congregation of believers, the children being baptized '
            'only upon the faith of parents, to exclude from the sacraments is to '
            'exclude from the congregation of believers ; and this is the utmost to '
            'which the sentence of a church court may go.\n\nMoreover, they possess '
            'all the administrative authority necessary to give effect to the '
            'powers.\n\nFor instance, if one is excluded from the sacraments, any '
            'Minister administering the sacraments to him is subject to '
            'ecclesiastical censure for disregarding the authority of Christ in the '
            'sentence of exclusion ; but a church court has only declarative '
            'authority, and can never inflict temporal pains and penalties.',
        webUrl: 'https://pcahistory.org/bco/fog/11/02.html',
      ),
    ],
    'bco_11-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 73\u201374',
        text:
            '61.--III. All church courts are one in nature, constituted of the same '
            'elements, possessed inherently of the same kinds of rights and powers, '
            'and differing only as the Constitution may provide. Yet it is according '
            'to scriptural example, and needful to the purity and harmony of the '
            'whole Church, that disputed matters of doctrine and order, arising in '
            'the lower courts, should be referred to the higher courts for '
            'decision.\n\n62.--IV. For the orderly and efficient dispatch of '
            'ecclesiastical business, it is necessary that the sphere of action of '
            'each court should be distinctly defined.\n\nThe general principle that '
            'all the courts have the same kinds of rights and powers is subject to '
            'two limitations : \u201cthat disputed matters of doctrine and order, '
            'arising in the lower courts, should be referred to the higher courts for '
            'decision\u201d ; and that, by special regulations, the sphere of action '
            'of particular courts should be limited by express definitions. It is '
            'involved in these two principles, that every court has all '
            'ecclesiastical powers not expressly withheld from it or expressly '
            'assigned exclusively to another court ; that every higher court has all '
            'power over all courts and persons within its jurisdiction, subject only '
            'to constitutional rules of procedure ; and that no court has any power '
            'over those who do not belong to that part of the Church of the '
            'Presbyters of which the court is an assembly.\n\nThe Session exercises '
            'jurisdiction over a single church,\n\nbut not over Ministers at all '
            ';\n\nthe Presbytery over what is common to the Ministers, Sessions and '
            'churches within a prescribed district,\n\nthat is, it has exactly the '
            'same authority over one of its Ministers, Sessions or churches, as it '
            'has over any other of its Ministers, Sessions or churches ;\n\nthe Synod '
            'over what is common to three or more Presbyteries, and their Ministers, '
            'Sessions and churches.\n\nfrom which it appears that every Minister, '
            'Session or church must belong to some particular Presbytery, and that a '
            'Synod must have at least three Presbyteries ;\n\nand the General '
            'Assembly over such matters as concern the whole Church,\n\nwhere '
            '\u201cChurch\u201d means, as often, the Presbyterian Church in the '
            'United States, but that striving to be, within its measure, what the '
            'whole visible Church should be, and keeping itself a separate '
            'organization only so long as it has to do this for the sake of liberty '
            'to obey Christ ;\n\nand the jurisdiction of these courts is limited by '
            'the express provisions of the Constitution. Every court has the right to '
            'resolve questions of doctrine and discipline seriously and reasonably '
            'proposed, and in general to maintain truth and righteousness, condemning '
            'erroneous opinions and practices which tend to the injury of the peace, '
            'purity or progress of the Church ; and although each court exercises '
            'exclusive original jurisdiction over all matters specially belonging to '
            'it, the lower courts are subject to the review and control of the higher '
            'courts in regular gradation. Hence, these courts are not separate and '
            'independent tribunals ; but they have a mutual relation, and every act '
            'of jurisdiction is the act of the whole Church, performed by it through '
            'the appropriate organ.\n\nIn the nature of the case, the entire '
            'Eldership of the Church assembled together would be a court having all '
            'power of every sort over every part and member of the Church, subject '
            'only to such limitations as in its nature ecclesiastical power is '
            'subject to. For this catholic assembly of all the Presbyters, as being '
            'impracticable, there is, by constitutional regulations, substituted an '
            'assembly of selected representatives of the Eldership from all parts of '
            'the Church, and, besides this delegated assembly, smaller assemblies, as '
            'Synods and Presbyteries, partly delegated and limited in their scope of '
            'action to the parts of the Church to which they respectively pertain, '
            'and also local assemblies of Presbyters not delegated. But all these '
            'assemblies are but sections of the one Eldership, who thus, for '
            'practical reasons, distribute among themselves fragments of the one '
            'jurisdiction pertaining to them as one court.',
        webUrl: 'https://pcahistory.org/bco/fog/11/03.html',
      ),
    ],
    'bco_11-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 73\u201374',
        text:
            '61.--III. All church courts are one in nature, constituted of the same '
            'elements, possessed inherently of the same kinds of rights and powers, '
            'and differing only as the Constitution may provide. Yet it is according '
            'to scriptural example, and needful to the purity and harmony of the '
            'whole Church, that disputed matters of doctrine and order, arising in '
            'the lower courts, should be referred to the higher courts for '
            'decision.\n\n62.--IV. For the orderly and efficient dispatch of '
            'ecclesiastical business, it is necessary that the sphere of action of '
            'each court should be distinctly defined.\n\nThe general principle that '
            'all the courts have the same kinds of rights and powers is subject to '
            'two limitations : \u201cthat disputed matters of doctrine and order, '
            'arising in the lower courts, should be referred to the higher courts for '
            'decision\u201d ; and that, by special regulations, the sphere of action '
            'of particular courts should be limited by express definitions. It is '
            'involved in these two principles, that every court has all '
            'ecclesiastical powers not expressly withheld from it or expressly '
            'assigned exclusively to another court ; that every higher court has all '
            'power over all courts and persons within its jurisdiction, subject only '
            'to constitutional rules of procedure ; and that no court has any power '
            'over those who do not belong to that part of the Church of the '
            'Presbyters of which the court is an assembly.\n\nThe Session exercises '
            'jurisdiction over a single church,\n\nbut not over Ministers at all '
            ';\n\nthe Presbytery over what is common to the Ministers, Sessions and '
            'churches within a prescribed district,\n\nthat is, it has exactly the '
            'same authority over one of its Ministers, Sessions or churches, as it '
            'has over any other of its Ministers, Sessions or churches ;\n\nthe Synod '
            'over what is common to three or more Presbyteries, and their Ministers, '
            'Sessions and churches.\n\nfrom which it appears that every Minister, '
            'Session or church must belong to some particular Presbytery, and that a '
            'Synod must have at least three Presbyteries ;\n\nand the General '
            'Assembly over such matters as concern the whole Church,\n\nwhere '
            '\u201cChurch\u201d means, as often, the Presbyterian Church in the '
            'United States, but that striving to be, within its measure, what the '
            'whole visible Church should be, and keeping itself a separate '
            'organization only so long as it has to do this for the sake of liberty '
            'to obey Christ ;\n\nand the jurisdiction of these courts is limited by '
            'the express provisions of the Constitution. Every court has the right to '
            'resolve questions of doctrine and discipline seriously and reasonably '
            'proposed, and in general to maintain truth and righteousness, condemning '
            'erroneous opinions and practices which tend to the injury of the peace, '
            'purity or progress of the Church ; and although each court exercises '
            'exclusive original jurisdiction over all matters specially belonging to '
            'it, the lower courts are subject to the review and control of the higher '
            'courts in regular gradation. Hence, these courts are not separate and '
            'independent tribunals ; but they have a mutual relation, and every act '
            'of jurisdiction is the act of the whole Church, performed by it through '
            'the appropriate organ.\n\nIn the nature of the case, the entire '
            'Eldership of the Church assembled together would be a court having all '
            'power of every sort over every part and member of the Church, subject '
            'only to such limitations as in its nature ecclesiastical power is '
            'subject to. For this catholic assembly of all the Presbyters, as being '
            'impracticable, there is, by constitutional regulations, substituted an '
            'assembly of selected representatives of the Eldership from all parts of '
            'the Church, and, besides this delegated assembly, smaller assemblies, as '
            'Synods and Presbyteries, partly delegated and limited in their scope of '
            'action to the parts of the Church to which they respectively pertain, '
            'and also local assemblies of Presbyters not delegated. But all these '
            'assemblies are but sections of the one Eldership, who thus, for '
            'practical reasons, distribute among themselves fragments of the one '
            'jurisdiction pertaining to them as one court.',
        webUrl: 'https://pcahistory.org/bco/fog/11/04.html',
      ),
    ],
    'bco_12-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 75\u201377',
        text:
            'Section III.--Of the Church Session.\n\nThe first paragraph shows who '
            'are members of the Session ; the next three paragraphs show who is '
            'Moderator in the absence of the Pastor, when there is no Pastor, and '
            'when there are more Pastors than one, it being already settled that the '
            'Pastor is the Moderator of the Session (paragraph 54); the fifth '
            'paragraph enumerates the rights and powers and duties of the Session, '
            'and the remaining paragraphs add some special regulations--one as to '
            'when meetings of the Session shall be held, one as to records of its '
            'proceedings, one as to certain items that are especially to be recorded, '
            'and one as to devotional exercises in connection with the '
            'meetings.\n\n63.--I. The church Session consists of the Pastor or '
            'Pastors, if there be any, and the Ruling Elders of a church.\n\nFrom '
            'this it appear that a church may have a plurality of Pastors. A Pastor '
            'is a member of the Session, having the same voice and vote, permanency '
            'and responsibility therein, as any other member, no more and no '
            'less.\n\nTwo Ruling Elders, if there be so many, with the Pastor, if '
            'there be one, shall be necessary to constitute a quorum. But the Pastor '
            'and one Ruling Elder may constitute a quorum in cases where there are '
            'only two Elders.\n\nIn this last sentence \u201cElder\u201d must be '
            'understood to mean Ruling Elder as distinguished from Teaching Elder. We '
            'have then the following cases : When the Session consists of one or more '
            'Pastors and three or more Ruling Elders, then a Pastor and two Ruling '
            'Elders are a quorum ; if the Session consists of one or more Pastors and '
            'one or two Ruling Elders, then a Pastor and one Ruling Elder are a '
            'quorum ; when the Session consists of more than one Ruling Elder without '
            'a Pastor, then two are a quorum ; and when the Session consists of one '
            'Ruling Elder, one is a quorum. By analogy in the above sentences, we '
            'might write Pastor for Ruling Elder and Ruling Elder for Pastor. If the '
            'Session has both sorts of Elders, one at least of each sort is required '
            'to make up a quorum ; if the Session has a plurality of members, a '
            'plurality s required to make up a quorum, and if the Session has a '
            'plurality of Elders of one sort only, a plurality of that sort is '
            'required to make up a quorum.',
        webUrl: 'https://pcahistory.org/bco/fog/12/01.html',
      ),
    ],
    'bco_12-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 77\u201378',
        text:
            '64.--II. In case of the absence of the Pastor, or when for prudential '
            'reasons it may appear advisable that some other Minister should preside, '
            'such Minister, belonging to the same Presbytery, as the Pastor, with the '
            'concurrence of the Elders may designate, shall be invited to preside in '
            'his place.\n\nThere are two cases when some one not the Pastor may '
            'preside, in cases where the church has a Pastor : in the absence, of the '
            'Pastor, so that his attendance is impracticable ; and when, for '
            'prudential reasons (for he cannot lose his right to preside while '
            'remaining Pastor), it appears advisable that another preside. Appears '
            'advisable to whom? To the Pastor, and the other Elders consent ; or to '
            'both the Pastor and the other Elders. But neither can the other Elders '
            'forbid the Pastor to preside, nor can the Pastor require them to permit '
            'some one else to preside. Four things must be true of the substitute '
            'Moderator : he must be a Minister ; he must belong to the same '
            'Presbytery as the church ; he must be designated by the Pastor ; and he '
            'must be acceptable to the rest of the Elders. Of course, by common '
            'consent, any member of the Session may preside in the Pastor\'s '
            'presence, by way of relieving him from labor ; but in case of any '
            'dispute of his ruling, the Pastor must resume the chair and make the '
            'moderatorial ruling. No provision is made for the case in which a church '
            'has a Pastor that has become incapacitated for designating a substitute, '
            'as by illness or mental derangement ; but in such case the church is '
            'really without a Pastor, and the next paragraph would apply ; but, in '
            'case of doubt or dispute, the Presbytery would have to determine whether '
            'the emergency and conditions are such as require this.\n\nWhen the '
            'Pastor is going to be absent for a length of time, and it is probable '
            'that there will be need for sessional action before his return, he and '
            'the other Elders may agree beforehand what Minister shall be invited to '
            'preside in his place.',
        webUrl: 'https://pcahistory.org/bco/fog/12/02.html',
      ),
    ],
    'bco_12-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 78\u201379',
        text:
            '65.--III. When a church is without a Pastor, the Moderator of the '
            'Session shall be either the Minister appointed for that purpose by the '
            'Presbytery, or one invited by the Session to preside on a particular '
            'occasion. But when it is inconvenient to procure the attendance of such '
            'a Moderator, the Session may proceed without it. In judicial cases this '
            'Moderator shall always be a Minister of the same Presbytery to which the '
            'church belongs.\n\nThe Moderator of the Session is an appointee of the '
            'Presbytery, to which, and not to the Session, he is responsible for his '
            'behavior and decisions as Moderator. (Cf. par. 54.) When the church has '
            'no Pastor, who is always appointed to his office by the Presbytery, it '
            'belongs to the Presbytery to appoint some one of its Ministers as '
            'Moderator of the Session. In case this has not been done, or in cast '
            'this presbyterial Moderator cannot be present without hurtful delay, of '
            'which the Session must judge, the Session may invite some Minister to '
            'preside, but with two limitations : the Session can never select any one '
            'as its permanent Moderator, but only to preside on a particular occasion '
            '; and, if the particular occasion is to take action in a judicial case, '
            'the Moderator thus invited for the particular occasion must be a '
            'Minister of the same Presbytery as the church, that in so important a '
            'matter no confusion of jurisdiction may arise. And only when the Session '
            'finds it inconvenient to procure the attendance of either the Moderator '
            'appointed by the Presbytery, or of any Minister invited by itself for a '
            'particular occasion, may the Session select one of its own members to '
            'moderate it for that occasion. Even in a judicial case, a Session may '
            'proceed with one of its own number as Moderator, if the emergency '
            'requires. And, of course, the Session can always convene, with one of '
            'its own members presiding, for the purpose of inviting a Minister to '
            'preside.\n\nIf one of the Ruling Elders acts as Moderator, or some '
            'Minister no appointed by Presbytery to preside, the appeal from his '
            'decisions must be to the Session ; but if the Moderator of the Session '
            'is the Pastor or any other appointee of the Presbytery, the appeal from '
            'his decisions must be to the Presbytery.',
        webUrl: 'https://pcahistory.org/bco/fog/12/03.html',
      ),
    ],
    'bco_12-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text]',
        webUrl: 'https://pcahistory.org/bco/fog/12/04.html',
      ),
    ],
    'bco_12-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 79\u201387',
        text:
            '67.--V. The church session is charged with maintaining the spiritual '
            'government of the church.\n\nit being discretionary with the Session to '
            'commit the management of the temporal affairs to the Deacons.\n\nfor '
            'which purpose it has power\n\n1. to inquire into the knowledge, '
            'principles, and Christian conduct of the church members under its '
            'care;\n\nThe Ruling Elders and Deacons are individually under the care '
            'of the Session, as well as all others enrolled as members, whether '
            'admitted to the Lord\'s Supper or not. It has power to inquire into '
            'their knowledge ; this is especially to be done in the case of the '
            'children of the church, in order to deal wisely with them as to their '
            'coming to the Lord\'s Supper, and it is needful in the case of all, in '
            'order to judge of their principles and conduct and of what instruction '
            'they need. Inquiry into principles and conduct is necessary, not only '
            'for purposes and conduct is necessary, not only for purposes of '
            'discipline, but also for the prevention of the entrance of heresies and '
            'immoralities. But the inquiry of Session has to do only with Christian '
            'conduct, that is, with their conduct as to whether it is as Christian '
            'conduct should be.\n\n2. to censure those found delinquent;\n\nThis is '
            'to be done always in accordance with the Rules of Discipline ; but it is '
            'to be done. And when this function is unused, then Presbyterian '
            'government becomes a set of unused functions, which are sure to become '
            'diseased and perverted to wrong uses.\n\n3. to see that parents do not '
            'neglect to present their children for baptism;\n\nOtherwise Christ is '
            'disobeyed in neglecting the very first step to be taken by the Church '
            'toward saving its own children. Such negligence is a violation of their '
            'church covenant on the part of the parents. The Session is not to urge '
            'parents to present their children for baptism and with that be content, '
            'but to SEE THAT THEY DO IT.\n\n4. to receive members into the communion '
            'of the Church;\n\nThe persons thus admitted may be either already '
            'members of the Church not hitherto admitted to its communion, or not '
            'before members of the Church at all. It must be observed that the phrase '
            'is \u201ccommunion of the Church,\u201d not \u201ccommunion of the '
            'church.\u201d The power to admit into the membership of the particular '
            'church from other churches is not here given to the Session, nor '
            'anywhere ; for such persons have already been admitted by the Church, '
            'acting through its appropriate organ, to its communion, and the only '
            'question remaining for decision, after it is ascertained that an '
            'applicant for membership in the particular church is already a member in '
            'the Church, is the mere question of particular jurisdiction, for which '
            'rules are elsewhere given. For if one Session should refuse admission to '
            'those to whom another Session has granted it, that would be for the '
            'Church through one organ to contradict its action through another organ. '
            'But such a person, it being determined to what particular jurisdiction '
            'he belongs, must be dealt with by that court as a member of the Church; '
            'and if unworthy of membership, he must be suspended or excommunicated by '
            'the methods prescribed, and not by a mere refusal to acknowledge the '
            'fact of membership. This principle is subject to three modifications. '
            'First, as to applicants from other churches or denominations, the '
            'Session has more discretion, for the reasons that the refusal to admit '
            'leaves the person where he was in the Church, and does not make the one '
            'set of Elders, working together as one under our Constitution, do '
            'contradictory acts, and that the principles which guided in the previous '
            'admission of these persons in the other denomination were more or less '
            'short of what the Session has itself undertaken to apply. In the second '
            'place, as in the organization of a new church (par. 26), so in enlarging '
            'the membership of an organized church, there is a higher necessity of '
            'preserving the church from destruction by an influx of the unregenerate '
            'than of complying with the letter of requirements than were meant to '
            'conserve and not to destroy the efficiency of the Church in all its '
            'parts. And in the third place, it is, after all, constitutional for one '
            'court to complain to the higher courts against the actions of another '
            'court, and pending the final decision let the status quo remain. And the '
            'unity and purity of the Church require that, if a Session refuses to '
            'accept members from another Session\'s jurisdiction, it refer their '
            'status back to the Session from which they came, that that Session '
            'either cancel the testimonials it has given or insist upon their '
            'acceptance, and that, the two Sessions not agreeing, the matter be '
            'brought in an orderly way to the higher courts for decision.\n\n5. to '
            'grant letters of dismission to other churches, which, when given to '
            'parents, shall always include the names of their baptized '
            'children.\n\nRegulations given elsewhere direct when such letters of '
            'dismission shall be granted. They should, of course, certify nothing '
            'that the Session does not believe to be true. The \u201cchurches\u201d '
            'to which the letters are given need not be in the Presbyterian Church in '
            'the United States ; nor is it necessary always that a church be named in '
            'a letter of dismission. It would be proper to give a letter of '
            'dismission of a baptized but non-communicating member, if he has no '
            'parents in whose letters his name could be included, or if he is not to '
            'reside with them and under their control.\n\n6. to ordain and install '
            'Ruling Elders and Deacons on their election by the church, and to '
            'require these officers to devote themselves to their work.\n\nThe '
            'Session has power to decline to ordain and install those who are not '
            'qualified, even if the church elects them, just as the Presbytery has '
            'power to decline to ordain and install as a Pastor a probationer called '
            'by a church ; and it is the duty of the Session not to ordain and '
            'install, unless satisfied that the persons elected are '
            'qualified.\n\nCONSTITUTIONAL INQUIRY:\n\n1999 - Inquiry #2 from '
            'Southeast Alabama Presbytery, pertaining to BCO 12-5, b\n\nQuestion - '
            '\u201cMay a congregation, by majority vote, instruct its session as to '
            'what standards it is to apply in the approval or disapproval of nominees '
            'for elder and deacon (beyond the standards set forth in BCO chapters 8 '
            'and 9 and in Holy Scripture)?\u201d\n\nAnswer - No. It is the opinion of '
            'the Committee that BCO 12-5, b establishes the authority of the Session '
            'to examine candidates. BCO 24-1, 3 and 4 set forth the procedure '
            'establishing the authority of the congregation to elect candidates from '
            'among a field of those determined by the Session to be eligible. This '
            'same section elucidates the basis for determining eligibility. BCO goes '
            'to great lengths to reinforce the system of checks and balances '
            'established in Scripture. It is the congregation who can nominate. It is '
            'the Session who determines eligibility based on Scripture and '
            'Constitutional criteria. It is the congregation, finally, who ses the '
            'work of the Spirit in the lives of men and confirms the call of God by '
            'means of a prayerful election. The congregation does not have to elect '
            'those determined to be eligible. If in its opinion, those found eligible '
            'are still not acceptable for some other reason(s), it can express its '
            'view through the election process.\n\nFurther, the congregation may vote '
            'to advise the Session of its desires as to candidates\' views or '
            'practices in regard to specific issues and may request the Session to '
            'inform the congregation of the candidates\' views and/or practices '
            'regarding these issues.',
        webUrl: 'https://pcahistory.org/bco/fog/12/05.html',
      ),
    ],
    'bco_12-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 87\u201388',
        text:
            '68.--VI. The Session shall hold stated meetings at least '
            'quarterly.\n\nThe neglect of this rule when a church has a Pastor means '
            'the government of the church by him instead of by the Session, and his '
            'failure to convene the Session is presumptive evidence of his '
            'willingness to rule without his brother Elders. The neglect of this rule '
            'when the church has no Pastor means either anarchy or paralysis of '
            'church life.\n\nMoreover, the Pastor has power to convene the Session '
            'when he may judge it requisite ; and he shall always convene it when '
            'requested to do so by any two of the Ruling Elders ; and when there is '
            'no Pastor, it may be convened by two Ruling Elders.\n\nThe lodging of '
            'this power in the hands of the Pastor is simply a matter of convenience '
            '; for if a majority, counting him, do not desire to proceed to the '
            'business, nothing can be done ; nor can two Elders by calling a meeting, '
            'or having it called, carry any action, or even have the Session consider '
            'it, unless a majority are in favor of so doing. If a Pastor should '
            'refuse to convene a meeting when properly requested to do so, he would '
            'be censurable\n\nupon conviction before Presbytery. It is always '
            'necessary in convening the meeting of any court, to give due notice to '
            'all its members ; and should it appear that any member was not given '
            'reasonable timely notice of the time, place and purpose of the meeting, '
            'the proceedings of that meeting would be null and void, should he call '
            'their validity in question. What would be timely notice the Session, or, '
            'on complaint, the Presbytery, would have to decide. In no case ought the '
            'validity of an action to be upheld, if there was a purpose to promote '
            'the absence of a member of the court by the imperfection of the '
            'notice.\n\nThe Session shall also convene when directed so to do by the '
            'Presbytery.\n\nWhen the Presbytery gives such a direction, it should see '
            'that notice is given to each member of the Session. It is evident, from '
            'this regulation, that the Session is largely the Presbytery acting '
            'through a sort of commission.',
        webUrl: 'https://pcahistory.org/bco/fog/12/06.html',
      ),
    ],
    'bco_12-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 88',
        text:
            '69.--VII. Every Session shall keep a fair record of its proceedings, '
            'which record shall be at least once in every year submitted to the '
            'inspection of the Presbytery.\n\nThe record should show all the '
            'proceedings of Session ; and the records of congregational meetings may '
            'be ordered spread upon its own records, as may any communication or '
            'document referred to the Session. If the Session fails to submit its '
            'records at the first stated meeting of Presbytery in any year, it should '
            'submit them at the next stated meeting in the same year.',
        webUrl: 'https://pcahistory.org/bco/fog/12/07.html',
      ),
    ],
    'bco_12-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 88\u201389',
        text:
            '70.--VIII. Every Session shall keep a fair record of baptisms,\n'
            '\nordered by it and reported to it as administered ;\n\nof those '
            'admitted to the Lord\'s table,\n\nby it ;\n\nof non-communicating '
            'members,\n\nenrolled by it as under its jurisdiction ;\n\nand of the '
            'death\n\nreported to it (and all deaths of members should be formally '
            'reported to it),\n\nand dismissions of church members.\n\nAll these '
            'items come properly in the proceedings of the Session ; but inasmuch as '
            'there is often kept a separate tabulation of such items, it might be '
            'thought unnecessary to record them among the proceedings but for this '
            'explicit regulation.',
        webUrl: 'https://pcahistory.org/bco/fog/12/08.html',
      ),
    ],
    'bco_12-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 89',
        text:
            '71. IX. Meetings of the Session shall ordinarily be opened and closed '
            'with prayer.\n\nIt would seem reasonable that when prayer is omitted, it '
            'be omitted by action of the Session, and not by the single decision of '
            'the Moderator ; and then the reason for the omission might be stated in '
            'the action.',
        webUrl: 'https://pcahistory.org/bco/fog/12/09.html',
      ),
    ],
    'bco_12-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '\u00a766.--IV. In churches where there are two or more Pastors, they '
            'shall, when present, alternately preside.\n\nThat is, that one present '
            'since whom the others present have presided shall preside. And this '
            'paragraph forbids a church\'s having an assistant Pastor in the sense of '
            'a Pastor with less authority in the government of the church than '
            'another, however the other work of the pastoral office may be '
            'distributed among them.',
        webUrl: 'https://pcahistory.org/bco/fog/12/10.html',
      ),
    ],
    'bco_13-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 89\u201392',
        text:
            'Section IV.--Of the Presbytery.\n\nThe first five paragraphs have to do '
            'with the question of what members the Presbytery shall be composed. The '
            'first two define the membership, the second prescribing how a Ruling '
            'Elder\'s right to sit shall be determined; the third defines the quorum; '
            'and the next two prescribe how Ministers shall be admitted and what '
            'obligations they shall subscribe. The sixth paragraph enumerates the '
            'powers of the Presbytery. And the last three paragraphs contain some '
            'special regulations; the first as to records and reports to higher '
            'courts; the next as to meetings; and the last as to extending the '
            'courtesies of the floor to other Ministers than the members.\n\n72.--I. '
            'The Presbytery consists of all the Ministers and one Ruling Elder from '
            'each church within a certain district.\n\nThree things are here '
            'determined : that the Presbyteries shall not territorially overlap ; '
            'that every minister within the district shall be a member of the '
            'Presbytery ; and that one Ruling Elder, and only one, from each church '
            'shall be a member. The principle underlying the district regulation is '
            'this : that neither shall Ministers or churches select their own '
            'Presbytery, nor shall Presbyteries select their own Ministers and '
            'churches, but that the Presbyterial connection of Ministers and churches '
            'shall be determined by their residence and sphere of labor. For '
            '\u201cdistrict\u201d is not to be interpreted rigidly, so that, for '
            'instance, a Minister, could not, for convenience, reside in the '
            'territory of one Presbytery and be Pastor of a church in another '
            'Presbytery ; but a Minister could not be Pastor of a church belonging to '
            'a different Presbytery from himself. It is not, then, the place of '
            'residence of a Minister that determines his Presbyterial connection, but '
            'the sphere of his labor. Accordingly, if a Minister is engaged in labor '
            'that has no territorial location, or that is not under the control of '
            'one Presbytery rather than another, his Presbyterial connection is not '
            'determined by the provisions of this paragraph. The district regulation '
            'is to be interpreted more rigidly as to churches, and yet the end of the '
            'regulation is to be kept in view. If there were two populations of '
            'different languages inhabiting the same territory, so that it would be '
            'impossible for their Elders to understand one another in the same '
            'Presbytery, it would not violate the principle here intended to have two '
            'Presbyteries covering more or less the same geographical district; but '
            'to have churches lying within the same district of inter-communication '
            'to belong to different Presbyteries would violate the principle. Other '
            'causes than distance in place or different in language might be '
            'important enough to enter into the delimitation of a Presbytery\'s '
            'district; and of such possible causes the higher courts would have to '
            'decide. But in no case must churches be permitted to group themselves '
            'according to their mere preference.\n\nEvery Minister, even if his labor '
            'is not specially under the control of a Presbytery, must be assigned to '
            'that labor by some Presbytery, and be answerable to this Presbytery for '
            'his ministerial conduct therein. Even when he is not engaged in any '
            'ministerial labor, he must be answerable to some Presbytery for not '
            'being so engaged, and subject to some Presbytery\'s direction when '
            'called to a work. At all times a minister must be answerable to some '
            'Presbytery for his behavior. He must, therefore, always be a member of '
            'some Presbytery, that he may always be under the immediate jurisdiction '
            'of some court. And the Presbytery is the lowest court whose jurisdiction '
            'is extensive enough to direct and to judge him in the labors proper to '
            'his office. The necessity of his always being a member of some '
            'Presbytery is not so much that he may have a voice in ruling the Church '
            'as that the Church may be able to rule him.\n\nThe Ruling Elder is not a '
            'member of the Presbytery in order to come under its jurisdiction, for he '
            'is under the immediate jurisdiction of his Session, but in order that '
            'the Church may have his counsel in the Presbyteries. That they are not '
            'all members of Presbytery is due to the practical difficulty of '
            'attendance by them all. One is required from each church, that there may '
            'be in the Presbytery intelligence of the needs of every church, and that '
            'every church may be kept in living connection with the Presbytery. Only '
            'one is required, however numerous the membership of the particular '
            'church, because it is not the theory that majorities are wise and should '
            'rule, but that the Church comes to see together the mind of Christ by '
            'counselling together in love. While, from practical necessity, the '
            'majority prevails when there is a difference of judgment, this '
            'difference of judgment, after deliberation, is simply a failure of men '
            'to work out this rule of Christ. And the members of a majority ought to '
            'grieve more over the difference of judgment than rejoice over carrying '
            'the decision their way.\n\nCONSTITUTIONAL INQUIRY:\n\n2005 - M33GA, '
            '33-29, First Supplemental Report, pp. 155-156\n\nThe question referred '
            'from Potomac Presbytery was: \u201cGiven that BCO 13-1 defines a '
            'presbytery as \'all the teaching elders and churches within its bounds '
            'that have been accepted by the presbytery,\' does a presbytery have the '
            'constitutional right to include as a member a church not within its '
            'bounds?\u201d\n\nANSWER: In the opinion of the CCB a presbytery does not '
            'have the constitutional right to include as a member a church not within '
            'its bounds. (BCO 13-1). Adopted by CCB.',
        webUrl: 'https://pcahistory.org/bco/fog/13/01.html',
      ),
    ],
    'bco_13-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[No comparable text in this chapter for discussion]',
        webUrl: 'https://pcahistory.org/bco/fog/13/02.html',
      ),
    ],
    'bco_13-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 92',
        text:
            '73.--II. Every Ruling Elder not known to the Presbytery shall produce a '
            'certificate of his regular appointment from the Session of the Church '
            'which he represents.\n\nThis implies that a Ruling Elder may not sit in '
            'Presbytery unless regularly appointed by his Session ; but there is no '
            'prescription for how long he may be appointed.',
        webUrl: 'https://pcahistory.org/bco/fog/13/03.html',
      ),
    ],
    'bco_13-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 92\u201393',
        text:
            '74.--III. Any three Ministers belonging to the Presbytery, together with '
            'at least one Ruling Elder, being met at the time and place appointed, '
            'shall be a quorum competent to proceed to business.\n\nIf less than a '
            'quorum, they can wait the coming of others, until the required quorum is '
            'present, the time of meeting being construed to mean from the point of '
            'time named until a quorum is present ; and so, if none are present at '
            'the point of time, but afterwards a quorum arrives, it may proceed to '
            'business. But if less than a quorum are present at the point of time, '
            'and have left, supposing there would be no quorum, then the meeting '
            'fails, and no number coming later would be a quorum. Otherwise there '
            'would be no determinable point at which the meeting fails.\n\nAs in the '
            'case of the Session (paragraph 63), so here, it is required that both '
            'sorts of Presbyters be present, but the number of each is a matter of '
            'practicability ; for while, in the case of the Session, one Minister and '
            'two Ruling Elders are required, here three Ministers and one Ruling '
            'Elder. And the requirement that both should be present is not grounded '
            'on a denial that a court of Presbyters of either class, were there none '
            'of the other available, would be a competent court, but on the '
            'affirmation that neither class can lawfully assume to themselves '
            'authority to the exclusion of the other class.\n\nIt is calculated that '
            'ordinarily the numbers here named will be present, even when the meeting '
            'is held at an inconvenient time and place, and that so small a number '
            'may be trusted to act for the time rather than to delay pressing '
            'business.',
        webUrl: 'https://pcahistory.org/bco/fog/13/04.html',
      ),
    ],
    'bco_13-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 93\u201394',
        text:
            '75.--IV. Ministers seeking admission to a Presbytery are to be examined '
            'on experimental religion, and also touching their views in theology and '
            'Church government. If applicants come from other denominations, the '
            'Presbytery shall also require them to answer in the affirmative the '
            'questions put to candidates at their ordination.\n\nThis is simply an '
            'instance of Presbytery inquiring into the knowledge, principles, and '
            'Christian conduct of the ministers under its care (compare paragraph 67) '
            '; and it would be altogether in harmony with the principles of the Book '
            'of Church Order for the Presbytery to make such inquiry on other '
            'occasions. This inquiry is prescribed at the transition of a minister '
            'into another Presbytery lest sometimes one should by change of '
            'Presbyteries escape discipline. Moreover, this regulation occasions a '
            'frequent recurrence of the question of the purity of their own life and '
            'doctrines to the members of Presbytery. It may therefore serve to '
            'confirm what is good as well as to prevent what is evil. The special '
            'requirement of applicants from other denominations simply requires of '
            'them what the others have complied with at their ordination.\n\nIf the '
            'Presbytery should reject an applicant who comes from another '
            'denomination, and take no further action, he would be left in '
            'ecclesiastical standing where he was before ; and there is no action '
            'that the Presbytery could take, unless to communicate its reasons to '
            'that ecclesiastical authority from which he came. But in the case of a '
            'Minister coming from a sister Presbytery of this Church, as his '
            'application could not be considered until it was ascertained that he had '
            'been regularly dismissed from that Presbytery to the one to which he '
            'applies, under the jurisdiction of which Presbytery is he, between the '
            'time of the acceptance of his certificate as a regular dismissal and his '
            'formal admission? Under the jurisdiction of the Presbytery from which he '
            'comes. Otherwise, he would, as soon as his certificate is acted upon, '
            'and before his examination, be a member of the Presbytery to which he '
            'applies (for he is a member of that Presbytery which has jurisdiction '
            'over him), and he could no longer be said to be seeking admission. But '
            'if the Presbytery refuses, after the examination, to admit him, the '
            'reasons for that refusal should be certified to the Presbytery that '
            'granted him his certificate. Then that Presbytery should either try and '
            'censure him by due process, or insist upon his admission into the other '
            'Presbytery, leaving the issue between the two Presbyteries, if they '
            'cannot agree, to be determined by the higher courts. For the unity of '
            'the Church is broken if it does contradictory things through two courts. '
            '(Cf. par. 67:4).',
        webUrl: 'https://pcahistory.org/bco/fog/13/06.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 119\u2013120',
        text:
            'All ministers seeking admission to a Presbytery shall be examined by '
            'that Presbytery. The fact that he may have been previously examined by '
            'other PCA presbyteries does not relieve the new Presbytery of its '
            'obligation to examine all who apply for admission in their number. '
            'The\n\nmatters to be examined are these:\n\n1. The Christian '
            'experience\n\n2. The minister\'s views in theology\n\n3. The minister\'s '
            'views of the Sacraments\n\n4. The minister\'s views of church '
            'government\n\nThis examination differs from that of ordination, in that '
            'the candidate\nfor ordination is examined as to his knowledge in these '
            'areas, as well as to his views. It is presumed that the minister, who '
            'has already been ordained, has already demonstrated sufficient knowledge '
            'to be ordained. What the Presbytery is looking for in this examination '
            'is a statement of views, so that they can be sure that all of their '
            'members are sound in the faith.\n\nMinisters transferring from other '
            'denominations are to be examined\u201c thoroughly in the knowledge as '
            'well as views. The reason for this is to guard the standards required '
            'for PCA ministers, since a number of other denominations do not require '
            'the same level of knowledge for the ordination of ministers. In addition '
            'they are required to answer the questions for ordination of PCA '
            'ministers, since they have not previously taken these vows.\n\nThe use '
            'of the extraordinary clause for ministers transferring from other '
            'denominations is limited those matters covered in BCO 21-4. There are '
            'two areas in which the extraordinary clause may be used in BCO 21-4. The '
            'first has to do with educational requirements, as spelled out in the '
            'first paragraph of BCO 21-4. This includes a college degree and a '
            'seminary degree, or a certificate of the completion of a theological '
            'program as approved by the General Assembly and by one of the\n '
            'presbyteries of the PCA. The second area of application of the '
            'extraordinary clause in BCO 21-4 has to do with the examination in the '
            'various areas of knowledge for ordination. Of course the caution of the '
            'last paragraph of BCO 21-4 regarding the use of the extraordinary clause '
            'applies here.\n\n(See also BCO 21-4, 1986, 14-52, 48; BCO 24-6, 1986, '
            '14-52, 16, #4)\n\nDOCUMENTATION :\n\nOverture 1 from Southwest Florida '
            'Presbytery\n\n\u201dAmend BCO 13-6 To Require Transfers from Other '
            'Denominations to be Fully Amended.\u201c\n\nWhereas the provision of our '
            'Book of Church Order relative to the admission of ordained ministers '
            'from other denominations currently stipulates that they be examined only '
            'on their views, and\n\nWhereas other denominations may not hold men to '
            'as high degree of knowledge which we demand of our own candidates, '
            'and\n\nWhereas men might therefore enter the position of TE who could '
            'not sustain an ordination exam as expected of a candidate,\n\nTherefore, '
            'we request that the Presbytery of Southwest Florida overture the 24th '
            'General Assembly to make the following changes to BCO 13-6: [additions '
            'are underlined; deletions struck through]\n\n13-6. Ministers seeking '
            'admission to a Presbytery from other Presbyteries in the Presbyterian '
            'Church in America shall be examined on experimental religion, and also '
            'touching their views in theology and church government. If applicants '
            'come from other denominations, the Presbytery shall examine them '
            'thoroughly in knowledge and views as required by BCO 21-4 andalso '
            'require them to answer in the affirmative the questions put to '
            'candidates at their ordination. Ordained ministers from other '
            'denominations being considered by Presbyteries for reception may come '
            'under the extraordinary provisions set forth in BCO 21-4.\n'
            '\nGrounds:\n\nAs it reads it allows men to be ordained in the PCA '
            'without giving satisfaction to the Presbytery of their knowledge in any '
            'area. We are permitted to examine a man only with reference to his views '
            'whether he comes from another PCA Presbytery, a sister Reformed '
            'denomination, or an independent, Charismatic, Baptist, or some other '
            'denomination. This seems to be a weakness in our polity. We have sought '
            'to maintain the highest standards for a PCA teaching elder. It is our '
            'contention that the BCO should require that if a man is coming to us '
            'from another denomination he must sustain the same exam for ordination, '
            'in knowledge and views, as any candidate.\n\nAdopted at the April 9, '
            '1996, meeting of Southwest Flordia Presbytery.\n\nAttested by: /s/ '
            'Michael A. Kendrick, Stated Clerk\n\nNOTE: Received too late for 1996 '
            'General Assembly, held over for the 25th General Assembly in 1997. /s/ '
            'PRG [Paul R. Gilchrist].\n\n--------\n\nThis amendment was adopted by '
            'the 26th General Assembly (1998) following a reported vote from the '
            'presbyteries of 43 in favor, one against [M26GA, 26-17, Item 1, p. '
            '56].\n\nINTERPRETATION (PCA Digest, 1973-1993, Vol. 1, p. 263):\n\n(See '
            'also BCO 21-4, 1986, 14-52, 48)\n\n1979, 7-41, III, 21, p. 104.\n\na) '
            'That BCO 13-6 states that anyone coming from another denomination must '
            'be asked the questions for ordination, and\n\nb) That Presbytery also '
            'has the authority to require an ordination that is in accord with '
            'Scripture, if deemed necessary.\n\n1985, 13-45, III, 56, p. 109\n\nThat '
            'the advice regarding Constitutional Inquiry 16 regarding the use of the '
            '\u201dextraordinary clause\u201c be ratified.\n\n1985, Appendix I, 6, p. '
            '246 Constitutional Inquiry 16 : From the Presbytery of the Western '
            'Carolinas.\n\nThe Presbytery respectfully requests the Judicial Business '
            'Committee of the General Assembly to advise when and if the '
            'extraordinary clause may be used regarding ministers transferring from '
            'another denomination.\n\nANSWER :\n\nBCO 13-6, dealing with admitting '
            'ministers from other denominations, contains no reference to an '
            '\u201dextraordinary clause.\u201c Neither does BCO 21-4 paragraph 1, '
            '(educational requirements) contain this clause. Therefore there is no '
            'applicable \u201dextraordinary clause\u201c to use in the admitting of '
            'ministers from other denominations.\n\nNote: BCO 13-6 was amended in '
            '1992 providing for the use of [the] extraordinary clause to apply to '
            'ministers transferring from other denominations. [Despite the statement '
            'here, no such amendment has been located at this writing, 02/12/08. '
            'Please inform if located.',
        webUrl: 'https://pcahistory.org/bco/fog/13/06.html',
      ),
    ],
    'bco_13-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '76.\u2014V. The Presbytery shall cause to be transcribed, in some '
            'convenient part of the book of records, the obligations required of '
            'Ministers at their ordination, which shall be subscribed by all admitted '
            'to membership, in the following form, viz: \u201cI, A.B., do ex animo '
            'receive and subscribe the above obligation as a just and true exhibition '
            'of my faith and principles, and do resolve and promise to exercise my '
            'ministry in conformity thereunto.\u201d\n\nThese obligations are the '
            'first seven questions in paragraph 119, the eighth being a question for '
            'installation only.\n\nAll persons admitted to the communion in this '
            'Church are required to promise to behave according to the principles of '
            'the faith and practice of this Church. All officers are required to '
            'profess acceptance of the standards of doctrine and government, and to '
            'promise faithfulness in office; and, in the case of Ruling Elders and '
            'Ministers, special emphasis is laid upon soundness in the faith as a '
            'qualification. (Par. 44; cf. par. 48.) In addition to this, Ministers '
            'are required to make this subscription, which involves two special '
            'particulars: they here profess that the affirmations and promises made '
            'at their ordination are a just, as well as a true exhibition of their '
            'faith and principles; and they further promise to exercise their '
            'ministry in conformity thereunto. It is conceivable that a man might '
            'sincerely answer all the questions in the affirmative, and yet not be '
            'able to say that they are a just exhibition of his principles. And it '
            'might come about that one who sincerely answered these questions in the '
            'affirmative at his ordination would not be able to do so at his '
            'transition to another Presbytery. In such case, he could not subscribe. '
            'Here emerge two questions.\n\nIf, for this or any reason, a Minister '
            'refuses to subscribe as here required, is he a member of the Presbytery '
            'to which he has come? No; his admission is not completed until he '
            'subscribes, any vote to admit him being really a vote to admit him upon '
            'his subscribing. Strictly, a Minister who has been approved on '
            'examination should not be enrolled as a member until he '
            'subscribes.\n\nIf a Minister, after his subscription, changes his '
            'convictions, so that he cannot sincerely make the affirmations\n that he '
            'made at his ordination, what ought he to do? It is the doctrine of the '
            'Form of Government that he ought not to change his mind; and, therefore, '
            'it does not belong to an exposition of it to answer the question. '
            'Whether the courts should treat such a change as an offence, should be '
            'answered under paragraph 152 of the Rules of Discipline.\n\nHere belongs '
            'the consideration of the question whether the Church should require such '
            'a subscription as a condition of admission to the ministry. That turns '
            'upon the question whether this requires more than Christ requires. Are '
            'the faith and principles which He teaches, and to which He commands all '
            'His ministers to conform their ministry, justly exhibited in the '
            'affirmations required by the Form of Government at ordination? And this '
            'question is reserved for discussion where those affirmations are '
            'required. But the requiring of promise and subscription is a prudential '
            'means, permissible if nothing is required beyond what Christ '
            'requires.',
        webUrl: 'https://pcahistory.org/bco/fog/13/07.html',
      ),
    ],
    'bco_13-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable discussion]',
        webUrl: 'https://pcahistory.org/bco/fog/13/08.html',
      ),
    ],
    'bco_13-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '77.\u2014VI. The Presbytery has power\n\n1. to receive and issue '
            'appeals, complaints and references brought before it in an orderly '
            'manner.\n\nWhat is an orderly manner, and how the Presbytery shall '
            'proceed, are questions answered in the Rules of Discipline.\n\n2. and in '
            'cases in which the Session cannot exercise its authority, shall have '
            'power to assume original jurisdiction;\n\nThe continuity and harmony of '
            'the sentence would have required it to run thus: \u201cto assume '
            'original jurisdiction in cases in which the Session cannot exercise its '
            'authority.\u201d But the clause was inserted as an amendment, and in the '
            'framing of it the harmony of the sentence was not sufficiently attended '
            'to. These cases will be as follows: where there is no Session; in all '
            'matters for which one Elder is incompetent, where there is but one '
            'member of the Session; in every matter for which the Session as it '
            'exists is disqualified by the relations of its members to the matter. Of '
            'its own ability the Session must judge, and of the need of assuming '
            'jurisdiction the Presbytery must judge.\n\nIf the Session undertakes '
            'that for which it is not competent, the Presbytery does not have to wait '
            'for the Session to refer the question of its inability to the '
            'Presbytery, nor for some one to complain against the Session as unable; '
            'but the Presbytery may act upon its own information, and assume the '
            'functions of the Session at its discretion, whenever the Presbytery '
            'judges the Session to be unable. This action of the Presbytery, as every '
            'other of its actions, is subject to review by the higher courts.\n\nIn '
            'all cases where there is no Session, the Presbytery is the '
            'Session.\n\n3. to examine and license candidates for the holy '
            'ministry.\n\nAs no time is prescribed to elapse between the '
            'Presbytery\'s first recognition of one as a candidate till his '
            'licensure, he may be under the Presbytery\'s care as a candidate an '
            'indefinite length of time; and his examination may take place from time '
            'to time, in the discretion of Presbytery. But he is not a licentiate, '
            'until he is licensed; and after he is licensed, he still remains a '
            'candidate for the holy ministry, for no one is a Minister until he is '
            'ordained. Obviously, it lies with the Presbytery to give directions to a '
            'candidate in his preparations pending the conclusion of his '
            'examinations.\n\n4. to receive, dismiss, ordain, install, remove and '
            'judge Ministers.\n\nMore special regulations for the exercise of these, '
            'as of other functions, are to be found elsewhere; but such regulations '
            'are not intended to take away the powers here assigned. The power to '
            'receive, dismiss, ordain and judge Ministers involves full jurisdiction '
            'over their conduct and teachings, private and official; and the power '
            'also to install and remove them involves full control over them in '
            'assigning them to spheres of labor. While the Presbytery could not '
            'appoint any Minister to a labor to which Christ does not appoint him, '
            'and it must be assumed that Christ will make known His will to the '
            'Minister as well as to the Presbytery, yet Christ may speak to him '
            'through the Presbytery; and he has promised subjection to his brethren '
            'in the Lord. Constitutionally, Ministers are subject to the order of '
            'Presbytery.\n\n5. to review the record of church Sessions, redress '
            'whatever they may have done contrary to order, and take effectual care '
            'that they observe the Constitution of the Church;\n\nIt is not enough to '
            'look over the sessional records, but the Presbytery should \u201credress '
            'whatever\u201d the Sessions \u201chave done contrary to order.\u201d The '
            'Sessions are small in numbers, and often of necessity composed of men '
            'only imperfectly acquainted with the application of the principles of '
            'order, and the Presbytery is supposed to be composed of men among whom '
            'will be some of superior skill and wisdom in these matters; and '
            'accordingly the Presbytery is given the greatest power of supervision. '
            'And it is able effectually to see that they observe the Constitution; '
            'for the Presbytery may, as pointed out above, assume the functions of '
            'the Session when it finds the Session unable to exercise its authority. '
            'As it would be exceedingly tedious to read over all the Session records '
            'before the whole Presbytery, they may be referred to committees to '
            'examine in detail and report upon; but care should be taken that these '
            'committees are men of superior ability as Presbyters, and they should do '
            'their work carefully and make their reports to Presbytery full.\n\n6. to '
            'establish the pastoral relation, and to dissolve it at the request of '
            'one or both of the parties, or wheere the interests of religion '
            'imperatively demand it;\n\nFull regulations are elsewhere given for the '
            'first two items in this clause; but where the interests of religion '
            'imperatively demand the dissolution, the Presbytery may act without the '
            'request or consent of either party.\n\n7.\n to set apart Evangelists to '
            'their proper work;\n\nThe principle must apply to teachers, editors and '
            'Ministers called to labor in such other works as may be needful to the '
            'Church. (Cf. par. 37.)\n\n8. to require Ministers to devote themselves '
            'diligently to their sacred calling and to censure the '
            'delinquent;\n\nThere is much official work for a Minister to do who is '
            'not engaged as Pastor or in any special work. Ministers may be '
            'dilinquent in doing this general labor, and they may be delinquent in '
            'not entering into openings for special labor. The Presbytery should '
            'allow no man to retain the dignity and power of a Minister who will not '
            'dililgently devote himself to his official work. If the Presbyteries '
            'will faithfully exercise their power of appointing their Ministers to '
            'special work, they may also exercise this power of requiring them to '
            'devote themselves to their ministerial duties.\n\n9. to see that the '
            'lawful injunctions of the higher courts are obeyed;\n\nby itself and by '
            'its Sessions and churches.\n\n10. to condemn erroneous opinions which '
            'injure the purity or peace of the Church;\n\nIt is not intended that '
            'Presbytery shall take note of all opinions. An opinion to be condemned '
            'by Presbytery should be such as is erroneous, as is injurious to either '
            'the purity or the peace of the Church, and as will have its injurious '
            'influence diminished by the Presbytery\'s condemnation. But the '
            'Presbytery in condemning such opinions is not going outside of its '
            'proper sphere.\n\n11. to visit churches for the purpose of redressing '
            'the evils that may have arisen in them;\n\nFor the exercise of this '
            'power the Presbytery is given an effectual method, the assumption of the '
            'jurisdiction of Session in needful cases.\n\n12. to unite or divide '
            'churches, at the request of the members thereof;\n\nWhile Presbytery has '
            'discretion to refuse to unite or divide churches when the members '
            'request, it may not unite two churches unless the members of each '
            'request it. This makes sacred to its own decision the individuality of '
            'the particular church. It is in the particular church as nowhere else '
            'that the whole idea of the Church is gathered up and expressed; and a '
            'group of churches such as is united in a denomination, as the '
            'Presbyterian Church in the United States, cannot so well or so fully '
            'express the life and unity of the whole Church as can a particular '
            'church. Therefore the particular church, while not independent of other '
            'churches, does not exist for the denomination, but the denomination for '
            'the particular church. It is to be assumed that, when there ought to be '
            'a union or division of particular churches, the members thereof can be '
            'brought to see it; and if they should be too hasty to request unnion or '
            'division in any case, the Presbytery may refuse the request.\n\nHas '
            'Presbytery, then, the power to dissolve a church without the consent of '
            'its members? Certainly not. For if it cannot divide it without its '
            'consent, it cannot annihilate it. But a church may cease to exist, and '
            'whether a church still exists or not Presbytery must judge; otherwise, '
            'Presbytery\n could not even determine what churches are under its '
            'jurisdiction.\n\nWhen does a church cease to exist as a particular '
            'church?\n\n1. When (paragraph 20) it ceases to consist of a number of '
            'professing Christians;\n\n2. when, its members having offspring, it '
            'ceases to associate these with their parents;\n\n3. when it ceases to be '
            'an association for divine worship;\n\n4. when it ceases to be an '
            'association for godly living;\n\n5. when it ceases to act according to '
            'the Scriptures;\n\n6. or when it ceases to submit to the lawful '
            'government of Christ\'s kingdom.\n\nWhen the Presbytery finds any of '
            'these marks it may declare the fact that the church has ceased to be a '
            'church. Individual members of a church thus dissolved, as all members '
            'under the jurisdiction of Presbytery and not under the immediate '
            'jurisdiction of a Session, are under the immediate jurisdiction of '
            'Presbytery and may by it be give letters of dismission to other '
            'churches.\n\nWhenever what was a church ceases to meet statedly for '
            'divine worship, it ceases to be a church.\n\n13. to form and receive new '
            'churches;\n\n(Cf. Sec. V. of Chap. II.) It may also receive churches '
            'from other Presbyteries or (subject to 90.14) churches existing outside '
            'of the Presbyterian Church in the United States.\n\n14. to take special '
            'oversight of vacant churches;\n\n(Cf. 2.)\n\n15. to concert measures for '
            'the enlargement of the Church within its boundaries;\n\nIt belongs to '
            'the Presbytery to do this rather than to individuals or voluntary '
            'associations; but in the exercise of this power the Presbytery cannot '
            'transcend limitations or violate regulations elsewhere laid down.\n\n16. '
            'in general to order whatever pertains to the spiritual welfare of the '
            'churches under its care;\n\nAs the churches have no other sort of '
            'welfare, this is equivalent to saying welfare. Here, again, the '
            'Presbytery is not by this clause given any power beyond limitations or '
            'contrary to regulations elsewhere laid down. In this and the preceding '
            'regulation, it is implied that it belongs to higher courts to care for '
            'the enlargement of the Church and the welfare of the churches outside '
            'the bounds of the Presbytery.\n\n17. to appoint commissioners to the '
            'General Assembly;\n\nBy analogy with paragraph 67, last clause, and '
            'according to paragraph 88, these are to make report of their '
            'diligence.\n\n18. and finally, to propose to the Synod or to the '
            'Assembly such measures as may be of common advantage to the Church at '
            'large.\n\nFor while it does not belong to the Presbytery itself to care '
            'for what lies outside of its own district, it is proper for it to be '
            'concerned, and to propose to the higher courts measures reaching beyond '
            'its own district. And, indeed, the Presbyteries aare the very courts '
            'where plans for the whole Church can receive the most careful and '
            'prolonged consideration in counsel. In the larger courts and courts '
            'whose action will be final, there is likely to be debate rather than '
            'counsel.',
        webUrl: 'https://pcahistory.org/bco/fog/13/09.html',
      ),
    ],
    'bco_13-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text]',
        webUrl: 'https://pcahistory.org/bco/fog/13/10.html',
      ),
    ],
    'bco_13-11': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '78\u2014VII. The Presbytery shall keep a full and fair record of its '
            'proceedings, and shall send it up to the Synod annually for review. It '
            'shall report to the Synod and the General Assembly every year the '
            'condition and progress of religion within its bounds during the year; '
            'and all the important changes which may have taken place, such as the '
            'licensures, the ordinations, the receiving or dismissing of members, the '
            'removal of members by death, the union and the division of churches and '
            'the formation of new ones.\n\nThe records are sent up to Synod in order '
            'that the Synod may be able to discharge its function of review and '
            'control; and the examination and criticism of these records should be '
            'thorough. The reports to Synod and Assembly are for information, and '
            'especially for the tabulation of statistical information. It is striking '
            'that no report of the dissolution of churches is called for. Does the '
            'Constitution assume that a church cannot cease? (Cf. par. 77. 12.)',
        webUrl: 'https://pcahistory.org/bco/fog/13/11.html',
      ),
    ],
    'bco_13-12': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '79\u2014VIII. The Presbytery shall meet at least twice a year on its own '
            'adjournment; and when any emergency shall require a meeting sooner than '
            'the time to which it stands adjourned, the Moderator, or, in the case of '
            'his absence, death, or inability to act, the Stated Clerk shall, with '
            'the concurrence, or at the request of two Ministers and two Ruling '
            'Elders of different churches, call a special meeting. For this purpose '
            'he shall give notice, specifying the particular business of the intended '
            'meeting, to every Minister belonging to the Presbytery, and to the '
            'Session of every vacant church, in due time previous to the meeting, '
            'which shall not be less than ten days. And nothing shall be transacted '
            'at such special meeting besides the particular business for which the '
            'court has been thus convened.\n\nA meeting of Presbytery, then, is a '
            'single session, or a series of sessions.\n\nA meeting \u201con its own '
            'adjournment\u201d is a \u201cstated meeting\u201d (par. 54), and not a '
            'part of the sessions of a meeting. It is the intention that a Presbytery '
            'shall hold at least two stated meetings a year, not counting adjourned '
            'sessions. Regular meeting is a synonym of stated meeting.\n\nThe power '
            'of the Moderator to call a special meeting before the time of the stated '
            'or regular meeting (par. 55) is here limited in the case of the '
            'Moderator of the Presbytery, for he is not to call it unless with the '
            'concurrence of two Ministers and two Ruling Elders of different '
            'churches. Is he bound to call it upon the request of these four, when in '
            'his own judgment there is no emergency requiring it? No. To him, as '
            'Moderator, belongs some authority in this matter; but if he had no '
            'discretion but to call it at the request of less than a quorum, he would '
            'have no authority at all. Less than a quorum cannot force a meeting; for '
            'the power of the Moderator as defined in paragraph 55 is not here taken '
            'away, but only limited. Otherwise a very small minority, even less than '
            'a quorum, could force a special meeting in such conditions as would '
            'permit the attendance of so few that they would be a majority, and thus '
            'the Presbytery would be at the mercy of a faction. But the Moderator, '
            'who is assumed to represent the Presbytery, and who, in the exercise of '
            'his discretion, would properly consider what the Presbytery would '
            'desire, may protect the Presbytery against design and useless expense '
            'and trouble. However, this conclusion, that the Moderator is not bound '
            'to call a meeting when thus requested, is so doubtful that he ought not '
            'to refuse unless for very good reasons.\n\nThat the whole spirit of the '
            'paragraph discourages special meetings is evident from the three '
            'prudential and preventative requirements: that the two Ruling Elders '
            'must be of different churches, thus increasing the difficulty of getting '
            'the number; that so long, and so universal, and so particular a notice\n '
            'must be sent out; and that nothing can be transacted at the special '
            'meeting but what is specified in the call.\n\nThat these precautions may '
            'not make a special meeting impossible, in case the call cannot be issued '
            'by the Moderator, on account of absence, death, or inability, the Clerk, '
            'who will be generally known, is to act in his place; but the Clerk is '
            'not to act in case the Moderator, being compos mentis, refuses to call a '
            'meeting.\n\nThe actions of a meeting not properly called are void if '
            'called in question.',
        webUrl: 'https://pcahistory.org/bco/fog/13/12.html',
      ),
    ],
    'bco_13-13': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '80.\u2014IX. Ministers, in good standing in other Presbyteries, or in '
            'any ecclesiastical body with which this Church has established '
            'correspondence, being present at any meeting of Presbytery, may be '
            'invited to sit and deliberate as corresponding members. Also, Ministers '
            'of like standing in other Evangelical Churches may be invited to sit as '
            'visiting brethren. In all these cases it is proper for the Moderator to '
            'introduce these Ministers to the Presbytery, and give them the right '
            'hand of fellowship.\n\nRuling Elders are not included, as not being ex '
            'officio members of Presbytery, but of Session.\n\nChurches are here '
            'classified as non-Evangelical and Evangelical, which term, not being '
            'elsewhere defined in this connection, and being necessarily more or less '
            'approximate, the Presbytery must construe as cases arise. And '
            'Evangelical Churches are classified into those with which this Church '
            'has established correspondence, and those with which it has not\u2014a '
            'provision designed to emphasize the difference between correspondence, '
            'correspondence being intermediate between fraternal relations and '
            'organic union. For this Church looks upon other Churches with this '
            'question, What hinders organizational unity? Accordingly, corresponding '
            'members are invited to deliberate, but not to vote, whilst visiting '
            'brethren are invited only to sit, but not to deliberate or vote.',
        webUrl: 'https://pcahistory.org/bco/fog/13/13.html',
      ),
    ],
    'bco_14-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 109\u2013110',
        text:
            '86.--The General Assembly is the highest court of this Church, and '
            'represents in one body all the churches thereof. It bears the title of '
            'THE GENERAL ASSEMBLY OF THE PRESBYTERIAN CHURCH IN THE UNITED STATES, '
            'and constitutes the bond of union, peace and correspondence among all '
            'its congregations and courts.\n\nThe title was not meant to deny that '
            'there are other Presbyterian Churches in the United States, but was '
            'selected as indicating that this Church is not sectional and as '
            'recognizing the duty of obedience to the government under which its '
            'members, in the providence of God, are placed. While it is manifestly '
            'the bond of union and peace among all its congregations and courts, and '
            'its dignity and efficiency should be cherished as such, it must be '
            'remembered also that it is the bond of correspondence. For as churches '
            'may not negotiate with one another, except under review of their '
            'Presbyteries, nor Presbyteries with one another, except under review of '
            'their Synods, so neither can Synods with one another, except under '
            'review of the Assembly.\n\nOVERTURES & AMENDMENTS:\n\nChanges instituted '
            'for 14-1 (11):\n\n1. 1980 [M8GA, 8-88, Item 3, p. 113]\n\n2. 1981 [M9GA, '
            '9-65, Item 4, p. 132]\n\n3. 1991 [M19GA, 19-9, Item 1, p. 48] - {see '
            'also, M17GA, 17-81, II, Item 7, p. 133]\n\nChanges instituted for 14-1 '
            '(12):\n\n1. 1980 [M8GA, 8-88, Item 4, p. 113]\n\n2.\n 1982 [M10GA, '
            '10-89, Item 3, p. 113]\n\n3. 1984 [M12GA, 12-14, Item 3, p. 86]\n\n4. '
            '1989 [M17GA, 17-6, Item 1, p. 40]\n\n5. 1991 [M19GA, 19-9, Item 2, p. '
            '49]\n\n6. 1995 [M23GA, 23-11, Item 3, p. 53]\n\n7. 2001 [M29GA, 29-12, '
            'Item 3, p. 53]\n\n8. 2002 [M30GA, 30-10, Item 2, p. 62]\n\nChanges '
            'instituted for 14-1 (12b.4):\n\n1.\n 2003 [M31GA, 31-11, Item 4, p. '
            '59-61]\n\nChanges instituted for 14-1 (14):\n\n1.\n 1980 [M8GA, 8-88, '
            'Item 5, p. 113]\n\nThis amendment came before the Eighth General '
            'Assembly under recommendation from the Committee of Commissioners on '
            'Judicial Business:\n\nItem 5 - Amend paragraph 15-1-14 to read as '
            'follows: \u201cThe Assemlby shall elect a six-man Theological Examining '
            'Committee (three Teaching Elders and three Ruling Elders of three '
            'classes of two men each). This Committee shall examine all Coordinators, '
            'Associate Coordinators, Assistant Coordinators, and those acting '
            'temporarily in these positions who are being recommended for first time '
            'employment by Assembly Committees to the Assembly. They are to be '
            'examined in the areas of Christian Experience, Theology, the Sacraments, '
            'Church Government, and English Bible. No person will begin work or move '
            'on the field without prior examination and approval by the General '
            'Assembly\'s Theological Examining Committee. No person will be presented '
            'to the Assembly for election who has not met the approval of this '
            'Committee. Nominations for this Committee will be presented by the '
            'Assembly\'s Nominating Committee.\n\nAdopted.\n\n2.\n 1990 [M18GA, 18-8, '
            'Item 3, p. 45]\n\nThe amendment first came before the 17th General '
            'Assembly as a recommendation from the Committee of Commissioners on '
            'Judicial Business [M17GA, 17-82, III, Item 11, p. 152]:\n'
            '\n\u201d14-1.14. The Assembly shall elect a six-man Theological '
            'Examining Committee (three Teaching Elders and three Ruling Elders of '
            'three classes of two men each). Nominations for this Committee will be '
            'presented by the Assembly\'s Nominating Committee.\n\n\u201cThis '
            'Committee shall examine all first and second level administrative '
            'officers of committees, boards and agencies, and those acting '
            'temporarily in these positions who are being recommended for first time '
            'employment. They are to be examined in the areas of Christian '
            'experience, Theology, the Sacraments, Church Government, Bible Content, '
            'Church History and the history of the Presbyterian Church in '
            'America.\n\n\u201dNo person will begin work or move on the field without '
            'prior examination and approval by the General Assembly\'s Theological '
            'Examining Committee. No first level administrative officer will be '
            'presented to the Assembly for election who has not met the approval of '
            'this committee.\u201c\n\nThe proposed amendment was adopted by the '
            'Seventeenth General Assembly, sent down to the Presbyteries, and then '
            'Adopted at the Eighteenth General Assembly, following a reported '
            'Presbytery vote of 32 in favor, 11 against.\n\nChanges instituted for '
            '14-1 (15):\n\n1. 1993 [M21GA, 21-10, Item 1, p. 47], began in 1991 as\n '
            'an overture from Covenant Presbytery, but was received too late for '
            'consideration at the 19th General Assembly, and so came before the 20th '
            'GA in 1992 [M20GA, 20-51, Item 4, pp. 100-101].\n\nOverture 6 from '
            'Covenant Presbytery: \u201dAmend BCO 14-1 by Inserting RAO '
            '13-1\u201c\n\nWhereas, the PCA has always desired for the Committees of '
            'Commissioners to provide a grassroots check and balance for General '
            'Assembly\'s permanent committees;\n\nWhereas, the ability of the '
            'Committees of Commissioners to be an effective check and balance will be '
            'lessened if their role is changed from evaluation and recommendation to '
            'advice;\n\nWhereas, the ability of the Committees of Commissioners to be '
            'an effective check and balance will be lessened if business no longer '
            'comes to the floor of the General Assembly through the Committee of '
            'Commissioners but through the permanent committees and '
            'agencies;\n\nWhereas, the PCA must not so centralize power in the '
            'permanent committees in the name of practice efficiency as to tempt the '
            'permanent committees with elitism and hegemony;\n\nWhereas, the PCA has '
            'historically agreed with the Thornwellian position that the work of the '
            'church is to be done by the church through committees under the direct '
            'oversight of the church and not through semi-autonomous '
            'boards;\n\nTherefore Be It Resolved that Covenant Presbytery overture '
            'the Nineteenth General Assembly to begin the process of amending the '
            'Book of Church Order by adding the following paragraph:\n\n14-1.15. All '
            'business shall ordinarily come to the floor of the Assembly for final '
            'action through Committees of Commissioners, except reports of the '
            'Standing Judicial Commission, the Committee on Constitutional Business, '
            'the Committee on Review of Presbytery Records, the Nominating Committee '
            'and Ad Interim Committees, which shall come directly to the '
            'Assembly.\n\nAdopted at the Twenty-first General Assembly, following a '
            'reported Presbytery vote of 40 in favor, 6 against.\n\nCONSTITUTIONAL '
            'INQUIRY:\n\n14-1\n\n1982, 10-23, p. 60. At the Ninth General Assembly, '
            'the Permanent Sub-Committee on Judicial Business was asked to respond to '
            'the question whether or not the Committee of Commissioners has to make a '
            'recommendation concerning the new cooperative agreements of the '
            'Permanent Committee on Mission to the World.\n\nIn order to answer that '
            'question, the Permanent Sub-Committee on Judicial Business took notice '
            'of the following points:\n\n(1) BCO 14-1-5 states that the General '
            'Assembly has the responsibility \u201dto evaluate needs and '
            'resources.\u201c\n\n(2) BCO 14-1-7 states \u201dThe Assembly\'s '
            'committees are to serve and not to direct any Church judicatories. They '
            'are not to establish policy, but rather execute policy established by '
            'the General Assembly.\u201c\n\n(3) BCO14-6 states that the General '
            'Assembly has the power \u201dto institute and superintend the agencies '
            'in the general work of evangelization.\u201c The actions and activities '
            'of all the committees are always subject to the review of the General '
            'Assembly.\n\n(4) Church courts have final responsibility in determining '
            'doctrinal compatibility (see BCO12-5, 13-8, and 14-6). Each new '
            'cooperative agreement requires the acceptance of a doctrinal '
            'statement.\n\n(5) The Committee of Commissioners is not envisioned in '
            'our system of government as serving as a commission but as a channel by '
            'which business is reviewed and brought to the floor for final action by '
            'the General Assembly (see RAO 8-1; M8GA, p. 239; and BCO15-1).\n\nThus '
            'it is the opinion of the Sub-Committee on Judicial Business that the '
            'Committee of Commissioners must make a recommendation to the General '
            'Assembly regarding each new cooperative agreement of the Committee on '
            'Mission to the World.\n\n14-1-12\n\n1985, 13-27, p. 86. The following '
            'constitutional inquiry from the floor was referred to the Committee on '
            'Judicial Business:\n\n\u201dDoes the Book of Church Order 14-1-12 permit '
            'a trustee of an agency whose term has expired to be nominated to fill '
            'the unexpired term of another trustee who has resigned from his '
            'position?\u201c\n\n1985, 13-31, p. 91 ...The following response was '
            'adopted:\n\n\u201dBCO 14-1-12 (4) permits such election only if the '
            'bylaws of the agency (as approved by the Assembly) so specify.',
        webUrl: 'https://pcahistory.org/bco/fog/14/01.html',
      ),
    ],
    'bco_14-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '87.--II. The General Assembly shall meet at least annually, and shall '
            'consist of commissioners from the Presbyteries in the following '
            'proportion, viz : Every Presbytery shall be entitled to send one '
            'Minister and one Ruling Elder ; but if it consists of more than '
            'twenty-four ministerial members, it shall send an additional Minister '
            'and Ruling Elder.\n\nThis makes the number of Ministers and Ruling '
            'Elders in the Assembly equal. It also operates as an inducement to '
            'divide Presbyteries when they come to have many more than twenty-four '
            'Ministers. (Cf. remarks under 72.)',
        webUrl: 'https://pcahistory.org/bco/fog/14/02.html',
      ),
    ],
    'bco_14-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '[no comparable text or provision for discussion under this '
            'chapter.]\n\nOVERTURES :\n\n1987 - Overture 31 from Missouri '
            'Presbytery\n\nWhereas BCO 14-5 allows General Assembly business to be '
            'conducted by 40 Commissioners representing at least 7 Presbyteries; '
            'and,\n\nWhereas, this quorum determination is tantamount to having '
            'General Assembly business conducted by a Commission; and,\n\nWhereas, '
            'this quorum determination fails to take into account the growth of the '
            'Denomination;\n\nTherefore, the Presbytery of Missouri respectfully '
            'overtures the Fourteenth General Assembly of the Presbyterian Church in '
            'America meeting in Philadelphia, Pennsylvania, June 23-27, 1986 that the '
            'Book of Church Order be amended in 14-3 as follows: in the first '
            'sentence delete \u201cseven\u201d and insert \u201c1/3\u201d, and, at '
            'the end of 14-3 add \u201cA quorum shall consist of at least 1/3 of the '
            'Presbyteries.\u201d and\n\nthat the Book of Church Order be amended in '
            '14-5 to require a quorum for annual General Assembly meetings by '
            'deleting from BCO 14-5 : \u201cany forty\u201d and inserting \u201cat '
            'least 1/4\u201d, and, deleting \u201cseven\u201d and inserting \u201c1/2 '
            'the.\u201d\n\nBy order of Presbytery, 17 January 1986.\n\nAttest : '
            'Albert F. Moginot, Jr., Stated Clerk.\n\n1987 - Report of the Committee '
            'of Commissioners on Judicial Business, (M15GA, 15-83, III, 2, p. '
            '168)\n\n2. In the event that the General Assembly votes to approve a '
            'representative assembly, we recommend that no action be taken on '
            'Overture 31 to the 14th General GA. However, if such action is not taken '
            'by the 15th GA, we recommend that it be answered in the affirmative with '
            'the following change:\n\n(1) That BCO be amended as follows:\n\nIn 14-3, '
            'the first sentence be amended by replacing \u201c20\u201d with \u201c10% '
            'of the\u201d and the deletion of the word \u201cseven\u201d and '
            'insertion in lieu thereof \u201c1/3 of the\u201d; and\n\n(2) In section '
            '14-5, the words \u201cany forty\u201d be deleted and the words \u201cany '
            '100 of these commissioners\u201d be inserted in lieu thereof, and the '
            'word \u201cseven\u201d be deleted, and the words \u201c1/3 of the\u201d '
            'be inserted in lieu thereof.\n\nAdopted and sent down to the '
            'presbyteries for advice and consent.\n\nGrounds : A percent will serve '
            'better, as the Assembly grows in size.',
        webUrl: 'https://pcahistory.org/bco/fog/14/03.html',
      ),
    ],
    'bco_14-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '88.--III. Each Commissioner, before his name shall be enrolled as a '
            'member of the Assembly, shall produce from his Presbytery a commission '
            'under the hand of the Moderator and Clerk\n\nThe end of these '
            'requirements is to prevent the possibility of anyone coming in who has '
            'not been appointed by his Presbytery ; and they were more necessary when '
            'there was no telegraph and like means of rapid communication, and when '
            'there was danger that the civil power might appoint men to attend as '
            'members ; but doubtless now, the end being secured, it would be no '
            'violation of the intent of the Constitution if the Assembly, after being '
            'constituted, should permit a delegate to sit without producing his '
            'written commission, in case it had been misplaced or, by accident, had '
            'not been made out. The requirement of the Moderator\'s signature is a '
            'modification of the provision in the last sentence of 56.\n\nin the '
            'following or like form, viz.: \u201cThe Presbytery of '
            '____________________, being met at ____________________ on the '
            '___________ day of _________, doth hereby appoint A.B., Minister [or '
            'Ruling Elder, as the case may be], and in case of his absence, then '
            'C.D., Minister [or Ruling Elder, as the case may be], to be a '
            'Commissioner on behalf of this Presbytery to the next General Assembly '
            'of the Presbyterian Church in the United States, to meet at '
            '______________________, on the ____________day of _____________A.D., or '
            'wherever and whenever the said Assembly may happen to sit ; to consult, '
            'vote and determine on all things that may come before that body, '
            'according to the principles and Constitution of this Church and the Word '
            'of God. And of his diligence herein he is to render an account at his '
            'return.\n\n\u201dSigned by order of the Presbytery.\n\n(C.D.) '
            'Clerk.\n\n(A.B.) Moderator\n\nA commissioner is appointed to sit in one '
            'Assembly ; but, if a Presbytery so chooses, it may appoint the same man '
            'as often as it will. If an Assembly adjourns to a continuance of its '
            'sessions, the commissioners already appointed have the right to sit in '
            'the adjourned sessions; but a Presbytery would certainly have the right '
            'to withdraw a commission once issued, and to commission another to the '
            'same Assembly at any time. So, if neither the principal delegate nor his '
            'alternate can attend, the Presbytery would have the right to make a new '
            'appointment. And the alternate, appearing at any time, even after the '
            'principal has been enrolled, would have the right to sit in the absence '
            'of his principal. In other words, a Presbytery cannot be deprived of its '
            'right to full representation in all the sessions of the Assembly. '
            '\u201cOne Assembly\u201d means one meeting of the Assembly. (See '
            'definition of \u201cmeeting\u201d under 79.)\n\nA Presbytery may appoint '
            'as delegate to the General Assembly any Ruling Elder belonging to a '
            'church under its jurisdiction, including even a Ruling Elder not at the '
            'time in official relations with any church.',
        webUrl: 'https://pcahistory.org/bco/fog/14/04.html',
      ),
    ],
    'bco_14-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 112',
        text:
            '89.--IV. Any eighteen of these commissioners, of whom one-half shall be '
            'Ministers, and at least five shall be Ruling Elders, being met on the '
            'day, and at the place appointed, shall be a quorum for the transaction '
            'of business.\n\n(Cf. par. 74.) As there must be at least nine Ministers, '
            'at least nine Presbyteries (unless some of the Presbyteries are quite '
            'large) will be represented, and almost certainly more than one Synod. It '
            'is assumed that, in case of special difficulties in the way of securing '
            'a quorum, more Ministers could be present than Ruling Elders.\n\nHere it '
            'reads, \u201cquorum for the transaction of business,\u201d making it '
            'plain that, if the number present at any time falls below the '
            'requirements for a quorum, business cannot be transacted ; and this is '
            'to be assumed also in the cases of the other courts.',
        webUrl: 'https://pcahistory.org/bco/fog/14/05.html',
      ),
    ],
    'bco_14-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 112\u2013116',
        text:
            '90.--V. The General Assembly shall have power, 1, to receive and issue '
            'all appeals, references, and complaints regularly brought before it from '
            'the inferior courts ;\n\n(Cf. 77, 1 ; and 84, I.)\n\n2. to bear '
            'testimony against error in doctrine and immorality in practice, '
            'injuriously affecting the Church ;\n\n(Cf. 77 : 10.)\n\n3. to decide in '
            'all controversies respecting doctrine and discipline ;\n\nThis is a '
            'power peculiar to the Assembly ; for, while the other courts decide in '
            'the sense of rendering a judgment, that judgment, if controverted, is '
            'not the DECISION of the controversy ; but the Assembly\'s judgment is '
            'the judgment of the Church, and is, therefore, the end of the '
            'controversy. When, then, the Assembly has decided, is that a prohibition '
            'of further discussion? By no means. But the Assembly\'s decision in a '
            'controversy respecting doctrine is thenceforth the doctrine of the '
            'Church ; and further opposition to this doctrine is opposition to the '
            'doctrine of the Church, and is permissible only within the limitations '
            'within which opposition to the doctrine of the Church is permissible. '
            'And the decision of the Assembly in a controversy respecting discipline '
            'fixes the status of the parties affected, and they are to be treated '
            'accordingly in their ecclesiastical relations by all who prefer to '
            'remain in this Church and free from its censure.\n\n4. to give its '
            'advice and instruction, in conformity with the Constitution, in all '
            'cases submitted to it ;\n\nSuch judgments given by the Assembly are not '
            'decisions in the sense of the preceding paragraph, because there is here '
            'no controversy ; nor could any one be charged with contravening the '
            'doctrine of the Church, or disobeying its authority, on the ground of '
            'teaching or acting contrary to such judgments. At the same time, these '
            'judgments should be treated with respect, even by those who are '
            'constrained to controvert them ; and the utmost care should be taken in '
            'rendering such judgments, that they may be such as will command respect '
            'for the consideration and intelligence and earnest love of truth '
            'manifest in them.\n\n5. to review the records of the Synods ;\n\n(Cf. '
            '77:5, and 84:2.)\n\n6. to take care that the inferior courts observe the '
            'Constitution;\n\n(Cf. 77:5, and 84:2.)\n\n7. to redress whatever they '
            'may have done contrary to order ;\n\n(Cf. 77: 5, and 84:2.)\n\n8. to '
            'concert measures for promoting the prosperity and enlargement of the '
            'Church ;\n\nwithout as well as within its existing borders. (Cf. 77:14, '
            '15, and 87:4.)\n\n9. to erect new Synods ;\n\nwhich includes the power '
            'of uniting and dividing Synods, with or without their consent. (Cf. 77: '
            '12, 13, and 84:4.)\n\n10. to institute and superintend the agencies '
            'necessary in the general work of evangelization ;\n\n(Cf. 90:8.) The '
            'Assembly is to superintend as well as to institute these '
            'agencies.\n\n11. to appoint Ministers to such labors as fall under its '
            'jurisdiction;\n\n(Cf. 84:5.)\n\n12. to suppress schismatical contentions '
            'and disputations, according to the rules provided therefor ;\n\nWhat '
            'contentions and disputations are schismatical the Assembly must judge. '
            'In the exercise of this power and that named in 90:6, 7, it is not '
            'necessary for the Assembly to wait till one of the parties to a '
            'controversy brings it before the Assembly ; but the Assembly must not, '
            'in the exercise of this power, proceed without rule, nor according to '
            'any rules but those provided for this very purpose in the Book of Church '
            'Order. Otherwise, the Assembly violates law in order to uphold '
            'law.\n\n13. to receive under its jurisdiction, with the consent of a '
            'majority of the Presbyteries, other ecclesiastical bodies whose '
            'organization is conformed to the doctrine and order of this '
            'Church;\n\n14. to authorize Synods and Presbyteries to exercise similar '
            'power in receiving bodies suited to become constitutents of those '
            'courts, and lying within their geographical bounds respectively;\n\nIn '
            'these two clauses a peculiar power of the Assembly is presented. It is '
            'the power to receive under its jurisdiction bodies which, being '
            'received, become incorporated in this Church as it is, with no change in '
            'its Constitution ; and even this the Assembly cannot do without the '
            'consent of a majority of its Presbyteries. But, to unite this Church and '
            'another into a Church having a Constitution differing, however slightly, '
            'from the existing Constitution of this Church, is beyond the power of '
            'the Assembly, even with the consent of a majority of its Presbyteries. '
            'If this Church is to be united with another into a Church having a '
            'Constiution differing from the existing Constitution of this Church, the '
            'new Constitution must first be adopted by this Church according to the '
            'provisions laid down in Chapter VII. Where there is to be union without '
            'change of Constitution, and the body to be thus incorporated into this '
            'Church lies geographically so that it would be merged into some existing '
            'Synod or Presbytery, that Presbytery or Synod receives the body, but not '
            'wihtout being first authorized by the Assembly ; but in such a case, '
            'where only a Presbytery or Synod is directly affected, it is not '
            'necessary to obtain the consent of a majority of all the Presbyteries. '
            'But there can be no absorption of larger or smaller bodies, unless they '
            'are conformed to the doctrine and order of this Church ; for otherwise '
            'the doctrine and order of this Church would be acknowledged as not '
            'justifying a denominational existence to maintain them.\n\n15. to '
            'superintend the affairs of the whole Church;\n\nFor this superintendence '
            'is not to be left unprovided for and liable to be assumed by '
            'irresponsible parties.\n\n16. to correspond with other Churches;\n\nWith '
            'what Churches is left to the discretion of the Assembly, except that '
            'paragraph 80 implies that there will be no correspondence except with '
            'Evangelical Churches.\n\n17. and in general, to recommend measures for '
            'the promotion of charity, truth, and holiness through all the Churches '
            'under its care.\n\nThings which the Assembly may not enjoin, either '
            'because it lacks the authority or because it deems it inadvisable to go '
            'so far as to enjoin, it may recommend.',
        webUrl: 'https://pcahistory.org/bco/fog/14/06.html',
      ),
    ],
    'bco_14-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text in this section.]',
        webUrl: 'https://pcahistory.org/bco/fog/14/07.html',
      ),
    ],
    'bco_14-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '91.--VI. The whole business of the Assembly being finished, and the vote '
            'taken for dissolving the present Assembly, the Moderator shall say from '
            'the chair: \u201cBy virtue of the authority delegated to me by the '
            'Church, let this General Assembly be dissolved, and I do hereby dissolve '
            'it, and require another General Assembly, chosen in the same manner, to '
            'meet at ________________on the ______________day of ____________A.D. '
            ';\u201d after which he shall pray and return thanks, and pronounce on '
            'those present the apostolic benediction.\n\nFor convening special '
            'meetings of the Assembly or of a Synod see paragraph 55 [= PCA 10.3, '
            'second paragraph]. The same Assembly, once dissolved, cannot be '
            'reconvened.',
        webUrl: 'https://pcahistory.org/bco/fog/14/08.html',
      ),
    ],
    'bco_15-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 117\u2013118',
        text:
            'Section VII.--Of Ecclesiastical Commissions.\n\nThe first paragraph '
            'defines a commission ; the second, specifies certain things that may '
            'properly be done by commission ; the third, indicates within what '
            'limitations judicial cases may be tried by commission ; and the fourth '
            'directs how the general work of evangelization shall be carried on by '
            'commission.\n\n92.--I. Commissions differ from ordinary committees in '
            'this, that while the committee is appointed simply to examine, consider '
            'and report, the commission is authorized to deliberate upon and conclude '
            'the business submitted to it, subject, however, to the review of the '
            'court appointing it. To this end full records of its proceedings shall '
            'be submitted to the court appointing it, which, if approved, may be '
            'entered on the minutes of that court.\n\nA commission is a committee, '
            'but a committee appointed to conclude the business, while an ordinary '
            'committee is appointed to report upon the business, that the appointing '
            'court may conclude it. The commission concludes the business in the '
            'sense in which an inferior court concludes a business, subject to the '
            'review of the court above. The conditions of that review are somewhat '
            'different. In the case of an inferior court, several ways of review are '
            'provided ; but the conclusions of a commission are always reviewed in '
            'hearing or inspecting its records, and in no other way. Its conclusion '
            'stands as that of the court appointing it, unless modified or reversed '
            'by that court at its review of the records of the commission ; but this '
            'conclusion, as any other decision, may be carried up to a higher court, '
            'except where the General Assembly confirms or sets aside the conclusion '
            'of a commission of itself. While it helps to prevent confusion, to '
            'reserve the term committee for only such committees as are not appointed '
            'to conclude a business, and commission for only such committees as are '
            'appointed to conclude a business, yet, if a court neglects this '
            'distinction in terms, a committee appointed by it is really a commission '
            'or not, according as it is or is not appointed to conclude a '
            'business.\n\nAMENDMENTS :\n\n1987 - Proposed amendment from the Ad '
            'Interim Committee on the General Assembly [M15GA, 15-43, Exhibit '
            '\u201cB\u201d, p. 106]\n\nAmended 15-1.A commission differs from an '
            'ordinary committee in that while a committee is appointed to examine, '
            'consider and report, a commission is authorized to deliberate upon and '
            'conclude the business referred to it. It shall keep a full record of its '
            'proceedings, which shall be submitted to the court appointing it. If the '
            'concluding actions of the commission are approved, it shall become the '
            'action of the court and entered on its minutes. There may be no '
            'complaint or appeal from a final decision or judgment of the General '
            'Assembly. Every commission must be appointed by the court which '
            'constitutes it, except the Standing Judicial Commission of the General '
            'Assembly which shall be elected as provided in BCO 15-4.\n\n1988 - '
            'Adopted by the 16th General Assembly of the PCA, on report of a '
            'Presbytery vote of 29 in favor, 13 against [M16GA, 16-10, Item 1, pp.. '
            '88-90].\n\n1993 - Overture 26 from Northeast Presbytery [M21GA, 21-56, '
            'III, Item 19, pp. 143-144.\n\n\u201cAmend BCO 15-1 to Require Annual '
            'Review of Minutes of Commissions.\u201d\n\nWhereas, under some '
            'circumstances a commission does not complete its work within a year; '
            'and\n\nWhereas, under such circumstances the court establishing the '
            'commission may not have opportunity to review, amend, or approve the '
            'work of such a commission for a considerable time; and\n\nWhereas, in '
            'circumstances wherein individuals wish to complain or appeal the actions '
            'of such a commission, they may not lawfully do so until the report is '
            'approved by the court, and are thus prohibited a timely redress of '
            'grievances, and\n\nWhereas, the period for review of sessional and '
            'presbytery records is annual,\n\nWe therefore overture the General '
            'Assembly to amend BCO 15-1 by adding the following as the third '
            'sentence:\n\n\u201cEvery commission must submit complete minutes and a '
            'report of its activities at least once annually to the court which has '
            'commissioned it.\u201d\n\nand amending the fourth sentence of 15-1 to '
            'read:\n\n\u201cIf the commissioning court approves actions contained '
            'therein, they shall become the actions of the court.\u201d\n\nso that '
            'BCO 15-1 would read in its entirety:\n\n\u201c15-1. A commission differs '
            'from an ordinary committee in that while a committee is appointed to '
            'examine, consider and report, a commission is authorized to deliberate '
            'upon and conclude the business referred to it. It shall keep a full '
            'record of its proceedings, which shall be submitted to the court '
            'appointing it. Every commission of Presbytery or Session must submit '
            'complete minutes and a report of its activities at least once annually '
            'to the court which has commissioned it. If the commissioning court '
            'approves actions contained therein, they shall become the actions of the '
            'court. There may be no complaint or appeal from a final decision or '
            'judgment of the General Assembly. Every commission must be appointed by '
            'the court which constitutes it, except the Standing Judicial Commission '
            'of the General Assembly which shall be elected as provided in BCO '
            '15-4.\u201d\n\nAdopted at the January 1993 Stated Meeting of Northeast '
            'Presbytery. Attested by: /s/ Philip J. Adams, Stated Clerk.\n\n1994 - '
            'Adopted by the 22nd General Assembly of the PCA, following a Presbytery '
            'vote of 42 in favor, 7 against [M22GA, 22-10, Item 1, p. 52].\n\n1996 - '
            'Recommendation from the Ad Interim Committee on Judicial Procedure, '
            '[M24GA, 24-17, B., 4., I., pp. 73-74.]\n\nI. BCO 15-1 and 15-5\n\nIssue: '
            'Decisions of the Standing Judicial Commission made final, yet with the '
            'possibility of a minority report.\n\nProposed amendments\n\n1. '
            'Substitute for current BCO 15-1 the following:\n\n\u201c15-1. A '
            'commission differs from an ordinary committee in that while a committee '
            'is appointed to examine, consider and report, a commission is authorized '
            'to deliberate upon and conclude the business referred to it, except in '
            'the case of judicial commissions of a Presbytery appointed under BCO '
            '15-3. A commission shall keep a full record of its proceedings, which '
            'shall be submitted to the court appointing it. Upon such submission this '
            'record shall be entered on the minutes of the court appointing, except '
            'in the case of a presbytery commission serving as a session or a '
            'judicial commission as set forth in BCO 15-3. Every commission of a '
            'Presbytery or Session must submit complete minutes and a report of its '
            'activities at least once annually to the court which commissioned '
            'it.\u201d\n\n1997 - Adopted by the 25th General Assembly of the PCA, '
            'following a Presbytery vote of 45 in favor, 5 against [M25GA, 25-17, '
            'Item 3, p. 116-118]\n\n1999 - Overture 10 from Pittsburgh Presbytery, '
            '\u201cInterim Sessions,\u201d [M27GA, 27-44, III, 4, p. '
            '162-163].\n\nPittsburgh Presbytery overtures General Assembly, asking '
            'that BCO 15-1 be changed as follows, by adding the language underlined '
            'and in bold, in order to clarify the difference between a Presbytery '
            'commission appointed as an interim Session, and other Presbytery '
            'commissions.\n\n\u201c15-1. A commission differs from an ordinary '
            'committee in that while a committee is appointed to examine, consider '
            'and report, a commission is authorized to deliberate upon and conclude '
            'the business referred to it, except in the case of judicial commissions '
            'of a Presbytery appointed under BCO 15-3. A commission shall keep a full '
            'record of its proceedings, which shall be submitted to the court '
            'appointing it. Upon such submission this record shall be entered on the '
            'minutes of the court appointing, except in the case of a presbytery '
            'commission serving as a session or a judicial commission as set forth in '
            'BCO 15-3. When a commission is appointed to serve as an interim Session, '
            'its actions are the actions of a Session, not a Presbytery. Every '
            'commission of a Presbytery or Session must submit complete minutes and a '
            'report of its activities at least once annually to the court which '
            'commissioned it.\u201d\n\nRationale:Unlike most Presbytery commissions, '
            'an interim Session appointed by Presbytery does not act as the '
            'Presbytery. It is commissioned by the Presbytery to have the powers and '
            'authority of a Session, not the powers and authority of a Presbytery. If '
            'there is a complaint against some act or decision of the interim '
            'Session, that complaint would first be made to the court whose act or '
            'decision is alleged to be in error - i.e., to the interim Session, not '
            'to the Presbytery. Likewise, if an interim Session renders a judgment in '
            'a judicial case, any appeal should first be filed with the Presbytery, '
            'not with the General Assembly. This was most recently stated in Judicial '
            'Case 92-10, B_____ vs. Ascension Presbytery [M21GA, 1993, p. 224]. In '
            'that case, the B_____s appealed to the Presbytery after they had been '
            'excommunicated by the Presbytery-appointed interim Session of their '
            'church. The Assembly adopted the unanimous ruling of the SJC that the '
            'case was administratively out of order since the next higher court '
            '(i.e., Ascension Presbytery) had not first heard the appeal. The '
            'additional sentence proposed in this change would make this more '
            'clear.\n\nAdopted by the Pittsburgh Presbytery at its regular stated '
            'meeting on January 30, 1999. Attested by /s/ Lee Capper, Stated '
            'Clerk.\n\n2000 - Adopted by the 28th General Assembly of the PCA, '
            'following a Presbytery vote of 49 in favor, 1 against. [M28GA, 28-12, '
            'Item 2, pp. 57-58].\n\nCONSTITUTIONAL INQUIRY :\n\n1985 - Constitutional '
            'Inquiry 5: From the Presbytery of Eastern Canada. [M13GA, Appendix I, '
            'Item 5, p. 240]\n\n\u201cThe request for clarification out of several '
            'exceptions to the Minutes...by the Committee on Review and Control of '
            'Presbyteries....\n\n...(E)xception #5 reads \u201dStanding Rule 16 makes '
            'the Administration Committee a permanent commission, contra BCO '
            '15...\n\n...Can Presbytery allow an exception to the WCF on the part of '
            'a church officer if it deems that the exception does not undermine the '
            'system of doctrine set forth in the WCF and does not strike at the '
            'vitals of religion?....\n\n...(E)xception #2 reads: \'Improper to add: '
            '\u201cchurch history\u201d and \u201cthe history of this '
            'denomination\u201d to the licensure exam\'. BCO 19-2 states the exam '
            '\u201cshall be as follows\u201d, so nothing may be added.\' Does the '
            'phrase...mean nothing may be added to the licensure examination?\n'
            '\nFinally, what is the force of the Report of the Committee on Review '
            'and Control of Presbyteries?...\u201c\n\nANSWER:\n\n1. Standing Rule 16 '
            'in effect makes the Administrative Committee into a commission with '
            'unlimited powers. A commission is to be limited to specific matters '
            'committed to it (BCO 15-1). If Standing Rule 16 were to be amended to '
            'specify which matters were to be committed to it as a commission, it '
            'might be then in compliance with the BCO.\n\nWith respect to the '
            'exception to Presbytery minutes of 8/4 - 6/83 (Exception #1); the CJB '
            'points out to the Presbytery that this exception is cited by General '
            'Assembly action. The options open to Presbytery are:\n\na. Petition the '
            'General Assembly to rescind the exception;\n\nb. Proceed - under protest '
            '- to re-examine the minister;\n\nc. Comply.\n\n2. As to Presbytery '
            'allowing an exception which does not undermine the system of doctrine as '
            'set forth in the WCF and does not strike at the vitals of religion, '
            'Presbytery may do so. The CJB does not know of any past action regarding '
            'WCF XXVII:4.\n\n3. With respect to the exception of Presbytery minutes '
            '(8/4 - 6/83) adding \u201dchurch history\u201c and \u201dthe history of '
            'this denomination\u201c to the licensure exam (BCO 19-2) (Exception #2), '
            'the CJB points out that the Unified Curriculum (BCO 21-4) covers these '
            'subjects (Minutes Sixth General Assembly, p. 87, item 4).\n\nPresbytery '
            'may ask candidates any question from the Unified Curriculum (BCO 21-4). '
            'The list of subjects for examination (BCO 19-2) for licensure is '
            'complete. Additional subjects may not be added to that list. Examination '
            'in additional subjects may not be used to fail a candidate.\n\n4. As to '
            'the force of the Report of the Committee on Review and Control of '
            'Presbyteries: CJB points out that the exceptions made by the Committee '
            'on Review and Control have been approved by the General Assembly. They '
            'are binding unless rescinded by the General Assembly. Presbytery must '
            'abide by them. Presbytery has the privilege to appeal to the General '
            'Assembly to rescind its previous action.\n\n1985, 13-45, III, 47, p. '
            '108. That the advice regarding Constitutional Inquiry 5 be ratified as '
            'amended. Adopted.',
        webUrl: 'https://pcahistory.org/bco/fog/15/01.html',
      ),
    ],
    'bco_15-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 118\u2013119',
        text:
            '93.--II. The taking of testimony in judicial cases,\n\nby Session or '
            'Presbytery,\n\nthe ordination of Ministers, the installation of '
            'Ministers, the visitation of portions of the Church affected with '
            'disorder, and the organization of new churches,\n\nby Presbytery,\n\nmay '
            'be executed by commission.\n\nAs it might be supposed from regulations '
            'elsewhere given that these things could be done only by the court '
            'itself, it is here distinctly stated that these things may be done by '
            'commission. For whatsoever the court may do, that it may commit to a '
            'commission to be done, with such exceptions and limitations as are here '
            'or elsewhere stated or implied.\n\nThe commission for the ordination of '
            'a Minister shall always consist of a quorum of the Court, but the '
            'Presbytery itself shall conduct the previous examinations.\n\nA '
            'Presbytery may not commit the examination of a licentiate for ordination '
            'to a commission ; but the ordination itself it may commit to a '
            'commission, provided the commission consissts of as many as three '
            'Ministers and one Ruling Elder. A commission for any other purpose may '
            'consist of such number, from one up, as the court may determine. That a '
            'commission may consist of one only is evident from this, that an '
            'Evangelist authorized to organize new churches and to ordain Ruling '
            'Elders and Deacons therein, is essentially a commission. The quorum of a '
            'commission, except as defined in paragraph 94, or by express order of '
            'the appointing court, is a majority of those appointed as the '
            'commission. Hence, if Presbytery appoints three Ministers and one Ruling '
            'Elder to ordain a Minister, any three of the four will be a quorum of '
            'the commission ; but the Presbytery may otherwise define what shall be a '
            'quorum.CONSTITUTIONAL INQUIRY :\n\nM14GA, 14-44, p. 120\n\nQ. What '
            'constitutes a judicial commission under the terms of BCO 15-2? '
            'Specifically, must a presbytery act to \'clothe\' a commission with '
            'judicial authority in order to meet the constitutional requirements of '
            '15-2 as a \'judicial commission.\' If the presbytery must act, what '
            'action must be taken?\n\nA. A judicial commission is a commission '
            'appointed in accordance with BCO 15-2 with the instructions to '
            'adjudicate a matter. Such a commission may only be appointed after the '
            'chares have been approved for process by the court under BCO 32-3.',
        webUrl: 'https://pcahistory.org/bco/fog/15/02.html',
      ),
    ],
    'bco_15-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 119\u2013120',
        text:
            '94.--III. The Synod and the General Assembly may, with the consent of '
            'parties, commit any case of trial coming before them on appeal to the '
            'judgment of a commission, composed of others than members of the court '
            'from which the appeal shall come up. The commission of a Synod shall '
            'consist of not less than fifteen, of whom seven shall be Ruling Elders ; '
            'the commission of the Assembly of not less than twenty-seven, of whom '
            'thirteen shall be Ruling Elders, in each case, two-thirds of the '
            'commissioners shall be a quorum to attend to business. The commission '
            'shall try the cause in the manner prescribed by the Rules of Discipline '
            '; and in rendering judgment shall make a full statement of the case, '
            'which shall be submitted to the court for its action as its judgment in '
            'the cause.\n\nMay these courts do anything else by commission? Yes. For '
            'the next paragraph names, expressly, much that the Assembly may do by '
            'commission. But where parties bring a cause to a court for trial, even '
            'if it be an appeal, the court, even the General Assembly, may not try it '
            'by commission without consent of parties. The principle is here '
            'recognized, that the parties have a right to trial by a full court. May '
            'a complaint be tried by commission? Yes, with consent of parties ; for '
            'if an appeal, much more a complaint. May a Presbytery or a Session try a '
            'cause by commission? Yes, with consent of the parties ; and it may take '
            'testimony without such consent (93). But, lest trial in the appellate '
            'courts by commission should become a reference to individuals rather '
            'than a trial by a court in reality, it is prescribed that the commission '
            'shall be so large, and contain so many Ruling Elders, that the resort to '
            'a commission in judicial cases will be impracticable unless the court is '
            'very large, and then the commission will be large enough to have the '
            'essential qualifications of a court for counsel together. And while in '
            'other cases the action of the commission is in force until annulled by '
            'the appointing court, in judicial cases the action of the commission is '
            'not in force until endorsed by the court as its own action. Is the court '
            'bound to make the action of the commission its own? By no means. It may '
            'annul it, reverse it, modify it, and even order it tried over by a '
            'commission or before itself. For nothing is final in a judicial case but '
            'the decision of the court itself.\n\nHodge, J. Aspinwall, \u201cMay '
            'Synod try an appeal by commission?,\u201d in What Is Presbyterian Law? '
            '(Philadelphia, 1882), pp. 241-242.\n\nIt may with consent of parties. In '
            '1880 the Assembly recognized the right of the Synod to do so. The '
            'Southern Church makes a distinct provision for trial by commission: '
            '\u201cThe Synod and the General Assembly may, with consent of parties, '
            'commit any case of trial coming before them on appeal to the judgment of '
            'a commission, composed of others than members of the court from which '
            'the appeal shall come up. The commission of a Synod shall consist of not '
            'less than fifteen, of whom seven shall be Ruling Elders; the commission '
            'of the Assembly, of not less than twenty-seven, of whom thirteen shall '
            'be Ruling Elders. In each case two-thirds of the commissioners shall be '
            'a quorum to attend to business. The commission shall try the cause in '
            'the manner prescribed by the Rules of Discipline, and in rendering '
            'judgment shall make a full statement of the case, which shall be '
            'submitted to the court for its action as its judgment of the '
            'cause.\u201d\n\nLeRoy H. Ferguson III, \u201cThe Use of Commissions in '
            'the Presbyterian Churches in the United States of America\u201d '
            '[excerpt, pp. 130-131, from the Report of the Ad Interim Committee on '
            'Judicial Procedure, 24th General Assembly (1996), 24-17, pp. 66-157.',
        webUrl: 'https://pcahistory.org/bco/fog/15/03.html',
      ),
    ],
    'bco_15-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '[no comparable coverage of this subject in this chapter]OVERTURES & '
            'AMENDMENTS:\n\n2004\n\nOverture: #10, from Nashville Presbytery, to '
            'Committee on Constitutional Business, Bills and Overtures\n\nTitle: '
            '\u201cAmend BCO 15-4 to Allow One TE and One RE from the Same Presbytery '
            'to Serve on SJC\u201d\n\nWhereas , BCO 15-4 states, \u201cThe General '
            'Assembly shall elect a Standing Judicial Commission to which it shall '
            'commit all judicial cases within its jurisdiction. This commission shall '
            'consist of twenty-four (24) members divided into four classes of three '
            'teaching elders in each class. Each class shall serve on a four-year '
            'term and each subsequent Assembly shall declare the Standing Judicial '
            'Commission as a whole to be its subcommission. Nominations and vacancies '
            'shall be filled according to BCO 14-1 (11), with nominations allowed '
            'from the floor. No person may be elected if there is already a member of '
            'the commission from the same presbytery\u2026\u201d and\n\nWhereas, six '
            'members of the SJC are to be elected by the General Assembly each year, '
            'but frequently there are not six nominees nominated by Presbyteries, '
            'and\n\nWhereas, in 1999 nominations for the SJC totaled 4, consisting of '
            '1 TE and 3 REs, and\n\nWhereas, in 1999 the chairman of the GA '
            'Nomination Committee encouraged, from the floor, all presbyteries to '
            'turn in nominations because their pool was woefully short, '
            'and\n\nWhereas, in 2000 nominations for the SJC totaled 3, consisting of '
            '2 TEs and 1 RE, and\n\nWhereas, in 2000 the chairman of the GA '
            'Nomination Committee pleaded, from the floor, with all presbyteries to '
            'turn in nominations because their pool was woefully short, '
            'and\n\nWhereas, in 2001 nominations for the SJC totaled 5, consisting of '
            '3 TEs and 2 REs; and\n\nWhereas, in 2001 the chairman of the GA '
            'Nomination Committee requested, from the floor, all presbyteries to turn '
            'in nominations because their pool was woefully short, and\n\nWhereas, in '
            '2002 nominations for the SJC totaled 3, consisting of 1 TE and 2 REs, '
            'and\n\nWhereas, in 2002 the chairman of the GA Nomination Committee '
            'encouraged, from the floor, all presbyteries to turn in nominations '
            'because the pool was woefully short, and\n\nWhereas, in 2003 nominations '
            'for the SJC totaled 4, consisting of 2 TEs and 2 REs, and\n\nWhereas, in '
            '2003 the chairman of the GA Nomination Committee pleaded, from the '
            'floor, with all presbyteries to turn in nominations because their pool '
            'was woefully short, and\n\nWhereas, some Presbyteries may have more than '
            'one man qualified and willing to serve on the SJC, and\n\nWhereas, '
            'allowing one Teaching Elder and one Ruling Elder from the same '
            'Presbytery could help alleviate the shortage of men qualified and '
            'willing to serve on the SJC,\n\nTherefore be it resolved that the Book '
            'of Church Order be amended by striking and adding the following '
            '(deletion indicated with strikethrough, addition indicated in '
            'bold):\n\n15-4. The General Assembly shall elect a Standing Judicial '
            'Commission to which it shall commit all judicial cases within its '
            'jurisdiction. This commission shall consist of twenty-four (24) members '
            'divided into four classes of three teaching elders and three ruling '
            'elders in each class. Each class shall serve a four-year term and each '
            'subsequent Assembly shall declare the Standing Judicial Commission as a '
            'whole to be its commission. Nominations and vacancies shall be filled '
            'according to BCO 14-1(11), with nominations allowed from the floor. No '
            'person may be elected if there is already a member of the commission '
            'from the same Presbytery; Each Presbytery may have one Teaching Elder '
            'and one Ruling Elder serve on the Standing Judicial Commission, but no '
            'more at any one time. Yet, but if a person is elected and changes '
            'Presbytery, he may continue to serve his full term. No person may serve '
            'concurrently on the General Assembly\u2019s Standing Judicial Commission '
            'and any of the General Assembly\u2019s permanent committees.\n\nAdopted '
            'by Nashville Presbytery, at the stated meeting on April 13, '
            '2004.\n\nAttested by: /s/ Jack L. Watkins, Stated Clerk of '
            'Presbytery.',
        webUrl: 'https://pcahistory.org/bco/fog/15/04.html',
      ),
    ],
    'bco_15-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable coverage of this subject in this chapter]',
        webUrl: 'https://pcahistory.org/bco/fog/15/05.html',
      ),
    ],
    'bco_15-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 120\u2013121',
        text:
            '95.--IV. The General Assembly shall have power to commit the various '
            'interests pertaining to the general work of evangelization to one or '
            'more commissions.\n\n(Cf. 90:10)\n\nThis whole doctrine of commissions '
            'is to be put in practice with caution. On the other hand, there is '
            'danger that Presbyteries and the higher courts will call commissions '
            'executive committees, or simply committees, and forget that they are '
            'commissions, and many evils result. On the other hand, courts may often '
            'be tempted to do by commission, as more convenient or agreeable, what it '
            'were better for the court itself to do. But if the distinction between '
            'commissions and other sorts of committees is preserved, and commissions '
            'are used for those executive functions and special investigations which '
            'can be better done by a small number of specially fitted commissioners '
            'than by a large court, this section may be practiced with great gain to '
            'the Church.',
        webUrl: 'https://pcahistory.org/bco/fog/15/06.html',
      ),
    ],
    'bco_16-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 121\u2013122',
        text:
            'CHAPTER VI.\n\nOF CHURCH ORDERS.\n\nThis chapter, which has to do with '
            'the induction of men into office, after two preliminary sections on the '
            'doctrines of vocation and ordination, has a section on the election of '
            'officers, followed by two sections on their ordination and installation, '
            'one as to Ruling Elders and Deacons, and one as to Ministers. And there '
            'is added a section concerning the preliminary step toward ordination, '
            'called licensure.\n\nSection I.--Of the Doctrine of Vocation.\n\nThis '
            'first preliminary section, which has to do with the theory of how men '
            'are called to office in the Church, has three paragraphs, one of them '
            'having to do particularly with one, and one with another, of the three '
            'elements in a call.\n\n96.--I. Ordinary vocation to office in the Church '
            'is the calling of God by the Spirit, through the inward testimony of a '
            'good conscience, the manifest approbation of God\'s people, and the '
            'concurring judgment of the lawful court of Christ\'s house according to '
            'his Word.\n\n\u201cOrdinary vocation,\u201d means vocation to the '
            'ordinary offices. (Par. 33.) A true call is wholly by the Spirit, making '
            'a concurrent indication of God\'s will through three means : by '
            'producing the same conviction in the mind of the called, in the mind of '
            'the people of God that have experience of the called man\'s service or '
            'knowledge of him, and in the mind of the appropriate court. The essence '
            'of the call lies in the Holy Spirit working an inward conviction in the '
            'man himself; but subsidiary and confirmatory means are not to be '
            'despised as helps to the man himself, and are indispensable for the sake '
            'of order in the Church.',
        webUrl: 'https://pcahistory.org/bco/fog/16/01.html',
      ),
    ],
    'bco_16-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 122\u2013123',
        text:
            '97.--II. Since the government of the Church is representative, the right '
            'of the election of their officers by God\'s people, either immediately '
            'by their own suffrages, or mediately through church courts composed of '
            'their chosen representatives, is indefeasible. Nor can any man be placed '
            'over a church, in any office, without the election, or at least the '
            'consent of that church.\n\nThe sole authority is Christ, and from this '
            'point of view the Church is a monarchy. But he administers the '
            'government solely by his Spirit working in all his people, and from this '
            'point of view the government is representative; for if the Holy Spirit '
            'calls any man to an office, he also calls the people to elect him '
            'thereto. It is observable, however, that this right of election has '
            'necessary limitations. If the members of a church differ, some choosing '
            'and some opposing the same man for an office over them, it must either '
            'be that no man is to be put in office without the unanimous voice of the '
            'people, or that over some, a man may be put in office without their '
            'consent. Here emerges the practical principle of submission to the '
            'brethren. But the particular church is made the sacred unit, whose '
            'voice, as such, must not be disregarded. (Cf. 77.12. [= PCA 13.9f, third '
            'clause].',
        webUrl: 'https://pcahistory.org/bco/fog/16/02.html',
      ),
    ],
    'bco_16-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 123',
        text:
            '98.--III. Upon those whom God calls to bear office in his Church he '
            'bestows suitable gifts for the discharge of their various duties. '
            'Wherefore every candidate for office is to be approved by the court by '
            'which he is to be ordained. And it is indispensable that, besides '
            'possessing the necessary gifts and abilities, natural and acquired, '
            'every one admitted to an office should be sound in the faith, and that '
            'his life and conversation be according to godliness.\n\nIt is a serious '
            'omission, when a court inducts into office, as a matter of course,those '
            'elected by the people. Before ordination the court is bound to inquire '
            'into three things concerning the man elected : his possession of the '
            'necessary gifts ; his soundness in the faith ; and his life and '
            'behavior. The court may make this inquiry before election, but it must '
            'make it some time before ordination or installation.',
        webUrl: 'https://pcahistory.org/bco/fog/16/03.html',
      ),
    ],
    'bco_17-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 123\u2013124',
        text:
            'Section II.--Of the Doctrine of Ordination.\n\nThe distinction between '
            'ordination and vocation is this, that the vocation is the concurrent '
            'testimony of the Spirit of God through the man\'s own inner conviction, '
            'through the election by the people, and through the approval by the '
            'court, that the man should be inducted into office ; and ordination is '
            'the formal induction. The section has three paragraphs, answering the '
            'questions, who are to ordain, what is ordination, and to what ordination '
            'is.\n\n99.--I. Those who have been lawfully called are to be inducted '
            'into their respective offices by the ordination of a court.\n\nFor even '
            'when the ordination is by a commission, even by one man called an '
            'Evangelist, or by one man called a Commissioner, he acts as the agent of '
            'the court, and the ordination is done by the court through its appointed '
            'agency. (Cf. remarks under 6 and 93.)',
        webUrl: 'https://pcahistory.org/bco/fog/17/01.html',
      ),
    ],
    'bco_17-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 124',
        text:
            '100.--II. Ordination is the authoritative admission of one duly called '
            'to an office in the Church of God, accompanied with prayer and the '
            'imposition of hands, to which it is proper to add the giving of the '
            'right hand of fellowship.\n\nA defect in the ceremony, as such, would '
            'not render the ordination invalid, provided there is an authoritative '
            'admission of one duly called.',
        webUrl: 'https://pcahistory.org/bco/fog/17/02.html',
      ),
    ],
    'bco_17-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 124\u2013125',
        text:
            '101.--III. As every ecclesiastical office, according to the Scriptures, '
            'is a special charge, no man shall be ordained unless it be to the '
            'performance of a definite work.\n\nIf a man is ordained as Deacon, it '
            'must be to serve in some definite work of distribution ; if as a Ruling '
            'Elder, to some definite work of ruling ; and if as a Minister, it must '
            'be to some definite ministerial work. If that particular work ceases, or '
            'he ceases to be engaged in it, the exercise of his office is suspended '
            'until he is called to some other definite work ; but as assisting to '
            'rule in the Church courts is always a part of the definite work to which '
            'a Minister or a Ruling Elder is ordained, this function of his office '
            'never suffers suspense, so long as he is a member of a court. If an '
            'officer is called to another definite work than that to which he was '
            'originally ordained, he must be ordained to this new work also ; but '
            'this secondary ordination is, for distinction\'s sake, called '
            'installation. For the same reason, the term \u201cinstallation\u201d is '
            'used of that part of original ordination which relates especially to the '
            'definite work.',
        webUrl: 'https://pcahistory.org/bco/fog/17/03.html',
      ),
    ],
    'bco_18-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text]',
        webUrl: 'https://pcahistory.org/bco/fog/18/01.html',
      ),
    ],
    'bco_18-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '[no comparable text]\n\nOVERTURES AND AMENDMENTS:\n\n1981 [M9GA, 9-65, '
            'Item 5, p. 132]\n\n1986 [M14GA, 14-19, Item 7, p. 91]\n\n1989 [M17GA, '
            '17-6, Item 11, p. 53]\n\nCONSTITUTIONAL INQUIRY:\n\n1996 - 24-23, '
            'Reference #3, p. 160:\n\nQuestion - In our Presbytery, a minister '
            'shepherds a non-PCA church. From time to time men come forward from that '
            'congregation desiring to become candidates for the ministry. How may a '
            'Presbytery require the fulfillment of the six-month PCA membership and '
            'sessional endorsement requirements (BCO 18-2) for a man who desires to '
            'become a candidate but is a member of a non-PCA church?\n\nAnswer - It '
            'is the advice of the CCB that the BCO 18-2 probably indicates, but does '
            'not specify that a prospective candidate must be a member of a PCA '
            'congregation for at least six months before filing his application for '
            'candidacy. Some PCA presbyteries, however, have interpreted BCO 18-2 to '
            'allow them to accept the endorsement of a prospective candidate from a '
            'non-PCA congregation, understanding that the candidate must \u201csubmit '
            'himself to the care and guidance of the Presbytery in his course of '
            'study and of practical training to prepare himself for this office\u201d '
            '(BCO 18-1). Through the General Assembly\'s review of presbytery '
            'minutes, this procedure has been affirmed, in that some presbyteries, in '
            'the past, have accepted a candidate\'s endorsement from non-PCA '
            'congregations.\n\nIt is the advice of the CCB that an Overture should be '
            'submitted clearly specifying that a candidate could be endorsed by the '
            'ruling body of a non-PCA church.',
        webUrl: 'https://pcahistory.org/bco/fog/18/02.html',
      ),
    ],
    'bco_18-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text]',
        webUrl: 'https://pcahistory.org/bco/fog/18/03.html',
      ),
    ],
    'bco_18-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '\u201cThe',
        webUrl: 'https://pcahistory.org/bco/fog/18/05.html',
      ),
    ],
    'bco_18-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable discussion in this chapter]',
        webUrl: 'https://pcahistory.org/bco/fog/18/07.html',
      ),
    ],
    'bco_18-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[No comparable text for discussion]',
        webUrl: 'https://pcahistory.org/bco/fog/18/08.html',
      ),
    ],
    'bco_19-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 156\u2013157',
        text:
            'Section VI.--Of the Licensure of Probationers for the Gospel '
            'Ministry.\n\nThe section contains two preliminary paragraphs, one '
            'defining the object of licensure and one prescribing what Presbytery, '
            'and upon what conditions, whall take up the question of licensing a '
            'candidate ; four on evidences of fitness for licensure, of which the '
            'first prescribes three preliminary tests, the next outlines the body of '
            'the trials, the third states the end and limit of these examinations, '
            'and the last permits licensure in extraordinary cases ; two on the act '
            'of licensure, one prescribing the obligations to be demanded of the '
            'licentiate, and one the form of licensure ; two on transfer of '
            'candidates in process of examination for licensure, and of unordained '
            'licentiates ; and two concerning the duties of the licensed probationer, '
            'and the withdrawal of license.\n\n129.--I. Presbyteries shall license '
            'probationers to preach the gospel, in order that, after sufficiently '
            'trying their gifts, and receiving from the church a good report, they '
            'may, in due time, ordain them to the sacred office.\n\nLicensure is a '
            'tentative ordination ; for the essence of ordination does not lie in the '
            'ceremony of the imposition of hands, but in the decision of the '
            'ordaining court to recognize a man as appointed by Christ to an office. '
            'And licensure is a tentative recognition. But it is tentative. the '
            'candidate is licensed as a Probationer. Especially is it necessary to '
            'bring into use the test of the call of the Spirit through the people of '
            'God ; and the special object of licensure is in order to the application '
            'of this test.',
        webUrl: 'https://pcahistory.org/bco/fog/19/01.html',
      ),
    ],
    'bco_19-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 159\u2013162',
        text:
            '132.--IV. The Presbytery shall try each candidate as to his knowledge of '
            'the Latin language and the original languages of the Holy '
            'Scriptures.\n\nThis knowledge of the languages is set first and to '
            'itself, as lying at the basis of learning in general (that is, of the '
            'sort of learning required, which is rather that of the classical than of '
            'the scientific course), and of biblical learning in particular.\n\nIt '
            'shall also examine him on mental philosophy, logic, and rhetoric '
            ';\n\nTeachers need to understand psychology, since they are to work upon '
            'mind ; logic, that they may be able to interpret, expound, and maintain '
            'their doctrines ; and rhetoric, that they may be able effectively to '
            'present their teachings.\n\non ethics;\n\nThis must be understood here '
            'to include metaphysics ; and the singular importance of this branch of '
            'study as underlying theology is not to be overlooked.\n\non the natural '
            'and exact sciences;\n\nWhile the mental and ethical sciences are more '
            'important for the minister, the training of the mathematical and '
            'physical sciences may not be dispensed with in a regular course of '
            'learning ; and not only is this element of training needful for the '
            'minister, but the knowledge of the physical sciences is now of practical '
            'importance.\n\non theology, natural and revealed;\n\nThis means not only '
            'a systematic arrangement of the doctrines of Scripture, but also a '
            'comprehensive philosophy of the system of doctrines taught in the '
            'Scriptures and otherwise known concerning God and man\'s relations to '
            'him.\n\nand\n\nnot only is it indispensable that the candidate stand a '
            'satisfactory examination on theology in general, but, for practical '
            'reasons, especially\n\non ecclesiastical history, the sacraments, and '
            'church government.\n\nIt is noteworthy that the Presbytery is never at '
            'liberty to omit trying each candidate on these subjects. How much he '
            'shall know on these subjects is left to the Presbytery\'s discretion '
            'under the guidance of paragraph 133 ; but it not left to the '
            'Presbytery\'s discretion whether to ascertain, by examination, some just '
            'measure of his knowledge and discipline in each of these subjects ; nor '
            'may the Presbytery omit any of the exercises following.\n\nMoreover, the '
            'Presbytery shall require of him,\n\n1. A discussion in Latin of a thesis '
            'on some common head in divinity.\n\nThis will test his knowledge of the '
            'Latin language, of theology, and of logic and rhetoric.\n\n2. A critical '
            'exercise; in which the candidate shall give a specimen of his taste and '
            'judgment in sacred criticism; presenting an explication of the original '
            'text, stating its connexion, illustrating its force and beauties, '
            'removing its difficulties, and solving any important questions which it '
            'may present.\n\nThis will test his acquaintance with one, if not with '
            'both, of the original languages of the Scriptures, with almost the whole '
            'list of branches of learning, and especially with the Bible itself in '
            'the original.\n\n3. A popular lecture in exposition of several verses of '
            'Scripture.\n\nBesides serving largely the same purposes as the critical '
            'exercise, this will especially test his acquaintance with the English '
            'Bible and his ability as an expositor.\n\n4. A doctrinal '
            'sermon.\n\nLying back of the sermon there needs to be a grasp of '
            'theological truth in system, and the power to set it forth, as is to be '
            'shown in the thesis ; a command of the instruments of critical exegesis, '
            'as is to be shown in the critical exercise ; and the power of expounding '
            'the Scriptures in accord with the principles of sound theology and '
            'criticism, but so as to instruct and help popular assemblies, as is to '
            'be shown in the lecture ; but the sermon itself is the preacher\'s great '
            'work, by which he works the truth of Scripture into the lives of men. '
            'Men may be profound theologians, correct exegetes and clear expositors, '
            'and still fail as preachers ; and such men should not be licensed to '
            'preach.\n\nPCUS 1879 - text without comparable parallel in PCA 1973 and '
            'following:\n\nVI-6-2.--The trials of a candidate for licensure shall '
            'ordinarily be had by the Presbytery having jurisdiction of the church of '
            'which he is a member; but should any one find it more convenient to put '
            'himself under the care of a Presbytery at a distance from that to which '
            'he most naturally belongs, he may be received by the said Presbytery on '
            'his producing testimonials, either from the Presbytery within the bounds '
            'of which he has usually presided, or from any two Ministers of that '
            'Presbytery in good standing, of his exemplary piety and other requisite '
            'qualifications.',
        webUrl: 'https://pcahistory.org/bco/fog/19/02.html',
      ),
    ],
    'bco_19-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 164',
        text:
            '135.--VII. If the Presbytery be satisfied with his trials, it shall then '
            'proceed to license him in the following manner : The Moderator shall '
            'propose to him the following questions, viz. :\n\n1. Do you believe the '
            'Scriptures of the Old and New Testaments to be the Word of God, the only '
            'infallible rule of faith and practice?\n\n2. Do you sincerely receive '
            'and adopt the Confession of Faith and the Catechisms of this Church, as '
            'containing the system of doctrine taught in the Holy Scriptures?\n\n3. '
            'Do you promise to study the peace, unity, and purity of the '
            'Church?\n\nThese questions are identical with questions 1 and 2, and '
            '(nearly) question 5, put to Ruling Elders and Deacons, and contain the '
            'fundamental obligations of all admitted to office. (Cf. 112 and 119.) '
            'The word edification, inserted in question 5 named above, is omitted '
            'here, it being yet undetermined whether the licentiate shall be able to '
            'edify the Church. (Cf. pars. 139 and 140.)\n\n4. Do you promise to '
            'submit yourself, in the Lord, to the government of this Presbytery, or '
            'any other into the bounds of which you may be called?\n\nThis is '
            'substantially the same as the fourth question in the ordination of '
            'Ministers ; but that is made more comprehensive, as the Minister comes '
            'into more complex relations with his brother Elders (through his '
            'membership in the courts), and the candidate is simply in subjection to '
            'the Presbytery alone without being a member of it.',
        webUrl: 'https://pcahistory.org/bco/fog/19/03.html',
      ),
    ],
    'bco_19-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 164\u2013165',
        text:
            '136.--VIII. The candidate having answered these questions in the '
            'affirmative, and the moderator having offered up a prayer suitable to '
            'the occasion, he shall address the candidate to the following purpose: '
            '\u201cIn the name of the Lord Jesus Christ, and by that authority which '
            'He hath given to the church for its edification, we do license you to '
            'preach the gospel as a probationer for the holy ministry, wherever God '
            'in his providence may call you; and for this purpose, may the blessing '
            'of God rest upon you, and the Spirit of Christ fill your heart. '
            'Amen.\u201d And record shall be made of the license in the following or '
            'like form, viz:\n\nAt ____________, the _________ day of __________ the '
            'presbytery of _______________ having received testimonials in favour of '
            '________________, of his having gone through a regular course of '
            'literature; of his good moral character: and of his being in the '
            'communion of the church; proceeded to take the usual parts of trial for '
            'his licensure. And he having given satisfaction as to his '
            'accomplishments in literature; as to his experimental acquaintance with '
            'religion; and as to his proficiency in divinity and other studies; the '
            'presbytery did, and hereby does, express its approbation of all these '
            'parts of trial. And he having adopted the Confession of Faith of this '
            'church, and satisfactorily answered the questions appointed to be put to '
            'candidates to be licensed; the Presbytery did, and hereby does, license '
            'him, the said , to preach the gospel of Christ, as a probationer for the '
            'holy ministry, within the bounds of this presbytery, or wherever else he '
            'shall be orderly called.\n\nThis form represents that the Presbytery '
            'proceeded to take the usual parts of trial and passed the formal act of '
            'licensure on the same date; and for this reason it will be necessary, in '
            'many cases, to change it. This might be done by omitting the date at the '
            'beginning, and inserting it before the word \u201clicense.\u201d',
        webUrl: 'https://pcahistory.org/bco/fog/19/04.html',
      ),
    ],
    'bco_19-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 165\u2013166',
        text:
            'IX.--When any candidate for licensure shall have occasion, while his '
            'trials are going on, to remove from the bounds of his own Presbytery '
            'into those of another, it shall be considered regular for the latter '
            'Presbytery, on his producing proper testimonials from the former,\n to '
            'take up his trials at the point at which they were left, and conduct '
            'them to a conclusion in the same manner as if they had been commenced by '
            'itself.\n\nBut the latter Presbytery may, if it thinks best, repeat any '
            'or all of his former trials.',
        webUrl: 'https://pcahistory.org/bco/fog/19/05.html',
      ),
    ],
    'bco_19-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: 'No comparable text for discussion.',
        webUrl: 'https://pcahistory.org/bco/fog/19/06.html',
      ),
    ],
    'bco_19-11': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'IX. When any candidate for licensure shall have occasion, while his '
            'trials are going on, to remove from the bounds of his own Presbytery '
            'into the bounds of another, it shall be considered regular for the '
            'latter Presbytery, on his producing proper testimonials from the former, '
            'to take up his trials at the point at which they were left, and conduct '
            'them to a conclusion in the same manner as if they had been commenced by '
            'itself.\n\nBut the latter Presbytery may, if it thinks best, repeat any '
            'or all of his former trials.',
        webUrl: 'https://pcahistory.org/bco/fog/19/11.html',
      ),
    ],
    'bco_19-12': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'XI. Presbyteries should require Probationers to devote themselves '
            'diligently to the trial of their gifts; and no one should be ordained to '
            'the work of the gospel ministry until he has given evidence of his '
            'ability to edify the Church.\n\nIt is extremely important that the '
            'probationary character of the licentiate\'s status should not be '
            'forgotten, either by himself or the Presbytery.',
        webUrl: 'https://pcahistory.org/bco/fog/19/12.html',
      ),
    ],
    'bco_19-13': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'XII. When a Probationer shall have been preaching for a long time, and '
            'his services do not appear to be edifying to the Church, the Presbytery '
            'may, if it thinks proper, recall his license; and it shall be its duty '
            'to do so whenever the Probationer shall without necessity devote himself '
            'to such pursuits as interfere with a full trial of his gifts, according '
            'to his license.\n\nThe dignity of a licensed Probationer should be kept '
            'inseparable from the obligation and aim of this tentative status.',
        webUrl: 'https://pcahistory.org/bco/fog/19/13.html',
      ),
    ],
    'bco_20-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 142',
        text:
            'I. No Minister or Probationer shall receive a call from a church but by '
            'the permission of his Presbytery. When a call has been presented to the '
            'Presbytery, if found in order and the Presbytery deem it for the good of '
            'the Church, they shall place it in the hands of the person to whom it is '
            'addressed.\n\nThe principle is fundamental, that neither Minister nor '
            'church may enter into the pastoral relation without the consent of '
            'Presbytery; and the establishment of what is virtually the pastoral '
            'relation without the regular process and installation, whatever the '
            'relation may be called, is subversive of our system.\n Even for the '
            'Minister to signify his own mind concerning his proposed relation to the '
            'church before the Presbytery has acted will often tend to render the '
            'interposition of the Presbytery impracticable. The ideal would be for '
            'the called to give no indication of his own mind, and not to be '
            'consulted at all, until after the Presbytery has put the call into his '
            'hands.\n\nOVERTURES :\n\n1978 - Recommendation from the Committee of '
            'Commissioners on Judicial Business [M6GA, 6-111, Item 12, p. 111]\n\n12. '
            'That the Book of Church Order 21-1 be amended by adding the following '
            'paragraph:\n\n\u201cA proper call must be written and in the hands of '
            'the Presbytery prior to being acted upon by a Presbytery. It must '
            'include financial arrangements (such as salary, vacation, insurance, '
            'retirement, etc.) between those calling and the one called, and '
            'assurance that the definite work will afford the liberty to proclaim and '
            'practice fully and freely the whole counsel of God, as contained in the '
            'Scriptures and understood in the Westminster Confession of Faith. It '
            'shall be in accord with the Book of Church Order, Chapter '
            '8.\u201d\n\nThis proposed amendment to the BCO is to be sent down to the '
            'Presbyteries for their advice and consent.\n\nFurther it is recommended '
            'that the Sixth General Assembly instruct the Permanent Sub-Committee on '
            'Judicial Business to prepare amendments to the BCO defining what '
            'constitutes a valid ministry for a Teaching Elder from which a call to a '
            'definite work may be received.\n\nGrounds: The lack of definition of '
            'what constitutes \u201ca call to a definite work\u201d is a source of '
            'anxiety in the Church. Adopted.\n\n1979 - Adopted by the Seventh General '
            'Assembly [M7GA, 7-41, III, 12, Item 3, p. 103]\n\n1985 - [M13GA, 13-18, '
            'Item 8, p. 81]\n\nItem 8: The following proposed amendment to the Book '
            'of Church Order was approved by a majority of those present and voting '
            'at the Tenth General Assembly of the Presbyterian Church in America. It '
            'was inadvertently overlooked in 1982-1983, and was thus sent down to the '
            'Presbyteries during 1983-84. Since an insufficient number of '
            'Presbyteries voted on it for it to be placed before the Twelfth General '
            'Assembly, the Assembly directed that it be sent down again to those '
            'Presbyteries that have not reported their votes on this '
            'amendment.\n\nAmend BCO 20-1 by adding after the first sentence, the '
            'following:\n\n\u201cOrdinarily the call must come from a church, '
            'Presbytery, or the General Assembly of this denomination. If the call '
            'comes from another source, the Presbytery shall always make a record of '
            'the reasons why it considers the work to be a valid Christian ministry. '
            '(See 21-1).\u201d Adopted, following a reported Presbytery vote of 31 in '
            'favor, 4 against.\n\nCONSTITUTIONAL INQUIRY & REFERENCES:\n\n1983 - '
            'Reference #3, from the Presbytery of the Southwest [M11GA, 11-9, C, p. '
            '51 and 11-36, III, 55, p. 101]\n\nQuestion - At the Winter Stated '
            'Meeting of the Presbytery of the Southwest, a request was submitted to '
            'the Presbytery from one of our churches for permission to change the '
            'terms of call of its pastor. The matter was referred to the Committee of '
            'Churches, Ministers and Candidates. The recommendation of the committee, '
            'duly made and seconded was that \'the Desert Springs Church be commended '
            'in its diligence and thanked for its request, but that Presbytery '
            'approval is not required to amend the terms of call of a pastor.\' A '
            'substitute motion was made and seconded that \'the Presbytery grant '
            'permission to the Desert Springs Church to amend its call as '
            'requested.\'\n\nFollowing discussion, motion was made, seconded and '
            'carried that the matter be referred to the Judicial Business Committee '
            'of the General Assembly for interpretation of the BCO in this '
            'question:\n\n\u201cIs Presbytery approval/permission required in order '
            'to properly amend a church\'s terms of call to its pastor?\n'
            '\nRespectfully submitted, Rodney T. King, Chairman, Judicial '
            'Business.\n\nResponse - That the following interim advice given to '
            'Southwest Presbytery in relation to Reference 3 (p. 51) concerning '
            'Presbytery approval of changes in the terms of ministers\' calls be '
            'ratified:\n\n\'BCO 20-1 indicates that Presbytery must approve the call '
            'of a pastor. The call establishes the relationship of the pastor to the '
            'calling body. The BCO is silent concerning amending the call; however, '
            'in as much as the initial relationship must be approved by Presbytery, '
            'it would follow that if any changes are made in the original call, the '
            'Presbytery would necessarily have to approve the changes in the call for '
            'the protection of both the pastor and the calling body.\' Adopted.1989\n '
            '- Constitutional Inquiry #5 from the Northeast Presbytery requesting '
            'advice concerning who must approve the changes in the terms of a '
            'pastoral call. [M17GA, 17-82, III, 21, p. 158]\n\nAnswer - The '
            'congregation must approve changes in the terms of a pastor\'s call (see '
            'BCO 20-6).\n\nThe 11th General Assembly has already spoken on the role '
            'of the Presbytery in this process [see Minutes of the 11th General '
            'Assembly, 1983, 11-36, III, 55, p. 101]\n\n\u201dBCO 20-1 indicates that '
            'Presbytery must approve the call of a pastor. The call establishes the '
            'relationship of the pastor to the calling body. The BCO is silent '
            'concerning amending the call; however, in as much as the initial '
            'relationship must be approved by Presbytery, it would follow that if any '
            'changes are made in the original call, the Presbytery would necessarily '
            'have to approve the changes in the call for the protection of both the '
            'pastor and the calling body.\u201c Adopted. 1999 - Inquiry #1 from '
            'Southeast Alabama Presbytery [M27GA, 27-43, First Supplemental Report, '
            'p. 150]\n\nQuestion - \u201dIf a congregation desires to do so, is it '
            'possible under BCO chapter 20 for a call to be issued to a pastor for a '
            'specific period (e.g. three years, five years, etc.), and is it in order '
            'for a Presbytery to approve such a call? It is understood that such a '
            'term call would always be subject to the powers of Presbytery as set '
            'forth in BCO 13-9, c and 23-1.\u201c\n\nAnswer - Yes. The authors of the '
            'question note that, in any case, the call will always be subject to BCO '
            '13-9, c and 23-1. BCO 20-1 and 20-6 require that \u201da proper '
            'call\u201c must be written and in the hands of Presbytery. BCO 20-6 '
            'further stipulates some of the form of the call. It is in the power of '
            'the Presbytery to determine if the terms of the call, as written and '
            'delivered, are in fact \u201dproper\u201c. So long as the dissolution of '
            'the pastoral relationship at the end of the term of the call is in '
            'accord with BCO 23, the congregation and pastor are in agreement with '
            'the terms of the call, and the Presbytery considers it to be a '
            '\u201dproper\u201c call, we see no constitutional bar to this '
            'practice.',
        webUrl: 'https://pcahistory.org/bco/fog/20/01.html',
      ),
    ],
    'bco_20-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '102.--I. Every church shall elect persons to the offices of Pastor, '
            'Ruling Elder, and Deacon in the following manner, viz : Public notice '
            'shall previously be given by the Session, that the church is to convene '
            'at the usual place of public worship for such purpose; and it shall '
            'always be the duty of the Session to convene them when requested by a '
            'majority of the persons entitled to vote.\n\nThe meeting must be at the '
            'usual place of public worship, and after public notice, that those '
            'entitled to vote may be able to attend ; and while the meeting must be '
            'called by the Session, the Session is bound to call such meeting when a '
            'majority requests it, that the right of the people to elect may not be '
            'infringed.\n\nAMENDMENTS :\n\n1998 - Overture 2 from Potomac Presbytery '
            '[M26GA, 26-55, III, Item 7, p. 200]\n\n\u201cAmend BCO 20-2 to Clarify '
            'Role of Pastor Search Committee\u201d\n\nWhereas, the Book of Church '
            'Order does not specify the duties of a pastoral search committee '
            'appointed by the congregation;\n\nWhereas, in newly planted churches '
            'where members may not be fully acquainted with Presbyterian practices '
            'and procedures such a lack of specification can and has led to confusion '
            'among some of our churches, and,\n\nWhereas, the Twenty-Fifth General '
            'Assembly remanded an overture from Potomac Presbytery [M25GA, 25-45, '
            'III, Item 2, p. 179] for refinement, which work is now '
            'accomplished,\n\nTherefore, Potomac Presbytery overtures the '
            'Twenty-Sixth General Assembly to amend the Book of Church Order 20-2 by '
            'adding a new concluding sentence to the second paragraph, after the '
            'words \u201cas designated by the congregation (see BCO 25).\u201d, as '
            'follows: \u201cThe pulpit committee shall, after consultation and '
            'deliberation, recommend to the congregation a pastoral candidate who, in '
            'its judgment, fulfills the Constitutional requirements of that office '
            '(e.g., BCO 8, 13-6 and 21) and is most suited to be profitable to the '
            'spiritual interests of the congregation (cf. BCO 20-6).\u201d 1997 - '
            'Overture 8 from Potomac Presbytery [M25GA, 25-45, III, Item 2, p. '
            '179]\n\n\u201cAmend BCO 20-2 To Clarify Role of Pulpit '
            'Committee\u201d\n\nWhereas, the Book of Church Order does not specify '
            'the duties of a pastoral search committee appointed by the congregation; '
            'and\n\nWhereas, in newly planted churches where members may not yet be '
            'fully acquainted with Presbyterian practices and procedures such a lack '
            'of specification can and has led to confusion;\n\nTherefore, Potomac '
            'Presbytery overtures the Twenty-Fifth General Assembly to amend the Book '
            'of Church Order 20-2 by adding a new concluding sentence to the second '
            'paragraph, after the words \u201cas designated by the congregation (see '
            'BCO 25)\u201d, as follows: \u201cThis pulpit committee shall, after '
            'consultation and deliberation, recommend to the congregation a pastoral '
            'candidate who, in its judgment, fulfills the Constitutional requirements '
            'of the office (e.g., BCO Chapters 8, 13-2 and 21) and is most suited to '
            'be profitable to the spiritual interests of the congregation (cf. BCO '
            '20-6).\u201d Adopted at the Twenty-Ninth Stated Meeting of Potomac '
            'Presbytery held on February 8, 1997 at Evangelical Presbyterian Church, '
            'Annapolis, Maryland. Attested by: /s/ Richard R. Larson, Stated '
            'Clerk.\n\nRecommendation:\n\n2. That Overture 8 from Potomac Presbytery '
            'be remanded to Potomac Presbytery for refinement. Adopted.\n'
            '\nGrounds:\n\n1. The title of the Committee needs to be brought into '
            'conformity with BCO 5-11.\n\n2. The relation of the Pulpit Committee to '
            'the Session needs to be further defined.\n\n3. The BCO references cited '
            'need to be checked to make certain they are germane.\n\n4. More detailed '
            'grounds for the change need to be specified.\n\n--------------------'
            '--------end of text related to Overture 8 (1997)--------------------'
            '-------------\n\nBACKGROUND & COMPARISON:\n\n1940 - PCUS BCO, Paragraph '
            '122 [M80GA, p. 73]:\n\n\u201cEvery Church should be under the pastoral '
            'oversight of a Minister, and when vacant, shall promptly proceed to '
            'elect a Pastor in the following manner: The Session shall call a '
            'Congregational meeting to convene at the regular place of worship to '
            'elect a Nominating Committee representative of the whole Congregation, '
            'whose duty it shall be to nominate a Minister to the Congregation for '
            'election as Pastor. Public notice of the time, place and purpose of the '
            'meeting shall be given at least one week prior to the time of the '
            'meeting. The Nominating Committee shall confer with Presbytery\'s '
            'Commission on the Minister and His Work, as provided in Paragraph 76-a. '
            'When the Committee is ready to report it shall notify the Session, which '
            'shall call a Congregational meeting at the regular place of worship for '
            'the purpose of acting on the report of the Nominating Committee. Public '
            'notice of the time, place and purpose of the meeting shall be given at '
            'least one week prior to the time of the meeting. The same procedure '
            'shall be followed in the selection of an Associate Pastor.',
        webUrl: 'https://pcahistory.org/bco/fog/20/02.html',
      ),
    ],
    'bco_20-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 129\u2013130',
        text:
            '105.--All communicating members in good and regular standing, but no '
            'others, are entitled to vote in the election of church officers in the '
            'churches to which they are respectively attached ; and when a majority '
            'of the electors cast their votes for a person for either of these '
            'offices, he shall be considered elected.\n\nHere a majority of electors '
            'must mean a majority of those present ; for no one can vote who is not '
            'present, and no one is present unless present in his own person and by '
            'his own consent counted as present. (Cf. 105.)\n\nHere appears the '
            'necessity for the Session to be in session and to conduct the election '
            'as a part of the business of the Session. Then, also, the proceedings of '
            'the congregational meeting, as what is done under the supervision of the '
            'Session, will be recorded in the records of the Session, and the Clerk '
            'of the Session will be the clerk of the congregational meeting. (Cf. '
            '105.)\n\nThose not members of the Church are excluded from voting for '
            'its officers, as a matter of course ; for nothing can entitle him who '
            'will not acknowledge Christ to the right of participating in the '
            'government of his Church. Those not members of the particular church are '
            'excluded, for otherwise the individuality of the particular church would '
            'perish. Those not communicants are excluded, for the reason that only '
            'those who are themselves endeavoring to obey Christ can be qualified to '
            'act as his agents in pointing out what men he would put over his people. '
            'For the same reason, none under censure can be allowed to vote. A member '
            'of the Session (except a Minister) has the same right as any other '
            'member of the Church to make a nomination or motion, and to vote.\n\nHas '
            'the Session authority to make nominations? Yes, unless the church '
            'decides to elect without nominations ; but for the Session to announce '
            'nominations before the congregation has decided this point is to take '
            'away from the congregation the decision of this point. But it must be '
            'remembered that the Session has the right to refuse installation to '
            'those chosen by the congregation ; and this right should always be '
            'exercised when there is need thereby to preserve the church from having '
            'officers not qualified.',
        webUrl: 'https://pcahistory.org/bco/fog/20/03.html',
      ),
    ],
    'bco_20-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 130\u2013131',
        text:
            '106.--V. On the election of a Pastor, if it appear that a large minority '
            'of the voters are averse from the candidate who has a majority of votes, '
            'and cannot be induced to concur in the call, the Moderator shall '
            'endeavor to dissuade the majority from prosecuting it further; but if '
            'the electors be nearly or quite unanimous, or if the majority shall '
            'insist upon their right to call a Pastor, the Moderator in that case '
            'shall proceed to draw a call in due form, and to have it subscribed by '
            'them, certifying at the same time in writing the number and '
            'circumstances of those who do not concur in the call, all of which '
            'proceedings shall be laid before the Presbytery together with the '
            'call.\n\nThe principles of this paragraph should obtain also in the case '
            'of the election of Ruling Elders and Deacons.\n\nThe directions to the '
            'Moderator that he endeavor to dissuade the majority when it appears that '
            'the minority will not concur must not be interpreted too strictly ; for '
            'it might be that he could not conscientiously make this endeavor. But he '
            'should at least press upon them the importance of unanimity, and a sense '
            'of the responsibility that they assume. Sometimes, however, there is a '
            'wilful and obstinate minority who oppose, as Pastor, the very servant of '
            'his that Christ presents to them, and who ought not to be yielded '
            'to.\n\nThe full and exact facts should be certified to the Presbytery by '
            'the Moderator, that the Presbytery may have all the data for judging. '
            'What is meant by the circumstances of those who do not concur in the '
            'call is not clear. Surely it cannot mean financial circumstances '
            'especially. Probably it means the circumstances connected with their '
            'non-concurrence, including the grounds and intensity of their '
            'opposition. The financial ability of the church to meet its proposed '
            'obligations the Presbytery would need to know ; but this it can learn '
            'from the commissioners. That circumstances cannot mean financial '
            'ability, or other thing of the sort, is certain, from the fact that the '
            'Moderator would not as a rule know such facts so well as the '
            'commissioners ; besides, it were contrary to the whole spirit of the '
            'Form of Government to give weight to any member\'s vote because of his '
            'wealth.\n\nDEFEATED OVERTURES :\n\nOverture 1 from Oklahoma Presbytery '
            '[M12GA, 12-10, B, p. 46] sought to amend this paragraph so as to advise '
            'declining a call when the majority vote in favor was less than 75%. The '
            'overture was answered in the negative on the grounds that BCO 20-5 was '
            'adequate as it stands.',
        webUrl: 'https://pcahistory.org/bco/fog/20/05.html',
      ),
    ],
    'bco_20-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 131\u2013132',
        text:
            '107.--VI. The call shall be in the following or like form, viz :\n\nThe '
            'Church of _______________________ , being, on sufficient grounds, well '
            'satisfied of the ministerial qualifications of you ________________, and '
            'having good hopes from our past experience (or knowledge) of your '
            'labors, that your ministrations in the gospel will be profitable to our '
            'spiritual interests, do earnestly call you to undertake the pastoral '
            'office in said congregation, promising you, in the discharge of your '
            'duty, all proper support, encouragement and obedience in the Lord. And '
            'that you may be free from worldly cares and avocations, we hereby '
            'promise and oblige ourselves to pay you the sum of _________________, in '
            'regular monthly (or quarterly, or half-yearly, or yearly) payments, '
            'during the time of your being and continuing the regular Pastor of this '
            'church.\n\nIn testimony whereof we have respectively subscribed our '
            'names this ___________ day of ________________ A.D.\n\nAttested by A.B., '
            'Moderator of the Meeting.\n\nThe Moderator, who draws up the call (106), '
            'should not vary from this form, unless the congregation by its action '
            'adopts the variation ; and it belongs to the congregation to adopt the '
            'amount or statement of salary, and what payments are to be made. This '
            'form, and all the provisions of the Book, contemplate only one church to '
            'a Pastor ; but where the church does not ask for all the time of the '
            'Pastor, it is proper that the form of call should indicate what time it '
            'does ask for ; and this, too, it belongs to the church to determine.',
        webUrl: 'https://pcahistory.org/bco/fog/20/06.html',
      ),
    ],
    'bco_20-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 132',
        text:
            '108.--VII. But if any church shall choose to subscribe its call by the '
            'Ruling Elders and Deacons, or by a committee, it shall be at liberty to '
            'do so. But it shall, in such case, be fully certified to the Presbytery '
            'by the Minister, or other person who presided, that the persons signing '
            'have been appointed for that purpose by a public vote of the church ; '
            'and that the call has been, in all other respects, prepared as above '
            'directed.\n\nThis provision is for convenience ; but the obligations of '
            'the people are the same as if they all themselves signed. That they may '
            'not lightly enter into obligations, it would be well, unless they are '
            'already familiar with them, to read over to the congregation, when about '
            'to enter upon an election, the obligations that are to be assumed.',
        webUrl: 'https://pcahistory.org/bco/fog/20/07.html',
      ),
    ],
    'bco_20-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 132',
        text:
            '109.--VIII. One or more commissioners shall be appointed to present and '
            'prosecute the call before Presbytery.\n\nThese it belongs to the '
            'congregation to select.',
        webUrl: 'https://pcahistory.org/bco/fog/20/08.html',
      ),
    ],
    'bco_20-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 132\u2013133',
        text:
            '110.--IX. If the call be to a Minister or probationer of another '
            'Presbytery, the commissioners appointed to prosecute the call shall '
            'produce an attested certificate from their own Presbytery that it has '
            'been laid before that body and found in order, and that permission has '
            'been granted them to prosecute it before the Presbytery to which he '
            'belongs.\n\nIt is an irregular procedure for the Pastor elect to change '
            'Presbyteries before the call has been placed in his hands. Indeed, he '
            'need have no opinion, or at least give no assurance of what his answer '
            'will be, until after the call is placed in his hands ; for only so can '
            'the church and the Presbyteries speak their mind to him before he speaks '
            'his mind to them, as the Book contemplates.',
        webUrl: 'https://pcahistory.org/bco/fog/20/09.html',
      ),
    ],
    'bco_20-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 152\u2013154',
        text:
            '126.--XI. A congregation desiring to call a Pastor from his charge, '
            'shall, by its commissioners,\n\n109,\n\nrepresent to the Presbytery the '
            'ground on which it pleads his removal. The Presbytery having heard all '
            'the parties,\n\nThe Pastor himself, as well as his church and the church '
            'calling, is one of the parties ; but his is not obliged to indicate his '
            'opinion.\n\nmay, upon viewing the whole case, either recommend them to '
            'desist from prosecuting the call,\n\nThis recommendation the calling '
            'church is not obliged to follow,\n\nor may order it to be delivered to '
            'the Minister to whom it is addressed, with or without advice ;\n\nThe '
            'Presbytery may be unwilling to prevent his translation without his '
            'consent, and yet may feel constrained to advise him to decline the call '
            '; or the Presbytery may be so strongly persuaded that his translation is '
            'desirable for the general good as to advise him to accept, although it '
            'is without authority to command.\n\nor may decline to place the call in '
            'his hands,\n\nhowever much any or all the parties may desire the '
            'translation,\n\nas it shall appear most for the peace and edification of '
            'the Church at large ; or it may refer the whole matter to the Synod for '
            'advice and direction ;\n\nAs a lower court may refer any question '
            'according to 247-254 [cf. PCA 41.1-6],\n\nand no Pastor shall be '
            'transferred without his own consent.\n\nAlthough he may, without his '
            'consent, be removed, that is, have his pastoral relation '
            'dissolved.\n\nIf the parties are not ready to have the matter issued at '
            'the meeting then in progress, a written citation shall be given the '
            'Minister and his church to appear before the Presbytery at its next '
            'meeting, which citation shall be read from the pulpit\n\nof his '
            'church\n\non the Sabbath after sermon, at least two Sabbaths before the '
            'intended meeting.\n\nThe meaning is not that the citation shall be read '
            'at least twice, but that it shall be read once as much as two Sabbaths '
            'before. This gives the church ample time in which to meet as a '
            'congregation and send its answer, by commissioners or otherwise. The '
            'next meeting of Presbytery may be its next regular meeting or an '
            'adjourned meeting. The principle is, that the Presbytery must not, '
            'unless in such extraordinary cases as are meant in the latter part of '
            '77:6 [cf. PCA 13-9c], dissolve a pastoral relation without giving both '
            'the Pastor and the church opportunity to show why it should not be '
            'dissolved.',
        webUrl: 'https://pcahistory.org/bco/fog/20/10.html',
      ),
    ],
    'bco_20-11': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 132\u2013133',
        text:
            '110.--IX. If the call be to a Minister or probationer of another '
            'Presbytery, the commissioners appointed to prosecute the call shall '
            'produce an attested certificate from their own Presbytery that it has '
            'been laid before that body and found in order, and that permission has '
            'been granted them to prosecute it before the Presbytery to which he '
            'belongs.\n\nIt is an irregular procedure for the Pastor elect to change '
            'Presbyteries before the call has been placed in his hands. Indeed, he '
            'need have no opinion, or at least give no assurance of what his answer '
            'will be, until after the call is placed in his hands ; for only so can '
            'the church and the Presbyteries speak their mind to him before he speaks '
            'his mind to them, as the Book contemplates.',
        webUrl: 'https://pcahistory.org/bco/fog/20/11.html',
      ),
    ],
    'bco_21-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 141\u2013142',
        text:
            'Section V.--Of the Ordination of Ministers, and the Formulation and '
            'Dissolution of the Pastoral Relation.\n\nThe relation of a Minister to a '
            'church as one of its officers is treated apart from the like relation of '
            'a Ruling Elder or Deacon, because this the Session controls, and that '
            'the Presbytery. The section falls into three parts--seven paragraphs on '
            'the ordination of Pastors ; six paragraphs of special regulations to '
            'cover cases not provided for in the preceding paragraphs ; and one '
            'paragraph on the dissolution of the pastoral relation. The seven '
            'paragraphs on the ordination of Pastors have three on the steps '
            'antecedent to the ordination, one on the placing of the call, one on the '
            'acceptance of it, and one on trials with a view to ordination ; and '
            'three on the ordination itself, one on the obligations of the candidate, '
            'one on the obligation of the church, one on the act of ordination, and '
            'one on the recognition of the new Pastor.\n\n116.--I. No minister or '
            'probationer shall receive a call from a congregation but by the '
            'permission of his presbytery. When a call has been presented to the '
            'presbytery, if found in order, and the presbytery deem it for the good '
            'of the church, they shall place it in the hands of the person to whom it '
            'is addressed.\n\nThe principle is fundamental, that neither Minister nor '
            'church may enter into the pastoral relation without the consent of '
            'Presbytery ; and the establishment of what is virtually the pastoral '
            'relation without the regular process and installation, whatever the '
            'relation may be called, is subversive of our system. Even for the '
            'Minister to signify his own mind concerning his proposed relation to the '
            'church before the Presbytery has acted will often tend to render the '
            'interposition of the Presbytery impracticable. The ideal would be for '
            'the called to give no indication of his own mind, and not to be '
            'consulted at all, until after the Presbytery has put the call into his '
            'hands.',
        webUrl: 'https://pcahistory.org/bco/fog/21/01.html',
      ),
    ],
    'bco_21-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 142\u2013143',
        text:
            '117.--II. When a call for the pastoral services of a probationer has '
            'been accepted by him, the Presbytery shall take immediate steps for his '
            'ordination.\n\nWhen the three parties--the church and the Presbytery and '
            'the man called--have all agreed that the relation should be established, '
            'no pleas of convenience or of other ground shall be permitted to delay '
            'it, in the case of a probationer ; but in the case of an ordained '
            'Minister other interests may justify a delay.',
        webUrl: 'https://pcahistory.org/bco/fog/21/02.html',
      ),
    ],
    'bco_21-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '118.--III. Trials for ordination, especially in a different Presbytery '
            'from that in which the candidate was licensed, shall consist of a '
            'careful examination as to his acquaintance with experimental religion ; '
            'as to his knowledge of philosophy, theology, ecclesiastical history, the '
            'Greek and Hebrew languages, and such other branches of learning as to '
            'the Presbytery shall appear requisite ; and as to his knowledge of the '
            'doctrine of the sacraments, and the principles and rules of the '
            'government and discipline of the Church. He shall further be required to '
            'preach a sermon before the Presbytery. The Presbytery being fully '
            'satisfied of his qualifications for the sacred office, shall appoint a '
            'day for his ordination, which ought, if practicable, to be in that '
            'church of which he is to be the pastor.\n\nIt must be borne in mind that '
            'the one object of these trials is to satisfy the Presbytery of the '
            'probationer\'s qualifications for the ministry ; Presbytery is not to '
            'ordain until fully satisfied as to qualifications, and the trials should '
            'continue until this full satisfaction is reached, and need continue no '
            'further. But the Presbytery is not at liberty to omit altogether any '
            'part of the trials here prescribed, unless it be such part of the trials '
            'here prescribed, unless it be such part as has been had already before '
            'the Presbytery in trials for licensure ; and these need not be '
            'omitted.\n\nThese trials fall into three groups. The first is a careful '
            'examination as to his own inward experience. The question, not merely '
            'whether the probationer gives credible evidence of faith in Christ, but '
            'whether, having such faith, his religious experience is such as a '
            'Minister needs to have as a qualification for his office. For one may '
            'have some acquaintance with genuine experimental religion, and not have '
            'sufficient acquaintance for this office. As this is immeasurably more '
            'important than any learning, so upon this the chief stress ought to be '
            'laid. Whatever other trial is abridged or given little attention, this, '
            'which is put first and is first, should be thorough, and too great '
            'deficiency here should always arrest the trials for ordination, it not '
            'being worth while to go further, unless the probationer is qualified in '
            'this respect.\n\nThe second group is a careful examination as to '
            'knowledge. And the branches of knowledge are specified in three '
            'specifications. The first specification is philosophy, theology, '
            'ecclesiastical history, the Greek and Hebrew languages. Philosophy is '
            'named before theology, a man\'s philosophy having more to reveal of his '
            'mental make-up, and more to do with determining his theology, than his '
            'theology has to reveal of his mental make-up, or to do with his '
            'philosophy. and yet theology is the central subject, to which philosophy '
            'contributes on the one hand, and ecclesiastical history and the original '
            'languages of Scripture on the other. It must appear strange that '
            'knowledge of the Scriptures is not distinctly named, unless theology is '
            'understood to be another term for it. The second specification is such '
            'other branches of learning as to the Presbytery shall appear requisite. '
            'Requisite for what? Requisite for showing whether he has the '
            'qualifications for the office of the ministry. For one might be '
            'destitute of learning in some of the subjects named, and yet have such '
            'learning in subjects not named as would make him superior, in point of '
            'human learning, to many that have satisfactory learning in the subjects '
            'named. Now, it is manifest that the requirement to examine in these '
            'branches of learning that are named, is not a requirement that the '
            'probationer shall show a knowledge of them all. The Presbytery is to '
            'examine as to his knowledge ; but how much knowledge of this or that '
            'will be necessary to satisfy Presbytery of his qualifications the '
            'Presbytery must decide. The third specification is the sacraments and '
            'the government and discipline. These items are thrown off to themselves, '
            'that they may the more certainly receive distinct attention before '
            'Presbytery.\n\nThe third group of trials is the sermon ; and this the '
            'Presbytery is not at liberty to omit. For he is being tested as to his '
            'qualifications to preach.\n\nThe ordination must be in the presence of '
            'the church (paragraph 120) that he is to be pastor of, and therefore '
            'ought, if practicable, to be in the church building in which this church '
            'is accustomed to worship.\n\nOVERTURES\n\n1981 [M9GA, 9-65, Item 5, p. '
            '136]\n\n1982 [M10GA, 10-89, Item 4, p. 113]\n\n1986 [M14GA, 14-19, Item '
            '9, p. 93]\n\n1988 [MGA, 16-10, Item 19, p. 110]\n\n1989 [M17GA, 17-6, '
            'Item 7.1, 7.2 and 7.4, pp. 48-49 and Item 10, p. 52]\n\n2003 [M31GA, '
            '31-11, Item 2, p. 54-56]\n\nChanges instituted in 21-4d: 1994 [M22GA, '
            '22-10, Item 4, p. 57]\n\nCONSTITUTIONAL INQUIRY:\n\n2004 - '
            'Constitutional Inquiry #2, from the Committee on Review of Presbytery '
            'Records [M32GA, 32-36, II, Item 2, p. 133]\n\nQuestion - What is the '
            'RPRC\'s responsibility under current BCO 21-4 in reviewing '
            'presbyteries\' granting of exceptions to the Constitution? Is the action '
            'by a Presbytery reviewable by RPRC and \u201cRAO\u201d 14 and BCO 40? '
            '(Note: RPRC currently understands that \u201cRAO\u201d 14 and BCO 40 '
            'task it to review minutes and make recommendations relating to '
            'violations of the Constitution to GA.)\n\nResponse - In regard to BCO '
            '21-4, the action of a Presbytery is reviewable by the Committee on '
            'Review of Presbytery Records (CRPR) to the extent of its authority in '
            'that the CRPR is charged to Constitution (BCO 40-2). If the Committee '
            'finds an entry that it believes does not conform, it is to report that '
            'apparent violation in accordance with \u201cRAO\u201d 14-6.c. Adopted by '
            'CCB.',
        webUrl: 'https://pcahistory.org/bco/fog/21/04.html',
      ),
    ],
    'bco_21-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 145\u2013146',
        text:
            '119.--The day appointed for the ordination having come, and the '
            'Presbytery being convened, a member of the Presbytery, previously '
            'appointed to that duty, shall preach a sermon adapted to the occasion. '
            'The same, or another member appointed to preside, shall afterwards '
            'briefly recite from the pulpit the proceedings of the Presbytery '
            'preparatory to the ordination; he shall point out the nature and '
            'importance of the ordinance, and endeavor to impress the audience with a '
            'proper sense of the solemnity of the transaction.\n\nThen, addressing '
            'himself to the candidate, he shall propose to him the following '
            'questions, viz.:\n\n1. Do you believe the Scriptures of the Old and New '
            'Testaments to be the Word of God, the only infallible rule of faith and '
            'practice?\n\n2. Do you sincerely receive and adopt the Confession of '
            'Faith and the Catechisms of this Church, as containing the system of '
            'doctrine taught in the Holy Scriptures?\n\n3. Do you approve of the '
            'government and discipline of the Presbyterian Church in the United '
            'States?\n\n4. Do you promise subjection to your brethren in the '
            'Lord?\n\n5. Have you been induced, as far as you know your own heart, to '
            'seek the office of the holy ministry from love to God and a sincere '
            'desire to promote His glory in the gospel of His Son?\n\nThe purport of '
            'the first three questions was set forth under paragraph 112, but '
            'questions 4, 5, and 7 are additional to the questions asked of Ruling '
            'Elders and Deacons at their ordination. What the Minister here '
            'explicitly professes and promises is all implied in the obligations '
            'assumed by those lower officers ; but the superior dignity and '
            'importance of the Ministerial office is indicated in making these '
            'elements of the obligation explicit. Subjection to one\'s brethren is, '
            'of course, qualified by such teachings as are contained in Section I. of '
            'Chapter II., and by the particular provisions of the Book of Church '
            'Order ; but within these limits the obligation of obedience to '
            'ecclesiastical authority is assumed, and should be humbly and strictly '
            'kept. And so many are the temptations to enter the Ministry from '
            'unworthy motives, so impossible is it to do the work of this office '
            'efficiently except from love to God, and so great is the guilt of '
            'prostituting this office to the service of lower motives, that each one '
            'is put upon searching his own conscience to see and to declare this pure '
            'motive his real motive.\n\n6. Do you promise to be zealous and faithful '
            'in maintaining the truths of the gospel and the purity and peace of the '
            'Church, whatever persecution or opposition may arise unto you on that '
            'account?\n\nThis is substantially the same as question 5 in paragraph '
            '112, put to Ruling Elders and Deacons ; but lays more emphasis upon '
            'fidelity in the face of opposition and persecution ; and for this there '
            'is the fact that a Minister may lose his means of living and '
            'professional standing by such fidelity, if he thereby encounters '
            'opposition from the worldly and ignorant in the Church. Perhaps this '
            'part of the Ministerial vow is more often violated than any other, on '
            'this very account.\n\n7. Do you engage to be faithful and diligent in '
            'the exercise of all your duties as a Christian and a Minister of the '
            'Gospel, whether personal or relative, private or public; and to '
            'endeavour by the grace of God to adorn the profession of the gospel in '
            'your conversation, and to walk with exemplary piety before the flock of '
            'which God shall make you overseer?\n\nSee comments under question 5. '
            'Emphasis is thus put upon the preeminent importance of the Minister\'s '
            'life as distinguished from his teaching.\n\n(8.) Are you now willing to '
            'take the charge of this church, agreeably to your declaration when '
            'accepting their call? And do you, relying upon God for strength, promise '
            'to discharge to it the duties of a Pastor?\n\nThis is parallel with '
            'question 4 in paragraph 112.\n\nIf the candidate should fail to answer '
            'any of these questions in the affirmative, that failure would arrest the '
            'ordination service.',
        webUrl: 'https://pcahistory.org/bco/fog/21/05.html',
      ),
    ],
    'bco_21-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 147\u2013149',
        text:
            '120--V. The candidate having answered these questions in the '
            'affirmative, the presiding Minister shall propose to the church the '
            'following questions:\n\nIt appears that only a Minister may preside on '
            'such an occasion.\n\n(1) Do you, the people of this congregation, '
            'continue to profess your readiness to receive ______________________, '
            'whom you have called to be your Pastor?\n\nThese four questions replace '
            'the one question asked the church, paragraph 112, at the installation of '
            'Ruling Elders and Deacons, and, by laying more emphasis upon these '
            'obligations to a Minister than upon the like obligations to them, again '
            'indicate the greater dignity and importance of the order of '
            'Ministers.\n\nIt is conceivable that the church may change its mind '
            'between the election and the installation ; and if so, here would be the '
            'place, if it has not been done already, to show this change of mind by '
            'refusing to answer affirmatively. And should there be such a refusal by '
            'the members generally, or by so large a number as to indicate such a '
            'change of mind, the Presbytery should not proceed with the '
            'installation.\n\n(2) Do you promise to receive the word of truth from '
            'his mouth with meekness and love, and to submit to him in the due '
            'exercise of discipline?\n\nThis is a specific promise not to do what '
            'members of the church are so liable to do, receive the preaching with '
            'adverse criticism, and resist or disapprove discipline.\n\n(3) Do you '
            'promise to encourage him in his labors, and to assist his endeavors for '
            'your instruction and spiritual edification?\n\nHere is emphasized a '
            'thing so commonly neglected by the members of the church, and yet so '
            'much needed by the Pastor, an obligation the more sacred because '
            'indefinable.\n\n(4) And do you engage to continue to him while he is '
            'your Pastor that competent worldly maintenance which you have promised, '
            'and to furnish him with whatever you may see needful for the honor of '
            'religion and for his comfort among you?\n\nIt being assumed that the '
            'church in its call has promised a competent worldly maintenance, it here '
            'repeats that promise, especially promising not to discontinue or '
            'diminish the same on account of any disaffection arising, until '
            'discharged from this obligation by the dissolution of the pastoral '
            'relation ; and to this is added a promise that to this minimum shall be '
            'added whatever, if anything, is needful to the honor of religion or the '
            'comfort of the Pastor.\n\nA beautiful undertaking ! But who is bound to '
            'do this? Each individual to the extent of his particular promise already '
            'made? Yes and No. The individual is bound in just the sense and to just '
            'the extent in which every member of a body is bound for its obligations '
            '; his obligation is not limited or measured by the pro rata which he may '
            'have undertaken to pay, except so far as the terms or conditions of that '
            'promise may define his relations to his fellow members ; for his '
            'obligation is not immediately to the Pastor, but to the church. It is '
            'the church that is under obligation to the Pastor ; and its whole '
            'ability in property and in its resources of contributions from its '
            'members is under pledge.\n\nThis being true, a church ought not to enter '
            'into an obligation beyond its reasonable ability to meet, nor ought a '
            'Presbytery to permit it. But since a church ought not to promise '
            'anything less than a competent support, a church not really able to give '
            'such a support ought not to continue as a distinct church. By sharing '
            'the support of a Pastor with one or more neighboring churches, or by '
            'receiving a fixed aid from Presbytery or other source, a church not able '
            'alone to have a Pastor may yet have a Pastor agreeably to these '
            'principles.',
        webUrl: 'https://pcahistory.org/bco/fog/21/06.html',
      ),
    ],
    'bco_21-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 149\u2013150',
        text:
            '121.--VI. The people having answered these questions in the affirmative, '
            'by holding up their right hands, the candidate shall kneel, and the '
            'presiding Minister shall, with prayer and the laying on of hands of the '
            'Presbytery, according to the apostolic example, solemnly set him apart '
            'to the holy office of the Gospel ministry. Prayer being ended, he shall '
            'rise from his knees; and the minister who presides shall first, and '
            'afterwards all the members of the Presbytery in their order, take him by '
            'the right hand, saying, in words to this effect:\n\n\u201cWe give you '
            'the right hand of fellowship, to take part in this ministry with '
            'us.\u201d The Moderator shall then say:\n \u201cI now pronounce and '
            'declare that A.B. has been regularly elected, ordained, and installed '
            'Pastor of this congregation, agreeably to the Word of God, and according '
            'to the Constitution of the Presbyterian Church in the United States; and '
            'that as such he is entitled to all support, encouragement, honor, and '
            'obedience in the Lord: In the name of the Father, and of the Son, and of '
            'the Holy Ghost. Amen.\u201d After which the Minister presiding, or some '
            'other Minister or Ruling Elder appointed for the purpose, shall give a '
            'solemn charge to the Pastor and to the congregation, to persevere in the '
            'discharge of their reciprocal duties, and then after prayer and the '
            'singing of a psalm, or hymn, the congregation shall be dismissed with '
            'the benediction. And the Presbytery shall duly record the '
            'transaction.\n\nIt is to be noted that the Minister presiding is to do '
            'everything but preach the sermon and deliver the charge, and he may also '
            'deliver the sermon or the charge, or both ; that the charge to the '
            'Pastor and to the people is to be delivered by one Minister, there being '
            'prescribed here only one charge by one Minister, and not two charges by '
            'two Ministers ; and that a Ruling Elder cannot be an appointee for any '
            'of these functions. As there is nowhere any rule for determining an '
            'order of precedence between the members of Presbytery, the phrase '
            '\u201cmembers of the Presbytery in their order\u201d must mean simply '
            'one after another. Ruling Elders, members of the Presbytery, lay their '
            'hands on the head of the candidate, and extend to him the right hand of '
            'fellowship, as well as the Ministers. It is proper for them also to use '
            'the words \u201cto take part in this ministry with us,\u201d although '
            'these words can mean, in their mouth, only the ministry of ruling. (Cf. '
            'also par. 112 and comments.)',
        webUrl: 'https://pcahistory.org/bco/fog/21/07.html',
      ),
    ],
    'bco_21-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 151',
        text:
            '122.--VII. After the installation, the heads of families of the '
            'congregation then present, or at least the Ruling Elders and Deacons, '
            'should come forward to their Pastor, and give him their right hand, in '
            'token of cordial reception and affectionate regard.\n\nOthers are not '
            'forbidden to do the same ; nor is it wrong to extend like welcome to a '
            'Ruling Elder or Deacon.',
        webUrl: 'https://pcahistory.org/bco/fog/21/08.html',
      ),
    ],
    'bco_21-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 151\u2013152',
        text:
            '125. X.--In the installation of an ordained Minister, the following '
            'questions are to be substituted for those addressed to a candidate for '
            'ordination, viz.:\n\n1. Are you now willing to take charge of this '
            'congregation as their Pastor, agreeably to your declaration at accepting '
            'its call?\n\nThis is identical with the first part of question 8 in '
            'paragraph 119.\n\n2. Do you conscientiously believe and declare, as far '
            'as you know your own heart, that, in taking upon you this charge, you '
            'are influenced by a sincere desire to promote the glory of God and the '
            'good of the Church?\n\nThis is a particular application of the principle '
            'of question 5 in 119.\n\n3. Do you solemnly promise that, by the '
            'assistance of the grace of God, you will endeavor faithfully to '
            'discharge all the duties of a Pastor to this congregation, and will be '
            'careful to maintain a deportment in all respects becoming a Minister of '
            'the gospel of Christ, agreeably to your ordination engagements?\n\nThis '
            'is substantially the same as question 7 in 119, with a reiteration of '
            'all the ordinary obligations.',
        webUrl: 'https://pcahistory.org/bco/fog/21/09.html',
      ),
    ],
    'bco_21-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 147\u2013148',
        text:
            '120.--V. The candidate having answered these questions in the '
            'affirmative, the presiding Minister shall propose to the church the '
            'following questions:\n\nIt appears that only a Minister may preside on '
            'such an occasion.\n\n(1) Do you, the people of this congregation, '
            'continue to profess your readiness to receive ___________________, whom '
            'you have called to be your pastor?\n\nThese four questions replace the '
            'one question asked the church, paragraph 112, at the installation of '
            'Ruling Elders and Deacons, and, by laying more emphasis upon these '
            'obligations to a Minister than upon the like obligations to them, again '
            'indicate the greater dignity and importance of the order of '
            'Ministers.\n\nIt is conceivable that the church may change its mind '
            'between the election and the installation ; and if so, here would be the '
            'place, if it has not been done already, to show this change of mind by '
            'refusing to answer affirmatively. And should there be such a refusal by '
            'the members generally, or by so large a number as to indicate such a '
            'change of mind, the Presbytery should not proceed with the '
            'installation.\n\n(2) Do you promise to receive the word of truth from '
            'his mouth with meekness and love, and to submit to him in the due '
            'exercise of discipline?\n\nThis is a specific promise not to do what '
            'members of the church are so liable to do, receive the preaching with '
            'adverse criticism, and resist or disapprove discipline.\n\n(3) Do you '
            'promise to encourage him in his labors, and to assist his endeavors for '
            'your instruction and spiritual edification?\n\nHere is emphasized a '
            'thing so commonly neglected by the members of the church, and yet so '
            'much needed by the Pastor, an obligation the more sacred because '
            'indefinable.\n\n(4) And do you engage to continue to him while he is '
            'your Pastor that competent worldly maintenance which you have promised, '
            'and to furnish him with whatever you may see needful for the honor of '
            'religion and for his comfort among you?\n\nIt being assumed that the '
            'church in its call has promised a competent worldly maintenance, it here '
            'repeats that promise, especially promising not to discontinue or '
            'diminish the same on account of any disaffection arising, until '
            'discharged from this obligation by the dissolution of the pastoral '
            'relation ; and to this is added a promise that to this minimum shall be '
            'added whatever, if anything, is needful to the honor of religion or the '
            'comfort of the Pastor.\n\nA beautiful undertaking! But who is bound to '
            'do this? Each individual to the extent of his particular promise already '
            'made? Yes and No. The individual is bound in just the sense and to just '
            'the extent in which every member of a body is bound for its obligations '
            '; his obligation is not limited or measured by the pro rata which he may '
            'have undertaken to pay, except so far as the terms or conditions of that '
            'promise may define his relations to his fellow members ; for his '
            'obligation is not immediately to the Pastor, but to the church. It is '
            'the church that is under obligation to the Pastor ; and its whole '
            'ability in property and in its resources of contributions from its '
            'members is under pledge.\n\nThis being true, a church ought not to enter '
            'into an obligation beyond its reasonable ability to meet, nor ought a '
            'Presbytery to permit it. But since a church ought not to promise '
            'anything less than a competent support, a church not really able to give '
            'such a support ought not to continue as a distinct church. By sharing '
            'the support of a Pastor with one or more neighboring churches, or by '
            'receiving a fixed aid from Presbytery or other source, a church not able '
            'alone to have a Pastor may yet have a Pastor agreeably to these '
            'principles.',
        webUrl: 'https://pcahistory.org/bco/fog/21/10.html',
      ),
    ],
    'bco_21-11': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 151',
        text:
            '123.--VIII. In the ordination of probationers as Evangelists, the eighth '
            'of the preceding questions shall be omitted, and the following '
            'substituted for it, viz.:\n\nDo you now undertake the work of an '
            'Evangelist, and do you promise, in reliance on God for strength, to be '
            'faithful in the discharge of all the duties incumbent on you as a '
            'Minister of the Gospel of the Lord Jesus Christ?\n\nWhile it would be '
            'according to the principles of the Form of Government to substitute a '
            'similar question in ordination to the office of Teacher or other sort of '
            'labor as Minister, no express provision is made for such cases. (Cf. '
            'remarks at beginning of Sec. III.)',
        webUrl: 'https://pcahistory.org/bco/fog/21/11.html',
      ),
    ],
    'bco_23-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 155\u2013156',
        text:
            '128.--XIII. When any Minister shall tender the resignation of his '
            'pastoral charge to his Presbytery, the Presbytery shall cite the church, '
            'as in the preceding directions, to appear by its commissioners at the '
            'next meeting, to show cause, if any it has, why the Presbytery should '
            'not accept the resignation. If the church fail to appear, or if its '
            'reasons for retaining its Pastor be deemed insufficient, his resignation '
            'shall be accepted, and the pastoral relation dissolved. If any church '
            'desires to be relieved of its Pastor, a similar process shall be '
            'observed. But whether the Minister or the church initiate proceedings '
            'for a dissolution of the relation, there shall always be a meeting of '
            'the church, called and conducted precisely in the same manner as when '
            'the call of a Pastor is to be made out.\n\nA Pastor resigns to the '
            'Presbytery, and not to the church; and the church applies to the '
            'Presbytery for a dissolution, and does not ask the Pastor to resign. It '
            'is the Presbytery that establishes and dissolves the pastoral relation, '
            'and not the Minister and the church. These two parties have no '
            'negotiations with each other directly concerning the pastoral relation, '
            'but only through the Presbytery.\n\nAt the same time, according to the '
            'principle indicated in paragraph 126, that the church may have already '
            'had a meeting and prepared its answer to Presbytery, in case some other '
            'church has made out a call that aims at the removal of the Pastor, the '
            'church may likewise, if its Pastor gives notice of his intention of '
            'tendering his resignation to the Presbytery, hold a congregational '
            'meeting and appoint its commissioners to answer in the matter to '
            'Presbytery, before that meeting of Presbytery at which the Pastor\'s '
            'resignation is to be presented ; and the issue may then be '
            'determined.\n\nThe church, when cited by Presbytery, must be convened in '
            'congregational meeting, but it may decide to make no opposition, and in '
            'that case may decide not to send any answer to the Presbytery. And this '
            'requirement of a congregational meeting does not forbid the Presbytery '
            'to dissolve the pastoral relation on its own motion, without consulting '
            'either Pastor or church, \u201cwhere the interests of religion '
            'imperatively demand it.\u201d (See 77:6.)',
        webUrl: 'https://pcahistory.org/bco/fog/23/01.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 247\u2013249',
        text:
            'This chapter outlines the proper procedure for the dissolution of '
            'pastoral relationships. All too often a pastor reads a resignation to '
            'his congregation, and then ceases to function as pastor, before the '
            'Presbytery has had time to consider the matter. The relationship is '
            'established by the Presbytery, and not by the Session or congregation. '
            'This means that only the Presbytery may dissolve the relationship, and '
            'relieve a man of his duties. Under extreme cases the Session may permit '
            'a minister to be excused from serving out his time, but the pastoral . '
            'relationship is not actually dissolved until the Presbytery has acted. '
            'This being the case, the resignation of a minister from his charge is '
            'submitted to the Presbytery. It is appropriate for him to notify the '
            'congregation of his intentions, so that it may be prepared to respond to '
            'the query of the Presbytery as to the desire of the congregation.\n\nIt '
            'should be observed that a congregation is not required to concur with '
            'the pastor in his request for dissolution. In such cases the Presbytery '
            'must make the decision. Generally speaking, the expressed desires of a '
            'pastor determine the matter. There have been occasions, however, when a '
            'congregation comes with such strong arguments for the man to be '
            'retained, that the Presbytery may refuse to dissolve the\n'
            '\nrelationship. Such occasions can bring a renewal in the work of the '
            'pastor and in the life of the congregation.\n\nIn the event that a '
            'congregation fails to act on the matter, then the Presbytery may '
            'dissolve the relation.\n\nNote that there is no requirement for the '
            'congregation to provide a severance package for the departing minister. '
            '(M30GA, p. 353)\n\n\u201cIf any church desires to be relieved of its '
            'pastor, . . . \u201d\n\nThe relationship of a pastor to his congregation '
            'is, of course, a\n two-sided relationship. Thus a congregation may '
            'itself decide that it\n desires to request termination of the '
            'relationship. This can only be\n done through a duly called '
            'congregational meeting. The question of\n whether a congregation concurs '
            'with a minister\'s request must also be\n taken before the congregation. '
            'There is a specific prohibition to a\n minister\'s moving away from a '
            'field until the matter has been acted\n\nupon by the Presbytery. This is '
            'due to the fact that men have on occasion done this improperly.\n\nThe '
            'last sentence of the paragraph alludes to a possible commission of the '
            'Presbytery that may be authorized to handle such matters between '
            'Presbytery meetings. It should be noted that such a commission is to be '
            'established with only limited powers. It could not settle a contested '
            'request for dissolution. Such cases must come before the whole '
            'Presbytery.\n\nThe question has been raised as to whether a Presbytery '
            'may refuse to dissolve the pastoral relation if requested by a duly '
            'called congregational meeting. In response to at least three different '
            'cases, the Assembly has declared that the Presbytery does not have this '
            'right. See M33GA, p. 89,\n\n(2) The local church has the exclusive right '
            'to choose it minister and its officers.\n\n(BCO Chapters 20 and 24). No '
            'one can force a minister upon a local congregation; and no one can '
            'govern a local congregation except BCO 3-1 officers chosen by its '
            'members. (Preface II (6); BCO 16-2)\n\nAlso see M20GA, p. 148, also '
            'cited in the M33GA, p. 92.\n\n\u201cHowever, despite the fact that the '
            'pastor did not request that foe pastoral relation be dissolved it may be '
            'noted that foe Southwest Presbytery acted correctly to dissolve for '
            'pastoral relationship between it and TE Pollock and Covenant P.C., Wheat '
            'Ridge, CO. The Presbytery received from foe congregation of Covenant '
            'P.C. a\n request that the Presbytery dissolve the relationship between '
            'it and TE Pollock and\n once they, in accordance with the BCO, had '
            'exercised their discretion to determine\n that such a request came out '
            'of a valid congregational vote, they acted correctly to\n dissolve that '
            'relationship. . . the discretion given to a Presbytery under BCO 23-1\n '
            'does not give a Presbytery power to prevent the implementation of a '
            'valid decision of\n a congregation. (Emphasis added) (G.A. Minutes 1992, '
            'page 148)..\n\nAn earlier case was decided in 1993. See M21GA. p. 202, '
            'also cited in\n M33GA. P. 94.\n\nThe SJC approved a decision of the '
            'Panel which held: \u201dThe majority of the Panel\n notes that in a '
            'previous decision in Case 91-2, the SJC and General Assembly affirmed '
            'that the discretion given to a Presbytery under BCO 23-1 does not give '
            'Presbytery power to prevent the implementation of a valid decision of '
            'the congregation.\u201c (1993 G.A. Minutes page 202) (emphasis added). '
            'This SJC approved decision contained the following statement: \u201dThat '
            '\'valid decision of a congregation\' must be understood to include both '
            'the election of pastor and the concurrence in his resignation. The '
            'fundamental right of a congregation to elect its\n officers was noted by '
            'Dr. Morton Smith in an article in his [sic] Book, TheHistorical Birth of '
            'the PCA [*p. 147]. He concluded that it is a fundamental provision of '
            'our polity that the office bearers in the Apostolic Church were chosen '
            'by the people. On this basis, we may conclude that the function of '
            'pastors and teachers of Ephesians 4:11 are included under the office of '
            'Elder.\u201c (1993 G.A. Minutes page 202). The 1993 General Assembly '
            'approved this judgment (1993 G.A.Minutes page 200). The Assembly in all '
            'of these decisions is upholding the principle that a congregation has '
            'the right of election its own officers.\n\nThe associate or assistant '
            'pastors may continue to serve a congregation when the pastoral relation '
            'of the senior pastor is dissolved, but they may not normally succeed the '
            'senior pastor without an intervening term o f service in a different '
            'field of labor. However a congregation by a secret ballot with '
            'four-fifths\n (4/5) majority vote may petition Presbytery for an '
            'exception which by a three-fourths (3/4) majority vote Presbytery may '
            'grant. Presbytery needs to determine if the dissolution of the pastoral '
            'relationship with the senior pastor was brought about in Christian love '
            'and good order on the part of the parties concerned.\n\nWhen a '
            'congregation has a multiple staff, the question of what happens to the '
            'associate and/or the assistant pastors upon the dissolution of the '
            'senior pastor\'s relation is dealt with here. As the paragraph indicates '
            'they may continue their service in that capacity. Ordinarily an '
            'associate or an assistant may not succeed the senior pastor until he has '
            'served elsewhere. This is to guard against the possibility of an '
            'associate or assistant undermining the confidence of the congregation in '
            'the senior pastor with the desire to succeed him. On the other hand, '
            'provision is made to allow a congregation to call its associate or '
            'assistant to be its senior pastor, if this is the desire of a large '
            'majority of the congregation. Specific procedures are set forth for this '
            'possibility. First, the congregation must by secret ballot vote on the '
            'matter. The vote must be at least 4/5th\'s majority. The Presbytery is '
            'to view this as an exceptional matter, and must have a 3/4th\'s vote to '
            'approve it, only after ascertaining that the events leading to the '
            'dissolution of the senior pastor\'s relationship have been handled '
            'with\n\nChristian love and in good order by all parties '
            'concerned.\n\nConstitutional Inquiry, 1988, p. 177,16-77, III, 27. '
            'Digest, I, p. 275.\n\nThat the advice of the Committee on Judicial '
            'Business regarding Constitutional Inquiry\n#3 be ratified.\n'
            '\nConstitutional Inquiry #3: From Presbytery of the Ascension.\n'
            '\nQUESTION Re: Resignation of a Minister from a \u201dpastoral '
            'charge\u201c which is outside the\nbounds of the Presbytery (BCO '
            '23-1).\n\n\u201d1. Is this provision to be understood as applying to a '
            '\u201cpastoral charge\u201d where a non-PCA church is the calling body, '
            'e.g. an independent or unaffiliated church wherein a PCA teaching elder '
            'has been serving as pastor (or as assistant pastor, etc.,) with the full '
            'concurrence of the Presbytery and with that particular church\'s '
            'recognition of\n\nPresbytery\'s proper authority over and oversight of '
            'this teaching elder?\n\n\u201c2. To put it another way, is the BCO '
            'provision properly satisfied in cases such as this by simply relying on '
            'a properly certified congregational or sessional vote to concur with the '
            'request for dissolution o f the \'pastoral charge?\u201d\n\nANSWER: '
            '\u201cNo.\n\nThe provision of BCO 23-1 should not be understood as '
            'applying to pastoral charges outside the jurisdiction o f the '
            'Presbytery. Chapter 23 does not apply to churches not under the '
            'jurisdiction of the Presbytery.Excerpts from Judicial Case 93, [Case '
            '92-2], 1993, p. 199, 21-71, III-3 , Digest, I, p. 502:\n\nSTATEMENT OF '
            'THE ISSUES\n\n1. Did New River Presbytery err at its November 8-9, 1991, '
            'meeting by not accepting the resignation of TE Don Post, Jr., and '
            'dissolve his pastoral relationship with Providence Reformed Presbyterian '
            'Church.\n\nTHE JUDGMENT\n\nYes. BCO 23-1 is cited.[end of commentary]\n '
            'Prior Actions taken within the PCA:\n\nGA 2001, pp. 190-93 Overture 4 '
            'from Eastern Carolina Pby sought to amend the first two paragraphs, '
            'seeking to clarify that dissolution of the pastoral bond is a power of '
            'Presbytery only, that Presbytery is not to simply affirm the request as '
            'received without carefully weighing the situation. The amendment sought '
            'also to limit consideration to the whole Presbytery and not simply a '
            'commission. Overture 4 was answered in the negative, but with that '
            'action \u201cadopted as amended\u201d. The Minutes at pages 190-93 do '
            'not reference the CCB report on page 139, which states:\u201cIt is the '
            'opinion of CCB that Overture #4 is not in conflict with the other parts '
            'of the Constitution. It is also the opinion of the CCB that the offered '
            'revision offers very little substantive change to our present standards '
            'when they are properly understood and carried out\u2014except for the '
            'proposed provision that a Commission can never be used by a presbytery '
            'to dissolve the pastoral relationship which seems unnecessarily '
            'restrictive for perfunctory cases without objection from any '
            'party.\u201dOVERTURES AND AMENDMENTS:\n\n1980\n\nGA 1980, pp. 112 '
            'Chapter 24 renumbered as chapter 23, due to the merging of the former '
            'chapters 8 and 9.\n\n1982\n\nGA1982, pp. 45, 102 Overture 16 from '
            'Ascension Pby argued that 23-1 implied a TE should not leave the field '
            'until his resignation was accepted by both the congregation and the '
            'presbytery, yet Ascension contended that present wording led to '
            'confusion, with TE\u2019s leaving the field before Presbyteries were '
            'aware of dissolutions. Thus BCO 23-1 was proposed to be amended and '
            'read: \u201cWhen any minister shall tender his resignation\u2026In any '
            'case, the minister must not physically leave the field until the '
            'presbytery has approved his resignation. If any church desires to be '
            'relieved of its pastor\u2026.\u201d Overture 16 was then answered in the '
            'affirmative, as amended, \u00a710-75, III, 19, p. 102: \u201cWhen any '
            'minister shall tender his resignation\u2026 If any church desires to be '
            'relieved of its pastor\u2026.In any case, the minister must not '
            'physically leave the field until the presbytery or its commission '
            'empowered to handle uncontested requests for dissolution has dissolved '
            'the relation.\u201d 1984\n\nOverture 29, from Delmarva Presbytery '
            '[M12GA, 12-10, B., p. 52]\n\nWhereas, the Westminster Confession of '
            'Faith (1.6) states that \u201dThe whole counsel of God concerning all '
            'things necessary for...faith and life, is either expressly set down in '
            'Scripture, or by good and necessary consequence may be deduced from '
            'Scripture...\u201c; and\n\nWhereas, the requirement of BCO 23-1 that an '
            'associate or assistant pastor may not succeed a senior pastor without an '
            'intervening term of service in a different field of labor has neither '
            'express warrant in the Word of God, nor is implied by good and necessary '
            'consequence; and\n\nWhereas, the Westminster Confession of Faith (1.6) '
            'states \u201dthere are some circumstances concerning the worship of God, '
            'and government of the Church, common to human actions and societies, '
            'which are to be ordered by the light of nature, and Christian prudence, '
            'according to the general rules of the Word, which are always to be '
            'observed\u201c; and\n\nWhereas, the requirement of BCO 23-1 stated above '
            'does find some warrant as governing circumstances in the government of '
            'the Church which Christian prudence commends; and\n\nWhereas, '
            'nevertheless such prudent governance should not preempt the Biblical and '
            'Constitutional rights and responsibilities of congregations and '
            'Presbyteries, nor should it establish an infallible rule to prejudge all '
            'circumstances by a presumption of guilt; and\n\nWhereas, it is the right '
            'and responsibility of the congregation to recognize by election to '
            'office those it judges to be called to ministry (16-1, 2) and it is the '
            'right and responsibility of the Presbytery to permit a call, if in its '
            'judgment the call is found in order and is for the good of the Church '
            '(16-1 and 21-1); and\n\nWhereas, in its current form 23-1 unreasonably '
            'restricts the rights and responsibilities of the congregation and the '
            'Presbytery to determine that in particular circumstances a call to an '
            'associate or assistant to succeed a senior pastor without an intervening '
            'term of service in a different field of labor would be in order, and it '
            'uncharitably adopts a presumption of guilt;\n\nTherefore, the Presbytery '
            'of Delmarva overtures the Twelfth General Assembly of the Presbyterian '
            'Church in America to amend to the BCO 23-1, the third paragraph, by '
            'replacing 23-1, third paragraph, with the following paragraph:\n'
            '\n\u201dThe status of an associate or assistant pastor is not affected '
            'by the death or resignation of the senior pastor, and no implication of '
            'any right of succession, nor necessity of resignation, may be inferred, '
            'promised, or required in the call to such associate or assistant '
            'pastors. The presbytery may approve a call to an associate or assistant '
            'pastor to succeed a senior pastor if the presbytery, after careful '
            'consideration, determines by a two-thirds vote that the dissolution of '
            'the pastoral relation with the senior pastor was brought about in '
            'Christian love and good order on the part of the parties '
            'concerned.\u201c\n\nAttest: Thomas G. Webb, Stated Clerk.\n\nSee answer '
            'to Overture 4, Recommendation 29, 12-53, II, 29, p. 133.\n\nOverture 4, '
            'from the Presbytery of Southern Florida [M12GA, 12-10, B., p. '
            '47]\n\nWhereas, the Biblical precedence for the ascendancy of an '
            'assistant to his senior\'s position of ministry is demonstrated by the '
            'lives of Paul and Timothy, II Timothy 2:2, Elijah and Elisha, I Kings '
            '19:19, also, Eli and Samuel, I Samuel 2:11-3:18, and\n\nWhereas, an '
            'historical precedent for this practice was established by many of our '
            'fathers in the faith, and\n\nWhereas, there was no restriction in the '
            'Standards of the Reformed Presbyterian Church, Evangelical Synod as to '
            'this practice, and\n\nWhereas, the statement in the BCO 23-1 presumes '
            'that God wills not to have an associate or assistant pastor succeed a '
            'senior pastor; yet nevertheless it is recognized that an associate or '
            'assistant pastor must not usurp the office and authority of the senior '
            'pastor of a particular church, and the unity of the body of Christ is to '
            'be sought and maintained in all situations;\n\nTherefore the Presbytery '
            'of Southern Florida respectfully proposes that Chapter 23 of the BCO '
            'Section 23-1. . . \u201dThe associate or assistant pastors may continue '
            'to serve a congregation when a pastoral relation of the senior pastor is '
            'dissolved, but they may not succeed the senior pastor without an '
            'intervening term of service in a different field of labor,\u201c be '
            'amended to read. . . \u201dThe associate or assistant pastors may '
            'continue to serve a congregation when a pastoral relation of the senior '
            'pastor is dissolved, but they may not normally succeed the senior pastor '
            'without an intervening term of service in a different field of labor. '
            'However, a congregation may petition Presbytery for an exception, which '
            'by a three-fourths majority vote, Presbytery may grant.\u201c\n\nAttest: '
            'Ralph Mittendorff, Stated Clerk.\n\nAnswered in the affirmative as '
            'amended, 12-53, II, 29, p. 133.\n\n29. That Overture 4--from the '
            'Southern Florida Presbytery, p. 47. Re: BCO 23-1, be answered in the '
            'affirmative as amended as follows:\n\nThat BCO Chapter 23-1 be amended '
            'by substituting the following for the present 23-1:\n\n\u201dThe '
            'associate or assistant pastors may continue to serve a congregation when '
            'a pastoral relation of the senior pastor is dissolved, but they may not '
            'normally succeed the senior pastor without an intervening term of '
            'service in a different field of labor. However a congregation by secret '
            'ballot with 4/5 majority vote may petition Presbytery for an exception '
            'which by a 3/4 majority vote Presbytery may grant. Presbytery needs to '
            'determine if the dissolution of the pastoral relationship with the '
            'senior pastor was brought about in Christian love and good order on the '
            'part of the parties concerned.\n\nAdopted and sent down to Presbyteries '
            'for advice and consent. [M12GA, 12-53, II, 29, p. 133.]\n\n1985\n\nGA '
            '1985, pp. 80 BCO 23-1 amended by a vote of 32 yea and 5 nay, '
            'substituting the following for the present 23-1:\n\n\u201cThe associate '
            'or assistant pastors may continue to serve a congregation when the '
            'pastoral relation of the senior pastor is dissolved, but they may not '
            'normally succeed the senior pastor without an intervening term of '
            'service in a different field of labor. However a congregation by a '
            'secret ballot with four-fifths (4/5) majority vote may petition '
            'Presbytery for an exception which by a three-fourths (3/4) majority vote '
            'Presbytery may grant. Presbytery needs to determine if the dissolution '
            'of the pastoral relationship with the senior pastor was brought about in '
            'Christian love and good order on the part of the parties '
            'concerned.\u201c',
        webUrl: 'https://pcahistory.org/bco/fog/23/01.html',
      ),
    ],
    'bco_23-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text in this chapter]',
        webUrl: 'https://pcahistory.org/bco/fog/23/02.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 250\u2013251',
        text:
            'A minister may be designated as honorably retired or medically disabled. '
            'The initiative for honorable retirement rests with the minister. The '
            'reason given for retirement is simply age. No particular age is set for '
            'such retirement. This is left to the individual minister concerned. This '
            'relieves him of the obligations of the ministry, though he may still be '
            'used by the Presbytery to serve on committees or commissions, when '
            'elected or appointed to do so. Those who are medically disabled are '
            'treated in a similar fashion to the honorably retired.\n\nConstitutional '
            'Inquiry, 1989, p. 157,17-82, III, 19. Digest, I, p. 275.\n\nThat the '
            'advice of the Judicial Business Committee regarding Constitutional '
            'Inquiry #3 be ratified.\n\nConstitutional Inquiry #3: From the Uliana '
            'Presbytery requesting advice concerning the constitutionality of their '
            'proposed rewrite o f Standing Rule 140 o f Standing Rules of the '
            'Presbytery:\n \u201c140. When ministerial members retire from active '
            'status, they need not continue to report, and Presbytery is not required '
            'to respond to the above question. However, it is a benefit to the '
            'brethren and a courtesy to our retired men that they be given the '
            'opportunity to testify to their service for the Lord.\u201d\n'
            '\nAnswer:\n\nThe Committee advises Uliana Presbytery that we do not '
            'believe the proposed rule 140 is in conflict with BCO (BCO 23-2). We '
            'advise Presbytery, based on BCO 41-5, to use its own wisdom in rewriting '
            'its standing rules in accordance with the BCO. Adopted',
        webUrl: 'https://pcahistory.org/bco/fog/23/02.html',
      ),
    ],
    'bco_23-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text in this chapter]',
        webUrl: 'https://pcahistory.org/bco/fog/23/03.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 251',
        text:
            'Provision is made for the status of pastor emeritus. This is not\n '
            'mandatory upon a congregation to do. The provision allows a '
            'congregation\n to so honor a minister, if it desires to do so.',
        webUrl: 'https://pcahistory.org/bco/fog/23/03.html',
      ),
    ],
    'bco_24-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 125\u2013126',
        text:
            'Section III.--Of the Election of Church Officers.\n\nThis section treats '
            'of that part of vocation which is effected through the people ; and it '
            'treats, in the election of Ministers, only of their election to one sort '
            'of definite work, the pastoral office. There is neither here nor '
            'elsewhere any provision regulating the participation of the people in '
            'calling a Minister to the work of Evangelist, or Teacher, or Editor, or '
            'other like work. (Cf. pars. 37 and 38.)\n\nThe first four paragraphs '
            'give regulations for the election of Pastor, Ruling Elder, or Deacon ; '
            'the other five paragraphs give special directions concerning the '
            'election of a Pastor and the certification of his election to '
            'Presbytery. No regulations on this point are thought to be necessary in '
            'the case of a Ruling Elder or a Deacon, as the ordaining court, the '
            'Session, is supposed to be present. In the general regulations, the '
            'first concerns the meeting of the church ; the second, the Moderator of '
            'the meeting ; the third, the order of procedure ; and the fourth, the '
            'electors. In the special regulations as to a Pastor, the first '
            'prescribes the essential duty of the Moderator ; the second, the form of '
            'the call or communication from the church to the Pastor-elect ; the '
            'third, who shall sign this call, and how their signatures are to be '
            'certified ; the fourth, how the call is to be presented to Presbytery ; '
            'and the fifth, the mode of procedure when the Minister called belongs to '
            'a different Presbytery from the church.\n\n102.--I. Every church shall '
            'elect persons to the offices of Pastor, Ruling Elder and Deacon in the '
            'following manner, viz : Public notice shall previously be given by the '
            'Session that the church is to convene at the usual place of public '
            'worship for such purpose ; and it shall always be the duty of the '
            'Session to convene them when requested by a majority of the persons '
            'entitled to vote.\n\nThe meeting must be at the usual place of public '
            'worship, and after public notice, that those entitled to vote may be '
            'able to attend ; and while the meeting must be called by the Session, '
            'the Session is bound to call such meeting when a majority requests it, '
            'that the right of the people to elect may not be infringed.\n\nOVERTURES '
            '& AMENDMENTS:\n\n1986 [M13GA (1985), 13-3, B, p. 45-46 and 13-45, III, '
            'Item 30, p. 106; M14GA, 14-19, Item 10, p. 94]\n\nOverture 8 from the '
            'Presbytery of the Ascension\n\nWhereas, there is uncertainty as to '
            'whether it is permissible in BCO 24-1 for the Session to report to the '
            'congregation only on the day of the election those eligible, or if it is '
            'permissible for the Session to report both prior to and on the day of '
            'election those eligible for election; and\n\nWhereas, we are convinced '
            'that the people who will be voting on the prospective officers need to '
            'consider prayerfully those nominated to determine for whom they should '
            'vote in the affirmative;\n\nTherefore, be it resolved that the '
            'Presbytery of the Ascension overture the Twelfth General Assembly (1984) '
            'of the Presbyterian Church in America to amend BCO 24-1 to add to the '
            'third sentence the words, \u201cor before the Sunday prior to\u201d, so '
            'that the new third sentence would read:\n\n\u201cThe Session shall '
            'examine those nominated and then report to the congregation on or before '
            'the Sunday prior to election day those eligible for election.\u201d\n'
            '\nAdopted at the Stated Meeting on May 4-5, 1984. Attest: Frank D. '
            'Moser, Stated Clerk.\n\nAnswered in the affirmative as amended, 13-45, '
            'III, 31, p. 106:\n\n\u201cThe Session shall examine those nominated and '
            'then report to the congregation before election day those eligible for '
            'election.\u201d\n\nApproved and sent down to the Presbyteries for advice '
            'and consent. The Presbyteries reported voting of 39 in favor, none '
            'against, and the amendment was adopted.\n\n1994[M21GA, 21-56, III, Item '
            '5, p. 120-121 and M22GA, 22-10, Item 5, p. 58]\n\nOverture 5 from North '
            'Georgia Presbytery\n\n\u201cAmend BCO 24-1 To Be More Explicit on the '
            'Training of Officers\u201d\n\nWhereas, BCO 21-4 requires that all '
            'prospective officers in the PCA shall be examined as to their knowledge '
            'of the system of doctrine, government and discipline contained in the '
            'standards, and\n\nWhereas, there is at present no provision in the BCO '
            'for officer nominees to be prepared for such an examination, '
            'and\n\nWhereas, a lack of knowledge in these areas can be, and has been, '
            'the source of misunderstandings, disagreements and disunity in local '
            'churches among deacons, ruling and teaching elders, and\n\nWhereas, BCO '
            '5-9.1 required all men of a mission church (unless they decline) to '
            'receive instruction in the qualifications and work of the office of '
            'ruling elder, and\n\nWhereas, BCO 21-4 a.1 requires a careful '
            'examination of a candidate for TE ordination as to his acquaintance with '
            'experiential religion, especially his personal character and family '
            'management (based on the qualifications set out in 1 Timothy 3:1-7 and '
            'Titus 1:6-9), a candidate for RE ordination should be likewise '
            'examined.\n\nTherefore be it resolved that BCO 24-1 be amended as '
            'follows:\n\nAmend by adding in line 7 after \u201cTitus '
            '1\u201d:\n\n\u201cNominees for the office of ruling elder and/or deacon '
            'shall receive instruction in the qualifications and work of the '
            'office.\u201d\n\nAmend 24-1 a. by adding after \u201chis Christian '
            'experience\u201d the words:\n\n\u201cespecially his personal character '
            'and family management (based on the qualifications set out in 1 Timothy '
            '3:1-7 and Titus 1:6-9).\n\nAmend 24-1 b. by striking the word '
            '\u201dstandards\u201c and replace with the words:\n\n\u201din the '
            'Constitution of the Presbyterian Church in America (BCO Preface III, The '
            'Constitution Defined).\u201c\n\nBe it further resolved that the General '
            'Assembly request the Christian Education and Publications Committee to '
            'prepare a bibliography of material which could be used by Sessions in '
            'the training of officer nominees that Sessions can use in preparing '
            'nominees for election eligibility.\n\nAdopted by North Georgia '
            'Presbytery on October 20, 1992. Attested by /s/ Robert Valentine, Stated '
            'Clerk.\n\nAdopted at the 21st General Assembly (1993) and sent down to '
            'the Presbyteries for advice and consent. Upon receiving reports from the '
            'Presbyteries of voting 46 in favor and 3 against, the 22nd General '
            'Assembly (1994) adopted the amendment.\n\n2000 -\n Overture 25 from '
            'Central Carolina Presbytery\n\n[M26GA, 26-55, III, Item 14, p. 208-209; '
            'M27GA, 27-12, Item 4, p. 58; M28GA, 28-12, Special Item, p. 54 and '
            '28-72, p. 275].\n\n\u201dAmend BCO 24-1 to Close Nominations One Month '
            'Prior to Congregational Meeting\u201c\n\nWhereas, BCO 24-1 requires '
            'public notice of the time, place and purpose at least one month prior to '
            'the appointed time of electing officers, during which time the '
            'congregation is asked to submit names to the Session, and\n\nWhereas, '
            'BCO 24-1 requires the Session to examine those nominated and then report '
            'to the congregation before election day those eligible for election, '
            'and\n\nWhereas, these two requirements can place undue time constraints '
            'upon the Session to examine candidates and report to the congregation '
            'before the election day;\n\nTherefore, The Session of Prosperity Church '
            'petitions the General Assembly through Central Carolina Presbytery to '
            'amend BCO 24-1 by substituting the following for BCO 24-1 [Note: '
            'material in bold is new material in the BCO]\n\nA. Substitute the '
            'following for the first paragraph:\n\n24-1. Every church shall elect '
            'persons to the office of ruling elder and deacon in the following '
            'manner: At such times as determined by the Session, communicant members '
            'of the congregation may submit names to the Session, keeping in mind '
            'that each prospective officer shall be an active male member who meets '
            'the qualifications set forth in 1 Timothy 3 and Titus 1. After the close '
            'of the nomination period nominees for the office of ruling elder and/or '
            'deacon shall receive instruction in the qualifications and work of the '
            'office. Each nominee shall then be examined in:\n\n[NOTE: continue with '
            'areas of examination.]\n\nB. Substitute for second paragraph (i.e., '
            '\u201dThe Session shall examine. . .\u201c) the following:\n\nIf there '
            'are candidates eligible for election, the Session shall report to the '
            'congregation those eligible, giving at least 30 days prior notice of the '
            'time and place of a congregational meeting for elections.\n'
            '\nGrounds:\n\nBCO 24-1 requires public notice of the time, place and '
            'purpose at least one month prior to the appointed time of electing '
            'officers, during which time the congregation is asked to submit names to '
            'the Session.\n\nBCO 24-1 requires the Session to examine those nominated '
            'and then report to the congregation before election day those eligible '
            'for election.\n\nThese two requirements can place undue time constraints '
            'upon the Session to examine candidates and report to the congregation '
            'before the election day.\n\n2006 [M33GA, 33-51, III, Item 6, p. 200 and '
            'M34GA, 34-8, Item 1, p. 52-54]\n\nOverture 10 from Ascension '
            'Presbytery\n\n\u201dRequire English Bible Content Examination for Ruling '
            'Elders and Deacons\u201c\n\nWhereas, in the words of WCF 1.6, \u201dthe '
            'whole counsel of God concerning all things necessary for his own glory, '
            'man\'s salvation, faith, and life, is either expressly set down in '
            'Scripture, or by good and necessary consequence may be deduced from '
            'Scripture\u201c (2 Timothy 3:15-17); and\n\nWhereas, in the words of WCF '
            '20:2, \u201dGod alone is Lord of the conscience, and hath left it free '
            'from the doctrines and commandments of men, which are in anything '
            'contrary to his Word, or beside it, in matters of faith or worship\u201c '
            '(Acts 4:19; 5:29); and\n\nWhereas, since Christ governs his church '
            'through his elders (1 Tim. 3:5; Heb. 13:7, 17; 1 Peter 5:1-3; WCF 31; '
            'BCO 3-2); and\n\nWhereas, BCO 8-1 instructs us that the one office of '
            'Elder has different Scriptural titles, expressive of the various duties, '
            'and accordingly 1 Timothy 3:2 and Titus 1:5, 9 require bishops/overseers '
            'and elders, respectively, to be able to teach, to hold fast the faithful '
            'word which is in accordance with the teaching, so that they will be able '
            'both to exhort in sound doctrine and to refute those who contradict; '
            'and\n\nWhereas, Christ has also instituted the spiritual office of '
            'Deacon (Acts 6; 1 Tim. 3; BCO 9-3); and\n\nWhereas, in Acts 7 and 8, '
            'deacons Stephen and Philip are shown to have a good working knowledge of '
            'the Scriptures;\n\nTherefore, be it resolved, that BCO 24-1 be amended '
            'by adding a new item \u201db\u201c his knowledge of English Bible '
            'content, with all subsequent items relettered accordingly; '
            'and\n\nresolved, that this new requirement be applied only to those '
            'officers ordained after the adoption of this measure, and that all PCA '
            'courts and her officers presently ordained be exhorted to be diligent in '
            'their mastery of Bible knowledge and application.\n\nAdopted by the 33rd '
            'General Assembly (2005), sent down to the Presbyteries for advice and '
            'consent, and adopted at the 34th General Assembly (2006), following a '
            'recorded Presbytery vote of 64 in favor, 1 against.\n\nCONSTITUTIONAL '
            'INQUIRY:\n\n1986 - Inquiry #9,from the Covenant Presbyterian Church, '
            'Columbia, SC. [M14GA, Appendix I, Item 9, p. 332].\n\nQuestions -\n\n1. '
            'Are rotating Sessions permissible according to the Book of Church '
            'Order?\n\n2. May the Session limit the number of officers standing for '
            'election?\n\n3. May the names of those eligible for election be printed '
            'before the day of election?\n\n4. What grounds are allowed the Session '
            'for disallowing the nomination of any men nominated by the '
            'congregation?\n\n5. Are there any limitations with regard to when an '
            'election may be held, i.e., once a year or more or less '
            'often?\n\nEnclosed please find a copy of the present procedures which '
            'are a part of our policy manual. We request that you review these '
            'procedures....\u201d\n\nAnswers:\n\n1. See M12GA, p. 127, Item 20.\n\n2. '
            'The Session is to declare all of those who are eligible but may not '
            'otherwise determine the number of officers to be elected. The number of '
            'officers to be elected shall be determined by the congregation. (BCO '
            '24-1).\n\n3. Yes. (M7GA, p. 101, Item 4).\n\n4. The grounds allowed the '
            'Session for disallowing the nomination of any man nominated by the '
            'congregation shall be their failure to conform to Biblical and '
            'constitutional standards. (BCO 24-1, M8GA p. 119, Item 19; M7GA, p. 80, '
            'Item 3).\n\n5. There are no constitutional limitations other than the 30 '
            'day notice prior to an election.\n\nThe Committee declines to review the '
            'Bylaws submitted because it is not authorized to do so.\n\nRecommended: '
            'That the answer of the Permanent Committee concerning Constitutional '
            'Inquiry #9 from the Covenant Presbyterian Church, be ratified.\n'
            '\nRatified. [M14GA, 14-52, Item 17, p. 126]. M12GA, p. 127, Item '
            '20.\n\n20. That Overture 33, p. 71, from Central Carolina Presbytery to '
            'the Eleventh General Assembly be answered in the negative noting that '
            'the BCO was deliberately written neither to promote nor to prohibit the '
            'rotational system of church officers. The General Assembly has '
            'repeatedly affirmed this position (M1GA, 1-46, p. 35; 1-81, p. 64; M2GA, '
            '2-98, p. 72; M7GA, 7-41, p. 105; M8GA, 8-88, p. 118). Adopted.M7GA, p. '
            '101, Item 4.\n\nThat answer 2 to Hubert C. Stewart concerning the '
            'constitutionality of announcing in the church bulletin prior to election '
            'day the names of thoswe who have been examined and approved by the '
            'Session for office, be amended as follows; and then answered in the '
            'affirmative:\n\nThe Committee answered that although the procedure in '
            'question is not specifically prohibited by BCO 25-1 [now 24-1], it also '
            'is not provided for in that section.\n\nTherefore, the Session is given '
            'latitude in interpreting the procedure outlined in the Book of Church '
            'Order 25-1 regarding announcement of officer nominees prior to the day '
            'of election.\n\nThe Session is to examine all those nominated and report '
            'to the congregation those eligible for election at the time of the '
            'congregational meeting. This is to say the Session is providing the '
            'slate for elections.\n\nAdopted.\n\nGrounds:\n\n1) Book of Church Order '
            '25-1 does not state that an announcement is not to be made prior to the '
            'election of officers; only that one is to be made on the day of the '
            'election. 1988 - Constitutional Inquiry #2. From Covenant Presbyterian '
            'Church, Palm Bay, Florida.\n\nQuestion - Re: Election of Officers under '
            'BCO 24-1.\n\n\u201cIf a Session finds that four nominees for office '
            'adequately meet the Biblical requirements, may they, for the sake of '
            'limiting board size, only put two of those men on the ballot?\n\nAnswer '
            '- No.\n\n1. BCO 24-1 requires that the Session shall report all eligible '
            'men to the congregation, after examination.\n\n2. BCO 24-1 says that the '
            'congregation determines the number of elders to be elected.\n\n3. BCO '
            '24-1 allows the Session to recommend the number to be '
            'elected.\n\nRecommended: That the advice of the Committee on Judicial '
            'Business regarding Constitutional Inquiry #2 be ratified.\n\nRatified. '
            '[M16GA, 16-77, III, Item 26, p. 176].',
        webUrl: 'https://pcahistory.org/bco/fog/24/01.html',
      ),
    ],
    'bco_24-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 126\u2013127',
        text:
            '103.--II. It is important that in all these elections a Minister should '
            'preside ; but if the Session find it impracticable, without hurtful '
            'delay, to procure the attendance of a Minister, the election may '
            'nevertheless be held.\n\nThe meeting is under the direction of the '
            'Session ; and it belongs to the Session, and not to the congregation, to '
            'provide a Moderator. If that Moderator is not a Minister, his rulings '
            'are subject to the review of the Session ; if a Minister, to the review '
            'of the Presbytery ; but in no case to the review of the congregation ; '
            'for that would be for the congregation, as such, to take part in '
            'government beyond electing, contrary to paragraph 15. It is, therefore, '
            'desirable that a Minister preside, so that his rulings may, if '
            'questioned, be reviewed by a body probably more competent, and less '
            'related in an embarrassing way to the questions involved. The relation '
            'of the Session to the Moderator of a congregational meeting being the '
            'same as its relation to the Moderator of the Session, whoever is '
            'Moderator of the Session is, ex officio, Moderator of the congregation, '
            'with the limitations specified in paragraphs 64 and 65. (Cf. par. '
            '104.)\n\nCONSTITUTIONAL INQUIRY :\n\n1987 - Constitutional Inquiry #5. '
            'From Central Carolina Presbytery regarding the status of Stated Supply '
            'as Moderator.\n\nQUESTION:\n\n1. Does the Stated Supply automatically '
            'become the Moderator of the Session, or must the Session request such '
            '(BCO 12-3)?\n\n2. Although the pastor normally serves as moderator of a '
            'congregational meeting, does this duty automatically fall to a Teaching '
            'Elder Stated Supply, or must the meeting be opened according to BCO '
            '24-2, where the Session appoints one of its members of (sic) call the '
            'meeting to order?\n\nANSWER:\n\n1. The Session may invite the Stated '
            'Supply to serve, or he could be appointed by Presbytery to be moderator '
            'with their consent (BCO 12-3).\n\n2. The Session should appoint one of '
            'their members to open the meeting in accord with BCO 24-2.\n'
            '\nRecommended: That the advice of the Permanent Committee regarding '
            'Constitutional Inquiry #5 be ratified.\n\nAdopted. [M15GA, 15-83, III, '
            'Item 11, p. 171].',
        webUrl: 'https://pcahistory.org/bco/fog/24/02.html',
      ),
    ],
    'bco_24-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'CONSTITUTIONAL INQUIRY :\n\n1982 - Reference #3\n\nQuestion:\n\nThe '
            'Session of Vineville Presbyterian Church at its Stated November 1981 '
            'meeting requested that the General Assembly\'s Judicial Committee '
            'provide an interpretation of 24-3 and 34-4 of the Book of Church Order '
            'with respect to what constitutes a voter (one who casts a vote for one '
            'or more candidates or one who case a blank ballot).\n\nAnswer:\n\nA '
            'person eligible to vote is defined in BCO 24-3 as a communing member in '
            'good and regular standing who is present at the congregational meeting '
            'called to elect officers. A majority vote of the voters present is '
            'required to elect.\n\nGrounds:\n\nThis recommendation is a ratification '
            'of the answer already given by the Permanent Sub-Committee on Judicial '
            'Business.\n\nAdopted. [M10GA, 10-75, III, Item 10, p. 101]\n\n1984 - '
            'Constitutional Inquiry #9. From Texas Presbytery.\n\nQuestion:\n\nThat '
            'the Presbytery ask the General Assembly\'s Permanent Committee on '
            'Judicial Business if a congregation may be permitted to set a minimum '
            'age for voting in view of BCO 6-2, 6-4, 24-3, 25-1 and '
            '25-3.\n\nAnswer:\n\nThe BCO does not provide for the setting of minimum '
            'age for voting in congregational meetings even when constituted as a '
            'meeting of the corporation, except when the state provides for a minimum '
            'age for those voting in the corporation.\n\n[Clerk\'s Note: BCO 25-11 '
            'indicates that congregations must act in accord with applicable civil '
            'laws.]\n\nAdopted. [M12GA, 12-53, II, Item 60, p. 140].\n\nADOPTED '
            'AMENDMENTS :\n\n2004 - Overture 2 from Eastern Canada '
            'Presbytery\n\n\u201cAmend BCO 24-3 Regarding Election of Ruling Elders '
            'and Deacons\u201d\n [M32GA, 32-48, III, 2, p. 154]\n\nWhereas, in the '
            'provisions for electing ruling elders and deacons, BCO 24-3 refers to '
            'the provisions for electing teaching elders, BCO 20-4, and\n\nWhereas, '
            'the provisions of BCO 20-4 are also expressed in BCO 24-4, in a form '
            'specifically for ruling elders and deacons, and\n\nWhereas, this '
            'redundancy suggests that a numerical error was made in inserting this '
            'reference, and\n\nWhereas, BCO 20-5 gives directions about dealing with '
            'highly divided votes which are not found in BCO 24, and which might be '
            'to the point in elections of ruling elders and deacons as well as '
            'teaching elders, and\n\nWhereas, this overture was referred back to the '
            'Presbytery of Eastern Canada by the 31st General Assembly, to refine it '
            'to avoid a conflict reported by the Assembly\'s Constitutional Business '
            'Committee,\n\nTherefore the Presbytery of Eastern Canada overtures the '
            '32nd General Assembly to amend BCO 24-3, by deleting \u201c(See also BCO '
            '20-5)\u201d; and by adding BCO 24-5 (renumbering the following sections; '
            '\u201c24-5. On the election of a ruling elder or deacon, if it appears '
            'that a large majority of the voters are averse to a candidate, and '
            'cannot be induced to concur in the choice, the moderator shall endeavor '
            'to dissuade the majority from prosecuting it further; but if the '
            'electors are nearly or quite unanimous, or if the majority insist upon '
            'their right to choose their officers, the election shall stand.\u201d; '
            'OR that the Assembly do otherwise as it sees fit to correct this '
            'reference (as it stands redundant) in BCO 24-3.\n\n32-40 Report of the '
            'Committee on Constitutional Business, II. Advice on Overtures, B. '
            'Overture 2, p. 139\n\nIn the opinion of th CCB, Overture 2 is not in '
            'conflict with other parts of the Constitution, with the notation that in '
            'the second line of the \u201cTherefore\u201d paragraph the parenthetical '
            'to be deleted is \u201c(See also BCO 24-4)\u201d rather than \u201c(See '
            'also BCO 24-5)\u201d as the Overture indicates.\n\nAdopted by '
            'CCB\n\n32-48 Committee of Commissioners on Bills and Overtures, III. '
            'Recommendations, Item 2, pp. 153-154.\n\nThat Overture 2 from Eastern '
            'Canada Presbytery (\u201cAmend BCO 24-3 Regarding Election of Ruling '
            'Elders and Deacons\u201d) be answered in the affirmative as corrected by '
            'the notation from the Committee on Constitutional Business that in the '
            'second line of th \u201cTherefore\u201d paragraph the parenthetical to '
            'be deleted is \u201c(See also BCO 20-4)\u201d rather than \u201c(See '
            'also BCO 20-5),\u201d and amended by striking in the last line of the '
            '\u201cTherefore\u201d paragraph, \u201cOR that the Assembly do otherwise '
            'as it sees fit to correct this reference (as it stands redundant) in BCO '
            '24-3.\u201d\n\nAdopted.\n\nSent down to the Presbyteries for advice and '
            'consent by the 32nd General Assembly.\n\n2005 [M33GA, 33-8, Item 1, p. '
            '49-51].\n\nAmend BCO 24-3 by deleting the parenthetical phrase as '
            'proposed in Overture 2\n\n24-3 All communing members in good and regular '
            'standing, but no others, are entitled to vote in the election of church '
            'officers in the churches to which they respectively belong. A majority '
            'vote of those present is required for election. (See also BCO '
            '20-4.)\n\nApproved by 55 of 63 presbyteries and adopted by vote of '
            'General Assembly.\n\nDEFEATED AMENDMENTS :\n\n1997 [M25GA, 25-17, Item '
            '2, p. 114; cf. M24GA (1996), 24-58, III, Item 20, pp. 312ff.; M23GA '
            '(1995), 23-49, III, Items 19 & 20, pp. 244-245].\n\nItem 2. That BCO '
            '6-5, 20-3, 24-3, 25-1, 25-2 and 25-3 be amended as follows:\n\na. Add a '
            'new BCO 6-5 to read:\n\n\u201c6-5. A congregation may, at its '
            'discretion, set the minimum voting age for its communing members, '
            'provided it is not greater than eighteen (18) years of age. The '
            'congregation may also, at its discretion, set a different voting age for '
            'different matters provided it is not greater than eighteen (18) years of '
            'age.\u201d\n\nb. Amend BCO 20-3 by adding to sentence 3, so as to read '
            'as follows:\n\n\u201cAll communing members in good and regular standing, '
            'who have been entitled to vote by the congregation, but no others, are '
            'entitled to vote in the churches to which they are respectively '
            'attached.\u201d\n\nSimilarly, amend BCO 24-3 by adding to the first '
            'sentence so as to read as follows:\n\n\u201cAll communing members in '
            'good and regular standing, who have been entitled to vote by the '
            'congregation, but not others, are entitled to vote in the election of '
            'church officers in the churches to which they respectively '
            'belong.\u201d\n\nc. Add to BCO 25-1 the following sentence:\n'
            '\n\u201cHowever, the congregation may, at its discretion, set the '
            'minimum age for its communing mmbers in accord with BCO 6-5.\u201d\n\nd. '
            'Add \u201cvoting\u201d before \u201ccommuning members\u201d in BCO 25-2, '
            'a, b, c, d, and e.\n\ne.\n Amend BCO 25-3 twice so that it '
            'reads:\n\n\u201c. . . resident voting communing members . . '
            '.\u201d\n\nOn Item 2, a parliamentary inquiry was raised concerning the '
            'counting of abstentions in the determination of an issue when a majority '
            'vote is required. The Moderator ruled that, according to Roberts Rules '
            'of Order Newly Revised, 1990 Edition, Sect. 43, p. 385, when a majority '
            'vote is required, it means more than half of the votes cast by persons '
            'legally entitled to vote, excluding blanks and abstentions. Based on '
            'this ruling, the votes of two Presbyteries (Fellowship and South Texas) '
            'were deemed to be \u201cFor\u201d, rather than \u201cAgainst\u201d, thus '
            'providing the necessary number of Presbyteries in favor of this BCO '
            'amendment. [39 Presbyteries voted in favor, 11 against]\n\nNevertheless, '
            'on voting for these amendments, they were Defeated.',
        webUrl: 'https://pcahistory.org/bco/fog/24/03.html',
      ),
    ],
    'bco_24-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 127',
        text:
            '104.--III. The voters being convened, the Moderator shall put the '
            'question to them whether they are ready to proceed to the election. If '
            'they declare themselves ready, the Moderator shall call for nominations, '
            'after which the election shall immediately proceed, unless the electors '
            'prefer to postpone it to a subsequent day ; or the election may proceed '
            'by ballot without nominations. But in every case a majority of all the '
            'voters present shall be required to elect.\n\nWe have said that the '
            'meeting is under the direction of the Session ; and who but the Session '
            'can determine who of those present are voters? The Moderator of the '
            'congregation is, at the same time, the Moderator of the Session in '
            'session at the same time, and he must ascertain who are voters, through '
            'the Session.\n\nThe first question to be ascertained is whether the '
            'voters are convened. Supposing a church has one hundred voters, would '
            'two of them be the voters? Surely not ; and yet it is impracticable to '
            'have all the voters convened. What, then, is a quorum of a church? In '
            'the absence of any regulation, it must be decided by general principles '
            'that it requires a majority to make a quorum. But always, when the '
            'question of a quorum is not raised, either at the time or within a '
            'reasonable time afterwards (cf. par. 258), less than a majority may '
            'act.\n\nThe second question must be decided by the voters themselves : '
            'whether they are ready to proceed.\n\nThe third question must also be '
            'decided by them : whether they will elect with or without '
            'nominations.\n\nIf it is decided to have nominations, the fourth thing '
            'is to hear nominations ; the fifth, to determine by the electors whether '
            'to vote at once or to postpone the voting. If the decision is to vote at '
            'once, the sixth thing is to determine, by the voters, whether to vote by '
            'ballot or in some other way ; but this question must itself be '
            'determined by ballot, if any insist upon a ballot upon this question, '
            'for otherwise the very reason of a ballot at all, secrecy in voting, '
            'would be taken away.\n\nIf no one receives a majority of the votes for a '
            'given office, no one is elected. Whether a second vote may be taken, '
            'with or without dropping one or more of the nominees or persons already '
            'voted for, is not prescribed ; but it would seem, from the principle '
            'that a church does not so much need officers, as qualified and '
            'acceptable officers, that there should be no second vote ; but of this '
            'the congregation must judge ; and sometimes the failure of any one to '
            'receive a majority may be due to what seems to the congregation a '
            'superabundance of suitable material.\n\nThe principle, that a majority '
            'shall rule, is a practical necessity rather than an inherent right ; and '
            'for this reason there should be a great desire to have the same mind. '
            'The failure to be unanimous is a failure that should be always lamented. '
            'And it would certainly be in order for a majority to recede from its own '
            'choice, just as it is in order for a minority to give up its opposition '
            '; but either must judge for itself what is the will of Christ in a given '
            'case.',
        webUrl: 'https://pcahistory.org/bco/fog/24/04.html',
      ),
    ],
    'bco_24-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discussion; however, compare at VI-3-4]',
        webUrl: 'https://pcahistory.org/bco/fog/24/05.html',
      ),
    ],
    'bco_24-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 133\u2013139',
        text:
            'The day having arrived, and the Session being convened in the presence '
            'of the church, a sermon shall be preached, if convenient; after which '
            'the presiding Minister shall state in a concise manner the warrant and '
            'nature of the office of Ruling Elder or Deacon, together with the '
            'character proper to be sustained and the duties to be fulfilled.\n\nThe '
            'presiding Minister is, of course, the Moderator of the Session, which is '
            'in session from the beginning of this service of ordination, the '
            'ordination being by the Session and not by the Minister.\n\nHaving done '
            'this, he shall propose to the candidate, in the presence of the church, '
            'the following questions, viz.:\n\n1. Do you believe the Scriptures of '
            'the Old and New Testaments to be the word of God, the only infallible '
            'rule of faith and practice?\n\nAs this is not intended to inquire into a '
            'man\'s opinion as to the genuineness of particular readings, so not as '
            'to the authenticity of particular books, but into his opinion concerning '
            'these Scriptures as a whole. It is purposely asked whether they are the '
            'word of God, instead of whether they contain the word of God ; for, '
            'though there are senses in which it might be more exact to say that they '
            'contain the word of God, yet, unless one believes they they are, being '
            'the word or teaching of some one person, God\'s Word, he is not able to '
            'answer this question affirmatively in the sense intended. [Note: Here '
            'Ramsay appears to equivocate from a firm stand on the Scriptures as the '
            'Word of God, infallible and inerrant. The PCA was careful at its '
            'formation to underscore the true nature of the Scriptures.]\n'
            '\nOVERTURES:\n\nCONSTITUTIONAL INQUIRY:\n\n1986, 14-52, Item 16, p. 126. '
            'That the answer of the Permanent Committee concerning Constitutional '
            'Inquiry #8 from the Trinity Presbyterian Church, be ratified.\n\n1986, '
            'Appendix I, 8, p. 331\n\n3. Can a congregation by its vote in a '
            'congregational meeting rotate all of its elders off of the session and '
            'all of its deacons off of the diaconate? (without rotating anyone '
            'on)\n\n4. With regard to BCO 24-6, what is the procedure to follow if an '
            'entire session \'becomes unacceptable in his (its) official capacity to '
            'a majority of the church?\' Obviously the entire session will not act to '
            'dissolve itself; what can the congregation do if the session will not '
            'act?\n\nANSWER:\n\n3. No. Officers may be removed from the session or '
            'diaconal board apart from a rotational plan in accordance with BCO 24-6 '
            'or other disciplinary provisions of the BCO. Where a rotational system '
            'for officers has been adopted, (see answer to #2 above) rotation of '
            'officers off the session or diaconal board should be carried out in '
            'accordance with that plan.\n\n4. Where an insurmountable conflict occurs '
            'between a session and the congregation, the presbytery may be invited to '
            'arbitrate the conflict (BCO13-9, 40-5, 41, 42, 43).\n\n1986, 14-52, Item '
            '44, p. 128. That the answer of the Permanent Committee concerning '
            'Constitutional Inquiry #15 from Covenant Presbyterian Church, be '
            'ratified.\n\n1986, Appendix I, Item 15, p. 336. Constitutional Inquiry '
            '#15. From Covenant Presbyterian Church.\n\nMay a congregation, by vote '
            'at a congregational meeting, dissolve the session?\n\nANSWER:\n\nThe '
            'congregation may not dissolve the Session. The congregation may in '
            'accordance with BCO 24-6 by a majority vote in a regularly called '
            'congregational meeting request the Session to dissolve the relationship '
            'of officers individually, but the ultimate decision rests with the '
            'Session. Presbytery may assume original jurisdiction under provisions of '
            'BCO 13-9.\n\n1988, 16-77, III, Item 30, p. 178. That the advice of the '
            'Committee on Judicial Business regarding Constitutional Inquiry #6 be '
            'ratified.\n\nConstitutional Inquiry #6, from Town North Presbyterian '
            'Church, Richardson, TX.\n\nQuestion, regarding Rotation system for '
            'Elders and Deacons:\n\nI. A. Does BCO 24-6 allow a Session as it seeks '
            '\'to determine the best measure for promoting the spiritual interests of '
            'the church and congregation (12-5), to determine that a previously '
            'ordained officer, though chargeable with neither heresy nor immorality, '
            'has become unacceptable in his office capacity and thus preclude him '
            'being presented to the congregation as a nominee, or\n\nB. Does the BCO '
            'anywhere require that such a nominee be allowed to stand for re-election '
            'to his former office if he so desires (24-7)?\n\nII. If a ruling Elder '
            'or Deacon has not actually served, either by reason of his own decision '
            'or lack of nomination, for three years or more (BCO 13-2), is a Session '
            'required to proceed with the provisions of BCO 38-2 with the man\'s '
            'consent or BCO 34-10 without the man\'s consent? If it is not required, '
            'may it proceed in this manner?\n\nANSWER:\n\nI. A. Session must first '
            'determine if a man is qualified for office. BCO 24-6 does not apply to '
            'inactive elders or deacons. All qualified nominees must be presented for '
            'election (24-1).\n\nB. Yes, if he is qualified. To be eligible a man '
            'must be qualified in accordance with BCO 24-1 and the Bylaws of the '
            'local church must be met.\n\nII. No. An inactive elder (one not '
            'presently elected to serve in office on a Session or Diaconate) is not '
            'subject to either 38-2 or 34-10.\n\n1989, 17-82, III, Item 20, p. 157. '
            'That the advice of the Judicial Business Committee regarding '
            'Constitutional Inquiry #4 be ratified, as amended.\n\nConstitutional '
            'Inquiry #4, from the Town North Presbyterian Church, Richardson, TX, '
            'requesting advice concerning our previous answers to their requests for '
            'advice (which have been ratified by the GA) concerning the election of '
            'officers.\n\nTheir revised questions were:\n\n1. Is a man to be '
            're-examined for qualifications for office each time he is re-nominated '
            'in a rotational system?\n\n2. Which view is correct, in the case where '
            'an officer who has rotated off active service, but has not been '
            'disciplined or removed from office,\n\na) must he ipso facto be '
            'considered as qualified and, thereby, be presented to the congregation '
            'as a qualified nominee if nominated; or\n\nb) may he, on examination by '
            'the Session, be considered to be unqualified because the Session '
            'believes there are circumstances that currently disqualify a nominee but '
            'which do not constitute grounds for discipline and/or deposition?\n\n3. '
            'In the case where an officer who has rotated off active service, can he '
            'be divested of his office other than under BCO 38-2 or BCO '
            '34-10.\n\nANSWER:\n\nThe Committee advises the Town North Presbyterian '
            'Church that the answers to their questions are:\n\n1. & 2. there is no '
            'provision in the BCO to answer these questions.\n\n3. An elder or deacon '
            'not presently serving on a Session or Diaconate cannot be divested '
            'except in accordance with 24-6, 38-2, or 34-10.\n\nNotation: The answer '
            'to question 3 above is an amplification of paragraph II of the 16th '
            'General Assembly\'s answer to Constitutional Inquiry #6 (M16GA, p. 178, '
            'Item 30). BCO 38-2 does not apply to an inactive officer unless the '
            'officer initiates the procedure of 38-2.\n\nAdopted as '
            'amended.\n\nJUDICIAL CASES:\n\nJudicial Case #93, Complaint of Roberts '
            'vs. New River Presbytery [Case 92-2], 1993, 21-71, III, Item 3, p. '
            '199.\n\nDissenting Opinion #1\n\n\u201c...The Respondent\'s brief is '
            'helpful in pointing out that BCO 24-6 gives the Session discretion in '
            'dissolving a relationship between a Ruling Elder and a local '
            'congregation when the dissolution is requested by the congregation or '
            'when the Ruling Elder tenders his resignation. The Session may, but is '
            'not required to dissolve the relation (Brief of the Respondent, Judicial '
            'Case 92-2, p. 3). It is clear that this constitutional provision for '
            'Biblical oversight by the Session is not contrary to BCO16-2\'s '
            'provision for the congregation to elect its own officers. Even though '
            '24-6 relates only to the Ruling Elder, it sheds light on the case of '
            'dissolving the pastoral relation. If the provisions of 24-6 are not '
            'contrary to 16-2, then Presbytery\'s similar power in 13-4 is not '
            'either....\u201d\n\nand Judicial Case #94, Complaint of Parks, et al. '
            'vs. Central Carolina Presbytery [Case 92-5], 1993, 21-71, III, Item 4, '
            'p. 210\n\nREASONING:\n\n1. We do not believe BCO 24-6 is a barrier to '
            'multiple resignations. The Session discussed and unanimously adopted a '
            'plan whereby some elders would voluntarily resign from their active '
            'positions on that Session. In adopting a plan that calls for multiple '
            'resignations, a Session that is ruling together, consults, counsels and '
            'seeks recommendations from one another regarding the validity and wisdom '
            'of such resignations, acts in conformity with BCO 24-6.',
        webUrl: 'https://pcahistory.org/bco/fog/24/06.html',
      ),
    ],
    'bco_24-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 139\u2013140',
        text:
            '113.--III. The offices of Ruling Elder and Deacon are perpetual ; nor '
            'can they be laid aside at pleasure ; nor can any person be degraded from '
            'either office but by deposition after regular trial. Yet a Ruling Elder '
            'or Deacon may, though chargeable with neither heresy nor immorality, '
            'become unacceptable in his official character to a majority of the '
            'church which he serves. In such a case, it is competent for the Session, '
            'upon application, either from the officer or from the church, to '
            'dissolve the relation. But no such application from either party shall '
            'be granted without affording to the other party full opportunity for '
            'stating objections.\n\nSee Rules of Discipline, Chap. VIII, Sec. '
            'X.\n\nThe office is perpetual in the same sense as the status of '
            'communicating member is perpetual ; as one cannot come into either '
            'dignity without the coaction of the Church, so one cannot pass out of '
            'either obligation without the coaction of the Church. And the Church '
            'cannot deprive any one of either status without regular trial. But just '
            'as the pastoral relation between a Minister and a particular church may '
            'be dissolved without degrading him from the office of Minister, so the '
            'official relation between a Ruling Elder or Deacon and a particular '
            'church may be dissolved without degrading him from his office. When '
            'called again to serve in his office in the same or another particular '
            'church, he needs not to be ordained again, but only to be installed. And '
            'as it is the Presbytery that dissolves the relation in the case of a '
            'Minister, so it is the Session that dissolves the relation in the case '
            'of a Ruling Elder or Deacon. Either party may request the dissolution, '
            'but the court may not act without first hearing from the other party. '
            'How the church can initiate proceedings in such a case is not pointed '
            'out, and there seems to be no way provided, unless one of these two be '
            'resorted to : a majority of those entitled to vote may request the '
            'Session to convene the Church for the purpose of taking action on the '
            'question of the official relation of such or such, and then the Session '
            'would be bound to convene the Church as requested (102) ; or the Session '
            'itself, without request from either party, may present the question of '
            'the continuance of his official relations either to an officer or to the '
            'church, as the Presbytery might present such a question to a Pastor or '
            'to his church. Our paragraph suggests unacceptability in his official '
            'capacity to a majority of the church as a reason for the dissolution of '
            'one\'s official relation ; but, of course, unacceptability to a '
            'minority, or other reason, might be sufficient ground, as in the case of '
            'a Pastor, of which the Session must judge. But by analogy (cf. par. '
            '128), the Session has no option but to dissolve the relation when both '
            'parties request it.',
        webUrl: 'https://pcahistory.org/bco/fog/24/07.html',
      ),
    ],
    'bco_24-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 141',
        text:
            '115.--V. When a Ruling Elder or Deacon who has been released from his '
            'official relation is again elected to his office in the same or another '
            'church, he shall be installed after the above form, with the omission of '
            'ordination.\n\nAll the questions would be asked, and everything done as '
            'prescribed in paragraph 112, omitting the words \u201cshall proceed to '
            'set apart. . . After which he.\u201d If a Ruling Elder thus released is '
            'afterwards elected a Deacon in the same or another church, he would be '
            'installed simply, since a Ruling Elder is ex-officio a Deacon. (See last '
            'paragraph of remarks on 112.)',
        webUrl: 'https://pcahistory.org/bco/fog/24/08.html',
      ),
    ],
    'bco_24-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 140\u2013141',
        text:
            '114.--IV. When a Ruling Elder or Deacon removes permanently beyond the '
            'bounds of the church which he serves, his official relation shall be '
            'thereby dissolved, and the Session shall record the fact.\n\nThe '
            'relation is dissolved by the removal, whether the officer obtains a '
            'certificate of dismission or not ; and the Session should make record of '
            'the fact of permanent removal and the consequent dissolution of official '
            'relation, without waiting for an application for dismissal.\n\nThere is '
            'no provision for releasing a Ruling Elder or Deacon from his official '
            'relation on the ground of old age or physical inability (unless so far '
            'as paragraph 113 may be construed thus); nor may his official relation '
            'be dissolved on such ground except under paragraph 113.\n\n[Where Ramsay '
            'observes a failure of the PCUS BCO to address more fully the instance of '
            'old age or infirmity, the PCA has addressed the matter with the addition '
            'of BCO 24-10.]',
        webUrl: 'https://pcahistory.org/bco/fog/24/09.html',
      ),
    ],
    'bco_25-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discusssion]',
        webUrl: 'https://pcahistory.org/bco/fog/25/04.html',
      ),
    ],
    'bco_25-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discusssion]',
        webUrl: 'https://pcahistory.org/bco/fog/25/05.html',
      ),
    ],
    'bco_25-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discusssion]',
        webUrl: 'https://pcahistory.org/bco/fog/25/06.html',
      ),
    ],
    'bco_25-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'CONSTITUTIONAL INQUIRY:\n\n2004 - Constitutional Inquiry #3 from TE Paul '
            'Hurst [M32GA, 32-54, II, Item 1, pp. 203-205]\n\nQuestion - Inasmuch as '
            'the officers or trustees of a corporation shall be members of the '
            'congregation per BCO 25-7; and,\n\nSince teaching elders are members of '
            'the Presbytery and not the congregation per BCO 13-2;\n\nIs it '
            'unconstitutional for teaching elders to serve as officers or trustees of '
            'the corporation?\n\nIf so, what is the remedy?\n\na. Enforce the present '
            'BCO prohibiting teaching elders from serving as officers or trustees of '
            'the corporation, or\n\nb. Amend the BCO to permit teaching elders to '
            'serve as officers or trustees of the corporation, or\n\nc. Propose '
            'another remedy.\n\nResponse -\n\nQuestion 1: Is it unconstitutional for '
            'teaching elders to serve as officers or trustees of the '
            'corporation?\n\nAnswer 1: Yes, assuming the corporation in question is '
            'that of a particular church as defined by BCO chapter 4.\n\nRationale: '
            'BCO 25, sections 9, 10, and 11 are designed to protect the property and '
            'relationships of the local congregation from the higher courts. BCO 25-7 '
            'must be understood in this context. A provision that allows one who is a '
            'member of Presbytery, rather than the local congregation, to be an '
            'officer or trustee of the entity that \u201c... shall have sole title to '
            '[the local church\'s] property, real personal, or mixed, tangible or '
            'intangible, and shall be sole owner of any equity in any real estate, or '
            'any fund or property of any kind held by or belonging to any particular '
            'church...\u201d would be inconsistent with that design.\n\nThe following '
            'provisions of the BCO, taken together, underscore this '
            'interpretation.\n\n1. BCO 25-7, sentence 1 states \u201cIf a particular '
            'church is incorporated, the provisions of its charter and bylaws must '
            'always be in accord with the Constitution of the Presbyterian Church in '
            'America.\u201d\n\n2. BCO 13 sections 1 and 2 make clear that teaching '
            'elders are members of Presbyter, not the particular church.\n\n3. BCO '
            '25-7, sentence 2 states \u201cAll the communing members on the roll of '
            'that church shall be members of the corporation.\u201d In the absence of '
            'any other provision in the BCO relating to corporate membership, this '
            'indicates a limit on membership in the corporation.\n\n4. Nothing in the '
            'BCO indicates any pool other than communing members from which members, '
            'officers or trustees of the corporation may be drawn.\n\n5. BCO 25-7, '
            'sentence 3 states, \u201cThe officers of the corporation, whether they '
            'be given the title trustee or some other title, shall be elected from '
            'among the members of the corporation in a regularly constituted '
            'congregational meeting.\u201d\n\nTherefore, it is unconstitutional for '
            'teaching elders to serve as officers or trustees of the corporation of a '
            'particular church.\n\nThe CCB notes that BCO 25-11 provides for '
            'appropriate accommodation of the BCO and civil law in order to comply '
            'with mandates of civil law that do not pertain to \u201cmatters '
            'ecclesiastical.\u201d This Inquiry does not raise an issue that requires '
            'such an accommodation.\n\nQuestion 2: What is the remedy?\n\nAnswer 2: '
            'The CCB\'s charge is to provide Constitutional advice and '
            'interpretation. It is, therefore, beyond the Committee\'s purview to '
            'propose a remedy. This is particularly true in the case of an abstract '
            'remedy such as a potential BCO change because there may be civil and '
            'ecclesiastical consequences the Committee cannot anticipate.\n\nAdopted '
            'by CCB.\n\nOVERTURES:\n\n18th PCA GA (1990), OVERTURE 7, from Southwest '
            'Presbytery \u2014 answered in the negative.\n\n\u201cAmend BCO 25-7 To '
            'Clarify \u201dCorporation\u201c\'\n\nWhereas many states require voting '
            'members of corporations to be of voting age\n\nand\n\nWhereasBCO 25-7 '
            'sentence 2 does not indicate voters of legal voting age '
            'and\n\nWhereasBCO 25-7 sentence 3 calls the corporate meeting a '
            '\u201dCongregational meeting\u201c (which is an entity not legally '
            'recognized for corporation decisions)\n\nTherefore, the Presbytery of '
            'the Southwest overtures the 18th General Assembly that the following be '
            'added to the second sentence after \u201dof that church\u201c\u201dof '
            'legal voting age under state law\u201c and before the phrase, '
            '\u201dshall be members\'; and that the third sentence be changed by '
            'substituting the word \u201cCORPORATION\u201d for \u201ccongregation'
            '\u201d.\n\nThus the second sentence would read: \u201cAll the communing '
            'members on the roll of that church \u201dof legal voting age under state '
            'law\u201c shall be members of the corporation.\u201d\n\nThus the third '
            'sentence would read: \u201cThe officers of the corporation, whether they '
            'be given the title \u201dtrustees\u201c or some other title, shall be '
            'elected from among the members of the corporation in a regularly '
            'constituted corporation meeting.\u201d\n\nAdopted at its Fall Stated '
            'Meeting of Southwest Presbytery on September 22, 1989\n\nAttested by: '
            '/s/ Charles E. Turner, Stated Clerk\n\nRecommendation: That Overture 7 '
            'from Southwest Presbytery be answered in the negative by this assembly '
            'and be sent to Presbyteries. Adopted.',
        webUrl: 'https://pcahistory.org/bco/fog/25/07.html',
      ),
    ],
    'bco_25-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discusssion]',
        webUrl: 'https://pcahistory.org/bco/fog/25/08.html',
      ),
    ],
    'bco_25-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '[no comparable text for discusssion]\n\nG. Aiken Taylor, Paragraph on '
            'Property -- For Proposed Book of Church Order\n\nAmong the Papers of Dr. '
            'G. Aiken Taylor is a copy of the Proposed Book of Church Order, with a '
            'slip of paper attached bearing the following text for BCO 25-9 and '
            'signed by Dr. Taylor. Portions of Dr. Taylor\'s suggested text were, '
            'upon discussion, moved to a separate paragraph and became BCO '
            '25-10.\n\nParagraph on Property -- For Proposed Book of Church '
            'Order\n\nAll participating churches shall be entitled to hold, own and '
            'enjoy their own local property, without any right of revision whatsoever '
            'to (name of Church), its presbyteries, synods or any other court '
            'hereafter created, its trustees, or other officers.\n\nThe provisions of '
            'this chapter are to be construed as a solemn covenant, whereby the '
            'Church as a whole undertakes never to attempt to secure possession of '
            'the property of any congregation against its will, whether or not such '
            'congregation remains within or chooses to withdraw from this '
            'body.\n\nAll officers and courts of the Church are prohibited from '
            'making any such attempt and the provisions of these two sections (above) '
            'are unamendable and irrevocable.\n\n[signed : G.A. Taylor]',
        webUrl: 'https://pcahistory.org/bco/fog/25/09.html',
      ),
    ],
    'bco_25-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discusssion]',
        webUrl: 'https://pcahistory.org/bco/fog/25/10.html',
      ),
    ],
    'bco_26-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'Of the three paragraphs the first defines the Constitution ; the second '
            'shows how one part of the Constitution may be amended ; and the third, '
            'how the other part may be amended.\n\n\u00a7141.--I. The Constitution of '
            'the Presbyterian Church in the United States consists of its doctrinal '
            'symbols, embraced in the Confession of Faith, and the Larger and Shorter '
            'Catechism, together with the Book of Church Order, which comprises the '
            'Form of Government, the Rules of Discipline, and the Directory of '
            'Worship.\n\nNo other deliverances of church courts or of individuals '
            'form any part of the Constitution. Nor is the Bible any part of the '
            'Constitution. As a distinct organization, organizationally distinct from '
            'other church organizations, the parts of this Church stand together in '
            'this Constitution, accepted as binding law and covenant by all the '
            'constituent parts of this Church ; and the Bible is to this Church what '
            'this Constitution defines it to be. The fact that this Constitution '
            'subordinates itself to the Bible in every sense does not make the Bible '
            'technically the Constitution of the denomination. No one is compelled to '
            'become a constituent of this society, and no one ought to assume to do '
            'so, or to continue to do so, who is not willing to stand together with '
            'the others in this Constitution. But such acceptance does not mean the '
            'holding of this Constitution as infallible, or as in any sense equal in '
            'authority with the Bible, or as not needing improvement.',
        webUrl: 'https://pcahistory.org/bco/fog/26/01.html',
      ),
    ],
    'bco_26-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 168',
        text:
            '142.--II. The Book of Church Order may be amended on the recommendation '
            'of one General Assembly, when a majority of the Presbyteries advise and '
            'consent thereunto, and a succeeding General Assembly shall enact the '
            'same.\n\nThe last clause is not a part of the \u201cwhen\u201d clause, '
            'as shown by the change of tense, but is co-ordinate with the first '
            'principle clause. The first statement, then, is that the Book may be '
            'amended when the requisite number of Presbyteries advise and consent to '
            'a recommendation of amendment by a General Assembly. But the amendment '
            'is not yet enacted, it is not yet in the Constitution; only the '
            'amendment has been recommended to be made, and the required advice and '
            'consent that it be made have been given. It remains for a succeeding '
            'General Assembly to make it. But does the word \u201cshall: take away '
            'discretion from a subsequent Assembly? Certainly not; for it does not '
            'command some particular Assembly to enact the amendment, and, therefore, '
            'commands no Assembly to enact it. The whole paragraph means that, before '
            'any amendment becomes in force, it shall be enacted by a General '
            'Assembly after a majority of the Presbyteries have advised and consented '
            'that the amendment be made, and have given this advice and consent, not '
            'in response to the motion of one or more individuals or other courts, '
            'but in response to a recommendation of a General Assembly. The '
            'Presbyteries must not only consent, but advise. The enacting Assembly '
            'may be any Assembly regularly convening after a majority of the '
            'Presbyteries existing at the time of the enactment have given their '
            'advise and consent. The amendment enacted must be precisely that which '
            'was recommended and was advised and consented to.',
        webUrl: 'https://pcahistory.org/bco/fog/26/02.html',
      ),
    ],
    'bco_26-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 169',
        text:
            '142(a).--III. Amendments to the Confession of Faith and the Catechisms '
            'of this Church may be made only upon the recommendation of one General '
            'Assembly, the concurrence of at least three-fourths of the Presbyteries, '
            'and the enactment of the same by a subsequent Assembly.\n\nThe only real '
            'difference from the preceding paragraph is that three-fourths of the '
            'Presbyteries must concur instead of a majority. In acting on these '
            'amendments, too, Presbyteries should vote to concur or not to concur, '
            'but, in acting on those, to advise and consent or not to advise and '
            'consent.\n\nThe provision contained in the preceding paragraph for the '
            'amendment of the Book of Church Order shall not apply to this paragraph; '
            'but this paragraph shall be amended or altered only in the way in which '
            'itself provides for the amendment of the Confession of Faith and '
            'Catechisms of the Church.\n\nWithout some such sentence as this the '
            'whole paragraph would fail of its end, since it might be wiped out by a '
            'majority of the Presbyteries.\n\nThese two provisions for amending the '
            'Constitution settle two things beyond question : this Book of Church '
            'Order cannot mean to impose any obligation upon any person inconsistent '
            'with his keeping an open mind for improvement of the doctrinal standards '
            'and of the Book of Church Order by changes of omission, addition or '
            'modification; and nothing said by any Minister or Rulng Elder of the '
            'Church in any court in relation to any proposition to amend the '
            'Constitution ought ever to be pleaded against him in charging him with '
            'an offence. This unwritten immunity takes away excuse for willingly '
            'agitating the Church generally in opposition to its Constitution before '
            'one endeavors in this constitutional way to have the Constitution '
            'amended.',
        webUrl: 'https://pcahistory.org/bco/fog/26/03.html',
      ),
    ],
    'bco_27-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 170\u2013171',
        text:
            'The Rules of Discipline\n\nDiscipline is such an important function of '
            'church courts that a special treatment of it and specific regulations of '
            'it are deemed necessary in the Constitution of this Church.\n\nAfter a '
            'chapter of preliminary definitions, and a chapter concerning the '
            'discipline of non-communicating members, these Rules contain, first, '
            'three chapters on the Principles underlying Judicial Procedure : one '
            'treating of Offences ; one of the Censures that may be used upon '
            'Offenders ; and one on the Parties in cases of Process. In the second '
            'place, there follow Regulations concerning Process. In four chapters are '
            'Regulations governing the Conduct of Process : one containing General '
            'Provisions ; two containing Special Provisions pertaining to Process '
            'before Sessions, and to Process before Presbyteries ; and one on '
            'Evidence. Then are two chapters on Administration of Censures ; one on '
            'their Infliction, and one on their Removal. And there is appended a '
            'chapter on Cases without Process. Following these two parts, the one on '
            'Principles and the other on Process in the courts of Original '
            'Jurisdiction, comes the third part of the Rules, which defines exactly '
            'the Jurisdiction of the various courts, and in which is much matter that '
            'might as well have been put in the Form of Government. This part has '
            'three chapters : one on appellate jurisdiction ; one on substitutes for '
            'carrying an issue to a higher court ; and one on the determination of '
            'the jurisdiction to which any given person is subject.\n\nChapter I. Of '
            'Discipline--Its Nature, Subjects, and Ends.\n\nThe first paragraph '
            'defines discipline ; the second specifies its subjects ; and the other '
            'two treat of the ends of discipline, one especially of the ends of the '
            'one kind of discipline, and the other of the ends of discipline in '
            'general.\n\n143.--I. Discipline is the exercise of that authority, and '
            'the application of that system of laws which the Lord Jesus Christ has '
            'appointed in His Church. The term has two senses, the one referring to '
            'the whole government, inspection, training, guardianship, and control, '
            'which the Church maintains over its members, its officers, and its '
            'courts ; the other a restricted and technical sense, signifying judicial '
            'prosecution.\n\nIt is noticeable that technical discipline is simply a '
            'means or form of discipline in the larger sense, and that it includes '
            'all the parts of judicial prosecution, as well as the infliction and '
            'removal of censures.\n\nCharles Hodge, on Chapter 1, paragraph 1 of '
            '\u201cThe Revised Book of Discipline\u201d (1858), pp. 694.\n\nThis '
            'chapter has been reduced from seven sections to three, and from '
            'forty-three lines, to twenty-three. The design of the chapter is to '
            'state, first, The nature of discipline; secondly, Its grounds; and '
            'thirdly, Its subjects. The word discipline is used in different senses. '
            'It sometimes has the general s ense of training, whether of the mind, '
            'heart, or life. In this sense, it includes all instructions, '
            'exhortations, admonitions, and directions. Sometimes it means a mode of '
            'government, as when we speak of the Methodist discipline. Sometimes the '
            'word is taken in the restricted sense of punishment; and a Book of '
            'Discipline, when distinguished, as it is with us, from \u201cthe Form of '
            'Government,\u201d is a book which gives direction for the administration '
            'of discipline in the restricted sense of the term. It concerns, not '
            'teaching, but the administration of justice, and exercise of authority. '
            'It is therefore defined to be, \u201c the exercise of that authority, '
            'and the application of that system of laws which the Lord Jesus Christ '
            'hath appointed in his church. Its ends are the rebuke of offences, the '
            'removal of scandal, the vindication of the honour of Christ, the '
            'promotion of the purity and general edification of the church, and the '
            'spiritual good of offenders themselves.\u201d It appears from this, that '
            'discipline, as here used, includes the ideas of oversight and '
            'punishment.',
        webUrl: 'https://pcahistory.org/bco/rod/27/01.html',
      ),
    ],
    'bco_27-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 171\u2013172',
        text:
            '144.--II. In the one sense, all baptized persons, being members of the '
            'Church, are subject to its discipline and entitled to the benefits '
            'thereof; but in the other, it refers only to those who have made a '
            'profession of their faith in Christ.\n\nThe exception of non-professing '
            'members from judicial prosecution is justified by the consideration that '
            'the Church, already excluding them from the Lord\'s supper for not '
            'accepting and professing Christ, has no higher censure to inflict. The '
            'subjection of them to judicial process for other sins would only '
            'irritate them and exaggerate the heinousness of other sins as compared '
            'with not accepting Christ.\n\nCharles Hodge, on Chapter 1, paragraph 3 '
            'of \u201cThe Revised Book of Discipline\u201d (1858), pp. '
            '697-699.\n\nThirdly. Such being the nature and grounds of discipline, '
            'who are its subjects? To this question the natural answer is, church '
            'members. But who are church members ? Some say only communicants. This '
            'answer is founded on the assumption that the church is, as it is defined '
            'by Independents, a body of believers united by covenant for the purpose '
            'of worship and mutual watch and care. Those only, therefore, who have '
            'entered into this covenant are members of the church, and consequently '
            'the proper subjects of discipline. Others say that the visible church '
            'consists of all those who profess the true religion together with their '
            'children. Therefore, all baptized children, as well as those who make a '
            'personal profession of religion, are the subjects of discipline. Others '
            'again say, that although baptized children, so long as they are, in the '
            'church sense of the term, minors, are members of the church, and '
            'therefore under its watch and care, yet when they become adults, unless '
            'they personally profess faith in Christ, they forfeit their church '
            'standing, and are not the subjects of discipline in the strict sense of '
            'that word.\n\nAccording to this last mentioned theory, the visible '
            'church consists of those only on whose conversion the church has '
            'pronounced in charity a favourable judgment, in receiving them to the '
            'Lord\u2019s table, together with their infant children. According to the '
            'other view, we are bound to regard and treat as members of the church '
            'all baptized persons, who have not renounced their baptismal vows, are '
            'free from scandal, and acknowledge themselves to be amenable to the '
            'authority of the church.\n\nIn our present Book, the question, Who are '
            'the subjects of discipline, is answered in these words: \u201cAll '
            'baptized persons are members of the church, are under its care, and '
            'subject to its government and discipline; and when they have arrived at '
            'the years of discretion, they are bound to perform all the duties of '
            'church members.\u201d This is founded on the last of the views of the '
            'nature of the visible church mentioned above. In the revised Book the '
            'answer proposed is: \u201cAll baptized persons, being members of the '
            'church, are under its government and training, and when they have '
            'arrived at years of discretion, they are bound to perform all the duties '
            'of members. Only those, however, who have made a profession of faith in '
            'Christ, are proper subjects of judicial prosecution.\u201d This answer '
            'does\n not seem to differ in principle from the old one. It admits that, '
            'all baptized persons are members of the church, and,\n therefore, '
            'subject to its government and training. But it makes a distinction '
            'between baptized and professing members; declaring the latter alone to '
            'be the subject of judicial process. This section bears on its face '
            'evidence of being a compromise, and, as is apt to be the case with '
            'compromises, it does not hang well together. We voted for it, however, '
            'and share the responsibility of recommending its adoption, although we '
            'prefer the old form. The fact that we never knew of any baptized person, '
            'not a communicant, being made the subject of judicial process, '
            'reconciled us to the adoption of the rule as it is reported. So long as '
            'it is admitted that all baptized persons are under the government of the '
            'church, the principle involved in the case is saved.',
        webUrl: 'https://pcahistory.org/bco/rod/27/02.html',
      ),
    ],
    'bco_27-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 172',
        text:
            '145.--III. The ends of discipline, as it involves judicial prosecution, '
            'are the rebuke of offences, the removal of scandal, the vindication of '
            'the honour of Christ, the promotion of the purity and general '
            'edification of the Church, and the spiritual good of offenders '
            'themselves.\n\nThese five ends run into each other. Judicial prosecution '
            'always aims at the rebuke of offences, if offences are found to exist; '
            'at the removal of the scandal of supposed offences, either by '
            'ascertaining their non-existence, or by rebuking them if they do exist; '
            'at the vindication of the honor of Christ by his Church\'s thus clearing '
            'itself of approving or allowing the offences; and at the purity and '
            'general edification of the Church by separating offenders, and by '
            'teaching in this particular way. But always it aims, too, at the good of '
            'offenders themselves, by leading them to forsake their sins, so long as '
            'there is hope of their reformation. But their good is not the sole end '
            'of discipline, and other ends may demand discipline where there is no '
            'hope of doing the offender good.',
        webUrl: 'https://pcahistory.org/bco/rod/27/03.html',
      ),
    ],
    'bco_27-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p.172\u2013174',
        text:
            '146.--IV. The power which Christ has given to the rulers of his Church '
            'is for edification, and not for destruction ; it is a dispensation of '
            'mercy, and not of wrath. As in the preaching of the Word the wicked are '
            'doctrinally separated from the good, so by discipline, the Church '
            'authoritatively separates between the holy and the profane. In this it '
            'acts the part of a tender mother, correcting her children for their '
            'good, that every one of them may be presented faultless in the day of '
            'the Lord Jesus.\n\nThis paragraph speaks of discipline in general, and '
            'not of technical discipline alone. The holy are all consecrated persons, '
            'whether by reason of the consecration of themselves of their own '
            'free-will, or by reason of their standing in a sacred relation through '
            'their connection with others, as children with their parents; and those '
            'who have once become holy are, by the discipline of the church, in both '
            'its aspects as defined in paragraph 143, separated from the '
            'profane--that is, from those who are not thus holy--unless and until '
            'such persons, by their own actual rebellion against Christ, and by '
            'violation of their sacred obligations, show that they belong among the '
            'profane. The baptized child is thus classed as holy, and is so treated ; '
            'and yet, as it grows up and neglects to acknowledge Christ, it is not '
            'admitted to the most sacred intimacy of fellowship at the Lord\'s table. '
            'If those persons who have been admitted into the number of the holy in '
            'the fullest ecclesiastical sense show that they really do not belong '
            'there, discipline puts them in their proper class. All the steps toward '
            'the admission to full membership, or toward exclusion from it, are in '
            'the nature of separation between the holy and the profane. The Church is '
            'not a society of \u201cgood\u201d people in contrast with '
            '\u201cwicked\u201d people (for its infant members are not of either '
            'class), but the society of \u201choly\u201d people ; and the obscuring '
            'or the effacement of this distinction is the obscuring or effacement of '
            'the distinction between the people of God and the people of the world, '
            'and is fatal, in its tendency, to the distinct existence of the Church. '
            'The maintenance of the holiness of the Church, which is the very essence '
            'of its character, is not in order to destroy her children, but in order '
            'to save them ; for the purity of the Church as a holy society is in '
            'order to its efficiency as the instrumental agency of salvation.',
        webUrl: 'https://pcahistory.org/bco/rod/27/04.html',
      ),
    ],
    'bco_27-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text in this section]',
        webUrl: 'https://pcahistory.org/bco/rod/27/05.html',
      ),
    ],
    'bco_28-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 174',
        text:
            'CHAPTER II. - OF THE DISCIPLINE OF NON-COMMUNICATING MEMBERS.\n\nAfter '
            'stating the obligations of parents to children in the Church, in the '
            'first paragraph, the rest of the chapter has to do with the duty of the '
            'Church, as such ; first, to instruct her children ; second, to recognize '
            'or to plead with them on their arrival at years of discretion ; and '
            'third, to continue to seek them. A paragraph is appended to determine as '
            'to the jurisdiction of what particular church given non-communicating '
            'members belong.\n\n147.--I. The oversight of the children of the Church '
            'is committed by God primarily to believing parents, who are responsible '
            'to the Church for the faithful discharge of this duty. The '
            'responsibility of parents continues during the minority of their '
            'children, and extends to all such conduct contrary to the purity and '
            'sobriety of the gospel as parents may and ought to restrain and '
            'control.\n\nThis paragraph defines, not the full responsibility of '
            'parents to God, but their responsibility to the Church, for the behavior '
            'of their children ; and while judicial prosecution may not be had of '
            'non-communicating children, it may be had of their communicating parents '
            'for such conduct of their children contrary to the purity and sobriety '
            'of the gospel as parents may and ought to restrain and control.',
        webUrl: 'https://pcahistory.org/bco/rod/28/01.html',
      ),
    ],
    'bco_28-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 175',
        text:
            '148.--II. The Church should make special provision for the instruction '
            'of its youth in the doctrines of the Bible as set forth in the '
            'Catechisms. Hence, Church Sessions ought to establish, under their own '
            'authority, Bible classes and Sabbath schools for this object, or to '
            'adopt such other methods as shall secure the same end.\n\n(Cf. 67: 8.) '
            'It is noticeable that the Catechisms (and not the Shorter Catechism '
            'only) are to be taught to the children of the Church ; and the Session '
            'of each church should see that this is done. And somehow there should be '
            'a difference between the children of the Church and other children.',
        webUrl: 'https://pcahistory.org/bco/rod/28/02.html',
      ),
    ],
    'bco_28-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 175\u2013176',
        text:
            '149.--III. When the children of the Church arrive at years of '
            'discretion, they are bound to discharge all the duties of Church '
            'members. If they give evidence of saving faith in Christ, together with '
            'a correct walk and conversation, they should be informed that it is '
            'their privilege and duty to make a profession of faith in Christ, and to '
            'come to His table. If they exhibit a wayward disposition, and associate '
            'themselves with the profane, the Church should still cherish them in '
            'faith, and ought to use all such means as the Word of God warrants and '
            'the Christian prudence of church officers shall dictate, for reclaiming '
            'them and bringing them to appreciate their covenant privileges, and to '
            'discharge their covenant obligations.\n\n(Cf. 29.) It is not '
            'contemplated that the individual child will first ask admission to the '
            'Lord\'s table, but that the Pastor or other representative of the '
            'Session will inform the child that the Session advises it of its '
            'privilege and duty. At the same time, although there should be evidence '
            'of saving faith, but such behavior as would call for censure of a '
            'communicating member, the child is not to be thus advised. Yet all '
            'proper means are to be used to bring even the most wayward to fulfill '
            'their covenant obligations. The theory lying back of this paragraph is, '
            'that the children of the Church will, normally, as they grow into '
            'responsible persons, find themselves having faith in Christ and living '
            'in obedience to him ; and that, where this result does not appear, the '
            'church and the parent should be filled with solicitude to bring them to '
            'this personal submission, working in the expectation that God will '
            'effectually call them',
        webUrl: 'https://pcahistory.org/bco/rod/28/03.html',
      ),
    ],
    'bco_28-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 176',
        text:
            '150.--IV. Those adult non-communicating members who submit with meekness '
            'and gratitude to the government and instruction of the Church, are '
            'entitled to special attention. Their rights under the covenant should be '
            'frequently and fully explained and their duties enforced on their '
            'consciences; they should be warned of the sin and danger of neglecting '
            'their covenant obligations, and urged by the mercies of Christ to come '
            'up to their full discharge.\n\n(Cf. 30.) The exemption of '
            'non-communicating members from judicial prosecution does not exempt the '
            'Church from exercising watchful discipline over them in other forms of '
            'discipline ; and their privilege and obligation as church members should '
            'never be lost sight of.',
        webUrl: 'https://pcahistory.org/bco/rod/28/04.html',
      ),
    ],
    'bco_28-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 176',
        text:
            '151.\u2014V. All non-communicating members shall be deemed\n under the '
            'care of the church to which their parents belong, if\n they live under '
            'the parental roof and are minors ; or otherwise,\n under that of the '
            'church where they reside, or with which they\n ordinarily '
            'worship.\n\nWhen their parents cease to be responsible to the Church '
            '(147) for their conduct, they cease to be\n\nunder the jurisdiction of '
            'their parents\' church as such.',
        webUrl: 'https://pcahistory.org/bco/rod/28/05.html',
      ),
    ],
    'bco_29-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 176\u2013180',
        text:
            'CHAPTER III. OF OFFENCES.\n\nAfter defining offence in the first '
            'paragraph, offences are classified : the second paragraph specifying '
            'what is common to them all ; the third, the distinction of offences into '
            'two classes according to the persons whom they injure ; and the fourth, '
            'their distinction into two classes according to the persons to whom they '
            'are known.\n\n152.--I. An offence, the proper object of judicial '
            'process, is anything in the principles or practice of a church member '
            'professing faith in Christ which is contrary to the Word of God.\n\nThe '
            'meaning is not that there ought to be judicial prosecution of every '
            'offence in every instance, this paragraph not being intended to '
            'constrain the court to prosecute where judicial prosecution is not '
            'advisable ; but the meaning is that there may be judicial prosecution '
            'for any principle or practice contrary to the Word of God, taking away '
            'from the accused every plea but that his principle or practice is not '
            'contrary to the Word of God. What is contrary to a custom of the Church, '
            'or to some deliverance of a church court, or even to a symbol of '
            'doctrine or government, is not an offence unless it is contrary to the '
            'Word of God ; but anything contrary to the Word of God is an offence. '
            'Even to this, however, there is one practical modification in this '
            'Church :\n\nThe Confession of Faith and the Larger and Shorter '
            'Catechisms of the Westminster Assembly,\n\nslightly amended, cf. 141 and '
            'remarks,\n\ntogether with the formularies of government, discipline and '
            'worship, are accepted by the Presbyterian Church in the United States as '
            'standard expositions of the teachings of Scripture in relation to both '
            'faith and practice. Nothing, therefore, ought to be considered as an '
            'offence, or admitted as a matter of accusation, which cannot be proved '
            'to be such from Scripture, as interpreted in our standards.\n\nTo the '
            'general statement that our courts may treat anything contrary to the '
            'Scriptures as an offence, there is the exception of that which, though '
            'contrary to the Scriptures, is not contrary to the standards. This is on '
            'the ground that the Church is restrained by her covenant with all her '
            'members in the Constitution. If it be objected that then the Church thus '
            'cuts herself off from obeying Christ by enforcing his law in every part '
            'of it, the answer is, that the Church retains the liberty of amending '
            'her standards so as to make them exact and complete, if at any time she '
            'should discover any error or defect in them.\n\nBut if she should be on '
            'the point of judicially prosecuting for something contrary to the '
            'standards indeed, but not to the Word of God, she must not enforce the '
            'standards as law rather than the Scriptures ; for only the Scriptures is '
            'law in this Church. (Cf. pars. 9, 10, 17, 19, 60, the first question in '
            '112, 119 and 135, and many other passages in the Book of Church Order as '
            'well as in the doctrinal standards.) In human government, where the '
            'legislature is as fallible as the judiciary, the interpretation of the '
            'law by courts may be treated as itself law, within certain limitations ; '
            'but not in the Church, whose law, the Scriptures, is infallible, but '
            'whose standard interpretation, the symbols of doctrine and order, are '
            'fallible. If it be said that the Constitution is a covenant, and that by '
            'its acceptance we are all bound to treat its interpretation of the Word '
            'as being the Word of God, the answer is threefold. The members generally '
            'have not accepted this Constitution in the same comprehensive sense as '
            'the officers, and have not even been asked whether they accept our '
            'doctrinal standards as containing the system of doctrine taught in the '
            'Scriptures, or whether they approve the government and discipline; and '
            'yet the definition of an offence is the same for unofficial as for '
            'official members. In the second place, the officers have accepted the '
            'standards as fallible and amendable, over against the Scriptures as '
            'infallible and incapable of amendment ; and this vow of belief can bind '
            'no Presbyter to find any one guilty of an offence, of a sin against God '
            '(153), because of something which the Presbyter believes not contrary to '
            'Scripture. And in the third place, the Constitution subordinates itself '
            'to the Scripture, and it would be disloyalty to the Constitution itself '
            'to let it displace the Scriptures in controlling one\'s thinking or '
            'action. The Constitution is not afraid to be thus brought back '
            'continually to the very Word of God ; thus will its scripturalness '
            'become more and more manifest.\n\nThe form of indictment is not treated '
            'or prescribed in this paragraph, but the principle is laid down in this '
            'and in the following paragraph, that an offence is something contrary to '
            'the Word of God, a sin against God ; and \u201cthe Supreme Judge, by '
            'which all controversies of religion are to be determined, and all '
            'decrees of councils, opinions of ancient writers, doctrines of men, and '
            'private spirits, are to be examined, and in whose sentence we are to '
            'rest, can be no other but the Holy Spirit speaking in the '
            'Scriptures.\u201d (Confession of Faith, Chap. I, Par. 10.) And it is '
            'unconstitutional to make the Constitution, which is itself decrees of '
            'councils, the supreme judge in controversies that involve judicial '
            'prosecution.\n\nAt the same time if one holds an interpretation of the '
            'Scriptures different from that of the Church as expressed in her '
            'standards, and fails to convince the courts of the Church that her '
            'interpretation is error (as, of course, he most probably will fail), he '
            'must not expect the court to judge him according to his interpretation. '
            'As long as his ordination vows are fulfilled in his own conscience, he '
            'need not, from his point of view, surrender anything that he has '
            'received from the Church upon taking these vows ; but if, from change of '
            'views, or from any cause, he ceases to fulfill those vows, he must, as a '
            'covenant-keeper, stand ready to surrender whatever dignity he got in the '
            'Church by making the vows. No man can, by vows of any sort, make it his '
            'duty to disbelieve the Word of God, or to disobey his commandments ; but '
            'no man has a right to obtain any honor in an organization upon condition '
            'of certain promises, and then insist on retaining it while breaking '
            'those promises. When the individual and the Church differ on the '
            'question whether he is fulfilling his vows, each party must decide and '
            'act, knowing that Christ is the only Lord. Yet both parties, and no less '
            'the individual than the Church, must remember that to maintain the truth '
            'of Christ, in way and temper contrary to Christ, is to misrepresent, '
            'and, it may be, to betray his truth.\n\nCharles Hodge, on Chapter 1, '
            'paragraph 2 of \u201cThe Revised Book of Discipline\u201d (1858), pp. '
            '694-697.\n\nThe second point which this chapter is designed to settle, '
            'is the grounds of discipline, or the occasions which call for its '
            'exercise. What are these things which the church is authorized and bound '
            'to visit with ecclesiastical censures? In other words, what is an '
            'offence, in the ecclesiastical sense of that word? The answer given to '
            'this question in the second section of this chapter is, 1. That an '
            'offence is something \u201cin the faith or practice of a professed '
            'believer contrary to the word of God.\u201d An offence, therefore, is '
            'something contrary to the word of God. This is a very important '
            'provision; no man and no church has the right to alter the terms of '
            'Christian communion; or to prescribe any new conditions on which we may '
            'maintain our church and standing unquestioned. We may think many things '
            '\u2014drinking wine, for example\u2014to be wrong, because inexpedient, '
            'but unless drinking wine is forbidden in the word of God, it cannot be '
            'made an ecclesiastical offence, or ground of discipline. We may reason '
            'with a man, or exhort him, or admonish him, who, as we think, is acting '
            'in a way which injures the cause of Christ; but unless the thing done be '
            'forbidden in the word of God, we have no right to arraign him before a '
            'church court, or to interfere with his full enjoyment of church '
            'privileges. The reason of this is plain. His acting in a way which we '
            'regard as inexpedient, may be compatible with his being a true '
            'Christian. His views of expediency may differ from ours. His views may '
            'be right, and ours wrong. He has as good a right to his opinion as we '
            'have to ours. Expediency can never be made the ground of determining the '
            'terms of church communion; because expediency depends on circumstances, '
            'and is a matter on which men may honestly differ. Uniformity and '
            'security depend on our adhering to the rule, that nothing shall be '
            'regarded as an offence but what the word of God forbids. If we abandon '
            'this principle, we shall be at the mercy of every new theory and every '
            'form of fanaticism which for the time gains ascendency. Matters of '
            'dress, modes of living, meats and drinks, fasts and festivals, and a '
            'thousand other things about which God has left us free, will be made '
            'terms of communion, or grounds of church discipline.\n\n2. Among us, as '
            'Presbyterians, nothing can be regarded as an offence which is not '
            'contrary to the Westminster Confession of Faith or Catechisms. No man '
            'has a right to interpret the Scriptures as a rule of discipline for '
            'others than himself. He may think that the Scriptures condemn certain '
            'forms of opinion, or certain modes of conduct, but he has no right to '
            'make his private judgment the rule of faith and practice to '
            'others.\n\nWe have agreed among ourselves to take the Westminster '
            'Confession of Faith and Catechisms as a faithful exposition of the '
            'system of doctrines and rule of duty taught in the Bible, and by that '
            'recognized exposition, and not by our own private judgment, we are bound '
            'to act in the administration of discipline. One man may think that the '
            'Bible forbids slave-holding, or the use of intoxicating liquors. '
            'Another, with equal honesty, may regard these opinions as not only '
            'contrary to Scripture, but subversive of their authority, by putting '
            'another rule in their place. The abolitionist, or the ultra-temperance '
            'man, cannot make his opinions the rule of discipline; nor can his '
            'opponent. We have agreed to abide by our own standards in the '
            'administration of discipline. Outside of that rule, so far as our church '
            'standing is concerned, we may think and act as we please. Every man, '
            'therefore, in joining the Presbyterian church, knows beforehand what he '
            'has to expect, and by what standard of faith and practice he is to be '
            'judged.\n\n3. But although nothing is an offence which is not contrary '
            'to the Scriptures, it does not follow that everything contrary to the '
            'Scriptures is an offence. The words offence and discipline are relative '
            'terms. An offence is anything which is a proper ground of discipline. '
            'If, therefore, you take the word discipline in its wide sense, every sin '
            'is an offence; but in the restricted meaning of the word discipline, '
            'nothing is an offence, which is not incompatible with the terms of '
            'Christian or ministerial communion as laid down in our standards. An '
            'offence bears to ecclesiastical law, the same relation that a crime does '
            'to the civil law. It is something for which a man may be legally '
            'prosecuted, and if convicted, punished. Hence in our Book, both in its '
            'present, and in its revised form, it is said nothing is to be regarded '
            'as an offence \u201cwhich does not involve those evils which discipline '
            'is intended to prevent.\u201d A church member may be admonished, or '
            'rebuked on account of his want of proper zeal, or for lukewarmness, or '
            'for his covetousness, pride, despondency, and the like, but he cannot, '
            'on these grounds, be arraigned before a church court, unless they are of '
            'such a character as to prove that he is not a Christian. These, in their '
            'ordinary form, are not the evils which discipline, in the restricted '
            'sense of the word, is designed to prevent. The end of discipline is to '
            'secure conformity on the part of members and ministers to the terms of '
            'Christian and ministerial communion. And as our church does not pretend '
            'to demand perfection of Christian character and conduct as a condition '
            'of church-fellowship, nor perfect knowledge or entire freedom from '
            'error, as a condition for ministerial fellowship, so every shortcoming '
            'from the standard of perfection in either case, is not to be regarded as '
            'an offence. Nothing is an offence, but what, if persisted in, would '
            'justify either suspension from the privileges\n\nof the church, or from '
            'the office of the ministry. The importance of this distinction between a '
            'sin and an offence, will be at once perceived. No minister or church '
            'member would ever be safe from prosecution, and no judicatory could ever '
            'know whether they were called upon to prosecute or not, if every sin '
            'were an offence, or a just ground of judicial process. Minor evils are '
            'to be corrected by admonition, instruction, and the ministry of the '
            'word. It is only these evils in the faith or practice of a church member '
            'which bring disgrace or scandal on the church, as tolerating what the '
            'Bible declares to be incompatible with the Christian character, which '
            'can be a ground of process. Such is not only the theory but the practice '
            'of the church. We never hear of any professing Christian being arraigned '
            'and put on trial, unless for some immorality, or some such denial of the '
            'truth, or such neglect of his duty as a professor of the religion of the '
            'Lord Jesus, as affords good ground for calling the sanctity of that '
            'profession into question.',
        webUrl: 'https://pcahistory.org/bco/rod/29/01.html',
      ),
    ],
    'bco_29-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 180\u2013181',
        text:
            '153.--II. Offenses are either personal or general, private or public; '
            'but all of them being sins against God, are, therefore grounds of '
            'discipline.\n\nThe meaning is not that every offence should be '
            'judicially prosecuted, for judicial prosecution is not the only method '
            'of discipline, nor is the only end of judicial prosecution the rebuke of '
            'offences ; but the meaning is, that the real ground of discipline is '
            'that the offence is a sin against God, and not its mere relation to the '
            'rights or knowledge of men.\n\nCharles Hodge, on Chapter 2 of \u201cThe '
            'Revised Book of Discipline\u201d (1858), pp. 694.\n\nThe object of this '
            'chapter is to classify offences. In the present Book they are '
            'distinguished as private and public; here the discrimination is carried '
            'further. They are distinguished, 1. As personal, when committed against '
            'one or more individuals; such as acts of defamation, or defrauding. 2. '
            'As general, when they have no such relation to individuals, as '
            'drunkenness. 3. As private, when known only to a few persons. 4. Public, '
            'when they are notorious. These distinctions are important, as they '
            'become the grounds of different modes of proceeding.CONSTITUTIONAL '
            'INQUIRY :\n\nPCUS, 1881\u2014\n\nThe answer to overture No. 16 was '
            'adopted, and is as follows :\n\nNo. 16: From the Presbytery of '
            'Mecklenburg, asking,\n\n1: Do the provisions of our book (Rules of '
            'Discipline, Chapter 6, Sec. 6, and Chapter 3, Sec. 2,) apply to the case '
            'of a member of the church who refuses to obey the citation of the '
            'Session to appear for conference concerning matters affecting the '
            'Christian character, when no formal charge has been preferred?\n\n2. If '
            'they do not, by what means must the Session deal with resistance of its '
            'authority when it exercises the power conferred in Chapter 5, Sec. 3, '
            'Par. 5, Form of Government, and endeavors to perform the duty therein '
            'devolved on it of inquiring into the knowledge, principles and Christian '
            'conduct of the church members under its care by directing the members to '
            'appear before the Session ?\n\nThe Committee recommend the following '
            'answer :\n\nChapter 6, Sec. 6, Rules of Discipline, refers only to '
            'formal judicial prosecution, and requires that charges be preferred and '
            'the offender formally cited to appear before the Session for the purpose '
            'of answering the charges.\n\nChapter 3, Sec. 2, Rules of Discipline, '
            'refers to offences which may call for judicial prosecution, or may not, '
            'according to the nature of the case; and of this the Session is to be '
            'the judge. The authority of the Session, as defined in Chapter 5, Sec. '
            '3, Par. 5, Form of Government, allows the Session to enquire into the '
            '\u201cknowledge, principles and Christian conduct of the members under '
            'its care,\u201d without formal judicial process. If its authority is '
            'resisted when so exercised, the Session may then proceed to cite the '
            'offender to appear, as provided in Chap. 6, Rules of Discipline. If, '
            'after two citations, its authority is still resisted, the Session may '
            'proceed to deal with the offender for contumacy, as provided in Chapter '
            '7, Sec. 2, Rules of Discipline.',
        webUrl: 'https://pcahistory.org/bco/rod/29/02.html',
      ),
    ],
    'bco_29-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 181',
        text:
            '154.--III. Personal offences are violations of the Divine law, '
            'considered in the special relation of wrongs or injuries to particular '
            'individuals. General offences are heresies or immoralities having no '
            'such relation, or considered apart from it.\n\nOne may not plead that '
            'his offence was against a particular individual, and that for this '
            'reason the Church should not intermeddle in the matter ; nor that his '
            'offence is not a wrong to any one, and that for this reason the courts '
            'should not intervene. The Church is enforcing Divine law, and not '
            'protecting personal rights.',
        webUrl: 'https://pcahistory.org/bco/rod/29/03.html',
      ),
    ],
    'bco_29-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 181',
        text:
            '155.--IV. Private offences are those which are known only to a few '
            'persons. Public offences are those which are notorious.\n\nThe offender '
            'cannot plead that his offence should be overlooked because it is of '
            'either sort.',
        webUrl: 'https://pcahistory.org/bco/rod/29/04.html',
      ),
    ],
    'bco_30-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 181\u2013182',
        text:
            'Chapter IV. Of Church Censures.\n\nThe first paragraph classifies the '
            'censures that may be inflicted, and the remaining paragraphs define each '
            'sort of censure.\n\n156.--I. The censures which may be inflicted by '
            'church courts are admonition, suspension, excommunication, and '
            'deposition. When a lower censure fails to reclaim the delinquent, it may '
            'become the duty of the court to proceed to the infliction of a higher '
            'censure.\n\nWhen such becomes its duty, the court must determine in each '
            'case, having regard to the principle that no censure is to be '
            'administered except upon conviction by process, or upon acknowledgment '
            'of guilt.\n\nOVERTURES :\n\n1989 [M17GA, 17-6, Item 6, p. 47]\n\nItem 6. '
            'That BCO 30-1, 30-2, and 30-3 be replaced with the following:\n\n30-1. '
            'The censures which may be inflicted by church courts are admonition, '
            'suspension from the sealing ordinances, and excommunication. For '
            'officers additional censures are suspension from and deposition from '
            'office. When a lower censure fails to reclaim the delinquent, it may '
            'become the duty of the court to proceed to the infliction of a higher '
            'censure.\n\nAdopted. [the Presbyteries having previously voted 35 in '
            'favor, 3 against, with 3 votes deferred. The amendment had been '
            'presented to the 16th General Assembly (1988) as part of the Report of '
            'the Committee of Commissioners on Judicial Business, as reported under '
            'M16GA, 16-77, III, Item 17.]\n\n1990 [M18GA, 18-8, Item 4, p. '
            '46]\n\nItem 4. That BCO 30-1, 30-3, 34-7, 34-8, 36-4, 36-5, 37-1, 37-2, '
            '37-3, 37-7, and 42-6 be amended to read as follows:\n\n30-1. Censures '
            'which may be inflicted by church courts are admonition, suspension from '
            'the sacraments, excommunication, suspension from office, and deposition '
            'from office. The censures of admonition or definite suspension from '
            'office shall be administered to an accused who, upon conviction, '
            'satisfies the court as to his repentance and makes such restitution as '
            'is appropriate. Such censure concludes the judicial process. The '
            'censures of indefinite suspension or excommunication shall be '
            'administered to an accused who, upon conviction, remains impenitent. . . '
            '. .\n\nAdopted. [the Presbyteries having previously voted 37 in favor, 6 '
            'against]\n\n[This amendment had come before the General Assembly in the '
            'previous year, under report from the Committee of Commissioners on '
            'Judicial Business, as noted under M17GA, 17-82, III, 15, p. '
            '153.\n\nCONSTITUTIONAL INQUIRY :\n\n1986, Appendix I, Item 12, p. '
            '333\n\n12. From the Great Lakes Presbytery. See Recommendation '
            '20.\n\n\u201cThe Appellant. . . Is he divested from office or is that '
            'action of Presbytery suspended until the General Assembly\'s Commission '
            'has acted?\u201d\n\nANSWER: \u201cYes, the judgment is suspended, unless '
            'the court for sufficient reasons, which are duly recorded, by separate '
            'action puts the censure into effect.\n\nGrounds: See BCO30-1, 30-5, '
            '34-10, and 42-6.\u201d\n\n1986, 14-52, Item 20, p. 126\n\nThat the '
            'answer of the Permanent Committee concerning Constitutional Inquiry #12 '
            'from the Great Lakes Presbytery, (Regarding suspension of one who has '
            'appealed to GA) - (Appendix I, I.C.12, p. 333) be ratified. Adopted.',
        webUrl: 'https://pcahistory.org/bco/rod/30/01.html',
      ),
    ],
    'bco_30-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 182',
        text:
            '157.--II. Admonition is the formal reproof of an offender by a church '
            'court, warning him of his guilt and danger, and exhorting him to be more '
            'circumspect and watchful in the future.\n\nAdmonition does not impair '
            'the offender\'s ecclesiastical standing, and as soon as the admonition '
            'has been inflicted, he is no longer under censure, and he cannot be '
            'censured again unless after another conviction or confession. Should one '
            'convicted of an offense and sentenced to admonition refuse to receive '
            'the admonition and do not appeal (par. 255), the court may not change '
            'the sentence and inflict another censure without first finding him '
            'guilty, in a regular way, of an offense in refusing to hear the censure. '
            'Admonition may be conjoined with other censure.\n\nOVERTURES :\n\n1989 '
            '[M17GA, 17-6, Item 6, p. 47]\n\nItem 6. That BCO 30-1, 30-2, and 30-3 be '
            'replaced with the following:\n\n30-2. Admonition is the formal reproof '
            'of an offender by a church court, warning him of his guilt and danger, '
            'and exhorting him to be more circumspect and watchful in the '
            'future.\n\nAdopted. [the Presbyteries having previously voted 35 in '
            'favor, 3 against, with 3 votes deferred. The amendment originally came '
            'before the 16th General Assembly (1988) as part of the Report of the '
            'Committee of Commissioners on Judicial Business, as reported under '
            'M16GA, 16-77, III, Item 17.]\n\nCONSTITUTIONAL INQUIRY :\n\n1987 - '
            '15-62, 1., P. 128\n\nIn the report of the Judicial Commission in the '
            'case of TE Bogue et al. vs. of the Ascension:\n\na. Is not the censure '
            'of admonition applied to the complainants on p. 139 in the paragraph '
            'beginning \u201cIn fairness....\u201d contrary to the requirements of '
            'BCO 27-5 which require due process?\n\nb. Is not the explanatory opinion '
            'of Judgment No. 5 supporting an \u201cin thesi\u201d statement of the '
            'Assembly over a judicial decision of the Assembly contrary to BCO 14-7? '
            '- RE David Coffin.\n\nThe Committee recommends that the following '
            'response be adopted:\n\nAdmonition is of two kinds; formal and informal. '
            'Informal admonition is that which is part of the daily interaction of '
            'true Biblical relationships (Matthew 18). Formal admonition comes after '
            'the informal has not produced the fruit of peace in Christ, and after '
            'judicial process (BCO27-5, 30-2, 36-3).\n\nThe paragraph in question '
            'falls within the sphere of informal admonition, and is not contrary to '
            'the requirement of BCO 27-5.',
        webUrl: 'https://pcahistory.org/bco/rod/30/02.html',
      ),
    ],
    'bco_30-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 183',
        text:
            '158.--III. Suspension, with respect to Church members, is their '
            'temporary exclusion from sealing ordinances ; with respect to Church '
            'officers, it is their temporary exclusion from the exercise of their '
            'office. It may be either definite or indefinite as to its duration. '
            'Definite suspension is administered when the credit of religion, the '
            'honor of Christ, and the good of the delinquent demand it, even though '
            'he may have given satisfaction to the court. Indefinite suspension is '
            'the exclusion of an offender from sealing ordinances, or from his '
            'office, until he exhibits signs of repentance, or until, by his conduct, '
            'the necessity of the highest censure be made manifest.\n\nThe sealing '
            'ordinances are baptism and the Lord\'s supper ; and exclusion from them '
            'is the exclusion of him from partaking of the Lord\'s supper himself and '
            'from having his children baptized upon his profession of faith. His '
            'child might be baptized while he is under censure upon the faith of the '
            'other parent.\n\nThe language requires that three conditions must exist '
            'before definite suspension is inflicted : that the credit of religion, '
            'the honor of Christ, and the good of the delinquent demand it. Definite '
            'suspension terminates at the time set, without formal act ; and the '
            'suspended person, being no longer under censure, resumes his use of the '
            'sealing ordinances or of his office. Definite suspension may be '
            'inflicted whether the offender has given satisfaction to the court or '
            'not ; as when, for instance, the censured is not convinced in his own '
            'conscience of sin, and the court is not willing either to indefinitely '
            'suspend or to stop with mere admonition.\n\nA person under indefinite '
            'suspension may be excommunicated or deposed, without another trial, '
            'whenever it shall seem necessary to the court to proceed so far.\n\nIn '
            'the case of officers, suspension from sealing ordinances and suspension '
            'from office may be conjoined, or suspension from office may be inflicted '
            'without the other.\n\nOVERTURES :\n\n1989 [M17GA, 17-6, Item 6, p. '
            '47]\n\nItem 6. That BCO 30-1, 30-2, and 30-3 be replaced with the '
            'following:\n\n30-2. Suspension from sealing ordinances is the temporary '
            'exclusion from those ordinances. It may be either definite or indefinite '
            'as to it duration. Suspension from office is the exclusion of a church '
            'officer from his office. This may be definite or indefinite as to its '
            'duration. With respect to church officers, suspension from sealing '
            'ordinances shall always be accompanied by suspension from office. But '
            'suspension from office is not always necessarily accompanied with '
            'suspension from sealing ordinances.\n\nDefinite suspension is '
            'administered when the credit of religion, the honor of Christ, and the '
            'good of the delinquent demand it, even though he may have given '
            'satisfaction to the court.\n\nIndefinite suspension is administered to '
            'the impenitent offender until he exhibits signs of repentance, or until '
            'by his conduct, the necessity of the highest censure be made '
            'manifest.\n\nAdopted. [the Presbyteries having previously voted 35 in '
            'favor, 3 against, with 3 votes deferred. The amendment had originally '
            'come before the 16th General Assembly (1988) as part of the Report of '
            'the Committee of Commissioners on Judicial Business; see M16GA, 16-77, '
            'III, Item 17.]\n\n1990 [M18GA, 18-8, Item 4, p. 47]\n\nItem 4. That BCO '
            '30-1, 30-3, 34-7, 34-8, 36-4, 36-5, 37-1, 37-2, 37-3, 37-7, and 42-6 be '
            'amended to read as follows:\n\n30-3. Suspension from the sacraments is '
            'the temporary exclusion from those ordinances, and is indefinite as to '
            'its duration. There is no definite suspension from the '
            'sacraments.\n\nSuspension from office is the exclusion of a church '
            'officer from his office. It may be either definite or indefinite as to '
            'its duration. With respect to church officers, suspension from '
            'sacraments shall always be accompanied by suspension from office. But '
            'suspension from office is not necessarily accompanied by suspension from '
            'the sacraments.\n\nDefinite suspension from office is administered when '
            'the honor of Christ, the purity of the church, and the good of the '
            'delinquent demand it, even though the delinquent has given satisfaction '
            'to the court.\n\nIndefinite suspension is administered to the impenitent '
            'offender until he exhibits signs of repentance, or until by his conduct, '
            'the necessity of the greatest censure be made manifest. In the case of '
            'indefinite suspension from office imposed due to scandalous conduct, the '
            'procedure outlined in 34-8 shall be followed.\n\nAdopted. [the '
            'Presbyteries having previously voted 37 in favor, 6 against]\n\n[This '
            'amendment had come before the General Assembly in the previous year, '
            'under report from the Committee of Commissioners on Judicial Business, '
            'as noted under M17GA, 17-82, III, 15, p. 153.\n\nCONSTITUTIONAL INQUIRY '
            '& COMMUNICATIONS:\n\n[M17GA (1989), 17-118, p. 243.\n\nCommunication 7 '
            'From the Presbytery of Louisiana [not acted upon as a Constitutional '
            'Inquiry]\n\nAs a Presbytery we are concerned that the proposed change in '
            'the BCO 30-3, in seeking to clarify the distinction between suspension '
            'from the office and suspension from the sealing ordinances, ends up '
            'creeating definited suspension from the sealing ordinances as a distinct '
            'form of discipline. This implies that the sacraments are to be used as '
            'rewards and punishment as over against means of grace for repentant '
            'sinners who are trusting in Jesus Christ.\n\nIn the even that the '
            'Seventeenth General Assembly approved item 6 we hereby overture that a '
            'further BCO amendment be sent to the Presbyteries striking the second '
            'sentence of the proposed 30-3.\n\nAdopted at the Fall Stated Meeting of '
            'the Presbytery of Louisiana, 10 September 1988.\n\n[Note: \u201cas noted '
            'on p. 171, the Committee of Commissioners on Judicial Business did not '
            'act or report on Communication 7\u201d; However, the 17th General '
            'Assembly addressed these concerns by adoption of the amendment to BCO '
            '30-3, as noted on M17GA (1989), p 47, sending it to the Presbyteries for '
            'their advice and consent. Presbyteries having voted 37-6, the amendment '
            'then received final approval at the 18th GA [M18GA, 18-8, Item 4, p. '
            '47]',
        webUrl: 'https://pcahistory.org/bco/rod/30/03.html',
      ),
    ],
    'bco_30-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 183\u2013184',
        text:
            '159.--IV. Excommunication is the excision of an offender from the '
            'communion of the Church. This censure is to be inflicted only on account '
            'of gross crime or heresy, when the offender shows himself incorrigible '
            'and contumacious. The design of this censure is to operate on the '
            'offender as a means of reclaiming him, to deliver the Church from the '
            'scandal of his offence, and to inspire all with fear by the example of '
            'his discipline.\n\nOne might be incorrigible in the sense that he cannot '
            'be convinced of his error, and at the same time show no contumaciousness '
            '; such a one is not to be excommunicated. And since this censure is to '
            'be inflicted only in the case of gross crime or heresy, and indefinite '
            'suspension from the sacraments is expected to issue in excommunication '
            'or repentance, courts should be careful not to inflict this suspension '
            'except for gross crime or heresy.',
        webUrl: 'https://pcahistory.org/bco/rod/30/04.html',
      ),
      BcoCommentary(
        source: 'J. Aspinwall Hodge, What Is Presbyterian Law?',
        year: '1882',
        pageRef: 'p. 119',
        text:
            '\u201c...Excommunication is the most severe penalty, and is inflicted '
            'only when all other methods have failed to reclaim the offender. By it '
            'he is cut off from the visible Church \'as a heathen man and a '
            'publican.\' (Matt. 18:15-20 ; 1 Cor. 5:4-5).\u201d',
        webUrl: 'https://pcahistory.org/bco/rod/30/04.html',
      ),
      BcoCommentary(
        source: 'James H. Thornwell, "A Few More Words on the Revised Book of Discipline", Southern Presbyterian Review 13.1 (April 1860)',
        year: '',
        pageRef: 'pp. 8\u20139',
        text:
            '\u201cThe difference between suspension and ex-communication is a '
            'difference in degree and not in kind. Ex-communication is more solemn in '
            'form, and more permanent and stringent in operation. But in the '
            'Protestant Church it never amounts to anathema ; it never dissolves the '
            'vinculum by which the person, in baptism, is related to the Church and '
            'the covenant of grace. It never consigns him to hopeless and eternal '
            'perdition. The only case in which the Church would be at liberty to '
            'denounce such a censure would be one in which the party had notoriously '
            'sinned the sin unto death. That is the only crime which cuts off from '
            'the hope of mercy and the possibility of repentance, and is consequently '
            'the only crime of which the Church, in the exercise of her declarative '
            'power, is competent to say, that the man is excluded from all the '
            'benefits symbolized in baptism, and has become an alien and an outcast. '
            'But as God has furnished us with no means of knowing when this sin has '
            'been committed, He has virtually debarred us from this species of '
            'ex-communication. The highest censure left to us is that of permanent '
            'exclusion from the sacraments...\u201d\n\nJohn Calvin, Institutes of the '
            'Christian Religion, Book 4, Chapter 12, Section 10.\n\n\u201cWhen Christ '
            'promises that what His ministers bind on earth shall be bound in heaven, '
            'He limits the power of binding to the censure of the Church; by which '
            'those who are excommunicated are not cast into eternal ruin and '
            'condemnation, but, by hearing their life and conduct condemned, are also '
            'certified of their final condemnation, unless they repent. For '
            'excommunication differs from anathema; the latter, which ought to be '
            'very rarely or never resorted to, precluding all pardon, execrates a '
            'person, and devotes him to eternal perdition; whereas excommunication '
            'rather censures and punishes his conduct. And though it does, at the '
            'same time, punish the person, yet it is in such a manner, that, by '
            'warning him of his future condemnation, it recalls him to salvation. If '
            'he obey, the Church is ready to re-admit him to its friendship, and to '
            'restore him to its communion. Therefore, though the discipline of the '
            'Church admits not of our friendly association and familiar intercourse '
            'with excommunicated persons, yet we ought to exert all the means in our '
            'power to promote their reformation, and their return to the society and '
            'communion of the Church; as we are taught by the apostle, who says, '
            '\'Yet count him not as an enemy, but admonish him as a brother.\' [2 '
            'Thes. 3:15]. Unless this tenderness be observed by the individual '
            'members, as well as by the Church collectively, our discipline will be '
            'in danger of speedily degenerating into cruelty.\u201d\n'
            '\nOVERTURES:\n\nThis paragraph in the PCA\'s Book of Church Order has '
            'stood without amendment since 1974.\n\nCONSTITUTIONAL INQUIRY:\n\n(See '
            'BCO 46-5, 1985, 13-45, Item 43.)',
        webUrl: 'https://pcahistory.org/bco/rod/30/04.html',
      ),
    ],
    'bco_30-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 184',
        text:
            '160.--V. Deposition is the degradation of an officer from his office, '
            'and may or may not be accompanied with the infliction of other '
            'censure.\n\nCourts should be careful not to suspend indefinitely from '
            'office unless in cases in which deposition should follow if there is not '
            'repentance.\n\nOVERTURES:\n\nThere have been no successful overtures '
            'offered in amendment to this paragraph thus far in the history of the '
            'PCA.\n\nCONSTITUTIONAL INQUIRY:\n\n(See also BCO 30-1, 1986, 14-52, Item '
            '20)\n\n1982, 10-12, C., p. 49. Reference from the Presbytery of Central '
            'Florida.\n\n(Designated a Reference at the direction of the '
            'Sub-Committee on Judicial Business)\n\nThe Presbytery of Central Florida '
            'requests that the following overture be presented to the Tenth General '
            'Assembly of the Presbyterian Church in America:\n\nWhereas, BCO 36-7 '
            'declares that the censure of deposition is grounded in the judgment that '
            'an ordained person is \u201cdisqualified for the office of the Christian '
            'ministry (or Ruling Eldership, etc.);\u201d and\n\nWhereas, BCO 37-4 in '
            'providing for the restoration of a deposed officer allows the court to '
            '\u201cdeclare you absolved from the said sentence of deposition\u201d '
            'and to \u201crestore you to said office\u201d; and\n\nWhereas, these '
            'provisions do not address the question of ordination status of the '
            'individual under consideration;\n\nNow therefore, the Presbytery of '
            'Central Florida requests answers to the following questions:\n\n1982, '
            '10-75, III, Item 8, p. 99\n\nThat the General Assembly answers Reference '
            '1 from the Presbytery of Central Florida with the following '
            'response:\n\nQ. 1. While under the censure of deposition, what is the '
            'status of the ordination of the individual?\n\nAnswer: A person under '
            'the censure of deposition has no ordination status (BCO 30-5).\n\nQ. 2 - '
            'In the process of restoration to office, is it necessary for the '
            'adjudicating court to:\n\na. Undertake the entire ordination '
            'process?\n\nb. Simply ask the constitutional questions for '
            'ordination?\n\nc. Simply declare the restored offender again fully '
            'qualified for the office from which he was deposed?\n\nAnswer: The court '
            'of jurisdiction, in restoring a deposed minister, should proceed with '
            'great caution in accordance with BCO 34-8 and 37-7, and in proceeding to '
            're-ordination, the court shall as a minimum, require the reaffirmation '
            'of the ordination vows, and the laying on of hands. The man shall not be '
            'reordained until he has received a proper call.',
        webUrl: 'https://pcahistory.org/bco/rod/30/05.html',
      ),
    ],
    'bco_31-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 185\u2013186',
        text:
            '162.--II. It is the duty of all church Sessions and Presbyteries to '
            'exercise care over those subject to their authority; and they shall, '
            'with due diligence and great discretion, demand from such persons '
            'satisfactory explanations concerning reports affecting their Christian '
            'character. This duty is more imperative when those who deem themselves '
            'aggrieved by injurious reports shall ask an investigation. If such '
            'investigation, however originating, should result in raising a strong '
            'presumption of the guilt of the party involved, the court shall '
            'institute process, and shall appoint a prosecutor to prepare the '
            'indictment and to conduct the case. This prosecutor shall be a member of '
            'the court, except that, in a case before the Session, he may be any '
            'communing member of the same congregation with the accused.\n\nThe '
            'phrase, \u201cwith due diligence and great discretion,\u201d qualifies '
            'the imperative \u201cshall demand\u201d to this extent, that the court '
            'may, for satisfactory reasons, omit such demand in some cases when there '
            'are injurious reports; but only for extreme reasons would a court be '
            'justified in refusing a request for an investigation, if made by a party '
            'claiming to be aggrieved by injurious reports. The principle, however, '
            'remains, that the court is bound to preserve the honor of religion (173) '
            'at whatever cost; and it cannot but fail of its most important function '
            'as a court of the Lord Jesus Christ, if it does not use its power of '
            'discipline to preserve the Church. But it is the court itself, and not '
            'any individual, that determines, in every instance, whether there shall '
            'be an investigation.\n\nWhen, however, the court, by committee or '
            'otherwise, makes a demand or begins an inquiry, the object of such '
            'demand or inquiry being to determine whether there is ground of '
            'vindication or of instituting process, then \u201cinvestigation\u201d '
            'has originated (and investigation may originate and conclude at the same '
            'meeting, or even at the same session, of the court).\n\nAnd after an '
            'investigation is once originated, the court no longer has discretion not '
            'to institute process, if the investigation results in raising a strong '
            'presumption of guilt of the accused. It appears, then, that, after an '
            'investigation, the court must always institute process, except where the '
            'court judges that the investigation fails to result in raising a strong '
            'presumption of guilt, and, of course, the court may institute process, '
            'even when the members of the court believe that there is no guilt, if '
            'they are persuaded that this is desirable for the vindication of '
            'innocence or for other reasons. The sum of the matter is, that the court '
            'has unlimited discretion (subject, as in all matters, to the review of '
            'higher courts), only that it has not discretion to raise by '
            'investigation a strong presumption of guilt and then not institute '
            'process. A strong presumption means a belief by the members of the court '
            'that evidence as then known to them would indicate that guilt probably '
            'exists, unless evidence to the contrary can be produced not then known '
            'to them.\n\nThe court institutes process by appointing a prosecutor. It '
            'is the duty of the prosecutor thus appointed to prepare the indictment '
            'and to conduct the case ; that is, the court, after the appointment of '
            'the prosecutor, is simply a judge, and the whole responsibility of '
            'representing the Church as an accuser is on the prosecutor. This '
            'appointed prosecutor must be a member of the court, or, in the case of '
            'the Session, a communicating member in good standing in its '
            'church.\n\nOVERTURES :\n\nNo overtures have been successfully proposed '
            'in amendment of BCO 31-2, 1973-2009.\n\nCONSTITUTIONAL INQUIRY AND '
            'REFERENCES:\n\n1986, 14-52, 43, p. 128. That Constitutional Inquiry #14, '
            'Question 1 from the Palmetto Presbytery, be answered in the following '
            'way:\n\n1. No. It would be improper to appoint a judicial commission in '
            'the absence of \u201cstrong presumption of guilt\u201d (BCO 31-2 para. '
            '2).\n\n2. See answer to 1.\n\n1998, 26-68, Reference #R-1, p. '
            '228\n\n\u201cMust Presbytery Proceed to Trial Without Thorough '
            'Investigation?\u201d\n\nResponse:\n\nIt is the advice of the Committee '
            'that BCO 31-2 permits the Presbytery, through an investigation, to '
            'determine before adjudication that there is a \u201cstrong presumption '
            'of guilt\u201d with respect to reports or charges against an accused. '
            'The Presbytery having received reports or charges against one of its '
            'members should investigate to determine whether the evidence warrants '
            'proceeding with a trial (34-2). Because of differences of opinion within '
            'the Presbytery and among the CCB, we recommend that the Presbytery '
            'propose amendments to BCO 31, 32, and 34 to clarify this '
            'issue.\n\nRELATED JUDICIAL CASES :\n\n90. Complaint of William A. '
            'Conrad, et al., vs. Central Carolina Presbytery [Case 92-4 (1992), '
            '20-69, III, Item 8, p. 232]\n\n95. Complaint of William A. Conrad, et '
            'al. vs. Central Carolina Presbytery [Case 92-6, 21-71, III, Item 5, p. '
            '213]\n\n113. Complaint of Paul R. McDade vs. Susquehanna Valley '
            'Presbytery [Case 93-11 (1995), 23-22, III, Item 4, p. 108].',
        webUrl: 'https://pcahistory.org/bco/rod/31/02.html',
      ),
    ],
    'bco_31-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 187\u2013188',
        text:
            '163.--III. The original and only parties in a case of process are the '
            'accuser and the accused. The accuser is always the Presbyterian Church '
            'in the United States, whose honor and purity are to be maintained. The '
            'prosecutor, whether voluntary or appointed, is always the representative '
            'of the Church, and as such has all its rights in the case. In appellate '
            'courts the parties are known as appellant and appellee.\n\nThe original '
            'parties are the only parties ; for the parties are not changed by the '
            'transference of the cause from court to court. In the appellate courts '
            'the party appealing is to be known as the appellant, and the other, the '
            'appellee ; but in the court of original jurisdiction, the parties are '
            'known as accuser and accused. The accuser is always the Church ; for '
            'whether the court appoints a prosecutor, or accepts as prosecutor some '
            'one volunteering to act as prosecutor, the prosecutor is, by that '
            'appointment or acceptance, made the representative of the Church. '
            'Henceforth the prosecutor represents the Church as accuser ; the court, '
            'as judge. Of course, the court may change the personnel of the '
            'prosecutor pending the process, and the prosecutor may be more than one '
            'individual. Since the prosecutor represents the Church as accuser, '
            'having the same rights and responsibilities whether appointed or '
            'voluntary, he cannot sit as a judge pending the process. He therefore '
            'has no vote in the court, pending the process, on any question relating '
            'thereto.\n\nW.H. Workman, Presbyterian Rule and Form of Government '
            '(1898, pp. 60-61):\n\n[Remark.--The prosecutor, therefore, being always '
            'a party representatively, if the accused appeals, becomes appellee, but '
            'if accused be acquited, he, the prosecutor, in that event, not being a '
            '\u201cparty against whom a decision has been rendered\u201d (F.G. 225), '
            'cannot appeal. But he may complain, because any member of the church '
            'submitting to its authority may complain against every species of '
            'decision, except where a party against whom a decision has been rendered '
            'takes his appeal against it. (F.G. 267.) The object of the complaint is '
            'to insure that justice is done to all parties; that, on the one hand, '
            'the guilty shall not escape through a partiality of the lower courts '
            'and, on the other hand, that an injustice shall not be done to any who '
            'are willing to submit to injustice rather than to have the trouble of '
            'conducting an appeall; in either of which cases the church suffers '
            'reproach by the partiality of the court.\n\n[The old Book of Discipline '
            'makes this very clear. \u201cThe cases in which complaint is proper and '
            'advisable are such as the following: Where the judgment of the inferior '
            'court may be favorable to the only party which has been plaed at their '
            'bar, or the judgment may do no wrong to any individual; or the party who '
            'is aggrieved by it may decline the trouble of conducting an appeal. In '
            'any of these cases no appeal is to be expected.\u201d Notice, however, '
            'that in case a complaint is taken by the prosecutor or any one else, '
            'that the parties are denominated complainant and respondent, and the '
            'party on defence is then not the original party, but the court. (Art. '
            '245.) Yet as the accused (original) party is personally affected and '
            'interested he ought to be appointed, or, at least, permitted to nominate '
            'the respondent\'s representative. (See Art. 245-\'46.)]\n\nCharles '
            'Hodge, on Chapter 3, paragraph 7 of \u201cThe Revised Book of '
            'Discipline\u201d (1858), p. 700.\n\nThe only parties to a trial are the '
            'accuser and the accused,\n and in appellate courts, they appear as '
            'appellant and appellee.\n\nThis is a very important section. It '
            'simplifies greatly the whole\n process of trial. The lower court does '
            'not appear before the higher, in cases of appeal, as an accused party '
            'called upon to\n defend its decision. If a man is charged before the '
            'session with\n any offence, the session decides in favour of the accuser '
            'or the\n accused. If either party be dissatisfied, he appeals to the '
            'Presbytery, and they, i.e. the accuser and the accused, plead their\n '
            'cause there, and the Presbytery decides. If still not satisfied,\n they '
            'plead it before the Synod, and then before the Assembly.\n The parties '
            'are the same from first to last. We are done, it is\n to be hoped, for '
            'ever with the puzzle about \u201coriginal parties.\u201d This matter, '
            'however, will be brought up in a subsequent chapter.',
        webUrl: 'https://pcahistory.org/bco/rod/31/03.html',
      ),
    ],
    'bco_31-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 188\u2013189',
        text:
            '165.--V. An injured party shall not become a prosecutor of personal '
            'offenses without having tried the means of reconciliation and of '
            'reclaiming the offender, required by Christ : \u201cMoreover, if thy '
            'brother shall trespass against thee, go and tell him his fault between '
            'thee and him alone; if he shall hear thee, thou hast gained thy brother '
            'but if he will not hear thee, then take with thee one or two more, that '
            'in the mouth of two or three witnesses every word may be '
            'established.\u201d (Matthew XVIII. 15, 16.) A church court, however, may '
            'judicially investigate personal offenses as if general when the '
            'interests of religion seem to demand it. So, also, those to whom private '
            'offenses are known cannot become prosecutors without having previously '
            'endeavored to remove the scandal by private means.\n\nWhether the person '
            'proposing to act as voluntary prosecutor shall be accepted by the court '
            'is a question on which the accused should be heard, and he should be '
            'allowed to introduce evidence that the proposed prosecutor has not '
            'complied with the conditions here prescribed ; for only the accused '
            'would be able to dispute his claim that he had. And courts should '
            'rigidly inquire whether this condition has been complied with before '
            'accepting a voluntary prosecutor.',
        webUrl: 'https://pcahistory.org/bco/rod/31/05.html',
      ),
    ],
    'bco_31-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 189',
        text:
            '166.--VI. When the offence is general, the cause may be conducted either '
            'by any person appearing as prosecutor, or by a prosecutor appointed by '
            'the court.\n\nThis is true also when the offence is personal, the '
            'previous paragraph not meaning that only the injured party could become '
            'voluntary prosecutor, but that he could not without previously complying '
            'with the conditions. This limitation applies only to the injured '
            'party.\n\n\u201cAny person\u201d must be limited to \u201cany member of '
            'the Church submitting to its authority\u201d (267) ; for certainly no '
            'other could represent the Church and have all its rights in the case. '
            'But the appointed prosecutor must be a member of the particular church '
            'or of the court (162).',
        webUrl: 'https://pcahistory.org/bco/rod/31/06.html',
      ),
    ],
    'bco_31-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 189\u2013190',
        text:
            '167.--VII. When the prosecution is instituted by the court, the previous '
            'steps required by our Lord in the case of personal offences are not '
            'necessary. There are many cases, however, in which it will promote the '
            'interests of religion to send a committee to converse in a private '
            'manner with the offender, and endeavour to bring him to a sense of his '
            'guilt, before instituting actual process.\n\nAnd the principle would '
            'seem to require this to be done in all cases where the offence appears '
            'to have been against the court, or its members as such.',
        webUrl: 'https://pcahistory.org/bco/rod/31/07.html',
      ),
    ],
    'bco_31-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 190',
        text:
            '168.--VIII. Great caution ought to be exercised in receiving accusations '
            'from any person who is known to indulge a malignant spirit towards the '
            'accused; who is not of good character; who is himself under censure or '
            'process; who is deeply interested in any respect in the conviction of '
            'the accused; or who is known to be litigious, rash, or highly '
            'imprudent.\n\nThis makes it clear that the court is not obliged, either '
            'itself to institute process by appointing a prosecutor, or to order the '
            'beginning of process by accepting a voluntary prosecutor ; for, since '
            'the prosecutor represents the Church, it is a serious matter to give one '
            'such rights. But the court may, on the ground of accusations brought '
            'before it, originate an investigation, and institute process, without '
            'appointing as prosecutor him who volunteers to be prosecutor. The court '
            'is not bound to assign its reasons for not accepting one as a voluntary '
            'prosecutor.\n\nCharles Hodge, on Chapter 3, paragraph 8 of \u201cThe '
            'Revised Book of Discipline\u201d (1858), p. 701.\n\nThe eighth section '
            'directs that great caution should be exercised in entertaining charges '
            'presented by malignant, disreputable, or interested parties.',
        webUrl: 'https://pcahistory.org/bco/rod/31/08.html',
      ),
    ],
    'bco_31-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 190\u2013191',
        text:
            '169.--IX. Every voluntary prosecutor shall be previously warned, that if '
            'he fail to show probable cause of the charges, he must himself be '
            'censured as a slanderer of the brethren, in proportion to the malignity '
            'or rashness manifested in the prosecution.\n\nThis warning must be given '
            'when he is accepted as prosecutor ; and the failure of the court to '
            'institute process against him after the trial is over is ipso facto '
            'acknowledgment by the court that he did show the probable cause here '
            'required. To show probable cause means to show that he had probable '
            'evidence of the truth of the charges when he undertook the '
            'prosecution.',
        webUrl: 'https://pcahistory.org/bco/rod/31/09.html',
      ),
    ],
    'bco_31-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 191',
        text:
            '170.--X. When a member of a church court is under process, all his '
            'official functions may be suspended at its discretion ; but this shall '
            'never be done in the way of censure.\n\nThis is a particular application '
            'of the principle that one may have the exercise of his official '
            'functions suspended without censure ; but the court should be slow to do '
            'this, unless prudence requires it, lest it work to the prejudice of the '
            'accused or make the court appear precipitate.',
        webUrl: 'https://pcahistory.org/bco/rod/31/10.html',
      ),
    ],
    'bco_31-11': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 191',
        text:
            '171.--XI. In the discussion of all questions arising in his own case, '
            'the accused shall exercise the rights of defendant only, not of '
            'judge.\n\n(Cf. rem. under 163 as to the prosecutor.) No one is accused, '
            'in the technical sense here meant, until the court has determined that '
            'there shall be process, otherwise, a designing man could by accusation '
            'sift the court to suit his own plans.',
        webUrl: 'https://pcahistory.org/bco/rod/31/11.html',
      ),
    ],
    'bco_32-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            'OF GENERAL PROVISIONS APPLICABLE TO ALL CASES OF PROCESS.\n\nTwenty '
            'provisions are given. The first ten look rather to the protection of the '
            'accused. The first two guard the court against a wrong temper in '
            'conducting a trial or commencing a process ; the other eight require '
            'sufficient citations. Paragraph 3 prevents undue haste at the beginning '
            '; the fourth gives the accused, as well as the other party, the right of '
            'official citation of all witnesses wanted ; the fifth requires the '
            'indictment to be definite ; the sixth gives the accused the benefit of a '
            'second citation ; the seventh defines more closely the provision of the '
            'sixth ; the eighth forbids the taking of evidence at a distance without '
            'reasonable notice to the accused ; the ninth protects any person from '
            'being put on trial for offences alleged to have been committed at a '
            'distance without due investigation and safeguards ; and the tenth '
            'requires that the citations be served as well as issued. The other ten '
            'paragraphs look to the impartiality and fairness of the trial after the '
            'issue is joined. Paragraph eleventh defines the functions of the '
            'judicial committee ; the twelfth requires that a solemn charge be made '
            'to the members of the court as judges ; the thirteenth lays down the '
            'rule for the examination of witnesses ; the fourteenth prescribes how '
            'issues arising in the course of the trial shall be settled ; the '
            'fifteenth prescribes the order of procedure in the trial of a cause in a '
            'court of original jurisdiction ; the sixteenth lays down the rule to '
            'govern challenges ; the seventeenth states some requirements that a '
            'member must observe or lose his qualification for continuing as a judge '
            'in the cause ; the eighteenth defines the record of the cause and its '
            'uses ; the nineteenth gives directions as to counsel ; and the twentieth '
            'states and limits the time within which process must begin. These '
            'general regulations are not easily mastered and remembered always, but '
            'the observance of them is of great importance.\n\n172.--I. It is '
            'incumbent on every member of a court of Jesus Christ engaged in a trial '
            'of offenders, to bear in mind the inspired injunction: \u201cIf a man be '
            'overtaken in a fault, ye which are spiritual restore such an one in the '
            'spirit of meekness, considering thyself lest thou also be '
            'tempted.\u201d\n\nThe trial proper begins with the charge of the '
            'Moderator to the court (183), while the process begins with the '
            'determination of the court that there shall be a judicial prosecution, '
            'and judicial procedure begins with the determination of the court to '
            'investigate ; but this principle, while especially imperative during the '
            'trial proper, applies throughout the whole judicial procedure, as indeed '
            'in all dealing with offenders.',
        webUrl: 'https://pcahistory.org/bco/rod/32/01.html',
      ),
    ],
    'bco_32-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 194\u2013195',
        text:
            '174.--III. When a charge is laid before the Session or Presbytery, it '
            'shall be reduced to writing, and nothing shall be done at the first '
            'meeting of the court, unless by consent of the parties, except to '
            'appoint a prosecutor, and order the indictment to be drawn, a copy of '
            'which, with the witnesses then known to support it, shall be served on '
            'the accused, and to cite all parties and their witnesses to appear and '
            'be heard at another meeting, which shall not be sooner than ten days '
            'after such citation; at which meeting of the court the charges shall be '
            'read to the accused, if present, and he shall be called upon to say '
            'whether he be guilty or not. If he confess, the court may deal with him '
            'according to its discretion; if he plead and take issue, the trial shall '
            'proceed. Accused parties may plead in writing when they cannot be '
            'personally present, and parties necessarily absent should have counsel '
            'assigned to them.\n\nA charge may be laid before the court either by a '
            'person proposing to be a voluntary prosecutor, or by a person not so '
            'proposing, or by the court itself at the conclusion of an investigation. '
            'The charge may, indeed, be first presented orally ; but it is not to be '
            'considered as laid before the court until the court has possession of a '
            'written copy approved by the party that lays the charge before the '
            'court. The \u201cparties\u201d whose consent is here spoken of are the '
            'Church and the accused, that is, the prosecutor and the accused ; and '
            'hence the question of this consent cannot receive answer until after the '
            'prosecutor has been appointed or accepted. With the consent of the '
            'parties, the whole trial may be concluded at that meeting ; but this '
            'could only be where both parties were then present, and all the '
            'witnesses. Without such consent, only two things may be done. The first '
            'of these is \u201cto appoint a prosecutor, and order the indictment to '
            'be drawn\u201d by him (cf. 162) ; and the second is, \u201cto cite all '
            'parties and their witnesses,\u201d that is, to order the Moderator or '
            'the Clerk to issue these citations (175). The citation to the accused '
            'must include a copy of the indictment as prepared by the prosecutor. He '
            'may prepare the indictment and furnish a copy of it for this purpose to '
            'whichever officer has been instructed to issue the citation to the '
            'accused, after the meeting of the court is over ; but the copy of the '
            'citation must reach the hands of the accused in due time (178). The '
            'citations to the witnesses need contain only the title of the cause, and '
            'the time and place of the meeting for trial, together with the official '
            'command or request to be present for giving evidence. The meeting for '
            'trial must be at least ten days after the day on which the citation to '
            'the accused is served upon him ; but how many days after the citations '
            'reach the witnesses is left undetermined ; but the principle is that the '
            'parties and witnesses shall have due time to prepare for the trial and '
            'to arrange for attendance. The charge, as first written, need not be in '
            'the form of an indictment ; but the \u201ccharges\u201d to be read to '
            'the accused is synonymous with the indictment. The accused may, of '
            'course, object to the indictment, and may move that it be rejected by '
            'the court, as not in proper form (164), or as being too indefinite '
            '(176), or he may move that it be amended so as to eliminate '
            'imperfections ; but if the court sustains the indictment, the accused '
            'must plead either \u201cguilty\u201d or \u201cnot guilty,\u201d or he '
            'may plead \u201cguilty in part, and not guilty in part\u201d (specifying '
            'what is admitted and what is denied). If a party is necessarily absent, '
            'he may take either of two courses. He may plead in writing. This plea he '
            'may accompany with requests that such or such be assigned as his '
            'counsel, that the trial be postponed, etc. He may send in an oral '
            'communication (which, however, should be reduced to writing and put on '
            'record), and this may be accepted by the court in lieu of a '
            'communication written by the accused himself ; or he may send no '
            'communication, or may send a communication declining to plead ; and in '
            'either case, even if he declines to plead at all, and not merely in his '
            'absence, the trial may not proceed at that meeting, or without a second '
            'citation. The court is obliged to assign, as counsel, whomsoever the '
            'accused may nominate (within the limits of paragraph 190), if such '
            'nominee consents ; and no one may be tried in his absence without what '
            'the court considers proper counsel.\n\nCharles Hodge, on Chapter 4, '
            'paragraph 1of \u201cThe Revised Book of Discipline\u201d (PCUSA, 1858), '
            'p. 701.\n\nThis chapter relates to actual process. The corresponding '
            'chapter of the present Book contains twenty-three sections, \u201cwhich '
            'are here reduced to fifteen. This chapter directs,\n 1. \u201cWhat is to '
            'be done at the first meeting of the judicatory,\n which has determined '
            'to institute process against an accused\n person. The trial may proceed '
            'at once by consent of parties.\n If either party is not prepared, copies '
            'of the charges shall be\n given to the accused, together \u201cwith the '
            'list of the witnesses then known, (not, as before, all the witnesses,) '
            'and citations\n are to be issued to all concerned, to appear at the next '
            'meeting of the judicatory to have the case heard and decided. Ten\n days '
            'are to intervene between the date of the citation and the\n day of '
            'trial. At the second meeting the accused is to plead in\n writing to the '
            'charges; and if he fail to do so, at the third\n meeting they shall be '
            'taken as confessed, provided he has been\n duly cited. This seems to be '
            'a new provision. It does not\n contemplate a case of contumacy, or '
            'refusing to answer a\n citation, for which a different provision is made '
            'in a subsequent\n section. We are not sure that we understand this '
            'clause, but\n presume the intention was to provide for the case in which '
            'an\n accused party should refuse or fail, when arraigned, to answer\n '
            'the charges against him. If he fail to plead not guilty, it is to\n be '
            'assumed that he acknowledges himself guilty. In which\n case there is no '
            'need of a trial. In the case of contumacy, the\n trial is to proceed. '
            'OVERTURES & AMENDMENTS:\n\n1987 - M15GA, Committee of Commissioners on '
            'Judicial Business, 15-83, III.4, p. 169\n\nThat BCO 32-3 be amended by '
            'adding, following the first sentence: \u201cIt is appropriate that with '
            'each citation the moderator or clerk call the attention of the parties '
            'to the Rules of Discipline (BCO chapters 27-46) and assist the parties '
            'to obtain access to them.\u201d\n\nThe Committee calls the attention of '
            'the GA to the last sentence of BCO 27-4. \u201cTherefore, teaching '
            'elders must: a) instruct the officers in discipline, b) instruct the '
            'Congregation in discipline, c) jointly practice it in the context of the '
            'congregation and church courts.\u201d (Emphasis added.) Adopted and sent '
            'down to presbyteries for advice and consent.\n\n1988 - M16GA, 16-10 Book '
            'of Church Order Amendments, Item 17, pp. 108-109\n\nFollowing a '
            'unanimous vote in favor by all 42 presbyteries, the amendment was '
            'adopted by the 16th General Assembly.\n\n2001 - M29GA, 29-11, III, Item '
            '11, pp. 206-207 - Overture 13 from Central Carolina Presbytery '
            ':\n\n\u201cAmend BCO 32-3 Regarding Sequence of Meetings of a Court in '
            'Judicial Process\u201d\n\n32-3. It is appropriate that with each '
            'citation the moderator or clerk call the attention of the parties to the '
            'Rules of Discipline (BCO 27 through 46) and assist the parties to obtain '
            'access to them. When a charge is laid before the Session or Presbytery, '
            'it shall be reduced to writing and nothing shall be done at the first '
            'meeting of the court unless by consent of parties, except:\n\n1. to '
            'appoint a prosecutor,\n\n2. to order the indictment drawn and a copy, '
            'along with names of witnesses then known to support it, served on the '
            'accused, and\n\n3. to cite all parties and their witnessesthe accused to '
            'appear and be heard at another meeting which shall not be sooner than '
            'ten days after such citation.\n\nAt the second meeting of the court, the '
            'charges shall be read to the accused, if present, and he shall be called '
            'upon to say whether he be guilty or not. If the accused confesses, the '
            'court may deal with him according to its discretion; if he plead and '
            'take issue, the trial shall proceedbe scheduled and all parties and '
            'their witnesses cited to appear. The trial shall not be sooner than 14 '
            'days after such citation. Accused parties may plead in writing when they '
            'cannot be personally present. Parties necessarily absent should have '
            'counsel assigned to them.\n\nRationale - Current wording explicitly '
            'mentions only two meetings of the court. The proposed change would '
            'result in three meetings in any full case of process--indictment '
            'meeting, arraignment and trial. The current wording often results in '
            'unnecessary efforts. First, if the witnesses appear at the second '
            'meeting but the accused pleads guilty, then the witnesses appeared '
            'unnecessarily. Second, if the accused fails to appear, then the '
            'witnesses also appeared unnecessarily. Third, current wording implies '
            'that if the accused pleads not guilty, the trial could '
            '\u201cproceed\u201d at that second meeting. Thus, the prosecutor would '
            'need to completely prepare his case for the second meeting. However, if '
            'the accused pleads guilty the prosecutor would have fully prepared a '
            'case that he does not prosecute.\n\nOn the other hand, if this second '
            'meeting is treated like an arraignment hearing, the problems go away. '
            'There would be no need to cite witnesses to appear at that meeting nor '
            'for the prosecutor to completely prepare the case prior to that meeting. '
            'If the accused pleads guilty at the second meeting (arraignment), the '
            'court can deal with him without ever needing to cite witnesses or to '
            'prepare a full prosecution. If he pleads not guilty at that meeting, '
            'then the witnesses will be cited to appear at the trial and the '
            'prosecutor can prepare his case in full, knowing there will be a '
            'trial.\n\nAdopted at the Winter Stated Meeting of Central Carolina '
            'Presbytery on January 26, 2001.\n\nAttested by: /s/ David Frierson, '
            'Stated Clerk\n\n2002 - M30GA, 30-10, Item 3, pp. 64-65.\n\nAmendment of '
            '32-3 was approved by a vote of presbyteries, 48 to 3, and subsequently '
            'adopted by the 32nd General Assembly.',
        webUrl: 'https://pcahistory.org/bco/rod/32/03.html',
      ),
    ],
    'bco_32-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 197\u2013198',
        text:
            '177.--VI. When an accused person shall refuse to obey a citation, he '
            'shall be cited a second time ; and this second citation shall be '
            'accompanied with a notice that if he do not appear at the time appointed '
            '(unless providentially hindered, which fact he must make known to the '
            'court), or that if he appear and refuse to plead, he shall be dealt with '
            'for his contumacy, as hereinafter provided.\n\nHis absence without '
            'sending in an excuse is presumptive evidence that he refuses. According '
            'to the principle here laid down, if he comes upon the first citation, '
            'but refuses to plead, the court would cite a second time, instead of '
            'then proceeding to deal with him for contumacy. (Cf. pars. 193 and 199.) '
            'The reason for this patient forbearance is, that the court of Christ may '
            'show his gentleness, and thereby save the accused, and that the course '
            'enjoined upon the court in cases of contumacy is too severe to be '
            'entered upon without necessity.\n\nCharles Hodge, on Chapter 4, '
            'paragraph 4 of \u201cThe Revised Book of Discipline\u201d (PCUSA, 1858), '
            'pp. 701-702.\n\nIf the accused refuse to appear after a second '
            'citation\n and due warning, he is to be suspended from the communion '
            'of\n\nthe church, and the case proceeded with as though he were\n '
            'present. The court may appoint some one to represent the\n\naccused, '
            'which representative, if a member of the court, shall not sit in '
            'judgment on the case. The representative of the\n\naccused party need '
            'not be a member of the court. OVERTURES & AMENDMENTS :\n\n1998 - '
            'Overture 15 from North Georgia Presbytery [M26GA, 26-55, III, Item 10, '
            'pp. 203-204.]\n\n\u201cAmend BCO 32-6 To Clarify Provisions for '
            'Contumacy\u201d\n\nWhereas, the honor of Christ and His church are '
            'damaged by persons who assail the rules to flout the court; '
            'and\n\nWhereas,BCO 32-6 is vague, in that the provisions for contumacy '
            'are never clearly \u201chereinafter provided;\u201d and\n\nWhereas, the '
            'framers of the BCO intended that contumacy should be dealt with in a '
            'timely, and expeditious manner;\n\nTherefore, be it resolved, that the '
            'session of The Rock Presbyterian Church overtures the twenty-sixth '
            'General Assembly to change the Book of Church Order 32-6 from its '
            'present reading:\n\n\u201cif he appear and refuse to plead he shall be '
            'dealt with for his contumacy, as hereinafter provided.\u201d\n\nTo read '
            'instead:\n\n\u201cif he appear and refuse to plead, or flout the court '
            'and/or otherwise reject its authority, he shall be dealt with for his '
            'contumacy immediately.\u201d\n\n1998 - Substitute amendment from the '
            'Committee on Bills and Overtures [M26GA, 26-55, III, Item 10, pp. '
            '202-203:\n\n10. That Overture 15 from North Georgia Presbytery be '
            'answered in the affirmative by the following substitute (see also '
            'Committee on Constitutional Business, p. 229)\n\nAdopted and sent down '
            'to presbyteries for advice and consent.\n\nThat Book of Church Order '
            '32-6, 33-2, 33-3, and 34-4 be amended as follows (current language of '
            'BCO provided on the left hand column for comparison):Current Language '
            'BCO 32-6Proposed Amendment 32-6 When an accused person shall refuse to '
            'obey a citation, he shall be cited a second time. This second citation '
            'shall be accompanied with a notice that if he does not appear at the '
            'time appointed (unless providentially hindered, which fact he must make '
            'known to the court), or that if he appear and refuse to plead, he shall '
            'be dealt with for his contumacy, as hereinafter provided.\n\n32-6 a. '
            'When an accused person shall refuse to obey a citation, he shall be '
            'cited a second time. This second citation shall be accompanied with a '
            'notice that if he does not appear at the time appointed (unless '
            'providentially hindered, which fact he must make known to the court) he '
            'shall be dealt with for his contumacy (cf. BCO 33-2; 34-4).\n\nb. When '
            'an accused person shall appear and refuse to plead, or otherwise refuse '
            'to cooperate with lawful proceedings, he shall be dealt with for his '
            'contumacy (cf. BCO 33-2; 34-4). See the text of the other amendments, '
            '33-2, 33-3, 34-4, under their respective sections.CONSTITUTIONAL INQUIRY '
            ':\n\nPCUS, 1881\u2014\n\nThe answer to overture No. 16 was adopted, and '
            'is as follows :\n\nNo. 16: From the Presbytery of Mecklenburg, '
            'asking,\n\n1: Do the provisions of our book (Rules of Discipline, '
            'Chapter 6, Sec. 6, and Chapter 3, Sec. 2,) apply to the case of a member '
            'of the church who refuses to obey the citation of the Session to appear '
            'for conference concerning matters affecting the Christian character, '
            'when no formal charge has been preferred?\n\n2. If they do not, by what '
            'means must the Session deal with resistance of its authority when it '
            'exercises the power conferred in Chapter 5, Sec. 3, Par. 5, Form of '
            'Government, and endeavors to perform the duty therein devolved on it of '
            'inquiring into the knowledge, principles and Christian conduct of the '
            'church members under its care by directing the members to appear before '
            'the Session ?\n\nThe Committee recommend the following answer '
            ':\n\nChapter 6, Sec. 6, Rules of Discipline, refers only to formal '
            'judicial prosecution, and requires that charges be preferred and the '
            'offender formally cited to appear before the Session for the purpose of '
            'answering the charges.\n\nChapter 3, Sec. 2, Rules of Discipline, refers '
            'to offences which may call for judicial prosecution, or may not, '
            'according to the nature of the case; and of this the Session is to be '
            'the judge. The authority of the Session, as defined in Chapter 5, Sec. '
            '3, Par. 5, Form of Government, allows the Session to enquire into the '
            '\u201cknowledge, principles and Christian conduct of the members under '
            'its care,\u201d without formal judicial process. If its authority is '
            'resisted when so exercised, the Session may then proceed to cite the '
            'offender to appear, as provided in Chap. 6, Rules of Discipline. If, '
            'after two citations, its authority is still resisted, the Session may '
            'proceed to deal with the offender for contumacy, as provided in Chapter '
            '7, Sec. 2, Rules of Discipline.',
        webUrl: 'https://pcahistory.org/bco/rod/32/06.html',
      ),
    ],
    'bco_33-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 207\u2013208',
        text:
            '192.--I. Process against all church members, other than Ministers of the '
            'gospel, shall be entered before the Session of the church to which such '
            'members belong ; except in cases in which the Session is rendered '
            'incapable of exercising jurisdiction, in which case process shall be '
            'entered before the Presbytery.\n\n(Cf. 161.) After process has been '
            'entered, the court may transfer the case to another Session, according '
            'to 180, in cases to which that paragraph will apply. If a Session '
            'considers itself incapable in any case, it must refuse to let process '
            'commence before it, assigning its reason.',
        webUrl: 'https://pcahistory.org/bco/rod/33/01.html',
      ),
    ],
    'bco_33-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 208',
        text:
            '193.--II. When an accused person, having been twice duly cited, shall '
            'refuse to appear before the Session, or, appearing, shall refuse to '
            'plead, the court shall enter upon its records the facts, together with '
            'the nature of the offence charged, and he shall be suspended from '
            'sealing ordinances for his contumacy. This sentence shall be made '
            'public, and shall in no case be removed until he has not only repented '
            'of his contumacy, but given satisfaction in relation to the charges '
            'against him.\n\nThe entry upon the records is the \u201csentence\u201d '
            'which is to be published ; and the court should be careful in making it '
            'up. The court is allowed to put merely the nature of the offence in the '
            'sentence, omitting the details ; but it may, in its discretion, copy the '
            'whole indictment into the sentence. If the accused repents of his '
            'contumacy, he then has the right to plead to the indictment as if he had '
            'not been contumacious ; that is, if he satisfies the court concerning '
            'his contumacy. Should he plead \u201cnot guilty,\u201d the trial will '
            'proceed. But he remains suspended until his acquittal, or, if convicted, '
            'until the censure of the court for the offence charged in the indictment '
            'is exhausted.OVERTURES :\n\nOverture 15 From North Georgia '
            'Presbytery\n\n\u201cAmend BCO 32-6 To Clarify Provisions for '
            'Contumacy\u201d\n\nWhereas, the honor of Christ and His church are '
            'damaged by persons who assail the rules to flout the court; '
            'and\n\nWhereas,BCO 32-6 is vague, in that the provisions for contumacy '
            'are never clearly \u201chereinafter provided;\u201d and\n\nWhereas, the '
            'framers of the BCO intended that contumacy should be dealt with in a '
            'timely, and expeditious manner;\n\nTherefore, be it resolved, that the '
            'session of The Rock Presbyterian Church overtures the twenty-sixth '
            'General Assembly to change the Book of Church Order 32-6 from its '
            'present reading :\n\n\u201cif he appear and refuse to plead he shall be '
            'dealt with for his contumacy, as hereinafter provided.\u201d\n\nTo read '
            'instead :\n\n\u201cif he appear and refuse to plead, or flout the court '
            'and/or otherwise reject its authority, he shall be dealt with for his '
            'contumacy immediately.\u201d\n\nThe Committee on Constitutional '
            'Business, in its report (M27GA, pp. 229-230), noted:\n\nOverture 15 - '
            'from North Georgia Presbytery\n\n\u201cAmend BCO 32-6 To Clarify '
            'Provisions for Contumacy\u201d\n\nResponse :\n\nIt is the advice of the '
            'Committee that Overture 15 is not in conflict with any portion of the '
            'Constitution.\n\nThe Committee also noted that, contrary to the second, '
            '\u201cwhereas\u201d of the overture, the words \u201chereinafter '
            'provided\u201d in BCO 32-6 refer to provisions for dealing with '
            'contumacy rather than provisions for defining contumacy. In addition, '
            'the Committee noted that the word \u201cflout\u201d may not be any '
            'clearer than the word \u201ccontumacy.\u201d',
        webUrl: 'https://pcahistory.org/bco/rod/33/02.html',
      ),
    ],
    'bco_34-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 210',
        text:
            '196.--I. Process against a Minister shall be entered before the '
            'Presbytery of which he is a member.\n\n197.--II. As no Minister ought, '
            'on account of his office, to be screened in his sin, or lightly '
            'censured, so scandalous charges ought not to be received against him on '
            'slight grounds.\n\nThe very fact that Presbyteries ought to feel most '
            'sensitively the importance of preserving the good name of Ministers '
            'justifies the fear that, on the one hand, they may be tempted to screen '
            'offenders, and, on the other hand, that they may be tempted to pay undue '
            'attention to charges not well grounded.\n\nNON-JUDICIAL REFERENCE & '
            'CONSTITUTIONAL INQUIRY :\n\n2000 - Reference 1 - Presbytery of Western '
            'Carolina [M28GA, 28-19, III, p. 68-69]:\n\nQuestion 1. When presbyteries '
            'act under the provisions of BCO 34-1, may the case be declared out of '
            'order without being heard, or does the word \u201cshall\u201d in 34-1 '
            'indicate that the General Assembly is obligated to take up the case and '
            'hear evidence?\n\nResponse - When Presbyteries act under the provisions '
            'of BCO 34-1 the word \u201cshall\u201d in the last clause does obligate '
            'the General Assembly to act on the matter. The way in which the Assembly '
            'shall act on the matter is by referring it to the Standing Judicial '
            'Commission (see BCO 15-4) which shall process the matter according to '
            'its regular procedures which shall include the options of '
            'administratively ruling the matter out of order if there is sufficient '
            'cause or, if the matter is in order, taking up the case and hearing the '
            'evidence.\n\nQuestion 2. Does the reference to the General Assembly in '
            '34-1 mean that it is the Assembly \u201cas a whole\u201d which must '
            'determine to take up the case, or may the SJC make that '
            'determination?\n\nResponse - The matter shall be referred to the SJC '
            '(see the answer to question number 1 above).\n\nQuestion 3. May the case '
            'of original jurisdiction under BCO 34-1 be declared judicially out of '
            'order under the provisions of BCO41, 42 or 43 or must the SJC (or '
            'Assembly) hear it?\n\nResponse - There are no operating provisions in '
            'the Manual of the SJC for dealing with BCO 34-1. However, the BCO does '
            'assume that the SJC has the right to determine whether all matters '
            'coming before it are in order (RAO 15-2). Although the provisions of the '
            'BCO41, 42 and 43 dealing with references, appeals and complaints do not '
            'directly apply, they are the only analogy the SJC currently has for '
            'making such determination. More specific operational guidelines dealing '
            'with 34-1 are needed, but until they are provided the SJC can only '
            'operate with its ordinary procedures.\n\nQuestion 4. In a case arising '
            'under the provisions of BCO 34-1, may the SJC or its officers determine '
            'all or some of the \u201cfacts\u201d of the case as a basis for a '
            'determination as to whether a case is judicially in order without '
            'hearing evidence and arguments from both parties, or must the case go '
            'forward (assuming it is administratively in order) so that such evidence '
            'may be presented under the provisions of BCO32-13, 32-14, 32-18 and '
            '35?\n\nResponse - Under the provisions of 34-1 and in accord with the '
            'Manual of the SJC (10-1) the officers of the SJC or the impaneled SJC '
            'may determine if a matter is administratively out of order without '
            'hearing evidence and arguments from both parties based on timeliness of '
            'filing, proper paperwork, etc. The impaneled SJC may determine if a '
            'matter is judicially out of order prior to hearing full evidence and '
            'arguments from both parties if the SJC believes it has sufficient '
            'initial evidence to make such a determination (cf. Manual of the SJC '
            '10-1b). Otherwise the SJC could be forced to listen to matters at '
            'length, which were not properly before it.\n\nQuestion 5. In the event '
            'that the matter is assumed as a case of original jurisdiction, then '
            'since the Presbyterian Church in America versus the individuals are the '
            'parties of the case, would members of those presbyteries that have been '
            'involved in bringing the issue to the Assembly be required to be '
            'excluded from participating in the trial?\n\nResponse - Because the only '
            'parties to a case that goes to the SJC are the Presbyterian Church in '
            'America and the accused (BCO 31-3), the mere membership of an SJC member '
            'in a presbytery that may have brought charges against the accused does '
            'not disqualify that SJC member from hearing and voting upon the case in '
            'which the SJC has assumed original jurisdiction. However, the rules for '
            'the conduct of SJC members who are qualified for adjudicating a case '
            '(Manual of the SJC 6 and 7), will ordinarily disqualify the SJC '
            'participation of members of presbyteries who have brought charges '
            'resulting in the SJC becoming the court of original jurisdiction. These '
            'rules, for example, indicate that it is not appropriate for any member '
            'of the commission to discuss the merits of the case with any party to '
            'the case or any person other than a member of the commission, or to '
            'express an opinion on the merits of the case prior to the record being '
            'completed, or to consult or advise regarding any matter that may come '
            'before the commission. While it is conceivable that members of '
            'presbyteries bringing charges may not be disqualified from SJC '
            'participation for these or similar reasons, it is unlikely and, '
            'therefore, members of presbyteries bringing charges should ordinarily '
            'recuse themselves or be disqualified.\n\nThe entire response was adopted '
            'by proper motion, 8-0-0.\n\n2000 - Reference 2 - Presbytery of the '
            'Ascension [M28GA, 28-19, III, Item 2, pp. 70-71]\n\n[Note: Reference #2 '
            'is identical to Inquiry #1 from Ascension Presbytery that same year [cf. '
            'M28GA, 28-19, IV, Item 1, pp. 73-74]\n\nQuestion 1 - When presbyteries '
            'act under the provisions of BCO 34-1, may the case be declared out of '
            'order without being heard, or does the word \u201cmust\u201d in 34-1 '
            'indicate that the General Assembly is obligated to take up the case and '
            'hear evidence?\n\nResponse - See answer to question #1 of Western '
            'Carolina Presbytery Reference for Advice dated Dec. 28, '
            '1999.\n\nQuestion 2 - Does the reference to the General Assembly in 34-1 '
            'mean that it is the Assembly as a whole which must determine to take up '
            'the case, or may the SJC make that determination (implicit in this is '
            'the corollary question - is this even a case before it is received by '
            'the General Assembly itself)?\n\nResponse - Since BCO 15-4 assigns all '
            'judicial cases to the SJC for adjudication it is the duty of the SJC to '
            'handle such matters.\n\nQuestion 3 - May the SJC (or the Assembly as a '
            'whole) declare as judicially out of order any case which comes to the '
            'General Assembly under a provision not covered by one of those chapters '
            '(e.g., an action arising on the basis of BCO 34-1), or must the SJC or '
            'the Assembly hear such a case if it is administratively in '
            'order?\n\nResponse - See answer to question #3 of Western Carolina '
            'Presbytery Reference for Advice dated Dec. 28, 1999.\n\nQuestion 4 - In '
            'a case arising under the provisions of BCO 34-1, may the SJC or its '
            'officers determine all or some of the \u201cfacts\u201d of the case as a '
            'basis for a determination as to whether a case is judicially in order '
            'without hearing evidence and arguments from both parties, or must the '
            'case go forward (assuming it is administratively in order) so that such '
            'evidence may be presented under the provisions of BCO 32-13, 32-14, '
            '32-18 and 35?\n\nResponse - See answer to question #4 of Western '
            'Carolina Presbytery Reference for Advice dated Dec. 28, 1999.\n\nThe '
            'entire response was adopted by proper motion, 8-0-0.',
        webUrl: 'https://pcahistory.org/bco/rod/34/01.html',
      ),
    ],
    'bco_34-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 210',
        text:
            '196.--I. Process against a Minister shall be entered before the '
            'Presbytery of which he is a member.\n\n197.--II. As no Minister ought, '
            'on account of his office, to be screened in his sin, or lightly '
            'censured, so scandalous charges ought not to be received against him on '
            'slight grounds.\n\nThe very fact that Presbyteries ought to feel most '
            'sensitively the importance of preserving the good name of Ministers '
            'justifies the fear that, on the one hand, they may be tempted to screen '
            'offenders, and, on the other hand, that they may be tempted to pay undue '
            'attention to charges not well grounded.',
        webUrl: 'https://pcahistory.org/bco/rod/34/02.html',
      ),
    ],
    'bco_34-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '198.--III. If any one knows a Minister to be guilty of a private '
            'offence, he should warn him in private. But if the offence be persisted '
            'in, or become public, he should bring the case to the attention of some '
            'other Minister of the Presbytery for his advice.\n\nAny one proposing to '
            'be a voluntary prosecutor would be disqualified if he had failed to '
            'comply with these requirements. (Cf. also 165.) If the \u201cany '
            'one\u201d here spoken of is himself a Minister, the paragraph may not be '
            'disregarded by him ; and he must not proceed beyond private remonstrance '
            'without first taking the advice of some other Minister of the '
            'Presbytery. The aim of the paragraph is\n to save the offender without '
            'bringing scandal on the Church.',
        webUrl: 'https://pcahistory.org/bco/rod/34/03.html',
      ),
    ],
    'bco_34-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 211\u2013212',
        text:
            '199.--IV. If a Minister accused of an offence, having been twice duly '
            'cited, shall refuse to appear before the Presbytery, he shall be '
            'immediately suspended. And if, after another citation, he still refuse '
            'to attend; he shall be deposed as contumacious, and suspended or '
            'excommunicated from the Church. Record shall be made of the judgment and '
            'of the charges under which he was arraigned, and the sentence shall be '
            'made public.\n\nAs, in the second citation, he was given notice that, if '
            'he did not appear, or, appearing, did not plead, he would be dealt with '
            'for contumacy according to this paragraph (see par. 177), we must '
            'understand here \u201cor refuse to plead\u201d after \u201crefuse to '
            'appear.\u201d After the second citation in the case of a private member, '
            'the Session suspends him and publishes sentence; but in the case of a '
            'Minister, the Presbytery suspends (from the ministry), and issues a '
            'third citation. After this third citation, the Minister is suspended or '
            'excommunicated from sealing ordinances, having been already suspended '
            'from office ; and then the sentence is made public.\n\nThe Presbytery '
            'may publish the sentence without publishing even the nature of the '
            'charges (except so far as the sentence itself makes known the charges or '
            'their nature). If the accused is suspended after the third citation, '
            'there is no provision for proceeding afterward to deposition and '
            'excommunication without a trial. The difference between the Minister and '
            'the other sort of church member is this : the church member can only be '
            'suspended for contumacy at first, but may afterwards be excommunicated '
            'and deposed without trial if the contumacy continue (194) ; and the '
            'Minister may be excommunicated after the third citation without trial, '
            'but not later if not then. The Minister must be deposed after the third '
            'citation.',
        webUrl: 'https://pcahistory.org/bco/rod/34/04.html',
      ),
    ],
    'bco_34-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 212',
        text:
            '200.--V. Heresy and schism may be of such a nature as to warrant '
            'deposition; but errors ought to be carefully considered, whether they '
            'strike at the vitals of religion, and are industriously spread, or '
            'whether they arise from the weakness of the human understanding, and are '
            'not likely to do much injury.\n\nThis paragraph should be observed by '
            'the Presbytery both in instituting or permitting process and in fixing '
            'the censure after conviction. It is constitutional to let men remain in '
            'the ministry with erroneous views, provided said views do not strike at '
            'the vitals of religion and are not industriously spread. If a view does '
            'logically strike at the vitals of religion, but is not industriously '
            'spread, and does not practically destroy the piety or usefulness of the '
            'Minister, it may be tolerated. But in the case of the Minister '
            'especially, the influence of his views upon his teaching must be '
            'considered.',
        webUrl: 'https://pcahistory.org/bco/rod/34/05.html',
      ),
    ],
    'bco_34-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 212\u2013213',
        text:
            '201.--VI. If the Presbytery find on trial that the matter complained of '
            'amounts to no more than such acts of infirmity as may be amended, so '
            'that little or nothing remains to hinder the Minister\'s usefulness, it '
            'shall take all prudent measures to remove the scandal.\n\nAll are '
            'subject to infirmity, and any Minister\'s usefulness is liable to be '
            'injured or destroyed by the malicious or inconsiderate exaggeration of '
            'his failings, when, on the whole, he is really a well-qualified '
            'Minister.',
        webUrl: 'https://pcahistory.org/bco/rod/34/06.html',
      ),
    ],
    'bco_34-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 213',
        text:
            '202.--VII. When a Minister, pending a trial, shall make confession, if '
            'the matter be base and flagitious, such as drunkenness, uncleanness, or '
            'crimes of a higher nature, however penitent he may appear to the '
            'satisfaction of all, the court shall, without delay, suspend him from '
            'the exercise of his office, or depose him from the ministry.\n'
            '\nConfession shall not save him from deposition, or, at least, from '
            'suspension from office ; for discipline is not only for the reformation '
            'of the offender, but also for the honor of religion.',
        webUrl: 'https://pcahistory.org/bco/rod/34/07.html',
      ),
    ],
    'bco_34-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 213',
        text:
            '203.--VIII. A Minister suspended or deposed for scandalous conduct shall '
            'not be restored, even on the deepest sorrow for his sin, until he shall '
            'exhibit for a considerable time such an eminently exemplary, humble, and '
            'edifying walk and conversation as shall heal the wound made by his '
            'scandal. And a deposed Minister shall in no case be restored until it '
            'shall appear that the general sentiment of the Church is strongly in his '
            'favor, and demands his restoration; and then only by the court '
            'inflicting the censure, or with its consent.\n\nIf scandalous conduct '
            'was the ground of suspension or deposition, there shall be no '
            'restoration until his behavior removes the scandal ; and after '
            'deposition, whether the deposition was for conduct or doctrine, there '
            'shall be no restoration until both the general sentiment of the Church '
            'demands it and the original court consents thereto. This court is the '
            'more likely to know whether the reformation is likely to be '
            'permanent.',
        webUrl: 'https://pcahistory.org/bco/rod/34/08.html',
      ),
    ],
    'bco_34-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 214\u2013215',
        text:
            '204.--IX. When a Minister is deposed his church shall be declared vacant '
            '; but when he is suspended, it shall be left to the discretion of the '
            'Presbytery whether the sentence shall include the dissolution of the '
            'pastoral relation.\n\n205.--X.Whenever a Minister of the gospel shall '
            'habitually fail to be engaged in the regular discharge of his official '
            'functions, it shall be the duty of the Presbytery, at a stated meeting, '
            'to inquire into the cause of such dereliction, and if necessary, to '
            'institute judicial proceedings against him for breach of his covenant '
            'engagement. If it shall appear that his neglect proceeds only from his '
            'want of acceptance to the Church, Presbytery may, upon the same '
            'principle upon which it withdraws license from a probationer for want of '
            'evidence of the Divine call, divest him of his office without censure, '
            'even against his will, a majority of two-thirds being necessary for this '
            'purpose.\n\nIn such a case, the clerk shall, under the order of the '
            'Presbytery, forthwith deliver to the individual concerned a written '
            'notice that, at the next stated meeting, the question of his being so '
            'dealt with is to be considered. This notice shall distinctly state the '
            'grounds for this proceeding. The party thus notified shall be heard in '
            'his own defence ; and if the decision pass against him, he may appeal, '
            'as if he had been tried after the usual forms.\n\nWhenever there is the '
            'habitual neglect, it is the duty of Presbytery to make inquiry, which is '
            'tantamount to an investigation under 162. This investigation must issue '
            'in failure to raise a strong presumption of habitual neglect. When it '
            'results in raising such presumption, then the Presbytery must either '
            'institute judicial process, if the neglect does not appear to proceed '
            'from want of acceptance, or give notice of proceedings to divest without '
            'censure. The party, when heard in his own defence, may be allowed to '
            'introduce evidence of his attention to his calling and of his acceptance '
            '; and in case of appeal or complaint, the record of such evidence should '
            'be sent up. It would not be improper for the Presbytery to appoint some '
            'one to present the evidence for the neglect and want of acceptability. '
            'The essential difference between this procedure and a judicial trial, '
            'process, lies in the absence of censure.\n\nThis principle may apply, '
            'mutatis mutandis, to Ruling Elders and Deacons.\n\nThat is, for Minister '
            'substitute Ruling Elder or Deacon, and for Presbytery substitute '
            'Session.\n\nThis divests of office ; paragraph 113 and paragraphs 126 '
            'and 128 dissolve official relations without divesting of office. One '
            'divested of office could not resume his office without '
            're-ordination.',
        webUrl: 'https://pcahistory.org/bco/rod/34/09.html',
      ),
    ],
    'bco_34-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 214\u2013215',
        text:
            '204.\u2014IX. When a Minister is deposed his church shall be declared '
            'vacant ; but when he is suspended, it shall be left to the discretion of '
            'the Presbytery whether the sentence shall include the dissolution of the '
            'pastoral relation.\n\n205.\u2014X.Whenever a Minister of the gospel '
            'shall habitually fail to be engaged in the regular discharge of his '
            'official functions, it shall be the duty of the Presbytery, at a stated '
            'meeting, to inquire into the cause of such dereliction, and if '
            'necessary, to institute judicial proceedings against him for breach of '
            'his covenant engagement. If it shall appear that his neglect proceeds '
            'only from his want of acceptance to the Church, Presbytery may, upon the '
            'same principle upon which it withdraws license from a probationer for '
            'want of evidence of the Divine call, divest him of his office without '
            'censure, even against his will, a majority of two-thirds being necessary '
            'for this purpose.\n\nIn such a case, the clerk shall, under the order of '
            'the Presbytery, forthwith deliver to the individual concerned a written '
            'notice that, at the next stated meeting, the question of his being so '
            'dealt with is to be considered. This notice shall distinctly state the '
            'grounds for this proceeding. The party thus notified shall be heard in '
            'his own defence ; and if the decision pass against him, he may appeal, '
            'as if he had been tried after the usual forms.\n\nWhenever there is the '
            'habitual neglect, it is the duty of Presbytery to make inquiry, which is '
            'tantamount to an investigation under 162. This investigation must issue '
            'in failure to raise a strong presumption of habitual neglect. When it '
            'results in raising such presumption, then the Presbytery must either '
            'institute judicial process, if the neglect does not appear to proceed '
            'from want of acceptance, or give notice of proceedings to divest without '
            'censure. The party, when heard in his own defence, may be allowed to '
            'introduce evidence of his attention to his calling and of his acceptance '
            '; and in case of appeal or complaint, the record of such evidence should '
            'be sent up. It would not be improper for the Presbytery to appoint some '
            'one to present the evidence for the neglect and want of acceptability. '
            'The essential difference between this procedure and a judicial trial, '
            'process, lies in the absence of censure.\n\nThis principle may apply, '
            'mutatis mutandis, to Ruling Elders and Deacons.\n\nThat is, for Minister '
            'substitute Ruling Elder or Deacon, and for Presbytery substitute '
            'Session.\n\nThis divests of office ; paragraph 113 and paragraphs 126 '
            'and 128 dissolve official relations without divesting of office. One '
            'divested of office could not resume his office without '
            're-ordination.',
        webUrl: 'https://pcahistory.org/bco/rod/34/10.html',
      ),
    ],
    'bco_35-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 215\u2013216',
        text:
            'CHAPTER IX. - OF EVIDENCE.\n\nParagraph 1 shows who are competent '
            'witnesses, but paragraph 2 exempts husband and wife from testifying '
            'against each other. Paragraph 3 lays down the rule requiring '
            'corroborative evidence, and paragraph 4 contains a regulation that aims '
            'to make witnesses independent of each other. Paragraph 5 prescribes the '
            'method of examining witnesses ; 6, the form of oath or affirmation ; and '
            '7, the method of recording the testimony. Paragraph 8 shows how the '
            'records of one court are to be authenticated to another ; paragraph 9, '
            'the value of such authenticated testimony ; and paragraph 10, how '
            'testimony may be taken in the absence of the court. Paragraph 11 secures '
            'the use of the members of the court as witnesses, and paragraph 12 the '
            'use of all church officers and members as witnesses. And paragraph 13 '
            'regulates the use of new evidence after trial, and paragraph 14 after '
            'appeal.\n\n206.--I. All persons of proper age and intelligence are '
            'competent witnesses, except such as do not believe in the existence of '
            'God, or a future state of rewards and punishments. The accused party may '
            'be allowed, but shall not be compelled, to testify; but the accuser '
            'shall be required to testify on the demand of the accused. Either party '
            'has the right to challenge a witness whom he believes to be incompetent, '
            'and the court shall examine and decide upon his competency. It belongs '
            'to the court to judge of the degree of credibility to be attached to all '
            'evidence.\n\nAccuser here must be interpreted to mean the prosecutor. '
            'The only grounds of challenge of a witness are too great youth, too '
            'little intelligence (i.e., ability), lack of belief in God, or lack of '
            'belief in a future state of rewards and punishments. The accused cannot '
            'be debarred from testifying.\n\nCONSTITUTIONAL INQUIRY :\n\nJUDICIAL '
            ':\n\nPoints touching BCO 35-1 appear in the complaint of TE Eric Dye, et '
            'al., vs. Missouri Presbytery, M14GA (1986), 14-89, p. 212 [or PCA '
            'Digest, Judicial Case #56, pp. 354-360]',
        webUrl: 'https://pcahistory.org/bco/rod/35/01.html',
      ),
    ],
    'bco_35-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 216',
        text:
            '207.--II. A husband or wife shall not be compelled to bear testimony the '
            'one against the other in any court.\n\nA husband or wife may be cited, '
            'but it is optional with such an one to testify or not ; and the citation '
            'should so state. This regulation protects the marriage relation from '
            'disturbance by inquisition even of the Church itself.',
        webUrl: 'https://pcahistory.org/bco/rod/35/02.html',
      ),
    ],
    'bco_35-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 216\u2013217',
        text:
            '208.--III. The testimony of more than one witness shall be necessary in '
            'order to establish any charge; yet if, in addition to the testimony of '
            'one witness, corroborative evidence be produced, the offence may be '
            'considered to be proved.\n\nIt may be so considered, not must be ; for '
            'the court, judging of the credibility of evidence (206), might not '
            'believe a witness or a number of witnesses. The testimony of more than '
            'one witness, or of one witness and corroborative evidence, is necessary '
            'to prove each charge, each separate fact alleged, in the indictment. '
            'This rule setting the denial of the accused in counterpoise with the '
            'assertion of any single witness, and so protecting innocence, may also '
            'shield guilt, and even known guilt, from judicial conviction ; and this '
            'limitation should be remembered before judicial prosecution is '
            'begun.',
        webUrl: 'https://pcahistory.org/bco/rod/35/03.html',
      ),
    ],
    'bco_35-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 217',
        text:
            '209.--IV. No witness afterwards to be examined except a member of the '
            'court, shall be present during the examination of another witness on the '
            'same case, if either party object.\n\nMembers of the court must remain '
            'in order to hear the evidence ; but there may be danger that the '
            'listening witness will suffer his testimony to be influenced by the '
            'testimony he hears. For this reason it may be advisable to take the '
            'testimony with all excluded but the court and the parties and the '
            'witness testifying, and to keep the testimony secret pending the '
            'trial.',
        webUrl: 'https://pcahistory.org/bco/rod/35/04.html',
      ),
    ],
    'bco_35-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 217',
        text:
            '210.--V. Witnesses shall be examined, first by the party introducing '
            'them; then cross-examined by the opposite party; after which any member '
            'of the court, or either party, may put additional interrogatories. But '
            'no question shall be put or answered, except by permission of the '
            'Moderator, subject to an appeal to the court; and the court shall not '
            'permit questions frivolous or irrelevant to the charge at issue.\n\nHere '
            'an appeal is allowed directly from the Moderator of the Session to the '
            'Session, otherwise the trial might be made inextricably complicated. '
            'JUDICIAL :\n\nPoints touching BCO 35-5 appear in the complaint of TE '
            'Eric Dye, et al., vs. Missouri Presbytery, M14GA (1986), 14-89, p. 212 '
            '[or PCA Digest, Judicial Case #56, pp. 354-360]',
        webUrl: 'https://pcahistory.org/bco/rod/35/05.html',
      ),
    ],
    'bco_35-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 217\u2013218',
        text:
            '211.--VI. The oath or affirmation to a witness shall be administered by '
            'the Moderator in the following or like terms: \u201cYou solemnly '
            'promise, in the presence of God, that you will declare the truth, the '
            'whole truth, and nothing but the truth, according to the best of your '
            'knowledge in the matter in which you are called to witness, as you shall '
            'answer it to the great Judge of the quick and the dead.[sic : ?\u201d] '
            'If, however, at any time a witness should present himself before a '
            'court, who, for conscientious reasons, prefers to swear or affirm in any '
            'other manner, he should be allowed to do so.\n\nBut in no case should '
            'one be allowed to testify at all without agreeing to tell the truth, the '
            'whole truth and nothing but the truth, in answer to all questions that '
            'he answers.',
        webUrl: 'https://pcahistory.org/bco/rod/35/06.html',
      ),
    ],
    'bco_35-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 218',
        text:
            '212.--VII. Every question put to a witness shall, if required, be '
            'reduced to writing. When answered, it shall, together with the answer, '
            'be recorded, if deemed by the court, or by either party, of sufficient '
            'importance, and the testimony of the witness shall be read to him for '
            'his approbation and subscription.\n\nNo question is \u201cput to a '
            'witness\u201d until it has been approved as a proper question to be put. '
            'If required by either party or the court, it is then to be reduced to '
            'writing before being answered. Then, when the answer is given, the '
            'answer with the question must be recorded, if the court or either party '
            'desires it. When the testimony of a witness is all finished, he shall '
            'hear, revise and subscribe so much as goes on record.',
        webUrl: 'https://pcahistory.org/bco/rod/35/07.html',
      ),
    ],
    'bco_35-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 218',
        text:
            '213.--VIII. The records of a court, or any part of them, whether '
            'original or transcribed, if regularly authenticated by the Moderator and '
            'Clerk, or by either of them, shall be deemed good and sufficient '
            'evidence in every other court.\n\n(Cf. 56 and 88.)',
        webUrl: 'https://pcahistory.org/bco/rod/35/08.html',
      ),
    ],
    'bco_35-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 218',
        text:
            'In like manner, testimony taken by one court and regularly certified, '
            'shall be received by every other court, as no less valid than if it had '
            'been taken by itself.\n\nIt may not have the same weight, but is no less '
            'valid.',
        webUrl: 'https://pcahistory.org/bco/rod/35/09.html',
      ),
    ],
    'bco_35-10': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 218\u2013220',
        text:
            '\u00a7215.--X. When it is not convenient for a court to have the whole, '
            'or perhaps any part of the testimony in any particular cause, taken in '
            'its presence, a commission shall be appointed to take the testimony in '
            'question, which shall be considered as if taken in the presence of the '
            'court; of which commission, and of the time and place of its meeting, '
            'due notice shall be given to the opposite party, that he may have an '
            'opportunity of attending. And if the accused shall desire, on his part, '
            'to take testimony at a distance for his own exculpation, he shall give '
            'notice to the court of the time and place at which it is proposed to '
            'take it, that a commission, as in the former case, may be appointed for '
            'the purpose. Or, the testimony may be taken on written interrogatories, '
            'by filing the same with the clerk of the court having jurisdiction of '
            'the cause, and giving two weeks\u2019 notice thereof to the adverse '
            'party, during which time he may file cross-interrogatories if he desire '
            'it; and the testimony shall then be taken by the commission in answer to '
            'the direct and cross-interrogatories, if such are filed, and no notice '
            'need be given of the time and place of taking the testimony.\n\nIf the '
            'court refuses to appoint a commission to take evidence for the '
            'prosecution, the refusal must be based upon the ground that it is '
            'convenient to take the evidence in the presence of the court; but the '
            'court may refuse to appoint a commission to take evidence for the '
            'accused without assigning this ground. Otherwise, the accused might '
            'delay, or make practically impossible, the progress of the trial by '
            'claiming a necessity for taking distant evidence. If the court appoints '
            'a commission for the prosecution, the court fixes the time and place of '
            'the meeting of the commission, and gives due notice to the accused ; but '
            'if the court appoints a commission for the accused, it does so in '
            'compliance with his request as to time and place. Or, in either case, '
            'the court may instruct the commission to take the testimony by written '
            'interrogatories. Neither party can take any evidence in any way except '
            'before the court, or before a commission of the court acting as the '
            'court, or by filing written interrogatories with the clerk to be used by '
            'a commission. In this case the commission shall put the interrogatories '
            'to the witnesses, first the direct and then the cross interrogatories to '
            'each witness, observing all the regulations for taking testimony except '
            'that no questions are to be put but those filed ; but the oath or '
            'affirmation may be administered, the questions put, and the answers '
            'received, by mail or other written communication',
        webUrl: 'https://pcahistory.org/bco/rod/35/10.html',
      ),
    ],
    'bco_35-11': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '\u00a7216.--XI.A member of the court shall not be disqualified for '
            'sitting as a judge by having given testimony in the case.\n'
            '\n\u00a7217.--XII. An officer or private member of the church refusing '
            'to testify may be censured for contumacy.\n\nBut not for refusing to '
            'testify against one\'s husband or wife or one\'s self. And no one can be '
            'censured for such contumacy except by the court having jurisdiction over '
            'him, and after conviction by process or after confession.',
        webUrl: 'https://pcahistory.org/bco/rod/35/11.html',
      ),
    ],
    'bco_35-12': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 220',
        text:
            '\u00a7216.--XI.A member of the court shall not be disqualified for '
            'sitting as a judge by having given testimony in the case.\n'
            '\n\u00a7217.--XII. An officer or private member of the church refusing '
            'to testify may be censured for contumacy.\n\nBut not for refusing to '
            'testify against one\'s husband or wife or one\'s self. And no one can be '
            'censured for such contumacy except by the court having jurisdiction over '
            'him, and after conviction by process or after confession.JUDICIAL:\n'
            '\nPoints touching BCO 35-12 appear in the complaint of TE Eric Dye, et '
            'al., vs. Missouri Presbytery, M14GA (1986), 14-89, p. 212 [or PCA '
            'Digest, Judicial Case #56, pp. 354-360]',
        webUrl: 'https://pcahistory.org/bco/rod/35/12.html',
      ),
    ],
    'bco_35-13': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 220',
        text:
            '\u00a7218.--XIII.If after trial before any court, new testimony be '
            'discovered, which is supposed to be highly important to the exculpation '
            'of the accused, it is proper for him to ask, and for the court to grant, '
            'a new trial.\n\nEven after technical acquittal, the accused may ask for '
            'a new trial, in order to make his vindication more certain. The court '
            'has discretion always to grant or refuse a request for a new trial, '
            'subject to appeal or complaint.',
        webUrl: 'https://pcahistory.org/bco/rod/35/13.html',
      ),
    ],
    'bco_35-14': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 220\u2013221',
        text:
            '\u00a7219.--XIV.If, in the prosecution of an appeal, new testimony be '
            'offered, which, in the judgment of the appellate court, has an important '
            'bearing on the case, it shall be competent for that court to refer the '
            'cause to the inferior court for a new trial; or, with the consent of '
            'parties, to take the testimony and proceed with the cause.\n\nIn case a '
            'new trial is ordered, the recorded evidence taken in the first trial is '
            'valid evidence, if the new trial is ordered simply that new evidence may '
            'be taken and considered. If the new evidence is available before the '
            'reviewing court, it would save time for that court to take the new '
            'evidence and render decision and sentence as if the court of first '
            'resort ; but this cannot be done if either party objects. At the same '
            'time this court has discretion to decide the case without sending it '
            'back for a new trial or taking the new evidence either ; for without '
            'such discretion it would be possible to delay a final decision '
            'indefinitely.',
        webUrl: 'https://pcahistory.org/bco/rod/35/14.html',
      ),
    ],
    'bco_36-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 222',
        text:
            '221.--II. When any member or officer of the Church shall be guilty of a '
            'fault deserving censure, the court shall proceed with all tenderness, '
            'and shall deal with its offending brother in the spirit of meekness, the '
            'members considering themselves, lest they also be tempted.\n\n(Cf. '
            '172.)',
        webUrl: 'https://pcahistory.org/bco/rod/36/01.html',
      ),
    ],
    'bco_36-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 221\u2013222',
        text:
            'CHAPTER X. - OF THE INFLICTION OF CHURCH CENSURES.\n\nAfter a '
            'preliminary paragraph on the use of the different kinds of censure, and '
            'one on the spirit that should actuate the court in inflicting them, a '
            'paragraph on each censure follows : admonition, definite suspension, '
            'indefinite suspension, excommunication, and deposition.\n\n220.\u2014I. '
            'Ecclesiastical censures ought to be suited to the nature of the offence '
            '; for private offences censures should be administered in the presence '
            'of the court alone, or privately, by one or more members on its behalf ; '
            'but for public offences, censures should be administered in open '
            'session, or publicly announced to the church. When there are peculiar '
            'and special reasons, the court may visit public offences, not very gross '
            'in their character, with private admonition, or with definite suspension '
            'in private ; but the censure of indefinite suspension should ordinarily '
            'be announced to the church, whilst those of excommunication and '
            'deposition should be either administered before the church, or else '
            'announced to it, at the discretion of the court.\n\nAdmonition for '
            'private offences must be administered either by a committee in private, '
            'or before the court in private session ; all other censures must be '
            'administered in the presence of the court, but whether in open or '
            'private sessions is within the discretion of the court. Any censure, '
            'except private admonition, administered in private session, may be '
            'announced to the church (or Church, in the case of Ministers), and '
            'excommunication and disposition [sic] must be.',
        webUrl: 'https://pcahistory.org/bco/rod/36/02.html',
      ),
    ],
    'bco_36-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 222',
        text:
            '223.--IV. Definite suspension being an exemplary censure, ought '
            'ordinarily to be either administered in open session, or announced to '
            'the church.\n\n\u201cOrdinarily\u201d leaves the court discretion. The '
            'announcement is to be made in such way and by such agent as the court '
            'may order.',
        webUrl: 'https://pcahistory.org/bco/rod/36/04.html',
      ),
    ],
    'bco_36-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 223',
        text:
            '224.--V. The censure of indefinite suspension ought to be inflicted with '
            'great solemnity, that it may be the means of impressing the mind of the '
            'delinquent with a proper sense of his danger, while he stands excluded '
            'from the sacraments of the Church of the living God, and that with the '
            'Divine blessing it may lead him to repentance. When the court has '
            'resolved to pass this sentence, the Moderator shall address the '
            'offending brother to the following purpose:\n\n\u201cWhereas, You, A.B. '
            '(here describe the person as a Minister, Ruling Elder, Deacon or private '
            'member of the Church), are convicted by sufficient proof [or, are guilty '
            'by your own confession], of the sin of _______ (here insert the '
            'offence), we, the Presbytery [or Church Session] of C.D., in the name '
            'and by the authority of the Lord Jesus Christ, do now declare you '
            'suspended from the sacraments of the Church [and from the exercise of '
            'your office], until you give satisfactory evidence of repentance.\n\nTo '
            'this shall be added such advice or admonition as may be judged '
            'necessary, and the whole shall be concluded with prayer to Almighty God '
            'that He would follow this act of discipline with His blessing.\n\nThe '
            'language \u201dwhen the court has resolved to pass this sentence,\u201c '
            'must be taken as equivalent to \u201dwhen the sentence has been '
            'passed\u201c (cf. 225) ; and this and all other censures are to be '
            'administered at such time and place as the court has ordered. The '
            '\u201dand\u201c in the parenthesis \u201dand from the exercise of your '
            'office,\u201c must be taken as equivalent to \u201dor\u201c also, since '
            'an officer may be suspended from office without being suspended from '
            'sealing ordinances.',
        webUrl: 'https://pcahistory.org/bco/rod/36/05.html',
      ),
    ],
    'bco_36-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 223\u2013224',
        text:
            '225.--VI. When the sentence of excommunication has been regularly '
            'passed, the Moderator of the Session shall make a public statement '
            'before the church of the several steps which have been taken with '
            'respect to their offending brother, and inform them that it has been '
            'found necessary to cut him off from the communion of the Church. He '
            'shall then show the authority of the Church to cast out unworthy '
            'members, from Matt. xviii: 15-18, and 1 Cor. v: 1-5, and shall explain '
            'the nature, use and consequence of this censure, warning the people that '
            'they are to conduct themselves, in all their intercourse with him as is '
            'proper towards one who is under the heaviest censure of the Church. he '
            'shall then pronounce sentence to the following effect:\n\n\u201cWHEREAS, '
            'A.B., a member of this church, has been, by sufficient proof, convicted '
            'of the sin of _____, and after much admonition and prayer, obstinately '
            'refuses to hear the church, and has manifested no evidence of '
            'repentance: Therefore, in the name and by the authority of the Lord '
            'Jesus Christ, we, the Session of the church of C.D., do pronounce him to '
            'be excluded from the sacraments, and cut off from the fellowship of the '
            'Church.\u201d\n\nAfter which prayer shall be made that the blessing of '
            'God may follow His ordinance, for the conviction and reformation of the '
            'excommunicated, and for the establishment of all true believers.\n\nFor '
            'the excommunication of a Minister, see 226. Nothwithstanding the '
            'language here used assumes that no one will be excommunicated who '
            'confesses his fault, yet, unless repentance accompany confession, the '
            'court may excommunicate ; but no one is to be excommunicated who '
            'manifests repentance',
        webUrl: 'https://pcahistory.org/bco/rod/36/06.html',
      ),
    ],
    'bco_36-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 224',
        text:
            '\u00a7226.--VII. The sentence of deposition shall be pronounced by the '
            'Moderator in words of the following import:\n\n\u201cWHEREAS, A.B., a '
            'Minister of this Presbytery [or a Ruling Elder or Deacon of this '
            'church], has been proved, by sufficient evidence, to be guilty of the '
            'sin of _______, we, the Presbytery [or Church Session], of C.D., do '
            'adjudge him totally disqualified for the office of the Christian '
            'Ministry [or Eldership, or Deaconship], and therefore we do hereby, in '
            'the name and by the authority of the Lord Jesus Christ, depose from the '
            'office of a Christian Minister [or Elder, or Deacon], the said A.B., and '
            'do prohibit him from exercising any of the functions thereof.\u201d If '
            'the sentence include suspension or excommunication, the Moderator shall '
            'proceed to say: \u201cWe do moreover, by the same authority, suspend the '
            'said A.B., from the sacraments of the Church, until he shall exhibit '
            'satisfactory evidence of sincere repentance,\u201d or \u201cexclude the '
            'said A.B., from the sacraments, and cut him off from the fellowship of '
            'the Church.\u201d\n\nThe sentence of deposition ought to be inflicted '
            'with solemnities similar to those already prescribed in the case of '
            'excommunication.\n\nNotwithstanding the literal implication of the '
            'language here used, an officer may be deposed upon his own confession, '
            'and even when he manifests repentance (202), but he may not be '
            'excommunicated if he manifests repentance.\n\nIt may be in place here to '
            'add the following observations:\n\n1. The censure is always to be '
            'inflicted by the court having original jurisdiction. If the Presbytery '
            'takes the place of the Session, then the Presbytery is, for that case, '
            'the court having original jurisdiction. If it should be that the court, '
            'whose duty it is to inflict the sentence, does not approve the sentence, '
            'it is bound to obey the court rendering the final decision ; but it may '
            'disclaim its own approval of the sentence even when inflicting it.\n\n2. '
            'The court may appoint any member to act as Moderator of the court in '
            'administering censure, if the Moderator desires it ; but if one finds '
            'himself required as Moderator to pronounce a sentence that he does not '
            'himself approve, he may disclaim his approval.\n\n3. A sentence is '
            'inflicted when formally pronounced, whether the condemned person is '
            'present or not.\n\n4. No sentence ought to be inflicted until after the '
            'time within which notice of an appeal can be given (258).\n\n5. The '
            'sentence takes effect from its passage (subject to 258), whether it is '
            'ever formally inflicted or not, the formal infliction being a means of '
            'grace in addition to the real sentence itself.',
        webUrl: 'https://pcahistory.org/bco/rod/36/07.html',
      ),
    ],
    'bco_37-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 225\u2013226',
        text:
            'CHAPTER XI. - OF THE REMOVAL OF CENSURES.\n\nThe censure of admonition '
            'not affecting one\'s standing, and the censure of definite suspension '
            'terminating without further action at the time set, nothing is said in '
            'this chapter* concerning the removal of these two censures. Paragraph 1 '
            'points out how the rulers of the church should deal with one suspended '
            'from the sacraments ; and paragraph 2, how the court should proceed in '
            'restoring a suspended offender. Paragraph 3 treats of the restoration of '
            'an excommunicated offender ; and paragraph 4, of one deposed. Special '
            'regulations are given in paragraph 5 concerning Elders and Deacons '
            'restored after deposition ; in paragraph 6, concerning the restoration '
            'of offenders who have removed beyond the reach of the court ; and in '
            'paragraph 7, concerning the restoration of a deposed Minister.\n'
            '\n227.\u2014I. After any person has been suspended from the sacraments, '
            'it is proper that the rulers of the church should frequently converse '
            'with him as well as pray with him and for him, that it would please God '
            'to give him repentance.\n\nWhether a suspended offender is going to be '
            'restored or excommunicated is a pending question, and never should the '
            'status of suspension be considered permanent. He is not yet cut '
            'off.\n\n*[This was true for the PCUS BCO, but the PCA added BCO 37-1 in '
            '1990, presumably on the idea that some recognition needed to be made at '
            'the end of a term of definite suspension].',
        webUrl: 'https://pcahistory.org/bco/rod/37/02.html',
      ),
    ],
    'bco_37-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 226\u2013227',
        text:
            '228.\u2014II. When the court shall be satisfied as to the reality of the '
            'repentance of a suspended offender, he shall be admitted to profess his '
            'repentance, either in the presence of the court alone or publicly, and '
            'be restored to the sacraments of the Church, and to his office,\n\nif '
            'such be the judgment of the court, which restoration shall be declared '
            'to the penitent in the words of the following import:\n\nWhereas, you, '
            'A.B., have been debarred from the sacraments of the Church (and from the '
            'office of the gospel Ministry, or Ruling Eldership, or Deaconship), but '
            'have now manifested such repentance as satisfies the church, we, the '
            'Session (or Presbytery) of C.D., do hereby, in the name and by the '
            'authority of the Lord Jesus Christ absolve you from the said sentence of '
            'suspension, and do restore you to the full communion of the Church (and '
            'the exercise of your said office, and all the functions '
            'thereof).\n\nAfter which there shall be prayer and thanksgiving.\n\nThe '
            'court is not obliged to restore upon satisfactory repentance, since, in '
            'some cases, continuance of suspension may be necessary to remove all '
            'scandal ; nor is restoration to office obliged to accompany restoration '
            'to the sacraments. The \u201cand\u201d at the beginning of each set of '
            'brackets must be interpreted as equivalent to \u201cor\u201d also. Cf. '
            'remarks on 224.',
        webUrl: 'https://pcahistory.org/bco/rod/37/03.html',
      ),
    ],
    'bco_37-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 227\u2013228',
        text:
            '229.--III. When an excommunicated person shall be so affected with his '
            'state as to be brought to repentance, and to desire to be readmitted to '
            'the communion of the Church, the Session, having obtained sufficient '
            'evidence of his sincere penitence, shall proceed to restore him. In '
            'order to which, the presiding Minister shall inform the church of the '
            'measures which have been taken with the excommunicated person, and of '
            'the resolution of the Session to restore him.\n\nOn the day appointed '
            'for his restoration, the Minister shall call upon the excommunicated '
            'person and propose to him in the presence of the congregation the '
            'following questions:\n\n\u201cDo you, from a deep sense of your great '
            'wickedness, freely confess your sin in thus rebelling against God, and '
            'in refusing to hear His Church; and do you acknowledge that you have '
            'been in justice and mercy cut off from the communion of the Church? '
            'Answer.--I do.\n\nDo you now voluntarily profess your sincere repentance '
            'and contrition for your sin and obstinacy; and do you humbly ask the '
            'forgiveness of God and His Church? Answer.--I do. Do you sincerely '
            'promise, through divine grace, to live in all humbleness of mind and '
            'circumspection; and to endeavor to adorn the doctrine of God our '
            'Saviour, by having your conversation as becometh the gospel? Answer.--I '
            'do.\u201d\n\nHere the minister shall give the penitent a suitable '
            'exhortation, encouraging and comforting him. Then he shall pronounce the '
            'sentence of restoration in the following words:\n\n\u201cWhereas, You, '
            'A.B., have been shut out from the communion of the Church, but now have '
            'manifested such repentance as satisfies the Church; in the name of the '
            'Lord Jesus Christ, and by his authority, we, the Session of this church, '
            'do declare you absolved from the sentence of excommunication formerly '
            'denounced against you, and we do restore you to the communion of the '
            'Church, that you may be a partaker of all the benefits of the Lord Jesus '
            'to your eternal salvation.\u201d\n\nThe whole shall be concluded with '
            'prayer and thanksgiving.\n\nHere again it is to be noted that '
            'restoration is not necessarily to follow immediately after satisfactory '
            'evidence of repentance. (Remark under 228.) The presence of the offender '
            'in the congregation is not indispensable, in such a sense that he could '
            'not be restored while unable to attend ; but in that case it should be '
            'certified to the church publicly that the offender is not able to be '
            'present and that he has given the right answers to these '
            'questions.\n\nIt is noteworthy that a suspended member is spoken of as '
            'suspended (224) or debarred (228) from the sacraments of the Church, and '
            'an excommunicated person as cut off from the communion of the Church '
            '(225, 229). The suspended offender is still a member of the Church, '
            'participating in the communion of life and sympathy of the brotherhood '
            'as one of them, while excluded from the sacraments for the time by the '
            'way of reproof and in hope of his restoration ; but the excommunicated '
            'member is no longer a member of the Church. Ought he, then, to be '
            'baptized at his restoration? By no means ; since his baptism at first '
            'did not make him a member, but only recognized his membership (paragraph '
            '3, remarks) ; and the sin that has unmade him a member, ceasing with '
            'repentance, ceases to effect this result. One does not shake off the '
            'obligations of membership by being excommunicated, but does indefinitely '
            'lose all its privileges. The suspended loses them tentatively.',
        webUrl: 'https://pcahistory.org/bco/rod/37/04.html',
      ),
    ],
    'bco_37-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 229',
        text:
            '230.--IV. The restoration of a deposed officer, after public confession '
            'has been made in a manner similar to that prescribed in the case of the '
            'removal of censure from an excommunicated person, shall be announced to '
            'him by the Moderator in the following form, namely:\n\n\u201cWhereas, '
            'You, A.B., formerly a Minister of this Presbytery (or a Ruling Elder or '
            'Deacon of this church), have been deposed from your office, but have now '
            'manifested such repentance as satisfies the Church; in the name of the '
            'Lord Jesus Christ, and by his authority, we, the Presbytery of C.D., (or '
            'the Session of this church), do declare you absolved from the said '
            'sentence of deposition formerly pronounced against you; and we do '
            'furthermore restore you to your said office, and to the exercise of all '
            'the functions thereof, whenever you may be orderly called '
            'thereto.\u201d\n\nAfter which there shall be prayer and thanksgiving, '
            'and the members of the court shall extend to him the right hand of '
            'fellowship.\n\nIf an officer is restored to the communion and to office '
            'at the same time, then it would be proper to pronounce first the '
            'sentence of restoration at the end of 229, and then this sentence of '
            'restoration at the end of 230.\n\nAn officer does not need to be '
            'reordained at his restoration, the act of restoration being itself the '
            'undoing of the deposition.',
        webUrl: 'https://pcahistory.org/bco/rod/37/05.html',
      ),
    ],
    'bco_37-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 229',
        text:
            '231.--V. When an Elder or Deacon has been absolved from the censure of '
            'deposition, he cannot be allowed to resume the exercise of his office in '
            'the church without re-election by the people.\n\nBut when absolved from '
            'suspension from office, re-election of a Ruling Elder or Deacon, or of a '
            'Pastor whose pastoral relation was not dissolved, is not necessary. When '
            're-election is necessary, then also is reinstallation.',
        webUrl: 'https://pcahistory.org/bco/rod/37/06.html',
      ),
    ],
    'bco_37-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 229\u2013230',
        text:
            '232.--VI. When a person under censure shall remove to a part of the '
            'country remote from the court by which he was sentenced, and shall '
            'desire to profess repentance and obtain restoration, it shall be lawful '
            'for the court, if it deems it expedient, to transmit a certified copy of '
            'its proceedings to the Session (or Presbytery) where the delinquent '
            'resides, which shall take up the case, and proceed with it as though it '
            'had originated with itself.\n\nIn other words, a member or officer under '
            'censure may be dismissed from one court to another, his exact standing, '
            'and the reasons therefor being certified ; but the court dismissing a '
            'deposed Minister must certify its consent to his restoration. (Par. '
            '203.)',
        webUrl: 'https://pcahistory.org/bco/rod/37/07.html',
      ),
    ],
    'bco_37-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '\u201cThe',
        webUrl: 'https://pcahistory.org/bco/rod/37/08.html',
      ),
    ],
    'bco_38-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 231\u2013232',
        text:
            'Chapter XII.--Of Cases Without Process.\n\nThese are not acts of '
            'technical discipline, as there is no judicial prosecution ; and yet '
            'there is one part of process whenever a judgment of censure is rendered. '
            'Process is a means of determining whether to use censure, and may be '
            'dispensed with when not needed for this end.\n\nFour cases are here '
            'enumerated : confession of guilt ; confession of an unregenerate heart ; '
            'confession of a lack of a call to office ; and renunciation of the '
            'communion of the Church.\n\n234.--I. When any person shall come forward '
            'and make his offence known to the court, a full statement of the facts '
            'shall be recorded and judgment rendered without process.\n\nIt is '
            'essential that the person intends to confess and permit the court to '
            'render judgment without process. Statements made by him in the presence '
            'of the court must not be taken as the basis of judgment without process '
            'except by his consent ; for that would be to deprive him of his right. '
            'And the full statement of facts should be approved by him as correct '
            'before the court proceeds to render judgment. Against the judgment '
            'rendered the person condemned may complain. Of course, the words '
            '\u201cany person\u201d must be interpreted as meaning any person subject '
            'to judicial prosecution before the particular court.',
        webUrl: 'https://pcahistory.org/bco/rod/38/01.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 351',
        text:
            'This chapter deals with what are not technically acts of\n discipline, '
            'in that no judicial process takes place. On the other hand,\n\nthe fact '
            'that judgments are delivered, there is a judicial action. There\n are '
            'three cases set forth:\n\n1. Confession of guilt.\n\n2. Confession of a '
            'lack of call to office.\n\n3. Renunciation of the communion of the '
            'Church.\n\nIn handling a confession of guilt, \u201cit is essential that '
            'the person intends to confess and permit the court to render judgment '
            'without process. Statements made by him in the presence of the court '
            'must not be taken as the basis of judgment without process except by his '
            'consent; for that would be to deprive him of his right.\u201d[1]\n\nIn '
            'the event a confession is intended, a full statement of the facts should '
            'be approved by the accused, before the court proceeds to a judgment. The '
            'accused has the right of complaining against the judgment.\n\n[1] '
            'Ramsay, Op. cit., p. 231.',
        webUrl: 'https://pcahistory.org/bco/rod/38/01.html',
      ),
    ],
    'bco_38-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 353\u2013354',
        text:
            'Recognizing that either members or ministers may act in an\n irregular '
            'way in moving out of the PCA to another branch of the\n Church visible, '
            'these paragraphs speak of ways in which the matter\n may be handled, '
            'depending on the particular circumstance that exists.\n\nIt is evident '
            'that irregular procedures may be resorted to by one seeking to flee '
            'church discipline. The Presbyterian Church in America, together with the '
            'other Churches of the North American Presbyterian and Reformed Council '
            'has adopted the following agreement pertaining to such an attempt to '
            'flee discipline: Sessions and Presbyteries should observe these '
            'guidelines in dealing with anyone seeking to avoid Church '
            'discipline.\n\nAgreement on Transfer of Members and Congregations\n'
            '\nRecognizing that the churches o f NAPARC have on occasion '
            'unintentionally\n received members or ordained officers who were under '
            'various states of discipline in another\n NAPARC church, thus creating '
            'tension between the churches, and at the same time\n recognizing the '
            'need for mutual freedom and openness on the part of the churches, we '
            'agree\n to respect the procedures of discipline and pastoral concern of '
            'the other denominations as\n\nfollows:\n\n1. Regular Transfer of '
            'Membership\n\nThat in the regular transfer of membership between NAPARC '
            'churches, the session/consistory or presbytery/classis not receive a '
            'member until the appropriate document of transfer is in the hands of the '
            'receiving church.\n\n2. Transfer with Irregularities\n\na. That upon '
            'request for transfer of membership by a person under discipline, the '
            'sending session/consistory or presbytery/classis inform the receiving '
            'body of the nature and extent of the disciplinary procedure before '
            'implementing the requested transfer, thus enabling informal consultation '
            'between the pastors and elders of both churches.\n\nb. That such a '
            'person not be received officially until the judicatory/assembly of the '
            'receiving church has taken into serious account the discipline of and '
            'the information supplied by the sending church.\n\nc. That such a person '
            'not be received officially until the judicatory/assembly of the '
            'receiving church is satisfied that proper restitution has been made '
            'and/or reconciliation has been seriously attempted.\n\nd. That a '
            '\u201cfugitive from discipline\u201d who no longer is a member of a '
            'church or who is no longer on the roll of a presbytery shall not be '
            'received until the former judicatory/assembly has been contacted to '
            'determine if proper restitution has been made and/or reconciliation has '
            'been attempted.\n\n3. Recourse and Appeal\n\nrelation committees of the '
            'denominations involved with a view to mediation of the problem.\n\n4. '
            'Where communication or action regarding the sending/receiving of a '
            'member or ordained officer/office bearer does not satisfy either the '
            'dismissing or receiving judicatory/assembly, communication may be '
            'submitted to the interchurch\n\nCongregational Transfer\n\nThat a '
            'congregation seeking to leave a NAPARC church to become affiliated with '
            'another NAPARC denomination be received only after it has complied with '
            'the requirements of the form of government of the church from which it '
            'is separating, and the receiving church shall be responsible to see that '
            'this is done.[2]\n\n[2]\n Adopted by the 16th GA, (16-25, p. '
            '117).\n\n(See Judicial Case 85, (Case 91-3], 1992, p. 154, 20-69, III, '
            '3, Digest, pp. 472f.)',
        webUrl: 'https://pcahistory.org/bco/rod/38/03.html',
      ),
    ],
    'bco_38-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discussion.',
        webUrl: 'https://pcahistory.org/bco/rod/38/04.html',
      ),
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 354\u2013356',
        text:
            'One of the matters that may be handled without judicial process\n is the '
            'case of a member of a congregation, who has neglected the\n\nchurch for '
            'a year. The Session may not simply remove his name from\n the rolls, but '
            'is to seek to \u201cdiligently purse\u201d the pastoral discipline '
            'outlined in this paragraph. A personal visit should by made by member(s) '
            'of the Session. The effort is to be made to restore the\n delinquent '
            'member to the active membership of the church. If he\n indicates that it '
            'is not his intention to do so, the effort should be made\n to see that '
            'he transfers to another branch of the visible church. If the individual '
            'refuses this counsel a warning should be given personally, if possible, '
            'and again in writing, if possible, that persistence in this position '
            'will result in his being removed from the rolls of the particular '
            'church, and that he will no longer be enrolled with any branch of the '
            'visible church. The warning should include a statement of the rights of '
            'the individual to due process, as provided in the last paragraph of this '
            'section.\n\nIt would be advisable, though it is not a requirement of the '
            'Book that the individual affirm in writing his renouncing of the vows '
            'of\n\nmembership. This protects the Session against any legal action '
            'that\n may be taken, when it removes the person from the roll. '
            'This\n\nprocedure is designated in the next paragraph as \u201cpastoral '
            'discipline.\u201d\n\nIf after diligently pursuing such pastoral '
            'discipline, and after further inquiry and due delay, the Session is of '
            'the\n judgment that the member will not fulfill his membership '
            'obligations in this or any other branch o f the Visible Church (cf. BCO '
            '2-2), then the Session shall erase his name from the roll. This erasure '
            'is an act of pastoral discipline (BCO 27-la) without process. The '
            'Session shall notify the person, if possible, whose name has been '
            'removed. This paragraph reminds the Session that it is not to act '
            'hastily in handling this matter. It is to \u201cdiligently\u201d pursue '
            '\u201csuch pastoral\n\ndiscipline.\u201d The provision of \u201cfurther '
            'inquiry\u201d may be the best time to ask the individual to respond in '
            'writing that he does not intend to keep his membership vows. The Session '
            'should give due time for the individual to respond to the warning. The '
            'Session may indicate a deadline, say of 30 or more days, after which the '
            'removal shall be done, if nothing is heard from the individual. The '
            'individual could be asked to respond in writing by indicating either '
            'that he has no intention to keep the vows, or by requesting, in writing, '
            'full judicial process as provided in the next paragraph.\n'
            '\nNotwithstanding the above, if a member thus warned makes a written '
            'request for process (i.e, BCO Chapters 31-33, 35-36), the Session shall '
            'grant such a request. Further, if the Session determines that any '
            'offense of such a member is of the nature that process is necessary, the '
            'Session may institute such process.The Session is to grant judicial '
            'process to any individual who\n requests such in writing, after he has '
            'been warned, but before he has\n\nbeen removed from the roll.. Since '
            'judicial process is intended to give\n a frill and fair hearing on any '
            'matter to both sides, it may be requested by an individual, who may feel '
            'he has been unjustly removed from the rolls of the church. Notice that '
            'this request is to be made after the individual has been warned as '
            'prescribed in the first paragraph of this section, and prior to the '
            'action of his having been removed from the roll. This being the case, '
            'the warning should indicate the right of the individual to full process, '
            'before his name is removed from the roll. Once removed, he no longer has '
            'standing as a member of the church. The Session also has the prerogative '
            'of entering into full process, if it deems it to be necessary for the '
            'glory of God, the good name of the Church, and the recalling of the '
            'individual.\n\nAn Outline of the Steps Required\n\n1. \u201cPastoral '
            'discipline\u201d of the individual by a personal visit from the Session, '
            'inquiring regarding his(her) intent to keep\n\nhis(her) vows, and '
            'reminding him(her) of the seriousness of such vows.\n\n2. A Sessional '
            'warning both personally and in writing, if possible, of the implications '
            'of his(her) refusal to obey the\n\nvows, or of moving to another branch '
            'of the Church of Christ. The warning to include a statement of the '
            'rights of the individual to full process.\n\n3. Due time to allow '
            'further inquiry, and to allow possible request for judicial '
            'procedures.\n\n4. Removal of the name from the roll, and notification of '
            'the individual of this action.',
        webUrl: 'https://pcahistory.org/bco/rod/38/04.html',
      ),
    ],
    'bco_39-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 237\u2013238',
        text:
            'CHAPTER XIII. OF THE MODES IN WHICH A CAUSE MAY BE CARRIED FROM A LOWER '
            'TO A HIGHER COURT.\n\nA cause is not necessarily a case of judicial '
            'procedure. The chapter begins by defining the scope and modes of review '
            'by higher courts, and the right of members of the inferior court to sit '
            'as members of the higher court. Then the body of the chapter falls into '
            'four sections, one on each of the four ways in which causes may be '
            'carried up.\n\n\u00a7238.--I.Every decision which is made by any church '
            'court, except the highest, is subject to the review of a superior court, '
            'and may be brought before it by general review and control, reference, '
            'appeal, or complaint.\n\nThere is always some way to bring into a higher '
            'court whatever has been done or neglected by an inferior court, so that '
            'everything is done by the whole Church through the court whose action is '
            'permitted to stand as final ; for every action of a court is either the '
            'action of the Church in the General Assembly, or may be brought there '
            'for approval or disapproval.',
        webUrl: 'https://pcahistory.org/bco/rod/39/01.html',
      ),
    ],
    'bco_39-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 238',
        text:
            '\u00a7239.--II. When a matter is transferred in any of these ways from '
            'an inferior to a superior court, the members of the inferior court shall '
            'not lose their right to sit, deliberate, and vote in the case of the '
            'higher courts, except that either of the original parties may challenge '
            'the right of any members of the inferior court to sit, which question '
            'shall be decided by the vote of all those members of the superior court '
            'who are not members of the inferior.\n\nThe only ground on which such a '
            'challenge can base itself is that the persons challenged are themselves '
            'a party, or for some other reason are incapacitated to be considered '
            'judicially competent. But even in the case of process against an '
            'inferior court, the members of that court are not parties, but only the '
            'court in the person or persons of its representatives appointed to '
            'appear for it in the case.',
        webUrl: 'https://pcahistory.org/bco/rod/39/02.html',
      ),
    ],
    'bco_40-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '\u00a7240.--I. It is the duty of every court above a Church Session, at '
            'least once a year, to review the records of the proceedings of the '
            'courts next below. And if any lower court shall omit to send up its '
            'records for this purpose, the higher court may issue an order to produce '
            'them, either immediately, or at a particular time, as circumstances may '
            'require.\n\nThe Assembly reviews the records of each of the Synods ; '
            'each Synod, the records of each of its Presbyteries ; and each '
            'Presbytery, the records of the Session of each of its churches.',
        webUrl: 'https://pcahistory.org/bco/rod/40/01.html',
      ),
    ],
    'bco_40-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 239\u2013240',
        text:
            '\u00a7241.--II. In reviewing the records of an inferior court, it is '
            'proper to examine,\n\nFirst, Whether the proceedings have been '
            'constitutional and regular;\n\nSecondly, Whether they have been wise, '
            'equitable, and for the edification of the church;\n\nThirdly, Whether '
            'they have been correctly recorded;\n\nFourthly, Whether the lawful '
            'injunctions of the superior courts have been obeyed.\n\nWhile '
            'practically the superior court must usually make this examination '
            'through committees, these committees should be so selected that they '
            'will be superior in wisdom in each case to the court whose records they '
            'are to review.\n\nAn act may be constitutional in the main, but have '
            'been taken in disregard of certain regulations of the Constitution; '
            'irregular, then, means unconstitutional in a minor sense, that is, '
            'contrary to less important requirements of the Constitution. In all '
            'cases of unconstitutionality the fact is to be recorded in the review, '
            'even if the superior court should itself be persuaded that the more '
            'fundamental principles of the Constitution required the action in '
            'contravention of its subordinate regulations. But even actions that are '
            'constitutional, that is, that are by the Constitution put in the '
            'discretion of the court, may not be advisable. When, therefore, an '
            'action is found to be constitutional and regular, it remains to inquire '
            'whether it is wise, and especially whether it is equitable ; for foolish '
            'regularity and unjust constitutionality are prejudicial to the true '
            'edification of the Church. An action which is unobjectionable may not be '
            'correctly recorded ; and this should always be noted, with an '
            'intelligible explanation of what the correct record would be. And the '
            'court may have done nothing objectionable, but may have omitted to obey '
            'lawful injunctions ; and such neglect of obedience should never be '
            'passed over in silence by the superior court. It is important, indeed, '
            'that superior courts abstain from commanding, except where they have '
            'authority and reason for enjoining ; but when they lay an injunction '
            'they should see that it is obeyed ; otherwise, the unity and efficient '
            'working of the Church are impaired.\n\nThe feeling that the thorough '
            'examination and criticism of the records of the lower courts is merely '
            'perfunctory, a thing to be committed to such members of the superior '
            'court as may not be wise enough to take in hand more serious matters, '
            'must work great loss ; and, on the other hand, thoroughness and wisdom '
            'here, without hypercriticism, of course, would be a great help to lower '
            'courts and a great gain to the harmonious and successful working of our '
            'system.',
        webUrl: 'https://pcahistory.org/bco/rod/40/02.html',
      ),
    ],
    'bco_40-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '\u00a7242.--III. In most cases the superior court may be considered as '
            'fulfilling its duty by simply recording on its own minutes the approval, '
            'the correction of proceedings, or the censure which it may think proper '
            'to pass on the records under review; and also by making an entry of the '
            'same in the book reviewed. But should any irregular proceedings be found '
            'such as demand the interference of the superior court, the inferior '
            'court may be required to review and correct them.\n\nThe action of an '
            'inferior court that is constitution, however unwise, the inferior court '
            'cannot be required to review and correct, unless such action is brought '
            'before the superior court in some other way than by general review and '
            'control ; but the superior court may record its disapproval. '
            'Disobedience to lawful injunctions of higher courts is irregular or '
            'unconstitutional.',
        webUrl: 'https://pcahistory.org/bco/rod/40/03.html',
      ),
    ],
    'bco_40-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 242',
        text:
            '\u00a7244.--V.Courts may sometimes entirely neglect to perform their '
            'duty, by which neglect heretical opinions or corrupt practices may be '
            'allowed to gain ground; or offenders of a very gross character may be '
            'suffered to escape; or some circumstances in their proceedings of very '
            'great irregularity may not be distinctly recorded by them; in any of '
            'which cases their records will by no means exhibit to the higher court a '
            'full view of their proceedings. If, therefore, the next higher court be '
            'well advised that any such neglect or irregularity has occurred on the '
            'part of the lower court, it is incumbent on it to take cognizance of the '
            'same, and to examine, deliberate, and judge in the whole matter as '
            'completely as if it had been recorded, and thus brought up by the review '
            'of the records.\n\nThat is, in reviewing the proceedings of an inferior '
            'court, the superior court, proceeding upon sufficient evidence outside '
            'of the records, may record in its own and the inferior court\'s records, '
            'or send down to the inferior court, such corrections, censures and '
            'orders as if the full evidence had been in the records.',
        webUrl: 'https://pcahistory.org/bco/rod/40/04.html',
      ),
    ],
    'bco_40-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '\u00a7246.--VII. In process against an inferior court, the trial shall '
            'be conducted according to the rules provided for process against '
            'individuals, so far as they may be applicable.\n\nOf the rules in Chap. '
            'VI., 173-\'78 are superceded by 245 ; 179 and 180 are not applicable, '
            'nor 191 ; and instead of 190 it lies in the nature of the case that the '
            'accused court must be represented by one or more persons appointed by '
            'itself or, in case of its failure to answer citation, by the superior '
            'court, and said counsel must have membership in one or both the courts. '
            'The general rules of evidence will be the same as in the trial of '
            'individuals.',
        webUrl: 'https://pcahistory.org/bco/rod/40/06.html',
      ),
    ],
    'bco_41-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 245\u2013246',
        text:
            '\u00a7247.\u2014I. A reference is a representation of a matter not yet '
            'decided, made by an inferior to a superior court, which representation '
            'ought always to be in writing.\n\nCf. 77:2. A matter decided goes to the '
            'superior court in the regular records sent up for general review, and '
            'may also be brought there by appeal or complaint; but the court itself, '
            'instead of making a decision, may refer the question. This applies also '
            'to judicial cases, and the court may refer without consent of parties; '
            'but the parties must be heard in the superior court just as in the '
            'inferior court on the same question.',
        webUrl: 'https://pcahistory.org/bco/rod/41/01.html',
      ),
    ],
    'bco_41-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 244',
        text:
            '\u00a7248.\u2014II.Cases which are new, important, difficult or of '
            'peculiar delicacy, the decision of which may establish principles or '
            'precedents of extensive influence; on which the sentiments of the '
            'inferior court are greatly divided; or on which for any reason it is '
            'desirable that a superior court should first decide, are proper subjects '
            'of reference.\n\nIt would be within the discretion of the superior court '
            'to decline to entertain a reference on the ground that it was not a '
            'proper case.',
        webUrl: 'https://pcahistory.org/bco/rod/41/02.html',
      ),
    ],
    'bco_41-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 244',
        text:
            '\u00a7249.\u2014III. References are either for mere advice, preparatory '
            'to a decision by the inferior court, or for ultimate decision by the '
            'superior court.\n\nAnd the inferior court should always distinctly state '
            'its desire, whether for advice, merely, or for an ultimate decision. If '
            'the reference asks for advice only, the superior court cannot make an '
            'ultimate decision.',
        webUrl: 'https://pcahistory.org/bco/rod/41/03.html',
      ),
    ],
    'bco_41-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 245',
        text:
            '\u00a7251.\u2014V. Although references may, in some cases, be proper, '
            'yet it is generally conducive to the good of the Church that every court '
            'should fulfil its duty by exercising its judgment.\n\nA thing should be '
            'done by the appropriate organ; and only when the special distribution of '
            'powers among the courts adopted in the Form of Government seems really '
            'to put a work upon an unfit organ, ought references to be resorted '
            'to.\n\n\u00a7252.\u2014VI. A reference ought, generally, to procure '
            'advice from the superior court, yet that court is not bound to give a '
            'final judgment, but may remit the whole case, either with or without '
            'advice, to the court by which it was referred.\n\nThe superior is not '
            'bound to give a final judgment, even when the reference asks for it.',
        webUrl: 'https://pcahistory.org/bco/rod/41/05.html',
      ),
    ],
    'bco_41-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 245\u2013246',
        text:
            '\u00a7254.\u2014VIII: When a court makes a reference, it ought to have '
            'all the testimony and other documents duly prepared, produced, and in '
            'perfect readiness, so that the superior court may be able to fully '
            'consider and issue the case with as little difficulty and delay as '
            'possible.\n\nThe inferior court may decide at any stage of its own '
            'consideration to make a reference; and all the testimony, etc., up to '
            'that stage should be put in perfect readiness for the superior court. '
            'Manifestly, it is not contemplated that a judicial case will be referred '
            'before the evidence has all been taken; and yet this is not forbidden, '
            'since the very difficulty might hang around questions as to the taking '
            'and admission of evidence.',
        webUrl: 'https://pcahistory.org/bco/rod/41/06.html',
      ),
    ],
    'bco_42-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 246\u2013247',
        text:
            'SECTION III.--OF APPEALS.\n\nSix paragraphs regulate the taking of an '
            'appeal ; and the last six, the disposal of it. After defining an appeal, '
            'and the parties to whom it is permissible, in the first two paragraphs, '
            'the section enumerates the grounds upon which an appeal may be taken, in '
            'the third paragraph. And the fourth paragraph gives special regulations '
            'concerning the notice of appeal, the fifth prescribes to what court it '
            'may be taken, and the sixth controls the appearance of the parties '
            'before the superior court. Then the last six paragraphs present, first, '
            'the order of proceedings ; second, the scope of the decision ; third, '
            'when an appellant is to be regarded as abandoning his appeal ; fourth, '
            'what is to be done with an appellant manifesting a wrong spirit ; fifth, '
            'what effect the taking of the appeal has on the force of the judgment '
            'appealed from ; and sixth, what shall be done with a court neglecting to '
            'send up the record of a case.\n\n255.--I. An appeal is the removal of a '
            'cause, already decided, from an inferior to a superior court, the effect '
            'of which is to arrest sentence until the matter is finally decided. It '
            'is allowable only after judgment has been rendered, and to the party '
            'against whom the decision has been rendered.\n\nAppeal differs from '
            'general review in three particulars : first, it and general review '
            'cannot bring the same issues before the superior court ; the issue is '
            'brought by express action of a party, and not as a matter in course by '
            'the records, and it does not permit the inferior court to be censured '
            'for its decision. Appeal differs from reference in two particulars : it '
            'brings to the superior court an issue already decided ; and it is a '
            'party that brings the issue, and not the court itself. The sentence '
            'appealed from cannot be pronounced until the judgment is confirmed in a '
            'higher court ; that is, no one sentenced to be admonished, suspended, '
            'excommunicated or deposed, is to be admonished, suspended, '
            'excommunicated or deposed, after giving notice of his intention to '
            'appeal as required in paragraph 258 ; but see paragraph 265. No one can '
            'appeal before the judgment has been made, not even after the decision '
            'has been made. (186:6.) In a judicial case there are always two parties, '
            'the accuser and the accused (163) ; and the decision can never go '
            'against the accuser, since he is not on trial. If the decision has gone '
            'against the accused, he may appeal. No one else may appeal ; others may '
            'complain (267).',
        webUrl: 'https://pcahistory.org/bco/rod/42/01.html',
      ),
    ],
    'bco_42-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 247\u2013248',
        text:
            '256.--II. Those who have not submitted to a regular trial are not '
            'entitled to appeal.\n\nIf there has been no regular trial, but the court '
            'has decided without process, or if the court has dealt with the party as '
            'contumacious, he may complain (267), but he may not appeal. It is true '
            'that then the sentence, however unjust, is not arrested ; but the Rules '
            'of Discipline assume that, while a court may err, it will more probably '
            'be right than the party that objects to its action ; and especially is '
            'it unlikely that a court will treat as contumacious one who really was '
            'not so, or proceeed without process where the objector really desired '
            'process.',
        webUrl: 'https://pcahistory.org/bco/rod/42/02.html',
      ),
    ],
    'bco_42-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 248',
        text:
            '257.--III. An irregularity in the proceedings of the inferior court; a '
            'refusal of reasonable indulgence to a party on trial; declining to '
            'receive important testimony; hurrying to a decision before the testimony '
            'is fully taken; a manifestation of prejudice in the cause; and mistake '
            'or injustice in the judgment are all proper grounds of appeal.\n\nThe '
            'judgment has in it the decision of guilty, and this decision may be a '
            'mistake ; and the judgment has in it the fixing of the censure, and this '
            'censure may be excessive, and therefore unjust. Such mistake or '
            'injustice must be the radical ground of appeal ; but one may appeal from '
            'the judgment on account of how it was arrived at, and even without '
            'disputing its correctness or justice. Such subordinate grounds of '
            'appeal, or any infraction or neglect of the regulations laid down in the '
            'Rules of Discipline to govern judicial proceedings ; a refusal to grant '
            'to the accused reasonable time and opportunity apart from the mere '
            'letter of such regulations (it being assumed that a court which has let '
            'process commence will grant the prosecution reasonable indulgence) ; '
            'rejecting important testimony (and the party desiring to introduce it '
            'can always get his reasons put into the record in his notice and reasons '
            'of appeal) ; haste in reaching a decision, that is, the really arriving '
            'at a decision before hearing all the testimony ; and prejudice, which '
            'must have been somehow manifested or it could not be assigned with '
            'propriety. But the appellant may cite what grounds he will, it belongs '
            'to the superior court to determine the propriety of his grounds of '
            'appeal, and of the evidence for them appearing in the record of the '
            'cause.',
        webUrl: 'https://pcahistory.org/bco/rod/42/03.html',
      ),
    ],
    'bco_42-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 249',
        text:
            '258.--IV. Every appellant is bound to give notice of his intention to '
            'appeal, and also to lay the reasons thereof in writing before the court '
            'appealed from, either before its rising or within ten days thereafter. '
            'If this notice or these reasons be not given to the court while in '
            'session, they shall be lodged with the Moderator or Clerk.\n\nThe '
            '\u201crising\u201d of the court is not necessarily the adjournment of '
            'all the sessions of that meeting, but the rising of the court from its '
            'work as a judicial body in the case. A court might remain in session '
            'with other business for more than ten days after \u201crising\u201d from '
            'its judicial action. However, it would often work injury to enforce this '
            'distinction, unless the attention of the party were expressly called to '
            'it at the rising of the court, so generally will the party having right '
            'to appeal understand that he has ten days from the adjournment of the '
            'court. It would be contrary to the spirit of these Rules for a superior '
            'court to refuse to hear an appeal for a mere technicality that was '
            'designed for good. The notice enables the court to have the record of '
            'the cause in readiness, and also, if it so desires to change the '
            'personnel of the accuser. For the court, as judge, is not a party to the '
            'cause. The court, as appointing or accepting the prosecutor, was the '
            'Church acting as prosecutor ; and in this capacity it has the right to '
            'determine the personnel of the accuser in whatever court the cause is '
            'heard. The parties, however, remain the same, only the accuser is called '
            'appellee in the superior court, and the accused is there called '
            'appellant. (163).',
        webUrl: 'https://pcahistory.org/bco/rod/42/04.html',
      ),
    ],
    'bco_42-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 250',
        text:
            '260.--VI. The appellant shall lodge his appeal, and the reasons of it, '
            'with the Clerk of the higher court before the close of the second day of '
            'its sessions; and the appearance of the appellant and the appellee shall '
            'be either in person or by writing.\n\nThe appeal and reasons must be the '
            'same as he gave notice of. The sessions must be the sessions of the '
            'meeting next after the notice of appeal is given. Both appellant and '
            'appellee are bound to appear without further notice than the original '
            'notice of appeal.',
        webUrl: 'https://pcahistory.org/bco/rod/42/05.html',
      ),
    ],
    'bco_42-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 251\u2013252',
        text:
            '261.--XI. If the infliction of the sentence of suspension, '
            'excommunication or deposition be arrested by appeal, the judgment '
            'appealed from shall nevertheless be considered as in force until the '
            'appeal be issued.\n\nThat is, one on whom such sentence has been passed, '
            'and who has arrested the pronouncing of it by his appeal, is bound to '
            'abstain from the sacraments or from the exercise of his office until the '
            'superior court passes upon his appeal ; and not to submit himself by '
            'thus abstaining would itself be an offence worthy of the highest '
            'censure, if wittingly committed. If one could arrest the force of a '
            'judgment, as well as the pronouncing of sentence, by appeal, the '
            'grossest offender could not be reached until after most hurtful '
            'delay.',
        webUrl: 'https://pcahistory.org/bco/rod/42/06.html',
      ),
    ],
    'bco_42-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 252',
        text:
            '266.--XII. If any court shall neglect to send up the record of the '
            'cause, especially if thereby an appellant who has proceeded with '
            'regularity shall be deprived of the privilege of having his appeal '
            'seasonably tried, it shall be censured according to the circumstances of '
            'the case, and the judgment appealed from shall be suspended until the '
            'record be produced, upon which the issue can be fairly tried.\n\nThe '
            'appeal itself suspends the pronouncing of sentence, and this failure of '
            'the court would suspend the force of the judgment, so that the accused '
            'would have the right, from this failure until the record is produced, to '
            'resume the privilege of communicating and the exercise of his office. It '
            'is a matter of course that the delinquent court could not be censured '
            'without process against the court (245).',
        webUrl: 'https://pcahistory.org/bco/rod/42/07.html',
      ),
    ],
    'bco_42-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 250',
        text:
            '261.--VII. In taking up an appeal, after ascertaining that the appellant '
            'on his part has conducted it regularly, the first step shall be to read '
            '\u201cthe record of the cause;\u201d the second, to hear the parties, '
            'first the appellant, then the appellee, and the appellant shall close; '
            'the third, to call the roll, that the members may express their opinion '
            'in the cause; and then the vote shall be taken.\n\nCf. 186. The vote '
            'must be according to the next paragraph (262).',
        webUrl: 'https://pcahistory.org/bco/rod/42/08.html',
      ),
    ],
    'bco_42-9': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 250',
        text:
            '262.--VIII. The decision may be either to confirm or reverse, in whole '
            'or in part, the judgment of the inferior court; or to remit the cause '
            'for the purpose of amending the record; should it appear to be incorrect '
            'or defective, or for a new trial.\n\nAccordingly, the vote may be first '
            'to sustain, not to sustain, or to sustain in part, the appeal ; and if '
            'the appeal is sustained or sustained in part, then that is done or is to '
            'be done which the appellant asked for in his appeal. But the vote may be '
            'upon a definite motion to confirm or reverse, to remit, or to order a '
            'new trial.',
        webUrl: 'https://pcahistory.org/bco/rod/42/09.html',
      ),
    ],
    'bco_42-11': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 251',
        text:
            '263.--IX. If an appellant, after entering his appeal to a superior '
            'court, fail to prosecute it, it shall be considered as abandoned, and '
            'the judgment appealed from shall be final. And an appellant shall be '
            'considered as abandoning his appeal if he do not appear before the '
            'appellate court by the second day of its meeting next ensuing the date '
            'of his notice of appeal, unless it shall appear that he was prevented by '
            'the providence of God from seasonably prosecuting it.\n\nEntering his '
            'appeal means giving notice. Here, again, no one should be deprived of '
            'his right to prosecute his appeal upon a technicality ; but, on the '
            'other hand, one wishing to appeal must be diligent to use the '
            'opportunity that the Church may not be unnecessarily disturbed.\n'
            '\nCONSTITUTIONAL INQUIRY:\n\nM14GA, 14-42, p. 112\n\nQ. What constitutes '
            '\u201cappearance\u201d?\n\nA. \u201cAppearance\u201d shall be defined as '
            'the personal presence of the parties (or counsel) before the '
            'adjudicating body after reasonable notice has been given by that '
            'body.',
        webUrl: 'https://pcahistory.org/bco/rod/42/11.html',
      ),
    ],
    'bco_42-12': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 248',
        text:
            '264.--X.. If an appellant is found to manifest a litigious or other '
            'unchristian spirit in the prosecution of his appeal, he shall be '
            'censured according to the degree of his offence.\n\nThe right of appeal '
            'is not given with any other intent than that those who sincerely believe '
            'wrong has been done may bring the higher courts to pass upon the issue ; '
            'and to abuse this favor is a peculiarly censurable offence. Of course, '
            'no censure for such offence can be passed except after confession or '
            'process before the court having original jurisdiction over the offender '
            '; but the superior court before which the offence is committed should '
            'call the attention of the court of first resort to the question of '
            'dealing with the offender..',
        webUrl: 'https://pcahistory.org/bco/rod/42/12.html',
      ),
    ],
    'bco_43-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 377\u2013378',
        text:
            'Complaints differ from general review as follows:\n\n1. It may bring a '
            'decision in a judicial case, except where an appeal has been filed, as '
            'well as any other decisions.\n\n2. It comes as an action of a party, and '
            'not by the review of the records.\n\n3. It does not permit the lower '
            'court to be censured for its action, without process.\n\nComplaints '
            'differ from reference in these particulars:\n\n1. It brings an issue '
            'already decided.\n\n2. It is not brought by the court, but by member(s) '
            'of the court.\n\nComplaints differ from appeals as follows:\n\n1. A '
            'complaint can be made against every sort of action of the lower court, '
            'where an appeal can only be made against a\n\njudicial process.\n\n2. A '
            'complaint can be made against an action against which an appeal can be '
            'made, but only if no appeal has been made.\n\n3. An appeal can be taken '
            'only by a party condemned on trial, but a complaint may be taken by any '
            'person who is a\n\nmember of the Church and submissive to its '
            'authority.\n\n4. A complaint suspends the effect of the decisions '
            'against which it was taken, a complaint does not suspend the\n\naction '
            'complained against, unless one-third of the court votes to '
            'suspend.\n\n5. An appeal removes the case to the higher court without '
            'changing the parties. A complaint presents an issue with\n\nnew '
            'parties.\n\nRamsay has the following significant observations regarding '
            'the differences between complaints and appeals:\n\n. . . the court '
            'complained of cannot be censured, nor the complainant;\n for the '
            'complaint is not a continuance of process, as\n\nan appeal is; and no '
            'party can be censured without process or confession. But the court, as a '
            'judge, is a party. In an appeal,\n\nthe court, as accuser, is a party, '
            'the appellee; but in a complaint, the court, as judge, is a party, the '
            'respondent. In an appeal, the\n\naccused is a party, the accused: but in '
            'a complaint, the accused is not a party at all. Even if the person that '
            'was accused should\n\ncomplain, he does not appear as the accused. And '
            'that a complaint is not judicial process is evident from these two '
            'considerations:\n\nthat no one can be censured by the issue of a '
            'complaint; and that questions that were not connected with a judicial '
            'cause\n\nmay be the subjects of complaint, [7]\n\nConstitutional '
            'Inquiry, 1986, p. 126,14-52,16. Digest, I, p. 288.\n\nThat the answer o '
            'f the Permanent Committee concerning Constitutional Inquiry #8 from the '
            'Trinity Presbyterian Church, be ratified.\n\n1986, p. 331, Appendix I, '
            '8. Constitutional Inquiry Hi. From the Trinity Presbyterian '
            'Church.\n\n\u201c1. Can a complaint be filed against the actions of a '
            'congregational meeting? (BCO 43-1) Is a congregational meeting '
            'considered a church court?\'\u201d\n\nANSWER\n\n1. No. The congregation '
            'is not a court of the church (BCO 10-2), and a\ncomplaint according to '
            'BCO 42 can only be lodged against a court of the Church. All matters '
            'before a congregational meeting are placed before the meeting by the '
            'Session (BCO 25:2), whether the meeting was called by the Session itself '
            'or by the Session at the request of the congregation. Complaints may be '
            'lodged against a decision of the Session to place a matter before a '
            'congregational meeting, or not to place a matter before the '
            'congregation. Similarly a complaint may be lodged against a decision of '
            'a Session to implement or not to implement an action of the '
            'congregation.\n\nConstitutional Advice, 1992, p. 267,20-75, Digest, I, '
            'p. 289.\n\n\u201cDoes a member of presbytery have a constitutional right '
            'to complain that presbytery has received a protest containing allegedly '
            'intemperate or slanderous language?\u201d\n\nResponse:\n\nYes, BCO 43-1 '
            'states that a complaint is a written representation made against some '
            'act or decision of a court of the church. The decision to receive a '
            'protest is a decision or action of a court and, therefore, may be '
            'complained against. However, BCO 45-5 states that a protest must be '
            'couched in temperate language and be respectful to the '
            'court\n\nTherefore, although the recording of the protest itself is to '
            'end the matter, if a presbyter is convinced that the protest was not '
            'couched in temperate language or respectful to the court, he may '
            'complain against the\naction of the court in receiving it Here the '
            'matter that is complained against is new (i.e. intemperate language or '
            'disrespect) and is not a continuation of the matter about which the '
            'protest was submitted.\n\n(See Judicial Case 21, 1982, p. 58,10-12, F, '
            'Digest, I, pp. 321f.)',
        webUrl: 'https://pcahistory.org/bco/rod/43/01.html',
      ),
    ],
    'bco_43-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable text for discussion in Ramsay]',
        webUrl: 'https://pcahistory.org/bco/rod/43/08.html',
      ),
    ],
    'bco_44-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[no comparable paragraphs for discussion]',
        webUrl: 'https://pcahistory.org/bco/rod/44/01.html',
      ),
    ],
    'bco_45-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 256\u2013257',
        text:
            'CHAPTER XIV. OF DISSENTS AND PROTESTS.\n\nThe four paragraphs define, '
            'first, a dissent, and then a protest, direct what shall and may be done '
            'with a protest, and determine who may join in making them.\n'
            '\n\u00a7272.--I. A dissent is a declaration on the part of one or more '
            'members of a minority in a court, expressing a different opinion from '
            'that of the majority in a particular case. A dissent unaccompanied with '
            'reasons is always entered on the records of the court.\n\nA mere dissent '
            'simply records the negative vote, or the names of those who wish to be '
            'recorded as favoring the negative. And the court has no option but to '
            'let the records show this.',
        webUrl: 'https://pcahistory.org/bco/rod/45/02.html',
      ),
    ],
    'bco_45-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 256',
        text:
            '\u00a7273.--II. A protest is a more solemn and formal declaration by '
            'members of a minority, bearing their testimony against what they deem a '
            'mischievous or erroneous judgment, and is generally accompanied with a '
            'detail of the reasons on which it is founded.\n\nA protest is a dissent '
            'in the form of a solemn testimony, with or without reasons.\n\n[Ed. - '
            'Note that Ramsay appears to allow for greater latitude on whether '
            'reasons are attached, whereas the paragraph itself states that reasons '
            'will usually be attached.]',
        webUrl: 'https://pcahistory.org/bco/rod/45/03.html',
      ),
    ],
    'bco_45-4': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[No comparable text for discussion]',
        webUrl: 'https://pcahistory.org/bco/rod/45/04.html',
      ),
    ],
    'bco_45-5': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 257',
        text:
            '\u00a7274.--III.If a protest or dissent be couched in temperate '
            'language, and be respectful to the court, it shall be recorded; and the '
            'court may, if deemed necessary, put an answer to the protest on the '
            'records along with it. But here the matter shall end, unless the parties '
            'protesting obtain permission to withdraw their protest absolutely, or '
            'for the sake of amendment.\n\nThe words \u201cor dissent\u201d are here '
            'in place to cover a protest calling itself a dissent. For only two '
            'reasons may a court refuse to record a protest : that its language is '
            'intemperate or that it is disrespectful to the court. If the court '
            'should refuse to record a dissent or protest, there may be made a '
            'complaint against the refusal. The court may allow protestants to '
            'withdraw their protest, but is not bound to allow an amended form to be '
            'recorded if intemperate or disrespectful. Those joining in a protest '
            'should take no part in framing the answer to the protest, but they may '
            'vote upon the question of allowing their own protest to be recorded.',
        webUrl: 'https://pcahistory.org/bco/rod/45/05.html',
      ),
    ],
    'bco_46-1': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'p. 258\u2013259',
        text:
            '\u00a7276\u2014XV-1:\n\nBesides what may be found on the subject before, '
            'here are gathered together the regulations for determining to what '
            'jurisdiction any member at any time belongs. The first paragraph '
            'prescribes the method of transfer of a member from one church to '
            'another, upon his own motion ; the second, the method of transferring a '
            'member or officer from one jurisdiction to another without his consent ; '
            'the third determines to which jurisdiction a member in course of '
            'transfer belongs ; the fourth orders what is to be done with '
            'disappearing members ; the fifth gives a special regulation as to the '
            'form of certificate of transfer from Presbytery to Presbytery ; and the '
            'sixth limits the force of a certificate of good standing.\n\n276.--I. '
            'When any member shall remove from one church to another, he shall '
            'produce satisfactory testimonials of his church-membership and '
            'dismission before he be admitted as a regular member of that '
            'congregation, unless the church Session has other satisfactory means of '
            'information.\n\n\u201cAny member\u201d includes non-communicating '
            'members and suspended members. These may be transferred from one church '
            'to another, but with the same status. For the meaning of remove from one '
            'church to another, see next paragraph. When the member asks for '
            'admission into the church to which he has come, he shall produce '
            'satisfactory testimonials of two things : his church-membership (and the '
            'testimonial should certify his status), and his dismission. He may be '
            'admitted without such testimonial, if the Session has other satisfactory '
            'evidence of his church-membership, and dismission ; but the Session '
            'shall not receive without evidence that the other Session has dismissed '
            'him, during the first twelve months of his change of residence, nor ever '
            'without change of residence. So much is due to the Session from whose '
            'jurisdiction the transfer would take him.\n\nWhile this rule is plain as '
            'to members of this Church passing from church to church, its principles '
            'should also be observed in receiving members from other Churches: '
            'namely, there should be no disrespectful haste in acting without the '
            'concurrence of the other ecclesiastical authority ; and, where there is '
            'no change of residence, a member from another Church in correspondence '
            'with this Church, or willing to dismiss its members to this Church, '
            'should not be received without such dismission.\n\nThe disregard of this '
            'rule impairs the efficiency of discipline. And with this in view, no '
            'member under censure ought ever to be received without dismission from '
            'another church of this Church, or from a Church in correspondence with '
            'this Church, and not without imperative reasons from any church.',
        webUrl: 'https://pcahistory.org/bco/rod/46/01.html',
      ),
    ],
    'bco_46-2': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 259\u2013260',
        text:
            '\u00a7277.\u2014II. When a Church member or officer shall remove his '
            'residence beyond the bounds of the court to whose jurisdiction he '
            'belongs into the bounds of another, if he shall neglect for twelve '
            'months, without satisfactory reasons given to both these courts, to '
            'transfer his ecclesiastical relations, the court whose bounds he has '
            'left shall be required to transfer them. And should that court neglect '
            'this duty, the one into whose bounds he has removed shall assume '
            'jurisdiction, giving due notice to the other body.\n\nHere, again, '
            'church member includes non-communicating members, but the paragraph does '
            'not apply to suspended members or officers (see 232). The bounds of a '
            'court are, for a Presbytery, the geographical limits of its district '
            '(72), and of a church Session, the geographical limits within which '
            'persons may meet together for divine worship. A member is within the '
            'bounds of a Session, if he is near enough to the usual place of worship '
            'of the church to attend its meetings for worship : and hence he may be '
            'in the bounds of two or more Sessions at the same time. And a man\'s '
            'residence is really within the bounds of a Presbytery, if, having a '
            'charge within its geographical district, he is near enough thereto to '
            'attend to his duties in that charge. (See remarks on 72.) One removes '
            'his residence, in the intent of this paragraph, when, though his '
            'residence remains at the same geographical point, it yet becomes by '
            'changes of environment, or connection, out of the bounds of his court. '
            'If one removes his residence out of the bounds of one court without '
            'moving into the bounds of another court, this paragraph does not apply ; '
            'nor does this paragraph regulate transfers between this Church and any '
            'other Church. The twelve months of the paragraph must be calculated from '
            'the time of his entrance into the bounds of the court which is to be put '
            'in jurisdiction over him. Hence, the paragraph does not apply to those '
            'who do not remain as long as twelve months within one boundary. The '
            '\u201cshall be required\u201d is to be interpreted thus : if he shall '
            'neglect, the court shall be required by this paragraph. The requirement '
            'shall come into force and applicability whenever the condition arises. '
            'And this is a duty concerning which the court has no option ; to neglect '
            'it is to neglect a duty. Either court might be censured for such neglect '
            'under paragraph 245, or an order might be issued to it under 244. But '
            'there may be satisfactory reasons for not transferring. For instance, a '
            'member may retain his former ecclesiastical relation temporarily, in '
            'order to assist and encourage a weak church to which he expects soon to '
            'return ; or an officer may have no work under the direction of the '
            'Presbytery into whose bounds he has come, and be expecting work '
            'elsewhere. And there may be other reasons. Especially would it seem '
            'undesirable to gather into one Presbytery a preponderance of Ministers '
            'without charge under it. But the transfer must be made, unless the '
            'reasons to the contrary are given by the person to both courts, and are '
            'satisfactory to both courts.',
        webUrl: 'https://pcahistory.org/bco/rod/46/02.html',
      ),
    ],
    'bco_46-3': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 261\u2013262',
        text:
            '\u00a7278\u2014XV-3:\n\nThe Session may dismiss to one church, or to one '
            'of several, or to one of a certain description, within or without this '
            'Church, according to the request of the member and the discretion of the '
            'Session.\n\nSince dismission is an act of the Session, the Session may '
            'refuse dismission for sufficient reasons, of which it must judge, '
            'subject to correction by a superior court. Nor can any member demand as '
            'a right, dismission to a court without having his residence in the '
            'bounds of the court, which must be another court of this Church or of a '
            'Church in correspondence with this Church, or, at least, of some '
            'evangelical church, and being himself not under censure or under '
            'charges.',
        webUrl: 'https://pcahistory.org/bco/rod/46/03.html',
      ),
    ],
    'bco_46-6': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text:
            '\u00a7280.--V. When a Presbytery shall dismiss a minister, probationer '
            'or candidate, the name of the Presbytery to which he is dismissed '
            'shall\n be given in the certificate, and he shall remain under the '
            'jurisdiction of the Presbytery dismissing him, until received by the '
            'other.\n\nNo one can demand as a right dismission to a Presbytery in '
            'which he is not going to reside, nor to a Presbytery not in this Church '
            'or in a Church in correspondence with this Church, or, at least, such as '
            'might be taken into such correspondence. Nor can one be dismissed to any '
            'ecclesiastical court or authority not a Presbytery, nor to more than one '
            'Presbytery at the same time.\n\nCONSTITUTIONAL INQUIRY:\n\n1989, p. 151, '
            '17-82, III. 6. That the advice of the Committee on Judicial Business '
            'regarding the communication from Review and Control be ratified as '
            'amended. The question was: \u201cWould it be proper to accept as '
            'evidence the letter of a chairman of a presbytery committee stating that '
            'a dismissal had been granted?\u201d\n\n\u201cANSWER:\n\nNo. BCO 46-6 '
            'requires that the presbytery issue a certificate when dismissing a '
            'minister, licentiate, or a candidate. According to BCO 10-4, the '
            'official certification of an action of a court is that which is issued '
            'over the signature of the stated clerk.\u201d Adopted.',
        webUrl: 'https://pcahistory.org/bco/rod/46/06.html',
      ),
    ],
    'bco_46-7': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: 'pp. 263\u2013265',
        text:
            '\u00a7281.--VI. No certificate of dismission from either a Session or a '
            'Presbytery, shall be valid testimony of good standing for a longer '
            'period than one year, unless its earlier presentation be hindered by '
            'some providential cause; and such certificates given to persons who have '
            'left the bounds of the Session or Presbytery granting them, shall '
            'certify the standing of such persons only to the time of their leaving '
            'those bounds.\n\nIf the person to whom the certificate is granted has '
            'already left the bounds, the certificate should state when he left and '
            'his standing up to that time ; but if the certificate fails to state the '
            'time of his leaving the bounds, the effect of the certificate is the '
            'same. The point is, that a person cannot be presumed to be in good '
            'standing if he has let a whole year pass since leaving the bounds of a '
            'court, or obtaining a certificate of dismission from it, without '
            'presenting his certificate of dismission to the court to which he comes. '
            'The certificate is, however, valid evidence of dismission after it '
            'ceases to be valid presumptive evidence of good standing.\n\nThe '
            'principles underlying these provisions may be stated thus:\n\n1. One is '
            'a member or officer of the Church, which exercises its jurisdiction over '
            'him through the appropriate court ; and while the Church does not fix '
            'his residence, the Church does, with only limited choice to the '
            'individual, fix the court through which it exercises its jurisdiction. '
            'Members cannot arbitrarily choose the court to whose jurisdiction they '
            'will be subject.\n\n2. Being subject to the jurisdiction of the Church, '
            'they cannot cast off that jurisdiction at will without sinning against '
            'the Church. And she may surrender her jurisdiction only in the way of '
            'censure by excommunication or deposition, or in the way of correcting a '
            'mistake made by both her and the person, as in demission, or i the way '
            'of fraternal recognition of some other Church by dismissing thereto. But '
            'no one may quit this Church without thereby violating his covenant with '
            'it, except with her consent ; nor is she permitted to give her consent, '
            'except when transferring to some other Church of Christ that can, all '
            'things considered, do as well for the member.\n\n3.\n Neither in '
            'dismissing to another court of this Church, nor in dismissing to another '
            'Church, ought any court to dismiss one as in good standing when, in the '
            'mind of the court, there is a strong presumption that the person asking '
            'dismission is guilty of an offence deserving censure. (And an offence '
            'may just as truly lie in principle as in practice, in opinion as in '
            'deed.) When the strong presumption of guilt exists, the court should '
            'withhold dismission and institute process. The certificate ought to tell '
            'the truth.',
        webUrl: 'https://pcahistory.org/bco/rod/46/07.html',
      ),
    ],
    'bco_46-8': [
      BcoCommentary(
        source: 'F.P. Ramsay, Exposition of the Book of Church Order',
        year: '1898',
        pageRef: '',
        text: '[No comparable text for discussion]',
        webUrl: 'https://pcahistory.org/bco/rod/46/08.html',
      ),
    ],
    'bco_47-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 395\u2013396',
        text:
            'Here we find a restatement of the regulative principle of worship which '
            'is found in the Confession and Catechisms, namely, that all acts of '
            'public worship must be derived from the Bible. The second paragraph is a '
            'recasting of the Shorter Catechism questions as indicated.\n\nThis '
            'principle, simply stated is that we are to include in worship only what '
            'God\'s Word teaches. This principle receives a four-fold emphasis in the '
            'Confession and Catechisms (WCF II, 2, XXI, 1, LC 108-109, and SC 50-51, '
            'and is again restated here as the basic principle of the Directory for '
            'Worship. In the light of the variety of , approaches to worship in the '
            'Church today, this emphasis is needed.\n\nThis view of worship was one '
            'of the distinguishing marks of Reformed worship over against Rome and '
            'Lutheranism. The worship of Rome reflects the traditions of the Church, '
            'and has lost the simplicity of New Testament worship. The Lutheran '
            'approach is that anything not forbidden in the Bible may be permitted. '
            'The Reformed view is to include only what is specifically warranted by '
            'Scripture. As the Shorter Catechism says it, \u201cThe second '
            'commandment forbiddeth the worshipping of God by images, or any other '
            'way not appointed in his word.\u201d[1]\n\nOne point that needs to be '
            'clarified before entering into the guidelines given in the Directory for '
            'Worship is the sharp distinction that must be made between the Old '
            'Testament and the New Testament worship. The worship of the Old '
            'Testament differs from that of the New in that the Old was ceremonial, '
            'looking forward to the coming of the Messiah through the use of the '
            'sacrificial system. The New Testament, on the other hand, reflects the '
            'fact that the Messiah has come. Preparation for this simpler form of '
            'worship came in the development of the synagogue, especially during the '
            'exile and the subsequent dispersion of the Jews. When we seek to know '
            'what the Bible teaches about Christian worship, we should not look to '
            'the ceremonial worship of the Old Testament, but rather to the practice '
            'of the New Testament Church. When this is recognized, we can understand '
            'what lies behind the Directory for Worship, which rests on the Directory '
            'adopted by the Westminster Divines. If this principle is kept in view, '
            'it will guard us from falling into serious errors in our worship '
            'practices.\n\n[1.] Q. 51.',
        webUrl: 'https://pcahistory.org/bco/dfw/47/01.html',
      ),
    ],
    'bco_47-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 396',
        text:
            'This paragraph introduces the subject of public worship. As it indicates '
            'public worship is more than just a gathering of the people of God with '
            'each other. It is a meeting of the triune God with His chosen people. '
            'This concept is rooted in the Tabernacle, which was called the Tent of '
            'Meeting, the place where God met with His people.\n\nAs this paragraph '
            'indicates, this is not just the general presence of God, who is present '
            'everywhere, but is the special presence of the covenant God meeting with '
            'his people. Matthew 18:20 is cited as the basis for this promise. Though '
            'this verse occurs in the context of the exercise of discipline, the '
            'principle given is that where we gather in the name of Christ, he will '
            'be with us. If this is true of discipline, it must also be true of the '
            'worshipping people of God.',
        webUrl: 'https://pcahistory.org/bco/dfw/47/02.html',
      ),
    ],
    'bco_47-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 397',
        text:
            'The first part of this paragraph speaks of the end or goal of public '
            'worship. It must always be \u201cthe glory of God.\u201d All too often '
            'this goal is lost. The modern church has too often made the goal of the '
            'worship service evangelism or instruction of the believers, without '
            'keeping central the idea of glorifying God. On the basis of the book of '
            'Acts, the addition of those who are being saved is a result of worship, '
            'so also is the edification of those who have been saved. The idea of '
            'being entertained is foreign to the Biblical concept of worship. '
            'It\n\nshould be observed, that though a congregation participating in '
            'true godly worship has the experience of Christian fellowship, this is '
            'not named in the paragraph as one of the aims of worship. This is a '
            'byproduct\n\nof worship, not its goal.\n\nThe last sentence indicates '
            'one of the benefits of worship on the Lord\'s day. It is the fact that '
            'the Christian becomes informed as to how he is to live all of his days '
            'to the glory of God. Some have suggested that everything that the '
            'Christian does is to be done as an act of worship. This sentence '
            'suggests better language regarding the everyday activity of the '
            'Christian. It is the Biblical language of doing all to the glory of God. '
            'The term \u201cworship\u201d is restricted to the direct meeting with '
            'God, either in public or private acts of worship. To use the term '
            '\u201cworship\u201d universally of all acts of service to God, makes the '
            'idea of a regulative principle for worship meaningless.',
        webUrl: 'https://pcahistory.org/bco/dfw/47/03.html',
      ),
    ],
    'bco_47-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 397\u2013398',
        text:
            'This paragraph distinguishes Christian worship from all other forms of '
            'worship. There are three requirements for worship to be Christian:\n\n1. '
            'Recognition by the worshippers that Christ is the only Mediator by whom '
            'they can approach God.\n\n2. Honoring Christ as the Head of the Church, '
            'who rules over public worship.\n\n3. That the worship is an expression '
            'of the faith in Christ and love for Him by the worshippers.\n\nThe idea '
            'of Christ ruling over public worship reminds us again that there are '
            'rules and guides for our worship given in the Word of God.',
        webUrl: 'https://pcahistory.org/bco/dfw/47/04.html',
      ),
    ],
    'bco_47-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 398',
        text:
            'The first sentence quotes the words of Jesus to the woman at the well. '
            '\u201cBut the hour cometh, and now is, when the true worshippers shall '
            'worship the Father in spirit and truth: for such doth the Father seek to '
            'be his worshippers. God is a Spirit: and they that worship him must '
            'worship in spirit and truth.\u201d (John 4:23-24). Jesus is looking '
            'forward to the time when worship shall no longer be centered at the '
            'Temple, but may be performed anywhere. He declares that God is a '
            'Spirit.\n\nThus no physical representation may be made of Him \u201cto '
            'assist\u201d in worship. His addition of the term \u201ctruth\u201d in '
            'describing true worship points to the fact that the only true worship '
            'must be from the heart. The Book clearly warns against any '
            'ceremonialism. It also indicates that only the regenerate are capable of '
            'true worship of God.',
        webUrl: 'https://pcahistory.org/bco/dfw/47/05.html',
      ),
    ],
    'bco_47-6': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 398\u2013399',
        text:
            'Having introduced the matter of forms in the previous paragraph, this '
            'paragraph continues this subject, stating first of all the basic '
            'principle that the Lord Jesus has not prescribed any set forms for '
            'public worship in the New Testament. This is sharply in contrast with '
            'the Old Testament, where the external forms were carefully laid out. The '
            'Westminster Confession describes the differences between the Old and New '
            'Testaments as follows: Having spoken of the various specific\n\ntypes '
            'and ordinances of the Old Testament,[2] it then says:\n\nUnder the '
            'gospel, when Christ, the substance, was exhibited, the ordinances in '
            'which this covenant is dispensed are the preaching of the Word, and the '
            'administration of the sacraments of Baptism and the Lord\'s Supper: '
            'which, though fewer in number, and administered with more simplicity, '
            'and less outward glory, yet in them it is held forth in more fullness, '
            'evidence and spiritual efficacy; to all nations, both Jews and Gentiles: '
            'and is called the new Testament . . . [3] To guard against the sinful '
            'inclinations of men, the paragraph reminds us that liberty with regard '
            'to forms is not license to do anything one may imagine as a part of '
            'worship. We are brought back to the regulative principle of worship, '
            'namely, that we do not include anything in worship that is not warranted '
            'by Scripture. In practicing our liberty, we must keep in mind the '
            'general rules of the Word of God, specifically, (1) all things must be '
            'done decently and in order; (2) that God\'s people must serve the Lord '
            'in reverence and the beauty of holiness. As the Confession indicates, '
            'the worship of the New\n Testament is to be performed with simplicity, '
            'since this itself is an evidence of sincerity and a manifestation of '
            'proper dignity and holiness. This should serve as a warning against '
            'inventing elaborate forms.\n\n[2] WCF, VII, v.\n\n[3] WCF, VII, vi.',
        webUrl: 'https://pcahistory.org/bco/dfw/47/06.html',
      ),
    ],
    'bco_47-7': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 400',
        text:
            'Public worship is defined as the worship of the saints as God\'s '
            'covenant people. One of the implications of this is that the whole '
            'covenant people should be included. In particular, covenant children '
            'should be present. The \u201cso far as possible\u201d phrase allows for '
            'the practice of dismissing the little children prior to the sermon. The '
            'argument for this practice is that little children cannot understand the '
            'preaching, but may be distracting to the adults around '
            'them.\n\nProvision is often made for them to have Bible stories taught '
            'to them.\n On the other hand, there are many congregations where the '
            'children remain in the service. Though they may appear not to be '
            'listening, a questioning of them afterwards often shows that they are '
            'hearing more than might have been expected. The earlier that children '
            'can be trained to sit with their parents though the entire worship '
            'service the better for both the children and the congregation. There are '
            'passages\n\nof the Bible addressed to children, and the minister would '
            'do well to address portions of the sermon to the children. The sentence '
            'indicating that no favoritism to any does not exclude particular address '
            'to any special group. For example, the minister may well address the '
            'elderly, or the young married, or the singles with particular '
            'applications of the Word to them. What is forbidden is any favoritism to '
            'individuals or groups in the sense that James forbids favoritism to the '
            'rich over against the poor (James 2:1-10). The last sentence cautions '
            'against spiritual pride on the part of any members of the congregation. '
            'All should obey the teaching of Philippians 2:3-4.\n\n\u201cMake full my '
            'joy, that ye be of the same mind, having the same love, being of one '
            'accord, of one mind; [doing] nothing through faction or through '
            'vainglory, but in lowliness of mind each counting other better\n\nthan '
            'himself; not looking each of you to his own things, but each of you also '
            'to the things of others.\u201d',
        webUrl: 'https://pcahistory.org/bco/dfw/47/07.html',
      ),
    ],
    'bco_47-8': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 401',
        text:
            'This paragraph speaks of the attitude of heart that one should have as '
            'he comes into the presence of God in worship. First, there should be a '
            'sense of awe and humility at the very thought of his holiness and our '
            'sinfulness. The example of this approach to God is found in the vision '
            'that Isaiah had of God, and his immediate response of humility. '
            '\u201cAnd one cried unto another, and said, holy, holy, holy, is Jehovah '
            'of hosts. The whole earth is full of his glory. And the '
            'foundations\n\nof the thresholds shook at the voice of him that cried, '
            'and the house was filled with smoke. Then said I, Woe is me! For I am '
            'undone. Because I am a man of unclean lips, and I dwell in the midst of '
            'a people of unclean lips. For mine eyes have seen the King, Jehovah of '
            'hosts.\u201d (Isaiah 6:3-5).\n\nThe approach that we are called to have '
            'as we enter into worship is commanded by Psalm 100:\u201cMake a joyful '
            'noise unto Jehovah, all ye lands. Serve Jehovah with gladness. Come '
            'before his presence with singing. Know ye that Jehovah, he is God. It is '
            'he that hath made us, and we are his. We are his people, and the sheep '
            'of his pasture. Enter into his gates with thanksgiving, And into his '
            'courts with praise. Give thanks unto him, and bless his name. For '
            'Jehovah is good. His lovingkindness [endureth] for ever, And his '
            'faithfulness unto all generations.\u201dReverential awe and thanksgiving '
            'are not mutually exclusive. Our coming into the presence of God should '
            'always be with a sense of reverence. This reverence may be properly '
            'expressed by coming into his presence with joy, singing and thanksgiving '
            'for all that he has done for us.',
        webUrl: 'https://pcahistory.org/bco/dfw/47/08.html',
      ),
    ],
    'bco_47-9': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 402\u2013404',
        text:
            'This paragraph affirms that the elements listed are taught in the Bible. '
            'Let us note some of the passages teaching each of these elements. We '
            'shall limit ourselves to those passages of Scripture treating\n\nworship '
            'services, other than the tabernacle or temple worship, which has been '
            'fulfilled in Christ, and thus ended.\n\nNeh 8:2. \u201cAnd Ezra the '
            'priest brought the law before the assembly, both men and women, and all '
            'that could hear with understanding, upon the first day of the seventh '
            'month. 3. And he\n\nread therein before the broad place that was before '
            'the water gate from early morning until midday, in the presence of the '
            'men and the women, and of those that could understand. And the ears of '
            'all the people were [attentive] unto the book of the law. 4. And Ezra '
            'the scribe stood upon a pulpit of wood, which they had made for the '
            'purpose. And beside him stood Mattithiah, and\n\nShema, and Anaiah, and '
            'Uriah, and Hilkiah, and Maaseiah, on his right hand. And on his left '
            'hand, Pedaiah, and Mishael, and Malchijah, and Hashum, and Hashbaddanah, '
            'Zechariah, [and] Meshullam. S. And Ezra opened the book in the sight of '
            'all the people. For he was above all the people.) And when he opened it, '
            'all the people stood up. 8. And they read in the book, in the law of '
            'God, distinctly. And they gave the sense, so that they understood the '
            'reading.\u201d Here we have the basis of the synagogue worship, which '
            'the Christian Church followed, with the reading of the Word, and the '
            'explaining of its meaning, or the preaching of the Word to the people. '
            'It is to be observed that though this was an Old Testament example of '
            'worship, it was not associated with the temple and sacrificial '
            'system.\n\nIn the New Testament we find Jesus going to the synagogue, '
            'and reading the Word and then proclaiming its meaning in Luke 4.\n\n16. '
            '\u201cAnd he came to Nazareth, where he had been brought up: and he '
            'entered, as his custom was, into the synagogue on the Sabbath day, and '
            'stood up to read. 17. And there was delivered\n\nunto him the book of '
            'the prophet Isaiah. And he opened the book, and found the place where it '
            'was written, 18. \'The Spirit of the Lord is upon me, because he '
            'anointed me to preach good\n\ntidings to the poor: He hath sent me to '
            'proclaim release to the , captives, and recovering of sight to the '
            'blind, to set at liberty them that are bruised, 19. To proclaim the '
            'acceptable year of the\n\nLord.\' 20. And he closed the book, and gave '
            'it back to the attendant, and sat down: and the eyes of all in the '
            'synagogue were fastened on him. 21. And he began to say unto them, '
            'Today\n\nhath this scripture been fulfilled in your ears. . . . 44. And '
            'he was preaching in the synagogues of Galilee.\u201d It might be argued '
            'that these are both examples of Jewish worship, not specifically of the '
            'Christian Church. Peter set the example for all Christian preaching as '
            'he first quoted Joel, and then expounded\n\non this text in the sermon '
            'at Pentecost, Acts 2.\n\nFrom these passages we see both the reading and '
            'the preaching\n of the Word. As to the singing of Psalms and hymns, we '
            'find the two parallel passages in Ephesians and Colossians, which call '
            'for this to be\n\ndone.\n\nEph. 5:19. \u201cSpeaking one to another in '
            'psalms and hymns and spiritual songs, singing and making melody with '
            'your hearts to , the Lord\u201d; Col. 3:16. \u201cLet the word of Christ '
            'dwell in you richly; in all wisdom teaching and admonishing one another '
            'with psalms [and] hymns [and] spiritual songs, singing with grace in '
            'your hearts unto God.\u201d We shall discus the question of whether the '
            'word hymns speaks of uninspired hymns or not under chapter 51. Certainly '
            'the idea of singing to the praise of God is taught here.\n\nThat prayer '
            'was a part of worship may be seen in the early description of the '
            'Church, Acts 2:44, \u201cAnd they continued steadfastly in the '
            'apostles\' teaching and fellowship, in the breaking of bread and '
            'the\n\nprayers.\u201d\n\nThe presentation of offerings is implied in '
            'Paul\'s instruction about offerings in I Cor. 16:1-2, \u201cNow '
            'concerning the collection for the saints, as I gave order to the '
            'churches of Galatia, so also do ye. Upon the first day of the week let '
            'each one of you lay by him in store, as he may prosper, that no '
            'collections be made when I come.\u201d\n\nThe PCA added the phrase, '
            '\u201cconfessing the faith\u201d because it appears that there were '
            'examples of such confessions being made in theNT church, it is this that '
            'allows the practice of using the Apostle\'s\n\nCreed, or passages from '
            'the Confession or Catechisms in the worship service. An example of such '
            'a creedal statement is found in I Tim. 1:15, \u201cFaithful is the '
            'saying, and worthy of all acceptation, that Christ\n\nJesus came into '
            'the world to save sinners; of whom I am chief.\u201d Here the Apostle is '
            'giving his sanction to the use of such a creedal affirmation.\n\nThat '
            'the sacraments should be observed is obvious in the way in which both of '
            'the sacraments are presented. Baptism is commanded as a part of the '
            'Great Commission, Matthew 28:18-20, \u201cAnd Jesus came to them and '
            'spake unto them, saying, All authority hath been given unto me in heaven '
            'and on earth. Go ye therefore, and make disciples of all the nations, '
            'baptizing them into the name of the Father and the Son and of the Holy '
            'Spirit: teaching them to observe all things which I have commanded you: '
            'and lo, I will be with you always, even unto the end of the '
            'world.\u201d\n\nThe Lord\'s Supper is presented as that which our Lord '
            'commanded us to do. I Cor. 11:23-25, \u201cFor I received of the Lord '
            'that\u201dwhich also I delivered unto you, that the Lord Jesus in the '
            'night in which he was betrayed took bread: and when he had given thanks, '
            'he brake it, and said, This is my body, which is for you: this do in '
            'remembrance of me. In like manner also the cup, after supper, saying, '
            'This cup is the new covenant in my blood: this do, as often as ye drink '
            '[it], in remembrance of me.\u201c\n\nThe matter of taking oaths, and '
            'making vows, which may be subsumed under the taking of oaths is seen in '
            'the fact that both Jesus and the Apostle Paul took oaths. Jesus, while '
            'on trial, when placed under\n\noath responded to the High Priest, '
            'Matthew 26:63-64, \u201dBut Jesus held his peace. And the high priest '
            'said unto him, I adjure thee by the living God, that thou tell us '
            'whether thou art the Christ, the Son of\n\nGod. Jesus said unto him, '
            'Thou hast said: nevertheless I say unto you, henceforth ye shall see the '
            'Son of man sitting at the right hand of Power, and coming on the clouds '
            'of heaven.\u201c\n\nRom 1:9, \u201dFor God is my witness, whom I serve '
            'in my spirit in the gospel of his Son, how unceasingly I make mention of '
            'you, always in my prayers.\u201c\n\nPhil 1:8. \'For God is my witness, '
            'how I long after you all in the tender mercies of Christ '
            'Jesus.\u201d',
        webUrl: 'https://pcahistory.org/bco/dfw/47/09.html',
      ),
    ],
    'bco_48-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 407',
        text:
            'This paragraph deals with which day is to be observed as the Sabbath or '
            'Lord\'s Day. As indicated, it was the seventh day in the Old Testament, '
            'but this was changed by the fact that the resurrection of Jesus Christ '
            'took place on the first day. This fact itself would not be sufficient '
            'reason for the change, but Jesus set His endorsement on the observance '
            'of the first day of the week in that he did not appear again to His '
            'disciples until the next first day. The gift of the Holy Spirit at '
            'Pentecost also occurred on the first day. All of this served to confirm '
            'to the Church the change from the seventh to the first day of the week. '
            'This paragraph is again repeating material found in the Confession '
            'chapter XXI, vii, and the Larger Catechism 116, and Shorter Catechism '
            '59. That the New Testament church worshipped on the first day of the '
            'week is seen in Acts 20:7 and I Cor. 16:1-2.1',
        webUrl: 'https://pcahistory.org/bco/dfw/48/02.html',
      ),
    ],
    'bco_50-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 413',
        text:
            'That the reading of Scripture in public worship is Biblical may be found '
            'in several places in the New Testament. For example our Lord read the '
            'Scriptures in the synagogue service (Luke 4). Peter at\n Pentecost set '
            'the example for all Christian worship in citing the prophecy of Joel, '
            'which he quoted before he preached his sermon.\n\nIn accord with Larger '
            'Catechism, Q. 156, the Directory indicates that the reading of Scripture '
            'is to be performed by the minister of 4 the Word. This differs from the '
            'next paragraph of the Directory. The reason for reading the Bible in the '
            'worship service is stated, namely, that through such reading God is '
            'speaking directly to the congregation. Since this is true, a reading of '
            'suitable length should be used.\n\nA distinction is made between the '
            'reading of the Word by the minister and the responsive reading of '
            'Scripture. The reading by the minister is seen as God\'s directly '
            'addressing the congregation, whereas\n responsive readings give the '
            'people the opportunity to read divinely inspired expressions of '
            'contrition, adoration, gratitude and other holy sentiments. The book of '
            'Psalms, which has all of these sorts of expressions is the most suitable '
            'section of Scripture for this type of reading. The Book does not '
            'restrict responsive readings to the Psalter, but does commend its '
            'use.',
        webUrl: 'https://pcahistory.org/bco/dfw/50/01.html',
      ),
    ],
    'bco_50-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 414',
        text:
            'As already noted, this paragraph is in contrast to the first sentence of '
            'the 50-1. The \u201cor some other person\u201d was added by the PCA by '
            'motion from the floor of the Assembly when it adopted the Book,\n and it '
            'is evident that it was not carefully compared to other portions of the '
            'Book. Without any qualifications as to the \u201cother person\u201d it '
            'nullifies all restrictions implied by both 50-1 and 50-2. This is one of '
            'those areas that needs further study.',
        webUrl: 'https://pcahistory.org/bco/dfw/50/02.html',
      ),
    ],
    'bco_50-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 414',
        text:
            'With the large number of new translations of the Bible that are '
            'presently available, it is necessary to caution the Church to use only '
            '\u201ca good translation\u201d for the public Scripture reading. To do '
            'otherwise may well be misleading. The Session together with the minister '
            'should agree on which text is to be used in the Scripture reading. The '
            'minister may use other translations in explaining the text.',
        webUrl: 'https://pcahistory.org/bco/dfw/50/03.html',
      ),
    ],
    'bco_50-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 414',
        text:
            'The minister is granted discretion as to the length of the passage\n to '
            'be read. It is left to him as to whether he will expound any portion of '
            'the reading. The minister is to give a due proportion of time to each '
            'part of the service, Warning is given against excessively short or '
            'lengthy services. The minister should work out these matters in concert '
            'with the Session for the best spiritual interest of the '
            'congregation.',
        webUrl: 'https://pcahistory.org/bco/dfw/50/04.html',
      ),
    ],
    'bco_51-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 415\u2013416',
        text:
            'That music was used in the Old Testament in connection with the Temple '
            'worship is evident. There is not as clear evidence that it was a part of '
            'the synagogue worship, which underlies Christian worship in the New '
            'Testament. We do have the example of our Lord after he had instituted '
            'the sacrament of the Lord\'s Supper. In each of the gospels where it is '
            'mentioned, they are said to have sung a hymn. That it was the custom of '
            'the Jews to sing a Psalm (probably from Hallel, Psalms 115-118, or Psalm '
            '136) is known. It is significant that the specific Psalms are not cited '
            'in either of the Gospels that refer to this incident. Alexander in his '
            'commentary on Mark says, \u201cWhen they had sung a hymn, in Greek a '
            'single word, hymning (or having hymned), refereed no doubt to the series '
            'of psalms usually chanted at the Passover and known in the later Jewish '
            'ritual as the Great Hallel. There is of course no allusion to the modern '
            'distinction between psalms and hymns, nor to the modern use of meter, '
            'rhyme, and artificial melody and harmony, all which appear to have been '
            'wholly unknown to the ancient church, and have still less authority from '
            'scripture than the use of human compositions as an aid in worship, when '
            'these are agreeable to God\'s word in their sentiment and spirit. The '
            'original church-music was most probably the simplest kind of chanting, '
            'in which all could join without laborious instructions or the cumbersome '
            'machinery of choirs, music-master, singing-schools or instruments, '
            'though these appliances are not unlawful or at variance with the '
            'character of spiritual worship.\u201d [1]\n\nThough we have a certain '
            'degree of assurance as to what Psalm would have been used by the Jews of '
            'that day, the gospel accounts leaves it open, and thus we are not forced '
            'only to sing what they sang. The Lord\'s Supper is a part of the New '
            'Testament Church worship, and thus we have the example of Jesus on the '
            'occasion of its institution using music to the praise of God. The '
            'Apostle speaks of our \u201cSpeaking one to another in psalms and hymns '
            'and spiritual songs,\n singing and making melody with your heart to the '
            'Lord.\u201d[2] Thus the\n New Testament teaches that it is our '
            '\u201cduty and privilege\u201d to praise God through music.\n\nA '
            'controversy has existed among Reformed and Presbyterian people as to '
            'what the terms \u201cpsalms, hymns and spiritual songs\u201d mean. Those '
            'who argue for singing only the Psalms maintain that these three terms '
            'are used in the Bible only for the Psalter. John Murray in his defense '
            'of this position admits that these terms are not universally so used in '
            'the Bible. By this admission, it appears that the argument is not as '
            'absolute as some would argue.\n\nThe Book speaks of \u201cthe singing of '
            'hymns and psalms\u201d as though they refer to different kinds of '
            'compositions. It also asserts that musical instruments is proper for the '
            'public worship service. This cannot be demonstrated from the Gospels, '
            'Acts or the Epistles. It is obvious that musical instruments were used '
            'in the worship of God in the Old Testament. It is also obvious that '
            'there will be such usage in heaven as seen in the book of Revelation. By '
            'good and necessary consequence the use of instruments to assist the '
            'congregation in singing is legitimate. [1] J. A. Alexander, Commentary '
            'on the Gospel of Mark, 14:26.\n\n[2] Eph. 5:19. See also Col. 3:16.',
        webUrl: 'https://pcahistory.org/bco/dfw/51/01.html',
      ),
    ],
    'bco_51-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 416',
        text:
            'This paragraph indicates that the use of song is to be done as a '
            'spiritual act of worship. It is to be done with understanding, which '
            'means that we should read and understand what it is that we are '
            'singing.',
        webUrl: 'https://pcahistory.org/bco/dfw/51/02.html',
      ),
    ],
    'bco_51-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 417',
        text:
            'Having granted that other hymns of human composition may be used, the '
            'Book here urges us not to abandon the use of the Psalms in worship. All '
            'too often this is the case. Sessions should see to it that the '
            'hymn-books in use include a good portion of the Psalms as well as hymns. '
            'Failure to do this causes the congregation to fall short of this '
            'guideline of our \u201cDirectory for Worship.\u201d The warning is given '
            'that only those hymns which are true to the Word should be used. The '
            'last sentence speaks of hymns as suitable for the praise of God, and '
            'also commends the use of other hymns that are in accord with the spirit '
            'of the sermon. The minister should be involved in the selection of the '
            'hymns that will fit his sermon.',
        webUrl: 'https://pcahistory.org/bco/dfw/51/03.html',
      ),
    ],
    'bco_51-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 417\u2013418',
        text:
            'The Session is responsible for the music, including the leadership in '
            'song during the worship. The persons who may be used in this capacity '
            'are to be of high spiritual character.\n\nThis paragraph introduces the '
            'idea of a choir. No justification for choirs is given here. Under David '
            'the Old Testament Temple worship did include the use of choirs. There is '
            'no reference to such in the New Testament, either in connection with the '
            'Temple or the synagogue worship. There are those who object to the use '
            'of choirs, since they tend to become means of \u201centertaining\u201d '
            'the people, and not of praising God. The Book cautions against choirs '
            'displacing congregational singing. The use of both instruments and '
            'choirs should be for the purpose of assisting the congregation in '
            'Biblical worship, not to entertain, or to displace the congregation\'s '
            'singing. One might add that they should not be allowed to displace the '
            'ministry of the Word.',
        webUrl: 'https://pcahistory.org/bco/dfw/51/04.html',
      ),
    ],
    'bco_51-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 395\u2013396',
        text:
            'This last paragraph repeats the thought of 50-4 about the proper '
            'proportion of the service to be used in singing the praise of God. It '
            'then encourages the singing of psalms and hymns by the congregation. It '
            'has been observed that those who are not given sufficient opportunity to '
            'sing the praise of God all too often resort to \u201ccharismatic\u201d '
            'churches where there is greater personal participation by members of the '
            'congregation. For this reason, a healthy congregation is one that does '
            'sing to the praise of God.',
        webUrl: 'https://pcahistory.org/bco/dfw/51/05.html',
      ),
    ],
    'bco_52-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 419',
        text:
            'This paragraph suggests an order for a worship service. The beginning of '
            'the service with the doxology was traditional way in which\n '
            'Presbyterian churches opened their worship. This was followed by an '
            'invocation, which included the elements described in this paragraph. As '
            'indicated, this was often ended with the Lord\'s prayer. That the New '
            'Testament Church prayed in worship is clear from both the Gospels and '
            'the book of Acts (Acts 2:42; 3:1; 4:23-31). Jesus gave the Lord\'s '
            'prayer both as a pattern for prayer (Matt. 6:9), and as a prayer to be '
            'prayed (Luke 11:2).',
        webUrl: 'https://pcahistory.org/bco/dfw/52/01.html',
      ),
    ],
    'bco_52-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 420',
        text:
            'This paragraph is so full that no additional comment is necessary. Again '
            'the Book speaks of the fact that the minister is to exercise discretion '
            'as to the proportion of the service to be devoted to each part.',
        webUrl: 'https://pcahistory.org/bco/dfw/52/02.html',
      ),
    ],
    'bco_52-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 421',
        text:
            'This paragraph speaks of the prayer following the sermon, directing that '
            'it be related to the message. Having made this point, this principle is '
            'broadened to include all other public prayers.',
        webUrl: 'https://pcahistory.org/bco/dfw/52/03.html',
      ),
    ],
    'bco_52-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 421',
        text:
            'Here we have some specific instructions to the minister concerning his '
            'prayer life. Notice that this is not just advice, but a duty of the '
            'minister. First, prior to his entering into the office of the ministry, '
            'he is to prepare and qualify himself for this part of the ministry, as '
            'well as for preaching. By in large, this is one of the most neglected '
            'parts of the preparation of men for the ministry. It is generally left '
            'to the individual to do on his own. Seminaries would do well to assist '
            'candidates for the ministry as suggested by this paragraph.\n\nIn '
            'addition to this preparation of candidates for the ministry in prayer, '
            'the guidance of how one ought to pray in public worship. One should '
            'always be ready to pray. To do so one must be in constant communion with '
            'God, praying without ceasing. For the younger minister preparation for '
            'public prayer should be as carefully done as for preaching. This '
            'includes the writing out of prayers so that he does not\u201cdisgrace '
            'this important service.\u201d',
        webUrl: 'https://pcahistory.org/bco/dfw/52/04.html',
      ),
    ],
    'bco_52-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 420',
        text:
            'This final paragraph forbids the minister from using languages not '
            'understood by the people. Two practices are forbidden. The Roman '
            'Catholic practice of conducting the service in Latin, even though it was '
            'not understood by the people is certainly forbidden. Also praying in '
            'unknown tongues is forbidden.',
        webUrl: 'https://pcahistory.org/bco/dfw/52/05.html',
      ),
    ],
    'bco_53-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 423',
        text:
            'That preaching is an ordinance of God for the salvation of men is the '
            'clear teaching of Scripture. Paul said, \u201cFor Christ sent me not to '
            'baptize, but to preach the gospel . . (I Cor. 1:17a), and again,\u201d '
            '... it was the God\'s good pleasure through the foolishness of the '
            'preaching to save them that believe\u201c (I Cor. 1:21b).\n\nSince this '
            'is the God ordained means for evangelism and the edification of his '
            'church, it demands the very best efforts to do it aright. This, of '
            'course, is the reason for the educational requirements of the PCA.',
        webUrl: 'https://pcahistory.org/bco/dfw/53/01.html',
      ),
    ],
    'bco_53-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 423',
        text:
            'Here we have practical guidelines as to the selection of texts suitable '
            'for a sermon. A warning is given against using a text only as a motto. '
            'Rather it should state a doctrine or a duty. A larger portion of\n '
            'Scripture may also be expounded. Thus there is a great deal of liberty '
            'granted to the minister as to how he will preach the Word. The main '
            'requirement is that sermons should be based upon the Word alone.',
        webUrl: 'https://pcahistory.org/bco/dfw/53/02.html',
      ),
    ],
    'bco_53-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 424',
        text:
            'Here again is a paragraph that speaks of the seriousness of\n preaching, '
            'and calling upon the minister to be serious in his preparation\n for '
            'entering the pulpit. Also, the minister is urged to make the\n message '
            'so plain that all will understand it. Ministers ought to avoid\n the '
            'temptation to show how erudite they are. The real purpose of\n preaching '
            'is to communicate the Gospel clearly to the congregation.\n Of course, a '
            'minister must not only be preachers, but also be doers of\n the '
            'Word.',
        webUrl: 'https://pcahistory.org/bco/dfw/53/03.html',
      ),
    ],
    'bco_53-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 424',
        text:
            'Here again is a warning to ministers to \u201cpreserve a just '
            'proportion\n in the several parts of public worship.\u201d',
        webUrl: 'https://pcahistory.org/bco/dfw/53/04.html',
      ),
    ],
    'bco_53-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 424',
        text:
            'This paragraph was added by the PCA. It encourages ministers\n to call '
            'upon sinners to repent and to put their trust in Christ as Savior.\n '
            'People who thus come to Christ are to make a public confession of him\n '
            'before men.',
        webUrl: 'https://pcahistory.org/bco/dfw/53/05.html',
      ),
    ],
    'bco_53-6': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 424',
        text:
            'The Session has the say on who is to preach in the pulpit. Ministers '
            'should be careful to observe this, and not presume to invite anyone to '
            'preach in their pulpit without first clearing it with the Session.',
        webUrl: 'https://pcahistory.org/bco/dfw/53/06.html',
      ),
    ],
    'bco_54-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 425',
        text:
            'Here we find the justification for offerings. It is based upon the '
            'Biblical teaching that God is the owner both of all persons and of all '
            'things. This is in accord with the prayer of dedication of the offerings '
            'for the building of the Temple found in I Chron. 29.: 12-14, \u201cBoth '
            'riches and honor come of thee . . . for all things come of thee, and of '
            'thine own have we given thee.\u201d The direct reference to the tithe '
            'was added by the PCA. Though the tithe is not specifically commanded in '
            'the New Testament, the principle upon which it is based is found in I '
            'Cor. 16:2, \u201cUpon the first day of the week let each one of you lay '
            'by him in store, as he may prosper, that no collections be made when I '
            'come.\n\nIt should be observed that the support of the work of the Lord '
            'should be \u201dthrough the Church.\u201c Offerings thus brought are '
            'viewed as an act of spiritual worship. This concept is taught in Prov. '
            '3:9,\u201dHonor the Lord with thy substance, and with the first fruits '
            'of all thine increase.\u201c',
        webUrl: 'https://pcahistory.org/bco/dfw/54/01.html',
      ),
    ],
    'bco_54-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 425\u2013426',
        text:
            'This paragraph is obviously based on I Cor. 16:1-2 (cited above [in the '
            'comments on BCO 54-1]). We are reminded that it is both a privilege and '
            'duty to worship God through our weekly giving. If we give our offerings '
            'on a monthly basis, we miss out on the weekly acts of worship. Note that '
            'the Session may call for offerings at other times than the stated weekly '
            'worship\n services.',
        webUrl: 'https://pcahistory.org/bco/dfw/54/02.html',
      ),
    ],
    'bco_54-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 426',
        text:
            'The gathering of the offerings need not be done with the passing of a '
            'plate. Some congregations have an offering box provided near the door, '
            'where the worshippers place their offerings. It is appropriate that '
            'offerings be dedicated with prayer, as David did in I Chron. 29.',
        webUrl: 'https://pcahistory.org/bco/dfw/54/03.html',
      ),
    ],
    'bco_55-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 427',
        text:
            'The Bible teaches that we are to confess our faith publicly. '
            '\u201cBecause if thou shalt confess with thy mouth Jesus as Lord, . . . '
            'with the mouth confession is made unto salvation\u201d (Rom. 10:9-10). '
            'Paul cites a faithful saying, which seems to have been used as a '
            'confession in the Church. \u201cFaithful is the saying, and worthy of '
            'all acceptation, that Christ Jesus came into the world to save sinners; '
            'of whom I am chief\' (I Tim. 1:15). He also exhorted Timothy to '
            '\u201dconfess the good confession,\u201c while reminding him of the good '
            'confession that our Lord made before Pontius Pilate (1 Tim. '
            '6:11-16).\n\nOn the basis of the Biblical teaching that we confess our '
            'faith, it is proper for the congregation to make such a profession of '
            'faith as a part of its worship of God.',
        webUrl: 'https://pcahistory.org/bco/dfw/55/01.html',
      ),
    ],
    'bco_56-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 429',
        text:
            'In treating baptism, as an act of worship two negatives are stated. '
            'First, it should not be unnecessarily delayed. Parents of children of '
            'the Covenant should be encouraged to have their children sealed with the '
            'sign of the Covenant. This is in accord with paragraph 12-5, '
            'where\u201cthe church Session is charged . . . to see that parents not '
            'neglect to present their children for Baptism.\u201d\n\nThe second '
            'negative is that baptism not to be administered by any private person. '
            'This set against the Roman Catholic view of the sacrament, which holds '
            'that baptism actually conveys salvation, and thus even private persons '
            'are authorized to baptize infants. The requirement that the sacraments, '
            'including baptism are to be administered by those authorized by the '
            'Church fits under the general principle that all things in worship '
            'should be done decently and in order (I Cor. 14:40). Jesus gave both of '
            'the sacraments to the Church through f the Apostles. These, in turn, '
            'passed them to the ministers who succeeded them. It is these who are to '
            'administer baptism.',
        webUrl: 'https://pcahistory.org/bco/dfw/56/01.html',
      ),
    ],
    'bco_56-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 429',
        text:
            'Not only is baptism not to be administered by private persons, it is not '
            'to be administered privately, but rather in the congregation under the '
            'supervision and authority of the Session.',
        webUrl: 'https://pcahistory.org/bco/dfw/56/02.html',
      ),
    ],
    'bco_56-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 429\u2013430',
        text:
            'This paragraph indicates that there should be due notice to the minister '
            'when a baptism is requested. Notice the various possibilities of who may '
            'bring a child: 1. one parent; 2. both parents; 3. someother responsible '
            'person. Though it is not stated here, the person presenting the child '
            'must be a believer.',
        webUrl: 'https://pcahistory.org/bco/dfw/56/03.html',
      ),
    ],
    'bco_56-6': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 433',
        text:
            'This chapter has been given full constitutional authority, and\n should '
            'be followed carefully by the minister in administering baptism. The '
            'questions set forth in this chapter should always be used, not those\n '
            'which appear in the Book of Common Worship, or other Presbyterian\n '
            'books of church order.\n\nThe first question calls for a clear '
            'understanding of the Biblical doctrine of original sin. The second '
            'question makes it explicit that the parent or guardian presenting the '
            'child must be a Christian. The third question includes the phrase, '
            '\u201cDo you now unreservedly dedicate your child to God . . .\u201d The '
            'idea of dedication of the child to God is not explicitly found in the '
            'command to baptize in the New Testament, or to circumcise in the Old '
            'Testament. The remaining portion of this question calling for the '
            'promise to set a godly example, and to teach the faith to the child is '
            'certainly Biblical. The reference to dedication of the child should '
            'never be used to merely \u201cdedicate children\u201d and not baptize '
            'them. Jesus commanded that we baptize, not that we dedicate our '
            'children. To substitute \u201cdedication\u201d for baptism is totally '
            'unconstitutional, and any Session or minister involved in such should be '
            'subject to the discipline of the Presbytery.',
        webUrl: 'https://pcahistory.org/bco/dfw/56/06.html',
      ),
    ],
    'bco_57-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 395',
        text:
            'The opening sentences of this paragraph speak of the fact that baptized '
            'children of the covenant are non-communing members of the church '
            'visible. They are to be taught the faith. We are not to presume on the '
            'salvation of such, but are to press the covenant child for his\n own '
            'commitment to the Lord Jesus. There is a double claim on the covenant '
            'child to accept Christ.',
        webUrl: 'https://pcahistory.org/bco/dfw/57/01.html',
      ),
    ],
    'bco_57-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 435',
        text:
            'Each individual case of profession of faith is left to the discretion of '
            'the Session. No age is set, or even suggested by the Book. The caution '
            'is given that there should be a careful examination of the individual, '
            'so that no one about whom there is any question will be admitted to the '
            'Table. This is a solemn duty of the Session, and should be handled very '
            'diligently.',
        webUrl: 'https://pcahistory.org/bco/dfw/57/02.html',
      ),
    ],
    'bco_57-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 395',
        text:
            'Though the Session is [the] body which takes the action of admitting a '
            'person to the church, when an unbaptized person comes to make profession '
            'of his faith, he shall ordinarily be requested to make\n the same before '
            'the congregation, and then be baptized. The Session does not abdicate '
            'its authority in receiving such a person into membership. Rather, this '
            'is giving the convert the opportunity to make a public confession of his '
            'faith as called for by Rom. 10:9-10.',
        webUrl: 'https://pcahistory.org/bco/dfw/57/03.html',
      ),
    ],
    'bco_57-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 436',
        text:
            'Just as the unbaptized convert is to make his confession before the '
            'congregation, the recommendation is that the same practice be followed '
            'with the covenant child who is coming to make his profession of faith. '
            'The congregation is to be reminded that this not a \u201cjoining the '
            'church\u201d by the covenant child, for he has been a non-communing '
            'member since his baptism.',
        webUrl: 'https://pcahistory.org/bco/dfw/57/04.html',
      ),
    ],
    'bco_57-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 437\u2013438',
        text:
            'Here we have a detailed guide for the service of admission of persons to '
            'the Lord\'s Supper. It includes the questions that should be asked. '
            'Since this section is constitutional, it should be viewed as mandatory '
            'for the minister to use the questions as they are found in the book. '
            'Ministers should not \u201cad-lib\u201d the questions or use another '
            'book of church order or directory for worship. This is especially '
            'important,\n in the event that discipline must be exercised regarding '
            'the\n confessor.\n\nSome Sessions keep a book with these questions and '
            'responses signed by each new member of the congregation. This gives a '
            'written record of the fact that these vows were taken in the event of '
            'the need of discipline at a later time. It would also be useful should a '
            'civil suit be brought against the Church for its exercise of discipline '
            'against the individual. It is also desirable to provide the individuals '
            'a copy of their vows in writing. This may be done as a frameable '
            'certificate of Church membership.',
        webUrl: 'https://pcahistory.org/bco/dfw/57/05.html',
      ),
    ],
    'bco_57-6': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 438',
        text:
            'In order to guard against the reception by transfer of letter of persons '
            'who may not know the Lord, an examination before the Session, including '
            'their Christian experience is prescribed.\n\nSince the Session has the '
            'responsibility to guard the congregation from unbelief, were a person '
            'not able to make a credible profession of faith, despite his have a '
            'letter of transfer, the Session could refuse membership until a credible '
            'profession is made. It is not suggested that they make a fresh public '
            'profession before the congregation. The constitutional questions should '
            'be asked of them before the Session.',
        webUrl: 'https://pcahistory.org/bco/dfw/57/06.html',
      ),
    ],
    'bco_58-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 439',
        text:
            'The question of the frequency of the observance of the Lord\'s\n Supper '
            'is left to each Session. It should be observed frequently. Roman\n '
            'Catholic theology, with a re-sacrificing of Christ in the mass, led\n '
            'them to observe it hourly in some of their monasteries. In reaction to\n '
            'this, the frequency dropped to once a year in some areas of the '
            'Protestant\n churches. This was based on the fact that the Passover was '
            'celebrated\n only once a year, and it was on this occasion that our Lord '
            'instituted\n the Supper. There are passages in the book of Acts that '
            'suggest\n\nthe frequent observance of the Supper by the New Testament '
            'church. These passages are not explicit, and thus there is a wide '
            'variety within the Church regarding how frequently the Supper should be '
            'observed.\n\nThe most common practice in the Presbyterian Church is '
            'quarterly, though there are some churches that now observe it monthly, '
            'and others weekly. The danger of too frequent practice is that it '
            'becomes too common, and we do not approach the Table with '
            'seriousness.',
        webUrl: 'https://pcahistory.org/bco/dfw/58/01.html',
      ),
    ],
    'bco_58-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 439',
        text:
            'Here is a clear statement as to those not admitted to the Table. First, '
            'those who do not know the Gospel, and have not received Christ cannot be '
            'admitted to the Table. Those, who cannot understand the nature and '
            'meaning of the Sacrament should also be excluded. The second group are '
            'the scandalous. These are, no doubt, persons who have professed Christ '
            'as Savior, but who have strayed into scandalous sins. These are to be '
            'barred from the Table.',
        webUrl: 'https://pcahistory.org/bco/dfw/58/02.html',
      ),
    ],
    'bco_58-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 439\u2013440',
        text:
            'This paragraph speaks of the proper preparation. First, due notice '
            'should be given, so that members of the congregation can prepare '
            'personally. Second, there is to be instruction of the congregation '
            'particuiarly regarding the nature of the sacrament, and also to assist '
            'in proper self-examination and preparation for the service.',
        webUrl: 'https://pcahistory.org/bco/dfw/58/03.html',
      ),
    ],
    'bco_58-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 440\u2013442',
        text:
            'The Reformed understanding of the Sacrament is that there must\n always '
            'be the preaching of the Word, and this paragraph indicates that\n the '
            'sermon should precede the sacrament. Here again are some specific\n '
            'matters in which the congregation should be instructed with the\n '
            'sacrament.\u201cSince, by our Lord\u2019s appointment, . . '
            '.\u201d\n\nThis paragraph is one that is often misunderstood. It speaks '
            'of the kind of invitation to the Table that the minister is to give. '
            'First, there is reference to those whom the Session has approved. This '
            'was added by the PCA at the suggestion of the author of this commentary. '
            'The intent of this phrase was to introduce the practice of the '
            'Session\'s examining any who were visiting the congregation on the day '
            'of the observance of the Sacrament. In other words, it was to be a step '
            'to a more careful fencing of the Table, not a looser fencing. The '
            'thought was that not only would those who were members of other '
            'congregations be admitted, but more specifically only those who could '
            'give a credible profession of his faith.\n\nThe second form of the '
            'invitation specifies that all who are believers, and who are members in '
            'good and regular standing in some evangelical branch of the Church may '
            'come to the Table. Those who may have come to faith in Christ, but who '
            'have refused to unite with the Church of the Lord Jesus are not to be '
            'admitted to the Table.\n\nIn answer to an overture calling for the '
            'Church to drop the reference to membership in good standing in an '
            'evangelical church, the 21st General Assembly of the PCA directed that '
            'the following grounds be addressed to the Session requesting this '
            'change. Since this is one of the clearest defenses of this position, the '
            'full text is included here:1993, p. 141,14-52,10. Digest, I, p. '
            '294.\n\n1. In recognition that the is the \u201cLord\'s table,\u201d 1 '
            'Corinthians 10:12, not the table of one church only, BCO 58-4 permits '
            '\u201copen communion,\u201d that is, allowing members in good standing '
            'in any evangelical church to partake and \u201cclose communion,\u201d '
            'which permits only those members of other churches who have been '
            'examined and approved by the Session to partake. 0* does not permit '
            '\u201cclosed communion,\u201d the practice o f excluding all but the '
            'members o f the particular congregation.)\n\n2. In the judgment of '
            'charity, we believe that other evangelical churches have examined\n and '
            'found credible the &ith of their members and, on the basis of this '
            'presumed approval, in \u201copen communion\u201d we invite members of '
            'other churches to the Lord\'s table in our midst In \u201cclose '
            'communion,\u201d the Session of a particular\n church itself determines '
            'the credibility o f a visitor\'s profession of faith. There is no such '
            'available assessment in this life for members of the Invisible '
            'Church.\n\n3. Baptism is into a community of believers, that is, a '
            'church. Unbaptized people certainly should not be permitted to come to '
            'the Table. Of course unbaptized people credibly professing faith in '
            'Christ and seeking admittance to the Table should be baptized with all '
            'proper speed, and thereupon admitted to the Table. At this point, these '
            'communicants are baptized members o f a visible church.\n\n4. One cannot '
            'love Christ and eschew His bride. The credible profession of persons '
            'unwilling to unite to Christ\'s church must be questioned. Any sinful '
            'unwillingness to unit with Christ\'s people should be addressed '
            'pastorally (Hebrews 10:25; I Corinthians 10:16-17). Those unwilling to '
            'unite to Christ\'s Church are outside the visible body of Christ.\n\n5. '
            'One cannot be subject to Christ and not be subject to the government He '
            'has appointed in His Church. Believers become subject to the government '
            'o f the Church through their covenant vows of membership. ( Ephesians '
            '4:11-12; Hebrews 13:17; I Thessalonians 5:12-13).\n\n6. Church '
            'discipline is necessary for properly maintaining the Lord\'s table; such '
            'discipline is unavailable apart from membership in a visible '
            'church.\n\n7. This overture implies that there is no Biblical ground for '
            'the keeping of a roll of members of the visible church, and therefore of '
            'people who may partake of thechurch\'s sacrament. However, the clear '
            'evidence of Scripture is that the church should keep a roll o f members. '
            'The supreme model for our membership roll is the membership roll of '
            'heaven (Exodus 32:32, 33; Daniel 12:1; Luke 10:20; Philippians 4:3; '
            'Revelation 13:8; 20:12, 15). The Biblical pattern is for new believers '
            'to be \u201cnumbered\'\' or \u201dadded to\u201c the rolls o f the local '
            'church (Acts 2:41,47; 6:7; I Timothy 5:9). Members could be taken away '
            'from the roll (I Corinthians 5:2)\u2014this indicates more than being '
            'physically barred, since even unbelievers could attend\n\nChristian '
            'worship (1 Corinthians 14:23)-or reinstated (II Corinthians 2:6-7); it '
            'is impossible to have coherent discipline without such a roll. There was '
            'a widow\'s roll for diaconal purposes (I Timothy 5:9). Elders are to '
            'know their sheep, are accountable for the care of the flock entrusted to '
            'them-this demands knowing who they are; that is, it demands a list or '
            'roll (Hebrews 13:7, 17-18; I Thessalonians 5:11-14; I Peter 5:2; Acts '
            '20:28). The apostolic church utilized letters of transfer or '
            'commendation (Acts 18:27; Romans 16:1-2; II Corinthians 3:1; 8:23-24); '
            'examples of these letters including Philemon and III John. Interchurch '
            'business was conducted by people with reference letters (I Corinthians '
            '16:3; II Corinthians 8:16-24). We conclude therefor that requiring '
            'professed believers to be enrolled as members o f an evangelical church '
            'as a condition for taking the Lord\'s Supper is consistent with sound '
            'Biblical practice.\n\n(See Judicial Case 23,1983, p. 139,11-81, Digest, '
            'I, pp. 323f.)\n\n(See Judicial Case 58,1987, p. 129,15-63, Digest, I, '
            'pp. 364f.)CONSTITUTIONAL INQUIRY:\n\n1986 - Constitutional Inquiry #2, '
            'from the Westminster Presbyterian Church, Godfry, IL [M14GA, Appendix I, '
            'C, Item 2, p. 330].\n\n\u201dMay the Session approve an individual to '
            'participate in the Lord\'s table who is not a member in good standing in '
            'an evangelical church?\u201c\n\nAnswer: No. The minister may (at the '
            'discretion of the Session) invite participants to the Lord\'s Table by '
            'either of two methods (BCO 58-4):\n\n1. He may invite \u201dall those '
            'who profess...and are communicants in good standing...\u201c\n\n2. He '
            'may invite those approved by the Session. This later method refers to '
            '\u201dclosed communion\u201c, by which those who are members of '
            'particular churches other than the host church must be examined by the '
            'Session in order to be permitted to participate. In either case, '
            'membership in good standing in an evangelical church is required. (See '
            'WCF XXV 2-3, WLC Q&A 62 and 63. See also Warfield, Plan of Salvation, '
            'for the historical definition of evangelical.)\n\n1986 - Assembly action '
            'on Inquiry #2 [M14GA, 14-52, Item 10, p. 125]\n\nThat the General '
            'Assembly answer Constitutional Inquiry #2 from Westminster Presbyterian '
            'Church, Godfry, IL, (regarding participation in the Lord\'s table) '
            '(Appendix I, I.C.2, p. 330) by saying, \u201dThis matter should be left '
            'to the spiritual discernment of the Session.\u201cAdopted.\n\n[Defeated '
            'was a motion to \u201dadd following the word \'Session.\', \'Sessions '
            'are to be guided in this matter by decisions of the Eleventh General '
            'Assembly (in Case 2, M11GA, p. 139ff.) and the Twelfth General Assembly '
            '(in Cases 4, 5, and 7, M12GA, p. 173ff) which address this issue. Such '
            'actions of previous General Assemblies are to be understood in light of '
            'BCO 14-7 as it has been adopted by this Assembly.\'\u201c '
            'Defeated.]\n\n1987 - Judgments 2 & 5 in Complaint of TE Carl Bogue, et '
            'al. vs. Presbytery of the Ascension [M15GA, 15-63, III, pp. '
            '134-135.]\n\n2. \u201d...The Eleventh General Assembly\'s decision on '
            'Judicial Case 2 did interpret BCO 58-4 as requiring church membership '
            'for admission to the Lord\'s Supper; however, the Fourteenth General '
            'Assembly approved a broader interpretation, which appears to this '
            'Commission to be consistent with the grammatical construction of BCO '
            '58-4. (Wording approved 14-2-0.)\n\n5. \u201cThe Presbytery '
            'illegitimately reinterprets the BCO 58-4 which requires membership in an '
            'evangelical church, declaring its \'intent\' is to not require '
            'membership in an evangelical church.\u201d Denied (4-11-1). The Judicial '
            'Commission\'s ruling on Case 2 adopted by the Eleventh General Assembly '
            'did indeed interpret BCO 58-4 as requiring church membership for '
            'participation in the Lord\'s Supper, and therefore the complainants '
            'legitimately pursued their complaint out of concern for due respect for '
            'ecclesiastical authority and out of concern for the importance of the '
            'relationship of church membership and the sacraments. However, on the '
            'basis of the Fourteenth General Assembly\'s decision allowing a broader '
            'interpretation of BCO 58-4, the \u201cSession approval\u201d position is '
            'now a legitimate basis for Presbytery\'s acceptance of Mr. Lutgen\'s '
            'views. It is not correct to say that Presbytery declared that BCO '
            '58-4\'s intent is, \u201cto not require membership in an evangelical '
            'church\u201d since Presbytery recognized that in all but very '
            'extraordinary circumstances church membership would be required for '
            'admission to the sacraments. (Wording approved 14-2.)\n\n1993 - 21-56, '
            'III, 18, p. 141\n\n18. That Overture 25 from Third Reformed Presbyterian '
            'Church be answered in the negative, and instruct the Stated Clerk to '
            'communicate the following grounds to the Session of Third Reformed '
            'Presbyterian Church (in denial of their overture) and to Philadelphia '
            'Presbytery (in support of their action regarding this overture):\n\na. '
            'In recognition that this is the \u201cLord\'s table,\u201d 1 Corinthians '
            '10:21, not the table of one church only, BCO 58-4 permits \u201copen '
            'communion,\u201d that is, allowing members in good standing of any '
            'evangelical church to partake; and \u201cclose communion,\u201d which '
            'permits only those members of other churches who have been examined and '
            'approved by the Session to partake. (It does not permit \u201cclosed '
            'communion,\u201d the practice of excluding all but members of the '
            'particular congregation).\n\nb. In the judgment of charity, we believe '
            'that other evangelical churches have examined and found credible the '
            'faith of their members and, on the basis of this presumed approval, in '
            '\u201copen communion\u201d we invite members of other churches to the '
            'Lord\'s table in our midst. In \u201cclose communion,\u201d the Session '
            'of a particular church itself determines the credibility of a visitor\'s '
            'profession of faith. There is no such available assessment in this life '
            'for members of the Invisible Church.\n\nc. Baptism is into a community '
            'of believers, that is a church. Unbaptized people certainly should not '
            'be permitted to come to the Table. Of course unbaptized people credibly '
            'professing faith in Christ and seeking admittance to the Table should be '
            'baptized with all proper speed, and thereupon admitted to the Table. At '
            'this point, these communicants are baptized members of a visible '
            'church.\n\nd. One cannot love Christ and eschew His bride. The credible '
            'profession of persons unwilling to unite to Christ\'s Church must be '
            'questioned. Any sinful unwillingness to unite with Christ\'s people '
            'should be addressed pastorally (Hebrews 10:25; 1 Corinthians 10:16-17). '
            'Those unwilling to unite to Christ\'s Church are outside the visible '
            'body of Christ.\n\ne. One cannot be subject to Christ and not be subject '
            'to the government of He has appointed in His Church. Believers become '
            'subject to the government of the Church through their covenantal vows of '
            'membership (Ephesians 4:11-12; Hebrews 13:17; 1 Thessalonians '
            '5:12-13).\n\nf. Church discipline is necessary for properly maintaining '
            'the Lord\'s table; such discipline is unavailable apart from membership '
            'in a visible church.\n\ng. This overture implies that there is no '
            'biblical ground for the keeping of a roll of members of the visible '
            'church, and therefore of people who may partake of the church\'s '
            'sacrament. However, the clear evidence of Scripture is that the church '
            'should keep a roll of members. The supreme model for our membership roll '
            'is the membership roll of heaven (Exodus 32:32, 33; Daniel 12:1; Luke '
            '10:20; Philippians 4:3; Revelation 13:8; 20:12, 15). The Biblical '
            'pattern is for new believers to be \u201cnumbered\u201d or \u201cadded '
            'to\u201d the rolls of the local church (Acts 2:41, 47; 6:7; 1 Timothy '
            '5:9). Members could be taken away from the roll (1 Corinthians '
            '5:2)--this indicates more than being physically barred since even '
            'unbelievers could attend Christian worship (1 Corinthians 14:23)--or '
            'reinstated (2 Corinthians 2:6-7); it is impossible to have coherent '
            'discipline without such a roll. There was a widow\'s roll for diaconal '
            'purposes (1 Timothy 5:9). Elders are to know their sheep, and are '
            'accountable for the care of the flock entrusted to them--this demands '
            'knowing who they are; that is, it demands a list or roll (Hebrews 13:7, '
            '17-18; 1 Thessalonians 5:11-14; 1 Peter 5:2; Acts 20:28). The apostolic '
            'church utilized letters of transfer or commendation (Acts 18:27; Romans '
            '16:1-2; 2 Corinthians 3:1; 8:23-24); examples of these letters include '
            'Philemon and 3 John. Interchurch business was conducted by people with '
            'reference letters (1 Corinthians 16:3; 2 Corinthians 8:16-24). We '
            'conclude therefore that requiring professed believers to be enrolled as '
            'members of an evangelical church as a condition for taking the Lord\'s '
            'Supper is consistent with sound Biblical practice.\n\n1999 - Reference 5 '
            'from Great Lakes Presbytery, re: BCO 58-4[M29GA, 29-28, III, pp. '
            '135-136]\n\nQuestion 1: What issues or concerns should a presbytery '
            'consider when it decides whether to allow an exception to BCO 58-4 in '
            'the use of \u201ccommunicants in good standing in any evangelical '
            'church\u201d?\n\nResponse:BCO 58-4 does not require the use of the exact '
            'terms of 58-4 but allows no exceptions of practice in the administration '
            'of the Lord\'s Supper. \u201cThe minister may either invite all those '
            'who profess the true religion, and are communicants in good standing in '
            'any evangelical church or may invite those who have been approved by the '
            'Session, after having given indication of their desire to '
            'participate.\u201d (BCO 58-4)\n\nIf a Presbytery considers receiving a '
            'TE who has expressed an exception in his views with respect to the '
            'language of BCO 58-4, then Presbytery should be guided by BCO '
            '34-5.\n\nNote that the Introduction to the Directory for the Worship of '
            'God indicates that BCO 56, 57, and 58 have been given full '
            'constitutional authority by the 11th General Assembly. Adopted by '
            'CCB.\n\nQuestion 2: Do previous actions of the GA imply that '
            'presbyteries should not allow an exception to BCO 58-4 in the use of '
            '\u201ccommunicants in good standing in any evangelical '
            'church\u201d?\n\nResponse: Yes, particularly with regard to practice. '
            'Refer to M21GA (1993) 21-56, III, 18, p. 141; M14GA (1986) Appendix 1, '
            '10, p. 330; and M15GA (1987) 15-63, p. 129. Adopted by CCB.\n\nQuestion '
            '3: If Presbyteries may allow an exception to BCO 58-4\n in the use of '
            '\u201ccommunicants in good standing in any evangelical church\u201d, may '
            'the Teaching Elder practice this exception?\n\nResponse: A Presbytery '
            'may allow an exception as to\n views, but not as to practice. Presbytery '
            'must be guided by BCO 34-5 in terms of teaching of the view. Adopted by '
            'CCB.\n\nQuestion 4: Since Sessions have the authority over the '
            'Sacrament, what should a Session do if it will not require teaching '
            'elders to use the full language of BCO 58-4 when the Lord\'s Supper is '
            'administered under this provision?\n\nResponse: See our response to '
            'questions 1 and 3, above. Adopted by CCB.\n\nQuestion 5: What should '
            'Presbytery do if a Session takes exception to BCO 58-4 in the use of '
            '\u201ccommunicants in good standing in any evangelical church\u201d, '
            'either in belief only or in belief and practice?\n\nResponse: See our '
            'response to questions 1 and 3 above. Adopted by CCB.\n\nQuestion 6: If a '
            'particular teaching elder was granted an exception to BCO 58-4 in the '
            'use of \u201ccommunicants in good standing in any evangelical '
            'church\u201d at the time of his ordination or reception into his current '
            'presbytery (as applicable), does he have permission to practice '
            'it?\n\nResponse: See our response to questions 1 and 3, above. Adopted '
            'by CCB.\n\nQuestion 7: If a given teaching elder did not previously take '
            'exception to BCO 58-4 in the use of \u201ccommunicants in good standing '
            'in any evangelical church\u201d but now does, should he make this known '
            'to his presbytery?\n\nResponse:Yes. Adopted by CCB.\n\nADDITIONAL '
            'RESOURCES :\n\nReport of the PCA Ad Interim Committee on Fencing the '
            'Lord\'s Table.\n\nEvans, Brad D., Gatekeepers at the Table: A Biblical, '
            'Historical and Contemporary Study of the Minister\'s Role in Fencing the '
            'Lord\'s Table. St. Louis: Covenant Theological Seminary, 2007; D.Min '
            'dissertation, ix, 239 p.',
        webUrl: 'https://pcahistory.org/bco/dfw/58/04.html',
      ),
    ],
    'bco_59-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 447',
        text:
            'This first paragraph speaks of the fact that marriage is not peculiar to '
            'the Church. Every society needs to have laws governing how its citizens '
            'live together in the marriage relation. Marriage goes all the way back '
            'to Eden, having been instituted before the fall.',
        webUrl: 'https://pcahistory.org/bco/dfw/59/01.html',
      ),
    ],
    'bco_59-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 447',
        text:
            'Since believers ought to marry believers, and since vows are taken '
            'before both God and men, it is proper for ministers to solemnize the '
            'marriage. Along with this, he should give instruction. Most ministers '
            'seek to give pre-marital counseling to couples, as well as words of '
            'instruction during the marriage service. He is to offer suitable prayers '
            'for the couple.',
        webUrl: 'https://pcahistory.org/bco/dfw/59/02.html',
      ),
    ],
    'bco_59-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 447',
        text:
            'Based upon the teaching of Jesus in Matthew 19, it is clear that '
            'marriage is to be monogamous and not polygamous.',
        webUrl: 'https://pcahistory.org/bco/dfw/59/03.html',
      ),
    ],
    'bco_59-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 447\u2013448',
        text:
            'The minister should be careful not to marry any who are not of age to '
            'make the decision for themselves, or if under age that they have consent '
            'of their parents. He should be careful to marry only those whom he '
            'knows, or for others he has some firm knowledge as to the character.',
        webUrl: 'https://pcahistory.org/bco/dfw/59/04.html',
      ),
    ],
    'bco_59-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 448',
        text:
            'A word of caution is offered to parents. On the one hand, they should '
            'not force marriage upon their children. On the other hand, they should '
            'not deny marriage, unless they have a just and important reason to do '
            'so.',
        webUrl: 'https://pcahistory.org/bco/dfw/59/05.html',
      ),
    ],
    'bco_59-6': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 448',
        text:
            'Here we have a caution to publish the time of a marriage prior to its '
            'solemnization. The minister is also to be careful to obey the Word of '
            'God regarding marriage, and also to be subject to the civil authority '
            'and not to break the civil laws. Ministers are also to ascertain whether '
            'there is any reason why the marriage should not take place.',
        webUrl: 'https://pcahistory.org/bco/dfw/59/06.html',
      ),
    ],
    'bco_59-7': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 448',
        text:
            'Ministers should keep good records of all of the marriages they perform. '
            'Though not mentioned here, the minister may have responsibility to file '
            'the record of the marriage with the civil authorities.',
        webUrl: 'https://pcahistory.org/bco/dfw/59/07.html',
      ),
    ],
    'bco_60-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 449',
        text:
            'Though not an act of worship, the duty of ministers to visit the sick '
            'and to pray with and for them is treated here. The practical guideline '
            'is given that when a member of the congregation falls sick one of the '
            'elders or the minister should be notified, so that the elders may '
            'minister to them properly.\n\nVisitation of the sick should include a '
            'reading of the Word of God, and the offering of a suitable prayer for '
            'the sick.',
        webUrl: 'https://pcahistory.org/bco/dfw/60/01.html',
      ),
    ],
    'bco_61-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 451',
        text:
            'Though the Bible does not give the services proper for such an example '
            'of a formal worship service in connection with the burial of the dead, '
            'it is not inappropriate that a service including singing the praise of '
            'God, the reading of Scripture with a sermon, and prayer for the bereaved '
            'be conducted.',
        webUrl: 'https://pcahistory.org/bco/dfw/61/01.html',
      ),
    ],
    'bco_61-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 451',
        text:
            'We are reminded here that the purpose of the funeral service is\n '
            'primarily two-fold. First, it should be directed to the worship of '
            'God.\n One of the most comforting things that can be done in the '
            'presence of\n death is to approach the throne of grace to find mercy and '
            'help for our\n times of need. The second purpose of the funeral is the '
            'comfort of the\n sorrowing. If we keep these two purposes in mind, we '
            'shall be\n guarded from the error of extensive eulogies concerning the '
            'deceased.\n It is not inappropriate to remind those in attendance of the '
            'promises of\n the Gospel, and to encourage them to come to Christ, but '
            'the service is\n not primarily an evangelistic service, but a service of '
            'worship and\n comfort.',
        webUrl: 'https://pcahistory.org/bco/dfw/61/02.html',
      ),
    ],
    'bco_62-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 395\u2013396',
        text:
            'The Bible gives a number of examples of occasions both of fasting and of '
            'thanksgiving by God\'s people. That the Church should continue in both '
            'then is both Scriptural, and reasonable to do.',
        webUrl: 'https://pcahistory.org/bco/dfw/62/01.html',
      ),
    ],
    'bco_62-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 453',
        text:
            'The various possibilities for fasting and thanksgiving are listed here. '
            'The specifics of how these are called and done are covered in the '
            'following paragraphs.',
        webUrl: 'https://pcahistory.org/bco/dfw/62/02.html',
      ),
    ],
    'bco_62-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 453\u2013454',
        text:
            'The individual believer may have occasions for either fasting or '
            'thanksgiving. In observing such as individual there is no need for '
            'outward show, but rather should be done privately unto the Lord, who '
            'sees all things.\n\nA family may well want to fast before a major '
            'decision. Again, this is something done within the confines of the '
            'family, and not for public display. The family may well have occasions '
            'for thanksgiving to the Lord for his manifold blessings. This could be '
            'done in appropriate prayers of thanksgiving and the singing together of '
            'suitable psalms or hymns.\n\nA congregation may be called by the Session '
            'to s season of fasting over some matter of special concern or need. It '
            'would be appropriate to end the period of fasting with a congregational '
            'worship service. In response to blessings from the Lord, it would be '
            'most desirable for the congregation to join in a service of thanksgiving '
            'to the Lord. Psalms such as Ps. 100 call us to enter his courts with '
            'praise and thanksgiving. A presbytery could call for its member churches '
            'to observe either a fast or a time of thanksgiving. On such occasions '
            'individual services could be scheduled in individual congregations, or '
            'joint services would be suitable.\n\nFinally, the whole Church may be '
            'called to fast or to enter into thanksgiving. This would ordinarily be '
            'done by the General Assembly setting particular times for such. In '
            'carrying out such, individual presbyteries and or congregations could '
            'set particular services. This paragraph indicates that either '
            'ecclesiastical or civil authorities may call for times of thanksgiving '
            'or fasting. In either case ministers and the people ought to respond '
            'accordingly.',
        webUrl: 'https://pcahistory.org/bco/dfw/62/03.html',
      ),
    ],
    'bco_62-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 454',
        text:
            'Here we have practical guidelines for calling for a day of fasting or '
            'thanksgiving. Enough notice should be given so that the regular affairs '
            'may be covered, and the appropriate services may be attended.',
        webUrl: 'https://pcahistory.org/bco/dfw/62/04.html',
      ),
    ],
    'bco_62-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 454',
        text:
            'Both fasting and times of thanksgiving are seen as proper occasions for '
            'worship. The Book here indicates the basic elements of worship that '
            'should be included, namely, prayers, psalms or hymns, Scripture reading '
            'and sermon.',
        webUrl: 'https://pcahistory.org/bco/dfw/62/05.html',
      ),
    ],
    'bco_62-6': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 454',
        text:
            'Here we have practical guidelines for calling for a day of fasting or '
            'thanksgiving. Enough notice should be given so that the regular affairs '
            'may be covered, and the appropriate services may be attended.',
        webUrl: 'https://pcahistory.org/bco/dfw/62/06.html',
      ),
    ],
    'bco_62-7': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 454',
        text:
            'Here we have practical guidelines for calling for a day of fasting or '
            'thanksgiving. Enough notice should be given so that the regular affairs '
            'may be covered, and the appropriate services may be attended.',
        webUrl: 'https://pcahistory.org/bco/dfw/62/07.html',
      ),
    ],
    'bco_63-1': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 457',
        text: 'Dr. Smith did not include comments on BCO chapter 63.',
        webUrl: 'https://pcahistory.org/bco/dfw/63/01.html',
      ),
    ],
    'bco_63-2': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 457',
        text: 'Dr. Smith did not include comments on BCO chapter 63.',
        webUrl: 'https://pcahistory.org/bco/dfw/63/02.html',
      ),
    ],
    'bco_63-3': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 457',
        text: 'Dr. Smith did not include comments on BCO chapter 63.',
        webUrl: 'https://pcahistory.org/bco/dfw/63/03.html',
      ),
    ],
    'bco_63-4': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 457',
        text: 'Dr. Smith did not include comments on BCO chapter 63.',
        webUrl: 'https://pcahistory.org/bco/dfw/63/04.html',
      ),
    ],
    'bco_63-5': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 457',
        text: 'Dr. Smith did not include comments on BCO chapter 63.',
        webUrl: 'https://pcahistory.org/bco/dfw/63/05.html',
      ),
    ],
    'bco_63-6': [
      BcoCommentary(
        source: 'Morton H. Smith, Commentary on the Book of Church Order',
        year: '2007',
        pageRef: 'p. 457',
        text: 'Dr. Smith did not include comments on BCO chapter 63.',
        webUrl: 'https://pcahistory.org/bco/dfw/63/06.html',
      ),
    ],
  };

  static List<BcoCommentary> forSection(String key) =>
      commentaries[key] ?? const [];

  static Set<String> get allSectionKeys => commentaries.keys.toSet();
}
