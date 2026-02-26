class SchemeModal {
  final int id;
  final String title;
  final String titleG;
  final String titleH;
  final String description;
  final String document;
  final String link;
  final String descriptionG;
  final String descriptionH;
  final String documentG;
  final String documentH;
  final String eligibility;
  final String eligibilityG;
  final String eligibilityH;
  bool isFavorited;

  SchemeModal({
    required this.id,
    required this.title,
    required this.description,
    required this.document,
    required this.link,
    required this.titleG,
    required this.titleH,
    required this.descriptionG,
    required this.descriptionH,
    required this.documentG,
    required this.documentH,
    required this.eligibility,
    required this.eligibilityG,
    required this.eligibilityH,
    this.isFavorited = false, // De
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'titleG': titleG,
      'titleH': titleH,
      'description': description,
      'descriptionG': descriptionG,
      'descriptionH': descriptionH,
      'document': document,
      'documentG': documentG,
      'documentH': documentH,
      'eligibility': eligibility,
      'eligibilityH': eligibilityH,
      'eligibilityG': eligibilityG,
      'isFavorited': isFavorited,
    };
  }

  void toggleFavorite() {
    isFavorited = !isFavorited;
  }

  factory SchemeModal.fromJson(Map<String, dynamic> json) {
    return SchemeModal(
      titleG: json['titleG'],
      id: json['id'],
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      document: json['document'] ?? '',
      link: json['link'] ?? '',
      descriptionG: json['descriptionG'] ?? '',
      documentG: json['documentG'] ?? '',
      titleH: json['titleH'],
      descriptionH: json['descriptionH'],
      documentH: json['documentH'],
      eligibility: json['eligibility'],
      eligibilityG: json['eligibilityG'],
      eligibilityH: json['eligibilityH'],
    );
  }
}

List<SchemeModal> masterList = [];
List<SchemeModal> favoriteSchemes = [];
List<SchemeModal> data = [
  SchemeModal(
      title: 'Kisan Credit Card (KCC) Scheme',
      document: '1. Application Form\n'
          '2. Two Passport Size Photographs \n'
          '3. ID proof such as Driving License / Aadhar Card / Voter Identity Card / Passport\n'
          '4. Address Proof such as Driving License, Aadhar Card\n'
          '5. Proof of landholding duly certified by the revenue authorities\n'
          '6. Cropping pattern (Crops grown) with acreage\n'
          '7. Security documents for loan limit above Rs.1.60 lakhs / Rs.3.00 lakhs, as applicable\n'
          '8. Any other document as per sanction',
      id: 1,
      description:
          'The KCC Scheme was introduced with the objective of providing adequate and timely credit to the farmers for their agricultural operations. The Government of India provides interest subvention of 2% and Prompt Repayment Incentive of 3% to the farmers, thus making the credit available at a very subsidized rate of 4% per annumThe scheme was further extended for the investment credit requirement of farmers viz. allied and non-farm activities in the year 2004 and further revisited in 2012 by a working Group under the Chairmanship of Shri T. M. Bhasin, CMD, Indian Bank with a view to simplify the scheme and facilitate issue of Electronic Kisan Credit Cards. The scheme provides broad guidelines to banks for operationalizing the KCC scheme. Implementing banks will have the discretion to adopt the same to suit institution/location-specific requirements.',
      link: ' https://www.myscheme.gov.in/schemes/kcc',
      titleG: 'કિશાન ક્રેડિટ કાર્ડ સ્કીમ ',
      documentG: '1. અરજી પત્ર\n'
          '2. બે પાસપોર્ટ સાઇઝના ફોટોગ્રાફ્સ\n'
          '3. આઈડી પ્રૂફ જેમ કે ડ્રાઈવિંગ લાયસન્સ/આધાર કાર્ડ/મતદાર ઓળખ કાર્ડ/પાસપોર્ટ\n'
          '4. એડ્રેસ પ્રૂફ જેમ કે ડ્રાઇવિંગ લાયસન્સ, આધાર કાર્ડ\n'
          '5. મહેસૂલ સત્તાવાળાઓ દ્વારા યોગ્ય રીતે પ્રમાણિત જમીન ધારણનો પુરાવો\n'
          '6. વાવેતર પેટર્ન (ઉગાડવામાં આવેલ પાક)\n'
          '7. રૂ. 1.60 લાખ / રૂ. 3.00 લાખથી વધુની લોન મર્યાદા માટેના સુરક્ષા દસ્તાવેજો, જેમ લાગુ પડે છે\n'
          '8. મંજૂરી મુજબ અન્ય કોઈપણ દસ્તાવેજ',
      descriptionG:
          'KCC યોજના ખેડૂતોને તેમની કૃષિ કામગીરી માટે પર્યાપ્ત અને સમયસર ધિરાણ આપવાના ઉદ્દેશ્ય સાથે રજૂ કરવામાં આવી હતી. ભારત સરકાર ખેડૂતોને 2% ની વ્યાજ સબવેન્શન અને 3% નું પ્રોમ્પ્ટ રિપેમેન્ટ પ્રોત્સાહન પૂરું પાડે છે, આમ ધિરાણ વાર્ષિક 4% ના ખૂબ જ સબસિડીવાળા દરે ઉપલબ્ધ કરાવે છે.આ યોજનાને ખેડૂતોની રોકાણ ધિરાણની જરૂરિયાત માટે વધુ વિસ્તૃત કરવામાં આવી હતી. વર્ષ 2004માં સંલગ્ન અને બિન-ખેતી પ્રવૃત્તિઓ અને 2012માં શ્રી ટી.એમ. ભસીન, સીએમડી, ઈન્ડિયન બેંકની અધ્યક્ષતામાં કાર્યકારી જૂથ દ્વારા યોજનાને સરળ બનાવવા અને ઈલેક્ટ્રોનિક કિસાન ક્રેડિટ કાર્ડના મુદ્દાને સરળ બનાવવાના દૃષ્ટિકોણથી ફરીથી સમીક્ષા કરવામાં આવી. આ યોજના બેંકોને KCC યોજનાના સંચાલન માટે વ્યાપક માર્ગદર્શિકા પ્રદાન કરે છે. અમલ કરતી બેંકો પાસે સંસ્થા/સ્થાન-વિશિષ્ટ આવશ્યકતાઓને અનુરૂપ તેને અપનાવવાનો વિવેક હશે.',
      titleH: 'किसान क्रेडिट कार्ड (केसीसी) योजना',
      documentH: "1. आवेदन पत्र\n"
          "2. दो पासपोर्ट साइज फोटोग्राफ\n"
          "3. आईडी प्रमाण जैसे ड्राइविंग लाइसेंस / आधार कार्ड / मतदाता पहचान पत्र / पासपोर्ट\n"
          "4. पते का प्रमाण जैसे ड्राइविंग लाइसेंस, आधार कार्ड\n"
          "5. राजस्व अधिकारियों द्वारा विधिवत प्रमाणित भूमि स्वामित्व का प्रमाण\n"
          "6. फसल पैटर्न (उगाई गई फसलें) एकड़ के साथ\n"
          "7. रु. 1.60 लाख/ रु. 3.00 लाख से अधिक की ऋण सीमा के लिए सुरक्षा दस्तावेज़, जैसा लागू हो\n"
          "8. मंजूरी के अनुसार कोई अन्य दस्तावेज",
      descriptionH:
          'केसीसी योजना किसानों को उनके कृषि कार्यों के लिए पर्याप्त और समय पर ऋण प्रदान करने के उद्देश्य से शुरू की गई थी। भारत सरकार किसानों को 2% की ब्याज छूट और 3% की त्वरित पुनर्भुगतान प्रोत्साहन प्रदान करती है, इस प्रकार प्रति वर्ष 4% की बहुत ही रियायती दर पर ऋण उपलब्ध कराया जाता है। किसानों की निवेश ऋण आवश्यकता के लिए इस योजना को आगे बढ़ाया गया था। योजना को सरल बनाने और इलेक्ट्रॉनिक किसान क्रेडिट कार्ड जारी करने की सुविधा प्रदान करने के उद्देश्य से इंडियन बैंक के सीएमडी श्री टी. एम. भसीन की अध्यक्षता में एक कार्य समूह द्वारा वर्ष 2004 में संबद्ध और गैर-कृषि गतिविधियों और 2012 में फिर से समीक्षा की गई। यह योजना केसीसी योजना के संचालन के लिए बैंकों को व्यापक दिशानिर्देश प्रदान करती है। कार्यान्वयन करने वाले बैंकों के पास संस्थान/स्थान-विशिष्ट आवश्यकताओं के अनुरूप इसे अपनाने का विवेकाधिकार होगा।',
      eligibility:
          '1.Farmers - individual/joint borrowers who are owner cultivators;\n'
          '2.Tenant farmers, oral lessees & share croppers;\n'
          '3.Self Help Groups (SHGs) or Joint Liability Groups (JLGs) of farmers including tenant farmers, share croppers etc',
      eligibilityH: '1.किसान - व्यक्तिगत/संयुक्त उधारकर्ता जो मालिक कृषक हैं;\n'
          '2.किरायेदार किसान, मौखिक पट्टेदार और बटाईदार;\n'
          '3.किरायेदार किसानों, बटाईदारों सहित किसानों के स्वयं सहायता समूह (एसएचजी) या संयुक्त देयता समूह (जेएलजी) वगैरह',
      eligibilityG:
          '1.ખેડૂતો - વ્યક્તિગત/સંયુક્ત ઉધાર લેનારાઓ કે જેઓ માલિક ખેતી કરે છે;\n'
          '2.ભાડૂત ખેડૂતો, મૌખિક ભાડે લેનારા અને શેર પાક લેનારા;\n'
          '3.સેલ્ફ હેલ્પ ગ્રુપ્સ (SHGs) અથવા ખેડૂતોના સંયુક્ત જવાબદારી જૂથો (JLGs) જેમાં ભાડૂત ખેડૂતો, શેર ક્રોપર્સનો સમાવેશ થાય છે. વગેરે'),
  SchemeModal(
      eligibility:
          '1.The farmer must be a cultivator or a sharecropper on the insured land.\n'
          '2.Farmers must have a valid and authenticated land ownership certificate or a valid land tenancy agreement.\n'
          '3.The farmer must have applied for insurance coverage within the prescribed time frame, which is generally within 2 weeks of the start of the sowing season.\n'
          '4.They must not have received any compensation for the same crop loss from any other source.\n'
          '5.The farmer should have a valid bank account and provide details of their bank account, along with a valid identity proof, at the time of enrollment.\n'
          '6.All farmers growing notified crops in a notified area during the season who have an insurable interest in the crop are eligible',
      eligibilityH:
          '1.किसान को बीमित भूमि पर खेती करने वाला या बटाईदार होना चाहिए।\n'
          '2.किसानों के पास वैध और प्रमाणित भूमि स्वामित्व प्रमाण पत्र या वैध भूमि किरायेदारी समझौता होना चाहिए।\n'
          '3.किसान ने निर्धारित सीमा के भीतर बीमा कवरेज के लिए आवेदन किया होगा समय सीमा, जो आम तौर पर बुवाई के मौसम की शुरुआत के 2 सप्ताह के भीतर होती है।\n'
          '4.उन्हें किसी अन्य स्रोत से उसी फसल के नुकसान के लिए कोई मुआवजा नहीं मिला होगा।\n'
          '5.किसान के पास एक वैध बैंक खाता होना चाहिए और प्रदान करना चाहिए नामांकन के समय वैध पहचान प्रमाण के साथ उनके बैंक खाते का विवरण।\n'
          '6.सीजन के दौरान अधिसूचित क्षेत्र में अधिसूचित फसल उगाने वाले सभी किसान पात्र हैं, जिनका फसल में बीमा योग्य हित है।',
      eligibilityG:
          '1.ખેડૂત વીમાવાળી જમીન પર ખેડૂત અથવા શેરખેડ કરનાર હોવો જોઈએ.\n'
          '2.ખેડૂતો પાસે માન્ય અને પ્રમાણિત જમીન માલિકીનું પ્રમાણપત્ર અથવા માન્ય જમીન ભાડૂત કરાર હોવો આવશ્યક છે.\n'
          '3.ખેડૂતએ નિયત કરેલી અંદર વીમા કવરેજ માટે અરજી કરેલ હોવી જોઈએ. સમયમર્યાદા, જે સામાન્ય રીતે વાવણીની મોસમ શરૂ થયાના 2 અઠવાડિયાની અંદર હોય છે.\n'
          '4.તેમને અન્ય કોઈ સ્ત્રોતમાંથી સમાન પાકના નુકસાન માટે કોઈ વળતર મળ્યું ન હોવું જોઈએ.\n5.ખેડૂત પાસે માન્ય બેંક ખાતું હોવું જોઈએ અને નોંધણી સમયે તેમના બેંક ખાતાની વિગતો, માન્ય ઓળખ પુરાવા સાથે.\n'
          '6. સિઝન દરમિયાન સૂચિત વિસ્તારમાં સૂચિત પાક ઉગાડતા તમામ ખેડૂતો કે જેઓ પાકમાં વીમાપાત્ર રસ ધરાવતા હોય તેઓ પાત્ર છે',
      title: 'The Pradhan Mantri Fasal Bima Yojana',
      document: '1.Bank account number.Aadhaar card.\n'
          '2.Khasra number of land.\n'
          '3.Agreement photocopy.Ration card.\n'
          '4.Voter ID.\n'
          '5.Driving license.\n'
          '6.Passport-size photograph of the farmer.',
      id: 2,
      description:
          'The Pradhan Mantri Fasal Bima Yojana is an Indian government initiative. Within the PMFBY scheme, the farmer may get his crop insured, and resolve any queries and concerns with the assistance of the web portal. The portal permits different departments of the Indian government to disseminate information about the scheme that can benefit the framer in the long run.The Pradhan Mantri Fasal Bima Yojana scheme provides coverage to the Indian farmers against any financial loss that may incur under an unfortunate event. The PM Fasal Bima Yojana offers insurance coverage cover in case of loss due to a natural calamity, crop diseases, pests, unseasonal rains, and so forth. This will help the farmers to stabilize their income and ensure their continuance in farming and adopting innovative and modern agricultural practices. Moreover, it also ensures credit flow to the agriculture sector',
      link:
          'https://www.bajajallianz.com/blog/announcements/quick-overview-on-pmfby-crop-insurance-scheme.html#:~:text=Identity%20proof%20of%20the%20farmer,need%20to%20be%20kept%20together',
      titleG: 'પ્રધાનમંત્રી ફસલ વીમા યોજના ',
      documentG: '1.બેંક એકાઉન્ટ નંબર.આધાર કાર્ડ.\n'
          '2.ખાસરા જમીનનો નંબર.\n'
          '3.એગ્રીમેન્ટની ફોટોકોપી.રેશન કાર્ડ.\n'
          '4.મતદાર આઈડી.\n'
          '5.ડ્રાઇવિંગ લાઇસન્સ.\n'
          '6.ખેડૂતનો પાસપોર્ટ-સાઇઝનો ફોટો.',
      descriptionG:
          'પ્રધાનમંત્રી ફસલ વીમા યોજના એ ભારત સરકારની પહેલ છે. PMFBY યોજનાની અંદર, ખેડૂત તેના પાકનો વીમો મેળવી શકે છે, અને વેબ પોર્ટલની સહાયથી કોઈપણ પ્રશ્નો અને ચિંતાઓનું નિરાકરણ કરી શકે છે. આ પોર્ટલ ભારત સરકારના જુદા જુદા વિભાગોને યોજના વિશે માહિતી પ્રસારિત કરવાની પરવાનગી આપે છે જે લાંબા ગાળે ફ્રેમરને લાભ આપી શકે છે.પ્રધાનમંત્રી ફસલ બીમા યોજના યોજના ભારતીય ખેડૂતોને કમનસીબ ઘટનાને કારણે થતા કોઈપણ નાણાકીય નુકસાન સામે કવરેજ પ્રદાન કરે છે. પીએમ ફસલ બીમા યોજના કુદરતી આફત, પાકના રોગો, જીવાતો, કમોસમી વરસાદ વગેરેને કારણે નુકસાનના કિસ્સામાં વીમા કવચ પ્રદાન કરે છે. આનાથી ખેડૂતોને તેમની આવક સ્થિર કરવામાં મદદ મળશે અને તેઓ ખેતીમાં ચાલુ રહે અને નવીન અને આધુનિક કૃષિ પદ્ધતિઓ અપનાવે તેની ખાતરી કરશે. વધુમાં, તે કૃષિ ક્ષેત્રને ધિરાણનો પ્રવાહ પણ સુનિશ્ચિત કરે છે',
      titleH: 'प्रधानमंत्री फसल बीमा योजना',
      documentH: '1.बैंक खाता नंबर.आधार कार्ड.\n'
          '2.जमीन का खसरा नंबर.\n'
          '3.एग्रीमेंट की फोटोकॉपी.राशन कार्ड.\n'
          '4.वोटर आईडी.\n'
          '5.ड्राइविंग लाइसेंस.\n'
          '6.किसान का पासपोर्ट साइज फोटो.',
      descriptionH:
          'प्रधानमंत्री फसल बीमा योजना भारत सरकार की एक पहल है। पीएमएफबीवाई योजना के अंतर्गत, किसान अपनी फसल का बीमा करवा सकता है, और वेब पोर्टल की सहायता से किसी भी प्रश्न और चिंता का समाधान कर सकता है। पोर्टल भारत सरकार के विभिन्न विभागों को उस योजना के बारे में जानकारी प्रसारित करने की अनुमति देता है जिससे किसान को लंबे समय में लाभ हो सकता है। प्रधानमंत्री फसल बीमा योजना योजना भारतीय किसानों को किसी भी दुर्भाग्यपूर्ण घटना के तहत होने वाले वित्तीय नुकसान के खिलाफ कवरेज प्रदान करती है। पीएम फसल बीमा योजना प्राकृतिक आपदा, फसल की बीमारियों, कीटों, बेमौसम बारिश आदि के कारण होने वाले नुकसान की स्थिति में बीमा कवरेज कवर प्रदान करती है। इससे किसानों को अपनी आय स्थिर करने और खेती में अपनी निरंतरता सुनिश्चित करने तथा नवीन और आधुनिक कृषि पद्धतियों को अपनाने में मदद मिलेगी। इसके अलावा, यह कृषि क्षेत्र में ऋण प्रवाह भी सुनिश्चित करता है,'),
  SchemeModal(
      eligibility:
          '1.Only those candidates who had their Bachelor’s Degree Programmes under 10+2+4 OR 10+2+3 OR 10+1+4 system (OR awarded B.Sc. degree under 10+2+2 system prior to 1985) and fulfill the qualifications as prescribed in the Information Bulletin are eligible to apply for admission.\n'
          '2.Candidates must have obtained at least 60% marks OR an Overall Grade Point Average (OGPA) of 7.50 out of 10.00 OR 3.75 out of 5.00 OR 3.00 out of 4.00 OR 2.25 out of 3.00 (For SC/ST/PCcandidates: 55% marks OR OGPA of 7.00 out of 10.00 OR 3.50 out of 5.00 OR 2.80 out of 4.00 OR 2.10 out of 3.00) in M.Sc. / M.Tech. degree program. In no case, the conversion of OGPA into percentage will be considered for the calculation of marks where the OGPA is awarded.\n'
          '3.The scholarships will be admissible to students of Indian Nationality as defined in the constitution of India or persons domiciled in India, irrespective of sex, race, or religion.\n'
          '4.A fellow will devote his/her whole time to the approved study and will not be allowed to accept or hold another appointment paid or otherwise.',
      eligibilityH:
          '1. केवल वे अभ्यर्थी जिनके पास 10+2+4 या 10+2+3 या 10+1+4 प्रणाली के तहत स्नातक डिग्री कार्यक्रम था (या 1985 से पहले 10+2+2 प्रणाली के तहत बी.एससी. डिग्री से सम्मानित) और सूचना बुलेटिन में निर्धारित योग्यताएं पूरी करते हैं, वे प्रवेश के लिए आवेदन करने के पात्र हैं।\n'
          '2.उम्मीदवारों को कम से कम 60% अंक या 10.00 में से 7.50 या 5.00 में से 3.75 या 4.00 में से 3.00 या 3.00 में से 2.25 का समग्र ग्रेड प्वाइंट औसत (ओजीपीए) प्राप्त करना चाहिए (एससी / एसटी / पीसी उम्मीदवारों के लिए: 55) एमएससी में % अंक या 10.00 में से 7.00 या 5.00 में से 3.50 या 4.00 में से 2.80 या 3.00 में से 2.10) का ओजीपीए। / एम.टेक. डिग्री प्रोग्राम। किसी भी स्थिति में, जहां ओजीपीए प्रदान किया जाता है, वहां अंकों की गणना के लिए ओजीपीए को प्रतिशत में बदलने पर विचार नहीं किया जाएगा।\n'
          '3.छात्रवृत्ति भारत के संविधान में परिभाषित भारतीय राष्ट्रीयता के छात्रों या भारत में रहने वाले व्यक्तियों के लिए स्वीकार्य होगी, लिंग, जाति या धर्म की परवाह किए बिना।\n'
          '4.एक साथी अपना पूरा समय अनुमोदित अध्ययन के लिए समर्पित करेगा और उसे भुगतान या अन्यथा किसी अन्य नियुक्ति को स्वीकार करने या रखने की अनुमति नहीं दी जाएगी।',
      eligibilityG:
          '1.ફક્ત એવા ઉમેદવારો કે જેમણે 10+2+4 અથવા 10+2+3 અથવા 10+1+4 સિસ્ટમ હેઠળ તેમના સ્નાતકની ડિગ્રી પ્રોગ્રામ્સ (અથવા 1985 પહેલાં 10+2+2 સિસ્ટમ હેઠળ B.Sc. ડિગ્રી એનાયત કરી હતી) અને ઇન્ફર્મેશન બુલેટિનમાં દર્શાવેલ લાયકાતોને પરિપૂર્ણ કરો તો પ્રવેશ માટે અરજી કરવા પાત્ર છે.\n'
          '2.ઉમેદવારોએ ઓછામાં ઓછા 60% માર્કસ અથવા 10.00 માંથી 7.50 અથવા 5.00 માંથી 3.75 અથવા 4.00 માંથી 3.00 અથવા 3.00 માંથી 2.25 અથવા 3.00 માંથી 2.25 માંથી એકંદર ગ્રેડ પોઈન્ટ એવરેજ (OGPA) મેળવ્યા હોવા જોઈએ: M.Sc માં % ગુણ અથવા 10.00 માંથી 7.00 અથવા OGPA અથવા 5.00 માંથી 3.50 અથવા 4.00 માંથી 2.80 અથવા 3.00 માંથી 2.10) / એમ.ટેક. ડિગ્રી પ્રોગ્રામ. કોઈ પણ સંજોગોમાં, OGPA નું ટકાવારીમાં રૂપાંતર એ ગુણની ગણતરી માટે ધ્યાનમાં લેવામાં આવશે જ્યાં OGPA આપવામાં આવે છે.\n'
          '3. શિષ્યવૃત્તિ ભારતના બંધારણમાં વ્યાખ્યાયિત કર્યા મુજબ ભારતીય રાષ્ટ્રીયતાના વિદ્યાર્થીઓ અથવા લિંગ, જાતિ અથવા ધર્મને ધ્યાનમાં લીધા વિના ભારતમાં રહેતી વ્યક્તિઓને સ્વીકાર્ય રહેશે.\n'
          '4. એક સાથી તેનો/તેણીનો સંપૂર્ણ સમય માન્ય અભ્યાસ માટે ફાળવશે અને ચૂકવેલ અથવા અન્યથા અન્ય નિમણૂક સ્વીકારવા અથવા રાખવાની મંજૂરી આપવામાં આવશે નહીં.',
      titleH: 'भारतीय कृषि अनुसंधान संस्थान - छात्रवृत्ति',
      documentH: '1. जन्मतिथि का प्रमाण.\n'
          '2. मैट्रिकुलेशन (10वीं) या समकक्ष प्रमाण पत्र और मार्कशीट।\n'
          '3. उच्चतर माध्यमिक परीक्षा प्रमाणपत्र अंकतालिका, यदि लागू हो।\n'
          '4. इंटरमीडिएट (12वीं) परीक्षा प्रमाण पत्र और मार्कशीट, यदि लागू हो।\n'
          '5. स्नातक डिग्री प्रमाणपत्र और मार्कशीट।\n'
          '6. मास्टर डिग्री प्रमाणपत्र और मार्कशीट।\n'
          '7. पाठ्यक्रम समापन प्रमाणपत्र.\n'
          '8. जाति प्रमाण पत्र.\n'
          '9. दो पासपोर्ट आकार के फोटोग्राफ।',
      descriptionH:
          'पुरस्कार संस्थान के डीन और संयुक्त निदेशक (शिक्षा) द्वारा "छात्रवृत्ति वित्तीय सहायता और शैक्षणिक प्रगति पर स्थायी समिति" की सलाह पर दिए जाएंगे, जो योग्यता को ध्यान में रखेगा। प्रत्येक आवेदक प्रारंभ में अपने प्रवेश के आधार पर और बाद में पोस्ट ग्रेजुएट स्कूल में अपने प्रदर्शन के आधार पर।',
      title: 'Indian Agricultural Research Institute - Scholarship',
      document: '1. Proof of date of birth.\n'
          '2. Matriculation (10th) or equivalent certificate and mark sheet.\n'
          '3. Higher Secondary examination certificate mark sheet, if applicable.\n'
          '4. Intermediate (12th) examination certificate and mark sheet, if applicable.\n'
          '5. Bachelor’s degree certificate and mark sheet.\n'
          '6. Master’s degree certificate and mark sheet.\n'
          '7. Course Completion Certificate.\n'
          '8. Caste Certificate.\n'
          '9. Two passport-size photograph.',
      id: 3,
      description:
          'The Awards shall be made by the Dean and Joint Director (Education) of the Institute on the advice of the “Standing Committee on Scholarships Financial Assistance and Academic Progress”, which shall take into consideration the merit ofeach applicant based initially on his admission and subsequently on his performance at the Post Graduate School.',
      link: ' https://www.myscheme.gov.in/schemes/iaris',
      titleG: 'ભારતીય કૃષિ સંશોધન સંસ્થા - શિષ્યવૃત્તિ',
      documentG: '1. જન્મ તારીખનો પુરાવો.\n'
          '2. મેટ્રિક (10મું) અથવા સમકક્ષ પ્રમાણપત્ર અને માર્કશીટ.\n'
          '3. ઉચ્ચતર માધ્યમિક પરીક્ષા પ્રમાણપત્ર માર્કશીટ, જો લાગુ હોય તો.\n'
          '4. મધ્યવર્તી (12મી) પરીક્ષાનું પ્રમાણપત્ર અને માર્કશીટ, જો લાગુ હોય તો.\n'
          '5. બેચલર ડિગ્રી પ્રમાણપત્ર અને માર્કશીટ.\n'
          '6. માસ્ટર ડિગ્રી પ્રમાણપત્ર અને માર્કશીટ.\n'
          '7. અભ્યાસક્રમ પૂર્ણ થવાનું પ્રમાણપત્ર.\n'
          '8. જાતિનું પ્રમાણપત્ર.\n'
          '9. પાસપોર્ટ સાઇઝના બે ફોટોગ્રાફ.',
      descriptionG:
          'પુરસ્કારો સંસ્થાના ડીન અને સંયુક્ત નિયામક (શિક્ષણ) દ્વારા "શિષ્યવૃત્તિ નાણાકીય સહાય અને શૈક્ષણિક પ્રગતિ પરની સ્થાયી સમિતિ" ની સલાહ પર કરવામાં આવશે, જે લાયકાતને ધ્યાનમાં લેશે દરેક અરજદાર શરૂઆતમાં તેના પ્રવેશ અને ત્યારબાદ પોસ્ટ ગ્રેજ્યુએટ સ્કૂલમાં તેના પ્રદર્શન પર આધારિત છે.'),
  SchemeModal(
      title: 'National Mission on Natural Farming',
      document: '1)	Aadhaar number\n'
          '2)	Land documents\n'
          '3)	Caste Certificate (SC/ST only)\n'
          '4)	Bank Details\n'
          '5)	Photographs\n',
      id: 4,
      description:
          'National Mission on Natural farming aims at creating institutional capacities for documentation and dissemination of best practices, make practicing farmers as partners in promotion strategy, ensure capacity building and continuous handholding and finally attracting farmers to the natural farming willingly on the merit of the system. ',
      link: ' https://www.myscheme.gov.in/schemes/nmnf',
      titleG: 'કુદરતી ખેતી પર રાષ્ટ્રીય મિશન',
      documentG: '1) આધાર નંબર\n'
          '2) જમીનના દસ્તાવેજો\n'
          '3) જાતિનું પ્રમાણપત્ર (ફક્ત SC/ST)\n'
          '4) બેંક વિગતો\n'
          '5) ફોટોગ્રાફ્સ\n',
      descriptionG:
          'પ્રાકૃતિક ખેતી પરના રાષ્ટ્રીય મિશનનો ઉદ્દેશ્ય શ્રેષ્ઠ પદ્ધતિઓના દસ્તાવેજીકરણ અને પ્રસાર માટે સંસ્થાકીય ક્ષમતાઓનું નિર્માણ, પ્રચાર વ્યૂહરચનામાં ભાગીદાર તરીકે પ્રેક્ટિસ કરતા ખેડૂતોને બનાવવા, ક્ષમતા નિર્માણ અને સતત હેન્ડહોલ્ડિંગને સુનિશ્ચિત કરવાનો અને છેવટે સિસ્ટમની યોગ્યતા પર સ્વેચ્છાએ ખેડૂતોને કુદરતી ખેતી તરફ આકર્ષિત કરવાનો છે.',
      titleH: 'प्राकृतिक खेती पर राष्ट्रीय मिशन',
      documentH: '1) आधार संख्या\n'
          '2) ज़मीन के दस्तावेज़\n'
          '3) जाति प्रमाण पत्र (केवल एससी/एसटी)\n'
          '4) बैंक विवरण\n'
          '5) फ़ोटो\n',
      descriptionH:
          'प्राकृतिक खेती पर राष्ट्रीय मिशन का उद्देश्य सर्वोत्तम प्रथाओं के दस्तावेजीकरण और प्रसार के लिए संस्थागत क्षमताएं बनाना, किसानों को प्रचार रणनीति में भागीदार बनाना, क्षमता निर्माण और निरंतर सहायता सुनिश्चित करना और अंततः प्रणाली की योग्यता के आधार पर स्वेच्छा से प्राकृतिक खेती के लिए किसानों को आकर्षित करना है।',
      eligibility: 'The scheme is applicable to all farmers in India',
      eligibilityH: 'यह योजना भारत के सभी किसानों के लिए लागू है',
      eligibilityG: 'આ યોજના ભારતના તમામ ખેડૂતોને લાગુ પડે છે'),
];

List<SchemeModal> edata = [
  SchemeModal(
      eligibility:
          '(1) Any single girl child of her parents pursuing Ph.D. in any stream/subject in recognised Universities/Colleges/ Institutes is eligible to apply under the scheme.\n'
          '(2) The scheme is applicable to such a single girl child who has registered herself in regular, full-time Ph. D. program.\n'
          '(3) Admission to Ph.D. Course in part-time/distance mode is not covered under the scheme. A scholar is not eligible for fellowship if the research is intended/pursued through open/ part-time distance education mode or part-time mode.\n'
          '(4) Girl students up to the age of 40 years for general category and 45 years for the reserved categories i.e. SC/ST/OBC and PWD (Persons with Disabilities) as on the last date of submission of online application are eligible.\n'
          '(5) Both the scholar receiving the fellowship and the institution concerned, where the scholar is pursuing her Ph.D are responsible to ensure that the terms and conditions of these schemes are followed properly and only the eligible candidates get the fellowship.',
      eligibilityH:
          '(1) अपने माता-पिता की कोई अकेली लड़की पीएच.डी. कर रही है। मान्यता प्राप्त विश्वविद्यालयों/कॉलेजों/संस्थानों में किसी भी स्ट्रीम/विषय में स्नातक इस योजना के तहत आवेदन करने के लिए पात्र है।\n'
          '(2) यह योजना ऐसी एकल बालिका के लिए लागू है जिसने नियमित, पूर्णकालिक पीएचडी कार्यक्रम में अपना पंजीकरण कराया है।\n'
          '(3) पीएच.डी. में प्रवेश। अंशकालिक/दूरस्थ मोड में पाठ्यक्रम योजना के अंतर्गत शामिल नहीं है। यदि शोध मुक्त/अंशकालिक दूरस्थ शिक्षा मोड या अंशकालिक मोड के माध्यम से किया गया है तो कोई विद्वान फ़ेलोशिप के लिए पात्र नहीं है।\n'
          '(4) ऑनलाइन आवेदन जमा करने की अंतिम तिथि तक सामान्य वर्ग के लिए 40 वर्ष और आरक्षित श्रेणियों यानी एससी/एसटी/ओबीसी और पीडब्ल्यूडी (विकलांग व्यक्ति) के लिए 45 वर्ष की आयु तक की छात्राएं पात्र हैं। एन'
          '(5) फेलोशिप प्राप्त करने वाले विद्वान और संबंधित संस्थान, जहां विद्वान अपनी पीएचडी कर रहा है, दोनों यह सुनिश्चित करने के लिए जिम्मेदार हैं कि इन योजनाओं के नियमों और शर्तों का ठीक से पालन किया जाता है और केवल योग्य उम्मीदवारों को ही फेलोशिप मिलती है।',
      eligibilityG:
          '(1) તેના માતાપિતાની કોઈપણ એકલ છોકરી પીએચ.ડી. માન્ય યુનિવર્સિટીઓ/કોલેજ/સંસ્થાઓમાં કોઈપણ પ્રવાહ/વિષયમાં સ્કીમ હેઠળ અરજી કરવા પાત્ર છે.\n'
          '(2) આ યોજના એવી એકલ છોકરીને લાગુ પડે છે કે જેમણે નિયમિત, પૂર્ણ-સમયના Ph. D. પ્રોગ્રામમાં પોતાની નોંધણી કરાવી હોય.\n'
          '(3) પીએચ.ડી.માં પ્રવેશ. પાર્ટ-ટાઇમ/ડિસ્ટન્સ મોડમાં અભ્યાસક્રમ યોજના હેઠળ આવરી લેવામાં આવતો નથી. જો સંશોધન ઓપન/ ​​પાર્ટ-ટાઇમ ડિસ્ટન્સ એજ્યુકેશન મોડ અથવા પાર્ટ-ટાઈમ મોડ દ્વારા કરવામાં આવે તો વિદ્વાન ફેલોશિપ માટે પાત્ર નથી.\n'
          '(4) ઓનલાઈન અરજી સબમિટ કરવાની છેલ્લી તારીખે સામાન્ય કેટેગરી માટે 40 વર્ષ સુધીની છોકરી અને આરક્ષિત કેટેગરીઝ એટલે કે SC/ST/OBC અને PWD (વિકલાંગ વ્યક્તિઓ) માટે 45 વર્ષ સુધીની વિદ્યાર્થીનીઓ પાત્ર છે. એન'
          '(5) ફેલોશિપ મેળવનાર વિદ્વાન અને સંબંધિત સંસ્થા, જ્યાં વિદ્વાન તેણીની પીએચ.ડી કરી રહી છે તે બંને તેની ખાતરી કરવા માટે જવાબદાર છે કે આ યોજનાઓના નિયમો અને શરતોનું યોગ્ય રીતે પાલન કરવામાં આવે અને માત્ર લાયક ઉમેદવારોને જ ફેલોશિપ મળે.',
      titleH: 'एकल बालिका के लिए सावित्रीबाई ज्योतिराव फुले फैलोशिप',
      documentH:
          '1. आपके पासपोर्ट आकार के फोटोग्राफ और हस्ताक्षर की स्कैन की गई कॉपी (आकार 1 एमबी तक, प्रारूप: जेपीजी)।\n'
          '2.संपूर्ण शोध प्रस्ताव (5 एमबी तक आकार) और एक सार (आकार 1 एमबी तक)।\n'
          '3.आवेदन पत्र भरने के बाद आपकी स्क्रीन पर एक ऑटो-जेनरेटेड फॉर्म प्रदर्शित होगा। कृपया इसका प्रिंटआउट लें, इसे विभागाध्यक्ष/रजिस्ट्रार द्वारा हस्ताक्षरित करवाएं और आवेदन पत्र जमा करने से पहले इसे अपलोड करें।\n'
          '4.माता-पिता से एकल बालिका होने का प्रमाण रुपये के शपथ पत्र पर जमा कराना होगा। निर्धारित प्रोफार्मा के अनुसार एसडीएम/प्रथम श्रेणी मजिस्ट्रेट/तहसीलदार द्वारा सत्यापित 100/- स्टांप पेपर। यदि माता-पिता जीवित नहीं हैं, तो उम्मीदवार के अभिभावक द्वारा शपथ पत्र प्रस्तुत किया जा सकता है',
      descriptionH:
          'एकल बालिका के लिए सावित्रीबाई ज्योतिराव फुले फ़ेलोशिप (एसजेएसजीसी) विश्वविद्यालय अनुदान आयोग (यूजीसी), उच्च शिक्षा विभाग द्वारा पीएचडी की उपाधि के लिए शोध कार्य को आगे बढ़ाने के लिए एक फ़ेलोशिप योजना है। डिग्री। इस योजना का लक्ष्य समूह \'एकल बालिका\' है, अर्थात परिवार में बिना किसी भाई या बहन वाली एकमात्र बालिका। एक लड़की विद्वान जो जुड़वां बेटियों/भाई बेटियों में से एक है, वह भी योजना के तहत फेलोशिप के लिए आवेदन करने के लिए पात्र है। फ़ेलोशिप के लिए स्लॉट की संख्या हर साल ऑनलाइन मोड के माध्यम से प्राप्त सभी प्रकार से पूर्ण योग्य आवेदनों के आधार पर तय की जाएगी।',
      title: 'Savitribai Jyotirao Phule Fellowship For Single Girl Child',
      document:
          '1. Scanned copy of your passport-size photograph and signature (size upto 1MB , format: jpg).\n'
          '2.Complete Research proposal (size upto 5 MB) and an abstract (size upto 1MB).\n'
          '3.After filling out the application form, an auto-generated form will be displayed on your screen. Please take the printout of the same, get it signed by the HoD/Registrar and upload the same before the submission of the application form.\n'
          '4.Proof of being a single girl child has to be submitted from the parents on an affidavit of Rs. 100/- stamp paper duly attested by SDM/First Class Magistrate/Tahsildar as per the prescribed proforma. In case, the parents are not alive, the affidavit can be submitted by the guardian of the Candidate ',
      id: 1,
      description:
          'Savitribai Jyotirao Phule Fellowship for Single Girl Child (SJSGC) is a Fellowship Scheme by the University Grants Commission (UGC), Department of Higher Education, for pursuing research work leading to the award of a Ph.D. degree. The target group of this scheme are the ‘single girl child’, i.e. the only girl child in the family without having any brother or sister. A girl scholar who is one of the twin daughters/fraternal daughters is also eligible to apply for fellowship under the scheme. The number of slots for the fellowship will be decided every year on the basis of eligible applications complete in all respects, received through online mode.',
      link: 'https://www.myscheme.gov.in/schemes/sjpfsgc',
      titleG: 'સિંગલ ગર્લ ચાઈલ્ડ માટે સાવિત્રીબાઈ જ્યોતિરાવ ફૂલે ફેલોશિપ',
      documentG:
          '1. તમારા પાસપોર્ટ-સાઇઝના ફોટોગ્રાફ અને હસ્તાક્ષરની સ્કેન કરેલી નકલ (1MB સુધીનું કદ, ફોર્મેટ: jpg).\n'
          '2.સંપૂર્ણ સંશોધન દરખાસ્ત (5 MB સુધીનું કદ) અને એક અમૂર્ત (1MB સુધીનું કદ).\n'
          '3. અરજી ફોર્મ ભર્યા પછી, તમારી સ્ક્રીન પર સ્વતઃ જનરેટેડ ફોર્મ પ્રદર્શિત થશે. કૃપા કરીને તેની પ્રિન્ટઆઉટ લો, તેને HoD/રજિસ્ટ્રાર દ્વારા સહી કરાવો અને અરજી ફોર્મ સબમિટ કરતા પહેલા તેને અપલોડ કરો.\n'
          '4. સિંગલ ગર્લ ચાઈલ્ડ હોવાનો પુરાવો માતા-પિતા પાસેથી રૂ.ની એફિડેવિટ પર સબમિટ કરવાનો રહેશે. 100/- સ્ટેમ્પ પેપર નિયત પ્રોફોર્મા મુજબ SDM/પ્રથમ વર્ગ મેજિસ્ટ્રેટ/તહસીલદાર દ્વારા યોગ્ય રીતે પ્રમાણિત. જો માતા-પિતા હયાત ન હોય તો, ઉમેદવારના વાલી દ્વારા એફિડેવિટ રજૂ કરી શકાય છે',
      descriptionG:
          'સાવિત્રીબાઈ જ્યોતિરાવ ફૂલે ફેલોશિપ ફોર સિંગલ ગર્લ ચાઈલ્ડ (SJSGC) એ યુનિવર્સિટી ગ્રાન્ટ્સ કમિશન (UGC), ઉચ્ચ શિક્ષણ વિભાગ દ્વારા પીએચ.ડી. ડિગ્રી આ યોજનાનું લક્ષ્ય જૂથ ‘સિંગલ ગર્લ ચાઈલ્ડ’ છે, એટલે કે પરિવારમાં કોઈ ભાઈ કે બહેન વિનાની એકમાત્ર છોકરી છે. એક છોકરી વિદ્વાન કે જે જોડિયા પુત્રીઓ/ભ્રાતૃ પુત્રીઓમાંની એક છે તે પણ યોજના હેઠળ ફેલોશિપ માટે અરજી કરવા પાત્ર છે. ફેલોશિપ માટેના સ્લોટની સંખ્યા ઓનલાઈન મોડ દ્વારા પ્રાપ્ત થયેલ તમામ બાબતોમાં પૂર્ણ થયેલ પાત્ર અરજીઓના આધારે દર વર્ષે નક્કી કરવામાં આવશે.'),
  SchemeModal(
      eligibility: '1.Applicant must be pursuing first postgraduate degree.\n'
          '2.Applicant who have already completed a postgraduate degree are not eligible to apply.\n'
          '3.Applicant must be enrolled in first year of postgraduate program.\n'
          '4.Applicant must be under 30 years old.\n'
          '5.Applicant must be enrolled in full-time program.\n'
          '6.Applicant must be pursuing recognized postgraduate degree program.',
      eligibilityH: '1.आवेदक को पहले स्नातकोत्तर डिग्री प्राप्त करनी चाहिए।\n'
          '2. जिन आवेदकों ने पहले ही स्नातकोत्तर डिग्री पूरी कर ली है, वे आवेदन करने के पात्र नहीं हैं।\n'
          '3.आवेदक को स्नातकोत्तर कार्यक्रम के प्रथम वर्ष में नामांकित होना चाहिए।\n'
          '4.आवेदक की आयु 30 वर्ष से कम होनी चाहिए।\n'
          '5.आवेदक को पूर्णकालिक कार्यक्रम में नामांकित होना चाहिए।\n'
          '6.आवेदक को मान्यता प्राप्त स्नातकोत्तर डिग्री कार्यक्रम करना चाहिए।',
      eligibilityG: '1. અરજદારે પ્રથમ અનુસ્નાતક ડિગ્રી મેળવવી આવશ્યક છે.\n'
          '2.અરજદાર કે જેમણે પહેલેથી જ અનુસ્નાતકની ડિગ્રી પૂર્ણ કરી હોય તે અરજી કરવા પાત્ર નથી.\n'
          '3.અરજદારે અનુસ્નાતક કાર્યક્રમના પ્રથમ વર્ષમાં નોંધણી કરાવવી આવશ્યક છે.\n'
          '4. અરજદારની ઉંમર 30 વર્ષથી ઓછી હોવી જોઈએ.\n'
          '5. અરજદાર પૂર્ણ-સમયના પ્રોગ્રામમાં નોંધાયેલ હોવું આવશ્યક છે.\n'
          '6. અરજદાર માન્ય અનુસ્નાતક ડિગ્રી પ્રોગ્રામને અનુસરતો હોવો જોઈએ.',
      titleH: ' स्नातकोत्तर अध्ययन के लिए राष्ट्रीय छात्रवृत्ति',
      documentH:
          '1.नौवीं कक्षा से आगे की मार्कशीट और प्रमाणपत्रों की सत्यापित प्रतियां।\n'
          '2.पीजी पाठ्यक्रम के लिए अनंतिम या अंतिम प्रवेश पत्र की सत्यापित प्रति।\n'
          '3.पहचान का प्रमाण (आधार कार्ड, मतदाता पहचान पत्र, पासपोर्ट, पैन कार्ड, ड्राइविंग लाइसेंस)।\n'
          '4.बैंक विवरण.\n'
          '5.दो हालिया पासपोर्ट आकार की तस्वीरें।',
      descriptionH:
          'स्नातकोत्तर अध्ययन के लिए राष्ट्रीय छात्रवृत्ति (एनएसपीजी) योजना की स्थापना भारत सरकार के शिक्षा मंत्रालय द्वारा की गई थी। यह योजना शुरू में भारत में स्नातकोत्तर अध्ययन के लिए समाज के आर्थिक रूप से कमजोर वर्गों के मेधावी छात्रों को वित्तीय सहायता प्रदान करने के उद्देश्य से शुरू की गई थी।',
      title: 'National Scholarship For Post Graduate Studies',
      document:
          '1.Attested copies of mark sheets and certificates from class IX onwards.\n'
          '2.Attested copy of the provisional or final admission letter to the PG course.\n'
          '3.Proof of identity (Aadhaar card, Voter ID card, Passport, PAN Card, Driving License).\n'
          '4.Bank details.\n'
          '5.Two recent passport size photographs.',
      id: 4,
      description:
          'The National Scholarship for Post-Graduate Studies (NSPG) scheme was established by the Ministry of Education, Government of India. The scheme was initially launched with the aim of providing financial assistance to meritorious students from economically weaker sections of society to pursue postgraduate studies in India.',
      link: 'https://www.myscheme.gov.in/schemes/sjpfsgc',
      titleG: 'પોસ્ટ ગ્રેજ્યુએટ અભ્યાસ માટે રાષ્ટ્રીય શિષ્યવૃત્તિ',
      documentG: '1. ધોરણ IX થી માર્કશીટ અને પ્રમાણપત્રોની પ્રમાણિત નકલો.\n'
          '2.પીજી કોર્સમાં કામચલાઉ અથવા અંતિમ પ્રવેશ પત્રની પ્રમાણિત નકલ.\n'
          '3. ઓળખનો પુરાવો (આધાર કાર્ડ, મતદાર ઓળખ કાર્ડ, પાસપોર્ટ, પાન કાર્ડ, ડ્રાઇવિંગ લાઇસન્સ).\n'
          '4.બેંક વિગતો.\n'
          '5. તાજેતરના પાસપોર્ટ સાઇઝના બે ફોટોગ્રાફ્સ.',
      descriptionG:
          'પોસ્ટ-ગ્રેજ્યુએટ સ્ટડીઝ માટે રાષ્ટ્રીય શિષ્યવૃત્તિ (NSPG) યોજનાની સ્થાપના ભારત સરકારના શિક્ષણ મંત્રાલય દ્વારા કરવામાં આવી હતી. આ યોજના શરૂઆતમાં ભારતમાં અનુસ્નાતક અભ્યાસ કરવા માટે સમાજના આર્થિક રીતે નબળા વર્ગના હોશિયાર વિદ્યાર્થીઓને નાણાકીય સહાય પૂરી પાડવાના ઉદ્દેશ્ય સાથે શરૂ કરવામાં આવી હતી.'),
  SchemeModal(
      eligibility:
          '1.Students in Government and Government-aided schools: The scheme primarily targets students studying in government and government-aided schools across India.\n2. Children enrolled in classes from the primary level up to the secondary level are eligible to benefit from the scheme.\n3.Age criteria: The scheme typically covers children between the ages of 6 and 14 years.\n4. However, specific age requirements may vary slightly from state to state or depending on the educational policies of different regions.\n5. Socio-economic criteria: The Mid Day Meals Scheme aims to benefit children from economically disadvantaged backgrounds. Typically, children belonging to families with below-poverty-line (BPL) status or those from marginalized communities are given priority for enrollment in the scheme.\n6.School attendance: One of the key eligibility criteria for availing the benefits of the scheme is regular school attendance. Students are expected to attend school regularly to receive the mid-day meals.Enrolled in recognized schools: Children must be enrolled in schools recognized by the appropriate education authorities to be eligible for the scheme. The scheme is primarily implemented in schools that adhere to the governments educational standards and guidelines.',
      eligibilityH:
          '1.सरकारी और सरकारी सहायता प्राप्त स्कूलों के छात्र: यह योजना मुख्य रूप से भारत भर के सरकारी और सरकारी सहायता प्राप्त स्कूलों में पढ़ने वाले छात्रों को लक्षित करती है।\n2. प्राथमिक स्तर से लेकर माध्यमिक स्तर तक की कक्षाओं में नामांकित बच्चे इस योजना से लाभ पाने के पात्र हैं।\n3.आयु मानदंड: योजना आम तौर पर 6 से 14 वर्ष की आयु के बच्चों को कवर करती है।\n4. हालाँकि, विशिष्ट आयु आवश्यकताएँ अलग-अलग राज्यों में या विभिन्न क्षेत्रों की शैक्षिक नीतियों के आधार पर थोड़ी भिन्न हो सकती हैं।\n5. सामाजिक-आर्थिक मानदंड: मध्याह्न भोजन योजना का उद्देश्य आर्थिक रूप से वंचित पृष्ठभूमि के बच्चों को लाभ पहुंचाना है। आमतौर पर, गरीबी रेखा से नीचे (बीपीएल) स्थिति वाले परिवारों या हाशिए पर रहने वाले समुदायों के बच्चों को योजना में नामांकन के लिए प्राथमिकता दी जाती है।\n6.स्कूल में उपस्थिति: योजना का लाभ उठाने के लिए प्रमुख पात्रता मानदंडों में से एक है नियमित विद्यालय उपस्थिति. मध्याह्न भोजन प्राप्त करने के लिए छात्रों से नियमित रूप से स्कूल जाने की अपेक्षा की जाती है। मान्यता प्राप्त स्कूलों में नामांकित: योजना के लिए पात्र होने के लिए बच्चों को उपयुक्त शिक्षा अधिकारियों द्वारा मान्यता प्राप्त स्कूलों में नामांकित होना चाहिए। यह योजना मुख्य रूप से उन स्कूलों में लागू की जाती है जो सरकारी शैक्षिक मानकों और दिशानिर्देशों का पालन करते हैं।',
      eligibilityG:
          '1.સરકારી અને સરકારી સહાયિત શાળાઓમાં વિદ્યાર્થીઓ: આ યોજના મુખ્યત્વે સમગ્ર ભારતમાં સરકારી અને સરકારી સહાયિત શાળાઓમાં અભ્યાસ કરતા વિદ્યાર્થીઓને લક્ષ્ય બનાવે છે.\n2. પ્રાથમિક સ્તરથી માધ્યમિક સ્તર સુધીના વર્ગોમાં નોંધાયેલા બાળકો આ યોજનાનો લાભ મેળવવા માટે પાત્ર છે.\n3.વય માપદંડ: આ યોજના સામાન્ય રીતે 6 થી 14 વર્ષની વયના બાળકોને આવરી લે છે.\n4. જો કે, ચોક્કસ વય જરૂરિયાતો રાજ્ય-રાજ્ય અથવા વિવિધ પ્રદેશોની શૈક્ષણિક નીતિઓના આધારે થોડી અલગ હોઈ શકે છે.\n5. સામાજિક-આર્થિક માપદંડ: મધ્યાહન ભોજન યોજનાનો હેતુ આર્થિક રીતે વંચિત પૃષ્ઠભૂમિના બાળકોને લાભ આપવાનો છે. સામાન્ય રીતે, ગરીબી-રેખા (BPL) ની નીચેની સ્થિતિ ધરાવતા પરિવારોના બાળકો અથવા હાંસિયામાં ધકેલાઈ ગયેલા સમુદાયોના બાળકોને આ યોજનામાં નોંધણી માટે અગ્રતા આપવામાં આવે છે.\n6.શાળામાં હાજરી: યોજનાના લાભો મેળવવા માટે મુખ્ય પાત્રતા માપદંડો પૈકી એક છે. શાળામાં નિયમિત હાજરી. મધ્યાહન ભોજન મેળવવા માટે વિદ્યાર્થીઓ નિયમિતપણે શાળાએ આવે તેવી અપેક્ષા રાખવામાં આવે છે. માન્યતા પ્રાપ્ત શાળાઓમાં નોંધણી: યોજના માટે પાત્ર બનવા માટે બાળકોએ યોગ્ય શિક્ષણ સત્તાવાળાઓ દ્વારા માન્યતા પ્રાપ્ત શાળાઓમાં નોંધણી કરાવવી આવશ્યક છે. આ યોજના મુખ્યત્વે એવી શાળાઓમાં લાગુ કરવામાં આવે છે જે સરકારના શૈક્ષણિક ધોરણો અને માર્ગદર્શિકાઓનું પાલન કરે છે.',
      titleH: 'मध्याह्न भोजन योजना',
      documentH:
          '1. छात्रों का जन्म प्रमाण पत्र या आयु प्रमाण\n2. आधार कार्ड या अन्य पहचान दस्तावेज\n3. स्कूल पंजीकरण प्रमाण पत्र\n4. बैंक खाता विवरण (यदि प्रत्यक्ष लाभ हस्तांतरण के लिए लागू हो)',
      descriptionH:
          'मध्याह्न भोजन योजना भारत में एक स्कूली भोजन कार्यक्रम है जिसे देश भर में स्कूली उम्र के बच्चों की पोषण संबंधी स्थिति को बेहतर बनाने के लिए डिज़ाइन किया गया है। इस योजना का नाम बदलकर पीएम-पोषण योजना कर दिया गया है। यह कार्यक्रम सरकारी प्राथमिक और उच्च प्राथमिक विद्यालयों, सरकारी सहायता प्राप्त आंगनबाड़ियों, मदरसों और मकतबों में बच्चों के लिए कार्य दिवसों पर मुफ्त दोपहर का भोजन प्रदान करता है। 1.27 मिलियन से अधिक स्कूलों और शिक्षा गारंटी योजना केंद्रों में 120 मिलियन बच्चों को सेवा प्रदान करने वाली मध्याह्न भोजन योजना दुनिया में अपनी तरह की सबसे बड़ी योजना है।',
      title: 'Mid-Day Meal Scheme',
      document:
          '1. Birth certificates or age proof of the students\n2. Aadhaar card or other identification documents\n3. School registration certificate\n4. Bank account details (if applicable for direct benefit transfer)',
      id: 2,
      description:
          'The Mid Day Meal Scheme is a school meal programme in India designed to better the nutritional standing of school-age children nationwide. The scheme has been renamed as PM-POSHAN Scheme.The programme supplies free lunches on working days for children in government primary and upper primary schools, government aided Anganwadis, Madarsa and Maqtabs. Serving 120 million children in over 1.27 million schools and Education Guarantee Scheme centres, the Midday Meal Scheme is the largest of its kind in the world.',
      link: 'link : https://www.myscheme.gov.in/schemes/mdmss',
      titleG: 'મધ્યાહન ભોજન',
      documentG:
          '1. જન્મ પ્રમાણપત્રો અથવા વિદ્યાર્થીઓના વયનો પુરાવો\n2. આધાર કાર્ડ અથવા અન્ય ઓળખ દસ્તાવેજો\n3. શાળા નોંધણી પ્રમાણપત્ર \n4. બેંક ખાતાની વિગતો (જો પ્રત્યક્ષ લાભ ટ્રાન્સફર માટે લાગુ હોય તો)',
      descriptionG:
          'મધ્યાહન ભોજન યોજના એ ભારતનો એક શાળા ભોજન કાર્યક્રમ છે જે દેશભરમાં શાળા-વયના બાળકોની પોષણની સ્થિતિને બહેતર બનાવવા માટે રચાયેલ છે. આ યોજનાનું નામ બદલીને પીએમ-પોષણ યોજના રાખવામાં આવ્યું છે. આ કાર્યક્રમ સરકારી પ્રાથમિક અને ઉચ્ચ પ્રાથમિક શાળાઓ, સરકારી સહાયિત આંગણવાડીઓ, મદરસા અને મકતાબમાં બાળકોને કામકાજના દિવસોમાં મફત જમવાનું પૂરું પાડે છે.1.27 મિલિયનથી વધુ શાળાઓ અને શિક્ષણ ગેરંટી યોજના કેન્દ્રોમાં 120 મિલિયન બાળકોને સેવા આપતી, મધ્યાહન ભોજન યોજના વિશ્વમાં તેના પ્રકારની સૌથી મોટી છે.'),
  SchemeModal(
      eligibility:
          '1.The beneficiary should be Digitally Illiterate\n2.Only one person in a household where none of the family members is digitally literate will be considered.\n3.The age of the beneficiary should be between 14 years and 60 years.',
      eligibilityH:
          '1.लाभार्थी को डिजिटल रूप से साक्षर होना चाहिए\n2.उस घर में केवल एक व्यक्ति पर विचार किया जाएगा जहां परिवार का कोई भी सदस्य डिजिटल रूप से साक्षर नहीं है।\n3.लाभार्थी की आयु 14 वर्ष से 60 वर्ष के बीच होनी चाहिए।',
      eligibilityG:
          '1. લાભાર્થી ડિજિટલી નિરક્ષર હોવો જોઈએ\n2. પરિવારમાં માત્ર એક જ વ્યક્તિ કે જ્યાં પરિવારનો કોઈ પણ સભ્ય ડિજિટલી સાક્ષર નથી.\n3. લાભાર્થીની ઉંમર 14 વર્ષથી 60 વર્ષની વચ્ચે હોવી જોઈએ.',
      titleH: 'प्रधानमंत्री ग्रामीण डिजिटल साक्षरता अभियान',
      documentH: '1. आधार नंबर\n2. आयु/जन्मतिथि का प्रमाण',
      descriptionH:
          'प्रधानमंत्री ग्रामीण डिजिटल साक्षरता अभियान (पीएमजीदिशा) इलेक्ट्रॉनिक्स और सूचना प्रौद्योगिकी मंत्रालय (एमईआईटीवाई) की एक डिजिटल साक्षरता योजना है, जिसका उद्देश्य राज्यों/केंद्रशासित प्रदेशों के ग्रामीण क्षेत्रों में छह करोड़ लोगों को डिजिटल रूप से साक्षर बनाना है, जो लगभग 40% तक पहुंच गया है। प्रत्येक पात्र परिवार से एक सदस्य को कवर करके ग्रामीण परिवार। यह योजना केवल देश के ग्रामीण क्षेत्रों के लिए लागू है। प्रति पात्र परिवार से केवल एक व्यक्ति (14-60 वर्ष की आयु) को प्रशिक्षण के लिए विचार किया जाएगा। गैर-स्मार्टफोन उपयोगकर्ताओं, अंत्योदय परिवारों, कॉलेज छोड़ने वालों और वयस्क साक्षरता मिशन के प्रतिभागियों को प्राथमिकता दी जाएगी; कक्षा 9वीं से 12वीं तक के डिजिटल रूप से निरक्षर स्कूली छात्र, बशर्ते उनके स्कूलों में कंप्यूटर/आईसीटी प्रशिक्षण की सुविधा उपलब्ध न हो। एससी, एसटी, बीपीएल, महिलाओं, दिव्यांग व्यक्तियों और अल्पसंख्यकों को प्राथमिकता दी जाएगी।',
      title: 'Pradhan Mantri Gramin Digital Saksharta Abhiyaan',
      document: '1. Aadhaar Number\n2. Proof of Age / DOB',
      id: 3,
      description:
          'Pradhan Mantri Gramin Digital Saksharta Abhiyaan (PMGDISHA) is a Digital Literacy Scheme by the Ministry of Electronics and Information Technology (MeitY), to make six crore persons in rural areas, across States/UTs, are digitally literate, reaching around 40% of rural households by covering one member from every eligible household. The Scheme is applicable only to rural areas of the country. Only one person (14 - 60 years of age) per eligible household would be considered for training. Priority would be given to Non-smartphone users, Antyodaya households, college drop-outs, and Participants of the adult literacy mission; Digitally illiterate school students from class 9th to 12th, provided facility of Computer/ICT Training is not available in their schools. Preference would be given to SC, ST, BPL, women, differently-abled persons, and minorities.',
      link: 'link : https://www.myscheme.gov.in/schemes/pmgdish',
      titleG: 'પ્રધાનમત્રીં ગ્રામીણ ડિજિટલ સાક્ષરતાઅભિયાન ',
      documentG: '1. આધાર નંબર\n2. ઉંમર / DOB નો પુરાવો',
      descriptionG:
          'પ્રધાનમંત્રી ગ્રામીણ ડિજિટલ સાક્ષરતા અભિયાન (PMGDISHA) એ ઇલેક્ટ્રોનિક્સ અને માહિતી પ્રૌદ્યોગિકી મંત્રાલય (MeitY) દ્વારા એક ડિજિટલ સાક્ષરતા યોજના છે, જે સમગ્ર રાજ્ય/કેન્દ્રશાસિત પ્રદેશોમાં ગ્રામીણ વિસ્તારોમાં છ કરોડ લોકોને ડિજિટલી સાક્ષર બનાવે છે, જે લગભગ 40% ગ્રામીણ સુધી પહોંચે છે. દરેક પાત્ર પરિવારમાંથી એક સભ્યને આવરી લઈને પરિવારો.આ યોજના માત્ર દેશના ગ્રામીણ વિસ્તારોમાં જ લાગુ છે. લાયકાત ધરાવતા કુટુંબ દીઠ માત્ર એક જ વ્યક્તિ (14 - 60 વર્ષ) તાલીમ માટે ધ્યાનમાં લેવામાં આવશે. બિન-સ્માર્ટફોન વપરાશકર્તાઓ, અંત્યોદય પરિવારો, કૉલેજ છોડનારાઓ અને પુખ્ત સાક્ષરતા મિશનના સહભાગીઓને અગ્રતા આપવામાં આવશે; ધોરણ 9 થી 12 સુધીના ડિજીટલ નિરક્ષર શાળાના વિદ્યાર્થીઓ, તેમની શાળાઓમાં કોમ્પ્યુટર/આઈસીટી તાલીમની સુવિધા ઉપલબ્ધ નથી. SC, ST, BPL, મહિલાઓ, અલગ-અલગ-વિકલાંગ વ્યક્તિઓ અને લઘુમતીઓને પ્રાધાન્ય આપવામાં આવશે.'),
];

List<SchemeModal> rdata = [
  SchemeModal(
      eligibility:
          '1.The applicant must be at least 18 years of age.\n2.The applicant must be residing in a Rural Area.',
      eligibilityH:
          '1.आवेदक की आयु कम से कम 18 वर्ष होनी चाहिए।\n2.आवेदक ग्रामीण क्षेत्र का रहने वाला होना चाहिए।',
      eligibilityG:
          '1.અરજદારની ઉંમર ઓછામાં ઓછી 18 વર્ષની હોવી જોઈએ.\n2.અરજદાર ગ્રામ્ય વિસ્તારમાં રહેતો હોવો જોઈએ.',
      titleH: 'महात्मा गांधी राष्ट्रीय ग्रामीण रोजगार गारंटी अधिनियम',
      documentH: '1. राशन कार्ड\n2. वोटर आईडी कार्ड\n3. आधार\n4. पैन कार्ड',
      descriptionH:
          'भारत सरकार ने सितंबर, 2005 में महात्मा गांधी राष्ट्रीय ग्रामीण रोजगार गारंटी अधिनियम, 2005 पारित किया। यह अधिनियम ग्रामीण परिवार के उन वयस्क सदस्यों को, जो रोजगार की मांग करते हैं और इच्छुक हैं, एक वित्तीय वर्ष में सौ दिनों के रोजगार की कानूनी गारंटी देता है। अकुशल शारीरिक कार्य करना।',
      title: 'Mahatma Gandhi National Rural Employment Guarantee Act',
      document: '1. Ration card\n2. Voter ID Card\n3. Aadhaar\n4. PAN card',
      id: 1,
      description:
          'The Government of India passed the Mahatma Gandhi National Rural Employment Guarantee Act, 2005 in September, 2005. The Act gives legal guarantee of a hundred days of wage employment in a financial year to adult members of a rural household who demand employment and are willing to do unskilled manual work.',
      link: 'link : https://nrega.nic.in/MGNREGA_new/Nrega_home.aspx',
      titleG: 'મહાત્મા ગાંધી રાષ્ટ્રીય ગ્રામીણ રોજગાર ગેરંટી અધિનિયમ ',
      documentG: '1. રેશન કાર્ડ\n2. મતદાર આઈડી કાર્ડ\n3. આધાર\n4. પાન કાર્ડ',
      descriptionG:
          'ભારત સરકારે સપ્ટેમ્બર, 2005માં મહાત્મા ગાંધી રાષ્ટ્રીય ગ્રામીણ રોજગાર ગેરંટી અધિનિયમ, 2005 પસાર કર્યો હતો. આ કાયદો ગ્રામીણ પરિવારના પુખ્ત સભ્યોને એક નાણાકીય વર્ષમાં સો દિવસની વેતન રોજગારની કાયદેસર બાંયધરી આપે છે કે જેઓ રોજગારની માંગણી કરતા હોય અને કરવા ઈચ્છુક હોય. અકુશળ મેન્યુઅલ કામ કરો.'),
  SchemeModal(
      eligibility:
          '1. A region must be a habitation. It cannot be a hamlet or revenue village to be eligible for the Pradhan Mantri Gram Sadak Yojana (PMGSY)\n2.  The Central Government describes habitation as a population cluster residing within an area that remains constant over time. Some of the local words used to describe a habitation are:Majras, Desam, Hamlets, Tolas, Dhanis\n3.  The hamlet must have a higher population as per the 2001 Census to be eligible for road connection. The eligible habitations have a population of above 500 persons in plain areas and around 250 persons and above in hilly area',
      eligibilityH:
          '1. एक क्षेत्र एक निवास स्थान होना चाहिए। प्रधानमंत्री ग्राम सड़क योजना (पीएमजीएसवाई) के लिए पात्र होने के लिए यह कोई बस्ती या राजस्व गांव नहीं हो सकता\n2. केंद्र सरकार बस्ती का वर्णन एक ऐसे क्षेत्र के भीतर रहने वाले जनसंख्या समूह के रूप में करती है जो समय के साथ स्थिर रहता है। किसी बस्ती का वर्णन करने के लिए उपयोग किए जाने वाले कुछ स्थानीय शब्द हैं: मजरा, देशम, हैमलेट, टोलस, ढाणी\n3. सड़क कनेक्शन के लिए पात्र होने के लिए 2001 की जनगणना के अनुसार गांव की जनसंख्या अधिक होनी चाहिए। पात्र बस्तियों में मैदानी क्षेत्रों में 500 व्यक्तियों से अधिक और पहाड़ी क्षेत्रों में लगभग 250 व्यक्तियों और उससे अधिक की आबादी है।',
      eligibilityG:
          '1. પ્રદેશ એ વસવાટ હોવો જોઈએ. પ્રધાનમંત્રી ગ્રામ સડક યોજના (PMGSY) માટે લાયક બનવા માટે તે ગામ અથવા મહેસૂલ ગામ ન હોઈ શકે\n2. કેન્દ્ર સરકાર વસવાટને વિસ્તારની અંદર વસતા વસ્તી સમૂહ તરીકે વર્ણવે છે જે સમય જતાં સ્થિર રહે છે. વસવાટનું વર્ણન કરવા માટે વપરાતા કેટલાક સ્થાનિક શબ્દો છે: મજરા, દેશમ, હેમલેટ, તોલા, ધનીસ\n3. 2001ની વસ્તીગણતરી મુજબ રોડ કનેક્શન માટે લાયક બનવા માટે ગામની વસ્તી વધુ હોવી જોઈએ. લાયક રહેઠાણોમાં મેદાની વિસ્તારોમાં 500 થી વધુ વ્યક્તિઓ અને ડુંગરાળ વિસ્તારમાં લગભગ 250 વ્યક્તિઓ અને તેનાથી વધુની વસ્તી છે.',
      titleH: 'प्रधानमंत्री ग्राम सड़क योजना',
      documentH:
          '1. प्रमाणपत्र विवरण\n2. स्थायी खाता संख्या\n3. पंजीकरण प्रमाणपत्र\n4. बिक्री कर/वैट\n5. बोलीदाताओं का पता प्रारूप',
      descriptionH:
          'प्रधानमंत्री ग्राम सड़क योजना (पीएमजीएसवाई), सरकार द्वारा शुरू की गई थी। भारत सरकार गरीबी उन्मूलन रणनीति के एक भाग के रूप में असंबद्ध बस्तियों को कनेक्टिविटी प्रदान करेगी। सरकार. भारत सरकार ग्रामीण सड़कों के नेटवर्क के स्थायी प्रबंधन को सुनिश्चित करने के लिए उच्च और समान तकनीकी और प्रबंधन मानकों को स्थापित करने और राज्य स्तर पर नीति विकास और योजना को सुविधाजनक बनाने का प्रयास कर रही है।',
      title: 'Pradhan Mantri Gram Sadak Yojana',
      document:
          '1. Certificate Details\n2. Permanent Account Number\n3. Registration Certificate\n4. Sales Tax/VAT\n5. Bidders Address Format',
      id: 2,
      description:
          'The Pradhan Mantri Gram Sadak Yojana (PMGSY), was launched by the Govt. of India to provide connectivity to unconnected Habitations as part of a poverty reduction strategy. Govt. of India is endeavoring to set high & uniform technical & management standards & facilitating policy development and planning at State level in order to ensure sustainable management of the rural roads network.',
      link: 'link : https://pmgsy.nic.in/',
      titleG: 'પ્રધાનમંત્રી ગ્રામ સડક યોજના',
      documentG:
          '1. પ્રમાણપત્ર વિગતો\n2. કાયમી એકાઉન્ટ નંબર\n3. નોંધણી પ્રમાણપત્ર4. વેચાણ વેરો/વેટ\n5. બિડર સરનામું ફોર્મેટ',
      descriptionG:
          'પ્રધાનમંત્રી ગ્રામ સડક યોજના (PMGSY), સરકાર દ્વારા શરૂ કરવામાં આવી હતી. ગરીબી ઘટાડવાની વ્યૂહરચનાનાં ભાગરૂપે અસંબંધિત વસવાટોને કનેક્ટિવિટી પ્રદાન કરવા માટે ભારત. સરકાર. ભારત ગ્રામીણ માર્ગ નેટવર્કના ટકાઉ સંચાલનને સુનિશ્ચિત કરવા માટે ઉચ્ચ અને સમાન તકનીકી અને વ્યવસ્થાપન ધોરણો અને રાજ્ય સ્તરે નીતિ વિકાસ અને આયોજનની સુવિધા આપવાનો પ્રયાસ કરી રહ્યું છે.'),
  SchemeModal(
      eligibility:
          '1.Youth from a household with RSBY card wherein the details of youth are mentioned in the card.\n2.Youth from households who have been issued Antyodaya Anna Yojana / BPL PDS cards.\n3.Youth from a household where a family member is a member of SHG under NRLM.\n4.Youth from a household covered under auto inclusion parameters as per SECC, 2011 (when notified).',
      eligibilityH:
          '1.आरएसबीवाई कार्ड वाले परिवार के युवा, जिसमें कार्ड में युवाओं का विवरण उल्लिखित है।\n2.उन परिवारों के युवा जिन्हें अंत्योदय अन्न योजना/बीपीएल पीडीएस कार्ड जारी किए गए हैं।\n3.उस घर के युवा जहां परिवार का कोई सदस्य है एनआरएलएम के तहत एसएचजी का सदस्य है।\n4.एसईसीसी, 2011 (जब अधिसूचित किया गया) के अनुसार ऑटो समावेशन मापदंडों के तहत कवर किए गए परिवार का युवा।',
      eligibilityG:
          '1. RSBY કાર્ડ ધરાવતો પરિવારનો યુવક જેમાં કાર્ડમાં યુવાનોની વિગતોનો ઉલ્લેખ કરવામાં આવ્યો હોય.\n2. પરિવારના યુવાનો કે જેમને અંત્યોદય અન્ન યોજના / BPL PDS કાર્ડ આપવામાં આવ્યા હોય.\n3. પરિવારના યુવક જ્યાં પરિવારના સભ્ય NRLM હેઠળ SHG ના સભ્ય છે.\n4.એસઈસીસી, 2011 (જ્યારે સૂચિત કરવામાં આવે ત્યારે) મુજબ સ્વતઃ સમાવેશ પરિમાણો હેઠળ આવરી લેવામાં આવતા પરિવારના યુવાનો.',
      titleH: 'दीन दयाल उपाध्याय ग्रामीण कौशल्य योजना',
      documentH:
          '1. आईडी प्रमाण\n2. आयु प्रमाण\n3. बीपीएल कार्ड\n4. मनरेगा कार्ड\n5. आरएसबीवाई कार्ड\n6. एसएचजी पहचान\n7. विकलांगता प्रमाणपत्र\n8. एसटी/एससी प्रमाणपत्र',
      descriptionH:
          'दीन दयाल उपाध्याय ग्रामीण कौशल्य योजना (डीडीयू-जीकेवाई) का लक्ष्य नौकरियों में गरीब ग्रामीण युवाओं को नियमित रूप से न्यूनतम मजदूरी के बराबर या उससे अधिक मासिक वेतन प्रदान करना है। यह ग्रामीण आजीविका को बढ़ावा देने के लिए भारत सरकार के ग्रामीण विकास मंत्रालय द्वारा की गई पहलों में से एक है। आजीविका गरीबी उन्मूलन के लिए एक मिशन है जो राष्ट्रीय ग्रामीण आजीविका मिशन (एनआरएलएम) का एक हिस्सा है। इस योजना से 5.50 लाख से अधिक गरीब ग्रामीण युवाओं को लाभ होगा जो स्थायी रोजगार प्रदान करके कुशल बनने के लिए तैयार हैं।',
      title: 'Deen Dayal Upadhyaya Grameen Kaushalya Yojana',
      document:
          '1. ID proof\n2. Age proof\n3. BPL Card\n4. MGNREGA Card\n5. RSBY Card\n6. SHG identification\n7. Disability certificate\n8. ST/SC certificate',
      id: 3,
      description:
          'Deen Dayal Upadhyaya Grameen Kaushalya Yojana (DDU-GKY) targets to provide monthly wages equal to or above the minimum wages regularly to poor rural youth in jobs. It is one of the initiatives taken by the Ministry of Rural Development, Government of India to promote rural livelihood. Aajeevika is a mission for poverty reduction which is a part of the National Rural Livelihoods Mission (NRLM). The scheme will benefit more than 5.50 lakh poor rural youth who are ready to be skilled by providing sustainable employment.',
      link:
          'link : https://www.xn--i1bj3fqcyde.xn--11b7cb3a6a.xn--h2brj9c/spotlight/%E0%A4%A6%E0%A5%80%E0%A4%A8-%E0%A4%A6%E0%A4%AF%E0%A4%BE%E0%A4%B2-%E0%A4%89%E0%A4%AA%E0%A4%BE%E0%A4%A7%E0%A5%8D%E0%A4%AF%E0%A4%BE%E0%A4%AF-%E0%A4%97%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%AE%E0%A5%80%E0%A4%A3-%E0%A4%95%E0%A5%8C%E0%A4%B6%E0%A4%B2%E0%A5%8D%E0%A4%AF-%E0%A4%AF%E0%A5%8B%E0%A4%9C%E0%A4%A8%E0%A4%BE',
      titleG: 'દીન દયાલ ઉપાધ્યાય ગ્રામીણ કૌશલ્ય યોજના',
      documentG:
          '1. આઈડી પ્રૂફ\n2. ઉંમરનો પુરાવો\n3. BPL કાર્ડ\n4. મનરેગા કાર્ડ\n5. RSBY કાર્ડ\n6. SHG ઓળખ\n7. અપંગતા પ્રમાણપત્ર\n8. ST/SC પ્રમાણપત્ર',
      descriptionG:
          'દીન દયાલ ઉપાધ્યાય ગ્રામીણ કૌશલ્ય યોજના (DDU-GKY) નો લક્ષ્‍યાંક રોજગારમાં ગરીબ ગ્રામીણ યુવાનોને નિયમિતપણે લઘુત્તમ વેતન સમાન અથવા તેનાથી વધુ માસિક વેતન આપવાનો છે. તે ગ્રામીણ આજીવિકાને પ્રોત્સાહન આપવા માટે ભારત સરકારના ગ્રામીણ વિકાસ મંત્રાલય દ્વારા લેવામાં આવેલી પહેલોમાંની એક છે. આજીવિકા એ ગરીબી નિવારણ માટેનું એક મિશન છે જે રાષ્ટ્રીય ગ્રામીણ આજીવિકા મિશન (NRLM)નો એક ભાગ છે. આ યોજનાનો લાભ 5.50 લાખથી વધુ ગરીબ ગ્રામીણ યુવાનોને મળશે જેઓ ટકાઉ રોજગાર પ્રદાન કરીને કુશળ બનવા માટે તૈયાર છે.'),
];

List<SchemeModal> hdata = [
  //******************************

  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'राष्ट्रीय ग्रामीण स्वास्थ्य मिशन',
      documentH: '',
      descriptionH:
          'एनआरएचएम ग्रामीण आबादी, विशेषकर कमजोर समूहों को न्यायसंगत, सस्ती और गुणवत्तापूर्ण स्वास्थ्य देखभाल प्रदान करना चाहता है। एनआरएचएम के तहत, एम्पावर्ड एक्शन ग्रुप (ईएजी) राज्यों के साथ-साथ उत्तर पूर्वी राज्यों, जम्मू और कश्मीर और हिमाचल प्रदेश पर विशेष ध्यान दिया गया है। मिशन का जोर सभी स्तरों पर अंतर-क्षेत्रीय अभिसरण के साथ एक पूरी तरह कार्यात्मक, समुदाय-स्वामित्व वाली, विकेन्द्रीकृत स्वास्थ्य वितरण प्रणाली स्थापित करने पर है, ताकि पानी, स्वच्छता, शिक्षा, पोषण जैसे स्वास्थ्य के निर्धारकों की एक विस्तृत श्रृंखला पर एक साथ कार्रवाई सुनिश्चित की जा सके। , सामाजिक और लैंगिक समानता। खंडित स्वास्थ्य क्षेत्र के भीतर संस्थागत एकीकरण से सभी स्वास्थ्य सुविधाओं के लिए भारतीय सार्वजनिक स्वास्थ्य मानकों के अनुरूप परिणामों पर ध्यान केंद्रित करने की उम्मीद की गई थी।',
      title: 'NATIONAL RURAL HEALTH MISSION',
      document: '',
      id: 1,
      description:
          'NRHM seeks to provide equitable, affordable, and quality health care to the rural population, especially the vulnerable groups. Under the NRHM, the Empowered Action Group (EAG) States, as well as the North Eastern States, Jammu and Kashmir and Himachal Pradesh, have been given special focus. The thrust of the mission is on establishing a fully functional, community-owned, decentralized health delivery system with inter-sectoral convergence at all levels, to ensure simultaneous action on a wide range of determinants of health such as water, sanitation, education, nutrition, social and gender equality. Institutional integration within the fragmented health sector was expected to provide a focus on outcomes, measured against Indian Public Health Standards for all health facilities.',
      link: 'link : https://nhm.gov.in/',
      titleG: 'ગ્રામીણ આરોગ્ય મિશન',
      documentG: '',
      descriptionG:
          'NRHM ગ્રામીણ વસ્તી, ખાસ કરીને સંવેદનશીલ જૂથોને સમાન, સસ્તું અને ગુણવત્તાયુક્ત આરોગ્ય સંભાળ પૂરી પાડવા માંગે છે. NRHM હેઠળ, એમ્પાવર્ડ એક્શન ગ્રુપ (EAG) રાજ્યો તેમજ પૂર્વોત્તર રાજ્યો, જમ્મુ અને કાશ્મીર અને હિમાચલ પ્રદેશ પર વિશેષ ધ્યાન આપવામાં આવ્યું છે. પાણી, સ્વચ્છતા, શિક્ષણ, પોષણ જેવા આરોગ્યના નિર્ણાયકોની વિશાળ શ્રેણી પર એકસાથે કાર્યવાહી સુનિશ્ચિત કરવા માટે, તમામ સ્તરે આંતર-ક્ષેત્રીય સંકલન સાથે સંપૂર્ણ કાર્યકારી, સમુદાય-માલિકીની, વિકેન્દ્રિત આરોગ્ય વિતરણ પ્રણાલીની સ્થાપના પર મિશનનો ભાર છે. , સામાજિક અને લિંગ સમાનતા. ખંડિત આરોગ્ય ક્ષેત્રની અંદર સંસ્થાકીય એકીકરણ તમામ આરોગ્ય સુવિધાઓ માટે ભારતીય જાહેર આરોગ્ય ધોરણો સામે માપવામાં આવતા પરિણામો પર ધ્યાન કેન્દ્રિત કરે તેવી અપેક્ષા હતી.'),
  //******************************

  SchemeModal(
      eligibility:
          '1.Pregnant women under the below poverty line (BPL) category, whether rural or urban.\n2.Only those pregnant women who are above 19 years of age can avail the benefits provided under the scheme.\n3. Women below 19 years of age cannot register under the Janani Suraksha Yojana.\n4.Women with only up to two live births are eligible under the scheme.\n5.Only those pregnant women who have registered under the JSY scheme and have delivered in government hospitals or the selected private medical centers are eligible under the scheme.',
      eligibilityH:
          '1.गरीबी रेखा से नीचे (बीपीएल) श्रेणी के तहत गर्भवती महिलाएं, चाहे ग्रामीण हों या शहरी।\n2.केवल वे गर्भवती महिलाएं जो 19 वर्ष से अधिक उम्र की हैं, वे योजना के तहत दिए गए लाभों का लाभ उठा सकती हैं।\n3. 19 वर्ष से कम उम्र की महिलाएं जननी सुरक्षा योजना के तहत पंजीकरण नहीं करा सकती हैं।\n4.केवल दो जीवित जन्म वाली महिलाएं ही इस योजना के तहत पात्र हैं।\n5.केवल वे गर्भवती महिलाएं जिन्होंने जेएसवाई योजना के तहत पंजीकरण कराया है और सरकार में प्रसव कराया है अस्पताल या चयनित निजी चिकित्सा केंद्र योजना के तहत पात्र हैं।',
      eligibilityG:
          '1.ગરીબી રેખા નીચેની (BPL) કેટેગરી હેઠળની સગર્ભા સ્ત્રીઓ, પછી ભલે તે ગ્રામીણ હોય કે શહેરી.\n2.ફક્ત તે સગર્ભા સ્ત્રીઓ કે જેઓ 19 વર્ષથી વધુ ઉંમરની હોય તેઓ જ યોજના હેઠળ આપવામાં આવતા લાભો મેળવી શકે છે.\n3. 19 વર્ષથી ઓછી ઉંમરની મહિલાઓ જનની સુરક્ષા યોજના હેઠળ નોંધણી કરાવી શકતી નથી.\n4.માત્ર બે જીવંત જન્મ ધરાવતી મહિલાઓ યોજના હેઠળ પાત્ર છે.\n5.ફક્ત તે સગર્ભા સ્ત્રીઓ કે જેમણે JSY યોજના હેઠળ નોંધણી કરાવી છે અને સરકારમાં પ્રસૂતિ કરાવી છે. હોસ્પિટલો અથવા પસંદ કરેલ ખાનગી તબીબી કેન્દ્રો યોજના હેઠળ પાત્ર છે.',
      titleH: 'जननी सुरक्षा योजना (JSY)',
      documentH:
          '1. आधार कार्ड\n2. पते का प्रमाण\n3. जेएसवाई कार्ड\n4. डिलिवरी प्रमाणपत्र\n5. बीपीएल राशन कार्ड\n6. बैंक विवरण\n7. मोबाइल नंबर\n8. पासपोर्ट साइज फोटो',
      descriptionH:
          'जननी सुरक्षा योजना (जेएसवाई) भारत सरकार द्वारा प्रायोजित योजना है जिसे गर्भवती महिलाओं के बीच संस्थागत प्रसव को बढ़ावा देकर मातृ एवं शिशु मृत्यु दर को कम करने के उद्देश्य से लागू किया जा रहा है। जेएसवाई के तहत, पात्र गर्भवती महिलाएं सरकारी या मान्यता प्राप्त निजी स्वास्थ्य सुविधा में जन्म देने के लिए मां की उम्र और बच्चों की संख्या की परवाह किए बिना नकद सहायता की हकदार हैं। चूंकि मां को नकद सहायता मुख्य रूप से प्रसव की लागत को पूरा करने के लिए है, यह संस्थान में ही प्रभावी ढंग से भुगतान किया जाना चाहिए। प्रसव के लिए सार्वजनिक स्वास्थ्य संस्थान में जाने वाली गर्भवती महिलाओं को पूरी नकद पात्रता स्वास्थ्य संस्थान में एक ही बार में वितरित की जानी चाहिए। यह ध्यान में रखते हुए कि कुछ महिलाएं प्रसवपूर्व देखभाल के लिए मान्यता प्राप्त निजी संस्थानों का उपयोग करेंगी, उन्हें टीटी इंजेक्शन सहित कम से कम 3 एएनसी प्राप्त करने के लिए कुछ वित्तीय सहायता की आवश्यकता होगी। ऐसे मामलों में, जेएसवाई के तहत नकद सहायता का कम से कम तीन-चौथाई (3/4) लाभार्थी को एक बार में भुगतान किया जाना चाहिए।',
      title: 'Janani Suraksha Yojana (JSY)',
      document:
          '1. Aadhaar card\n2. Address proof\n3. JSY card\n4. Delivery certificate\n5. BPL Ration Card\n6. Bank details\n7. Mobile number\n8. Passport-size photo',
      id: 2,
      description:
          'The Janani Suraksha Yojana (JSY) is a Govt of India sponsored Scheme which is being implemented with the objective of reducing maternal and infant mortality by promoting institutional delivery among pregnant women. Under the JSY, eligible pregnant women are entitled to cash assistance irrespective of the mother age and number of children for giving birth in a government or accredited private health facility.As the cash assistance to the mother is mainly to meet the cost of delivery, it should be disbursed effectively at the institution itself.For pregnant women going to a public health institution for delivery, the entire cash entitlement should be disbursed to them at the health institution in one go. Considering that some women would access accrediting private institutions for antenatal care, they would require some financial support to get at least 3 ANCs including the TT injections. In such cases, at least three-fourths (3/4) of the cash assistance under JSY should be paid to the beneficiary in one go.',
      link: 'link : https://www.myscheme.gov.in/schemes/jsy',
      titleG: 'જનની સુરક્ષા યોજના',
      documentG:
          '1. આધાર કાર્ડ\n2. સરનામાનો પુરાવો\n3. જેએસવાય કાર્ડ\n4. ડિલિવરી પ્રમાણપત્ર\n5. BPL રેશન કાર્ડ\n6. બેંકની વિગત\n7. મોબાઇલ નંબર\n8. પાસપોર્ટ સાઇઝનો ફોટો',
      descriptionG:
          'જનની સુરક્ષા યોજના (JSY) એ ભારત સરકાર પ્રાયોજિત યોજના છે જે સગર્ભા સ્ત્રીઓમાં સંસ્થાકીય પ્રસૂતિને પ્રોત્સાહન આપીને માતા અને બાળ મૃત્યુદર ઘટાડવાના ઉદ્દેશ્ય સાથે અમલમાં છે. JSY હેઠળ, લાયક સગર્ભા સ્ત્રીઓ સરકારી અથવા માન્યતાપ્રાપ્ત ખાનગી આરોગ્ય સુવિધામાં જન્મ આપવા માટે માતાની ઉંમર અને બાળકોની સંખ્યાને ધ્યાનમાં લીધા વિના રોકડ સહાય માટે હકદાર છે. કારણ કે માતાને રોકડ સહાય મુખ્યત્વે ડિલિવરીના ખર્ચને પહોંચી વળવા માટે છે, તે સંસ્થામાં જ અસરકારક રીતે વિતરણ કરવું જોઈએ.પ્રસૂતિ માટે જાહેર આરોગ્ય સંસ્થામાં જતી સગર્ભા સ્ત્રીઓ માટે, સમગ્ર રોકડ હકદારી તેમને આરોગ્ય સંસ્થામાં એક જ વારમાં વિતરિત કરવી જોઈએ. કેટલીક સ્ત્રીઓ પ્રસૂતિ પહેલાની સંભાળ માટે માન્યતા પ્રાપ્ત ખાનગી સંસ્થાઓને ઍક્સેસ કરશે તે ધ્યાનમાં લેતા, તેમને TT ઇન્જેક્શન સહિત ઓછામાં ઓછા 3 ANC મેળવવા માટે થોડી નાણાકીય સહાયની જરૂર પડશે. આવા કિસ્સાઓમાં, JSY હેઠળ રોકડ સહાયનો ઓછામાં ઓછો ત્રણ-ચતુર્થાંશ (3/4) લાભાર્થીને એક જ વારમાં ચૂકવવો જોઈએ.'),
  //******************************
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'आयुष्मान भारत-प्रधानमंत्री जन आरोग्य योजना',
      documentH:
          '1. आयु और पहचान प्रमाण (आधार कार्ड / पैन कार्ड)\n2. पते का प्रमाण\n3. संपर्क विवरण (मोबाइल, ई-मेल)\n4. जाति प्रमाण पत्र\n5. आय प्रमाण पत्र\n6. परिवार की वर्तमान स्थिति का दस्तावेज़ प्रमाण (संयुक्त या एकल)\n7. आधार कार्ड',
      descriptionH:
          'आयुष्मान भारत, भारत सरकार की एक प्रमुख योजना, यूनिवर्सल हेल्थ कवरेज (यूएचसी) के दृष्टिकोण को प्राप्त करने के लिए राष्ट्रीय स्वास्थ्य नीति 2017 की सिफारिश के अनुसार शुरू की गई थी। इस पहल को सतत विकास लक्ष्यों (एसडीजी) और इसकी रेखांकित प्रतिबद्धता को पूरा करने के लिए डिज़ाइन किया गया है, जो "किसी को भी पीछे नहीं छोड़ना है।" आयुष्मान भारत स्वास्थ्य सेवा वितरण के लिए एक क्षेत्रीय और खंडित दृष्टिकोण से एक व्यापक आवश्यकता की ओर बढ़ने का एक प्रयास है- आधारित स्वास्थ्य देखभाल सेवा। इस योजना का उद्देश्य प्राथमिक, माध्यमिक और तृतीयक स्तरों पर स्वास्थ्य देखभाल प्रणाली (रोकथाम, प्रचार और चल देखभाल को कवर करना) को समग्र रूप से संबोधित करने के लिए पथ-प्रदर्शक हस्तक्षेप करना है। ',
      title: 'Ayushman Bharat - Pradhan Mantri Jan Arogya Yojana',
      document:
          '1. Age & Identity Proof (Aadhaar Card / PAN Card)\n2. Proof of Address\n3. Contact details (Mobile, e-mail)\n4. Caste Certificate\n5. Income Certificate\n6. Document Proof of the Current Status of the Family (Joint or Nuclear)\n7. Aadhaar Card',
      id: 3,
      description:
          'Ayushman Bharat, a flagship scheme of the Government of India, was launched as recommended by the National Health Policy 2017, to achieve the vision of Universal Health Coverage (UHC). This initiative has been designed to meet Sustainable Development Goals (SDGs) and its underlining commitment, which is to "leave no one behind."Ayushman Bharat is an attempt to move from a sectoral and segmented approach to health service delivery to a comprehensive need-based health care service. This scheme aims to undertake path-breaking interventions to holistically address the healthcare system (covering prevention, promotion, and ambulatory care) at the primary, secondary, and tertiary levels. ',
      link: 'link : https://www.myscheme.gov.in/schemes/ab-pmjay',
      titleG: 'આયુષ્માન ભારત',
      documentG:
          '1. ઉંમર અને ઓળખનો પુરાવો (આધાર કાર્ડ/પાન કાર્ડ)\n2.સરનામાનો પુરાવો\n3.સંપર્ક વિગતો (મોબાઇલ, ઈ-મેલ)\n4.જાતિનું પ્રમાણપત્ર\n5.આવકનું પ્રમાણપત્ર\n6. પરિવારની વર્તમાન સ્થિતિનો દસ્તાવેજ પુરાવો (સંયુક્ત અથવા પરમાણુ)\n7. આધાર કાર્ડ',
      descriptionG:
          'યુનિવર્સલ હેલ્થ કવરેજ (UHC) ના વિઝનને હાંસલ કરવા માટે, આયુષ્માન ભારત, ભારત સરકારની મુખ્ય યોજના, રાષ્ટ્રીય આરોગ્ય નીતિ 2017 દ્વારા ભલામણ કરવામાં આવી હતી. આ પહેલ સસ્ટેનેબલ ડેવલપમેન્ટ ગોલ્સ (SDGs) અને તેની રેખાંકિત પ્રતિબદ્ધતાને પહોંચી વળવા માટે ડિઝાઇન કરવામાં આવી છે, જે "કોઈને પાછળ ન છોડે." આયુષ્માન ભારત એ આરોગ્ય સેવા વિતરણ માટે ક્ષેત્રીય અને વિભાજિત અભિગમથી વ્યાપક જરૂરિયાત તરફ આગળ વધવાનો પ્રયાસ છે- આધારિત આરોગ્ય સંભાળ સેવા. આ યોજના પ્રાથમિક, ગૌણ અને તૃતીય સ્તરે આરોગ્યસંભાળ પ્રણાલી (નિવારણ, પ્રમોશન અને એમ્બ્યુલેટરી સંભાળને આવરી લેતી) ને સર્વગ્રાહી રીતે સંબોધવા માટે પાથ-બ્રેકિંગ હસ્તક્ષેપો હાથ ધરવાનો હેતુ ધરાવે છે.'),
  //******************************
];

List<SchemeModal> idata = [
  //******************************

  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'प्रधानमंत्री आवास योजना',
      documentH:
          '1. आधार संख्या (या आधार/आधार नामांकन आईडी)\n2. आय के प्रमाण के रूप में स्व-प्रमाण पत्र / शपथ पत्र\n3. पहचान और आवासीय प्रमाण (पैन कार्ड, वोटर आईडी, ड्राइविंग लाइसेंस)\n4. अल्पसंख्यक समुदाय का प्रमाण (यदि आवेदक अल्पसंख्यक समुदाय से है)\n5. राष्ट्रीयता का प्रमाण\n6. ईडब्ल्यूएस प्रमाणपत्र / एलआईजी प्रमाणपत्र / एमआईजी प्रमाणपत्र (जैसा लागू हो)\n7. वेतन पर्ची\n8. आईटी रिटर्न विवरण\n9. संपत्ति मूल्यांकन प्रमाणपत्र\n10. बैंक विवरण और खाता विवरण\n11. शपथ पत्र/प्रमाण कि आवेदक के पास  घर नहीं है\n12. शपथ पत्र / प्रमाण कि आवेदक योजना के तहत घर का निर्माण कर रहा है',
      descriptionH:
          'शहरी आवास की कमी को संबोधित करने के लिए MoHUA द्वारा कार्यान्वित एक प्रमुख मिशन। 2022 तक सभी पात्र शहरी परिवारों को पक्का मकान सुनिश्चित करके लाभार्थियों में झुग्गीवासियों सहित आर्थिक रूप से कमजोर वर्ग (ईडब्ल्यूएस) / निम्न आय समूह (एलआईजी) और मध्यम आय समूह (एमआईजी) श्रेणियां शामिल हैं। योजना के लिए आधार/आधार वर्चुअल आईडी होनी चाहिए। मिशन, जनगणना 2011 के अनुसार, पूरे शहरी क्षेत्र को कवर करता है जिसमें वैधानिक शहर, अधिसूचित योजना क्षेत्र, विकास प्राधिकरण, विशेष क्षेत्र विकास प्राधिकरण, औद्योगिक विकास प्राधिकरण या राज्य कानून के तहत कोई भी ऐसा प्राधिकरण शामिल है जिसे शहरी नियोजन के कार्य सौंपे गए हैं। विनियम.',
      title: 'Pradhan Mantri Awas Yojana',
      document:
          '1. Aadhaar Number (or Aadhaar/ Aadhaar Enrolment ID)\n2. Self-Certificate / Affidavit as Proof of Income\n3. Identity and Residential Proof (PAN card, Voter ID, Driving License)\n4. Proof of Minority Community (if the applicant belongs to a Minority Community)\n5. Proof of Nationality\n6. EWS Certificate / LIG Certificate / MIG Certificate (as applicable)\n7. Salary Slips\n8. IT Return Statements\n9. Property Valuation Certificate\n10. Bank Details and Account Statement\n11. Affidavit / Proof that the applicant does not own a ‘pucca’ house\n12. Affidavit / Proof that the applicant is constructing a home under the scheme',
      id: 1,
      description:
          'A flagship mission implemented by MoHUA, addressing urban housing shortage. The beneficiaries include Economically Weaker Section (EWS) / Low Income Group (LIG) and Middle Income Group (MIG) categories, including slum dwellers, by ensuring a pucca house to all eligible urban households by 2022. All eligible beneficiaries under all components of the scheme should have an Aadhaar/ Aadhaar Virtual ID. The Mission, as per Census 2011, covers the entire urban area consisting of Statutory Towns, Notified Planning Areas, Development Authorities, Special Area Development Authorities, Industrial Development Authorities or any such authority under State legislation which is entrusted with the functions of urban planning & regulations.',
      link: 'link : https://www.myscheme.gov.in/schemes/pmay-u',
      titleG: 'પ્રધાનમંત્રી આવાસ યોજના',
      documentG:
          '1. આધાર નંબર (અથવા આધાર/આધાર નોંધણી ID)\n2. આવકના પુરાવા તરીકે સ્વ-પ્રમાણપત્ર / એફિડેવિટ\n3. ઓળખ અને રહેઠાણનો પુરાવો (PAN કાર્ડ, મતદાર ID, ડ્રાઇવિંગ લાઇસન્સ)\n4. લઘુમતી સમુદાયનો પુરાવો (જો અરજદાર લઘુમતી સમુદાયનો હોય)\n5. રાષ્ટ્રીયતાનો પુરાવો\n6. EWS પ્રમાણપત્ર / LIG પ્રમાણપત્ર / MIG પ્રમાણપત્ર (લાગુ હોય તેમ)\n7. પગાર સ્લિપ\n8. આઇટી રીટર્ન સ્ટેટમેન્ટ\n9. મિલકત મૂલ્યાંકન પ્રમાણપત્ર\n10. બેંક વિગતો અને એકાઉન્ટ સ્ટેટમેન્ટ\n11. એફિડેવિટ / પુરાવો કે અરજદાર પાક્કું મકાન ધરાવતું નથી\n12. એફિડેવિટ / પુરાવો કે અરજદાર યોજના હેઠળ ઘર બાંધી રહ્યો છે',
      descriptionG:
          'શહેરી આવાસની અછતને સંબોધતા, MoHUA દ્વારા અમલમાં મૂકાયેલ મુખ્ય મિશન. લાભાર્થીઓમાં આર્થિક રીતે નબળા વિભાગ (EWS) / ઓછી આવક જૂથ (LIG) અને મધ્યમ આવક જૂથ (MIG) કેટેગરીનો સમાવેશ થાય છે, જેમાં ઝૂંપડપટ્ટીના રહેવાસીઓ સહિત, 2022 સુધીમાં તમામ પાત્ર શહેરી પરિવારોને પાકું મકાન સુનિશ્ચિત કરીને. તમામ લાયકાત ધરાવતા લાભાર્થીઓ સ્કીમમાં આધાર/આધાર વર્ચ્યુઅલ આઈડી હોવો જોઈએ. મિશન, 2011ની વસ્તી ગણતરી મુજબ, સમગ્ર શહેરી વિસ્તારને આવરી લે છે જેમાં વૈધાનિક નગરો, સૂચિત આયોજન વિસ્તારો, વિકાસ સત્તામંડળો, વિશેષ વિસ્તાર વિકાસ સત્તામંડળો, ઔદ્યોગિક વિકાસ સત્તામંડળો અથવા રાજ્યના કાયદા હેઠળ એવી કોઈપણ સત્તા છે કે જેને શહેરી આયોજન અને કાર્યોની જવાબદારી સોંપવામાં આવી છે.'),
  //******************************

  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'स्वच्छ भारत मिशन (एसबीएम)',
      documentH: '1. आधार नंबर\n2. बैंक खाता विवरण* - पासबुक\n3. फ़ोटो*',
      descriptionH:
          'सार्वभौमिक स्वच्छता कवरेज प्राप्त करने के प्रयासों में तेजी लाने और स्वच्छता पर ध्यान केंद्रित करने के लिए, भारत के प्रधान मंत्री ने 2 अक्टूबर 2014 को स्वच्छ भारत मिशन शुरू किया था। मिशन के तहत, सभी गांवों, ग्राम पंचायतों, जिलों, राज्यों और केंद्र शासित प्रदेशों भारत ने 2 अक्टूबर 2019, महात्मा गांधी की 150वीं जयंती तक, ग्रामीण भारत में 100 मिलियन से अधिक शौचालयों का निर्माण करके खुद को "खुले में शौच मुक्त" (ओडीएफ) घोषित कर दिया। यह सुनिश्चित करने के लिए कि खुले में शौच मुक्त व्यवहार कायम रहे, कोई भी पीछे न रहे, और ठोस और तरल अपशिष्ट प्रबंधन सुविधाएं सुलभ हों, मिशन एसबीएमजी के अगले चरण II यानी ओडीएफ-प्लस की ओर बढ़ रहा है। स्वच्छ भारत मिशन (ग्रामीण) के दूसरे चरण के तहत ओडीएफ प्लस गतिविधियां ओडीएफ व्यवहार को सुदृढ़ करेंगी और गांवों में ठोस और तरल कचरे के सुरक्षित प्रबंधन के लिए हस्तक्षेप प्रदान करने पर ध्यान केंद्रित करेंगी।',
      title: 'Swachh Bharat Mission (SBM)',
      document:
          '1. Aadhar Number\n2. Bank Account Detail* - Passbook\n3. Photograph*',
      id: 2,
      description:
          'To accelerate the efforts to achieve universal sanitation coverage and to put the focus on sanitation, the Prime Minister of India had launched the Swachh Bharat Mission on 2nd October 2014. Under the mission, all villages, Gram Panchayats, Districts, States and Union Territories in India declared themselves "open-defecation free" (ODF) by 2 October 2019, the 150th birth anniversary of Mahatma Gandhi, by constructing over 100 million toilets in rural India. To ensure that the open defecation free behaviours are sustained, no one is left behind, and that solid and liquid waste management facilities are accessible, the Mission is moving towards the next Phase II of SBMG i.e ODF-Plus. ODF Plus activities under Phase II of Swachh Bharat Mission (Grameen) will reinforce ODF behaviours and focus on providing interventions for the safe management of solid and liquid waste in villages.',
      link: 'link : https://www.myscheme.gov.in/schemes/sbm-g-i',
      titleG: 'સ્વચ્છ ભારત મિશન',
      documentG: '1. આધાર નંબર\n2. બેંક ખાતાની વિગતો* - પાસબુક\n3. ફોટોગ્રાફ*',
      descriptionG:
          'સાર્વત્રિક સ્વચ્છતા કવરેજ હાંસલ કરવાના પ્રયાસોને વેગ આપવા અને સ્વચ્છતા પર ધ્યાન કેન્દ્રિત કરવા માટે, ભારતના વડાપ્રધાને 2જી ઓક્ટોબર 2014ના રોજ સ્વચ્છ ભારત મિશનની શરૂઆત કરી હતી. મિશન હેઠળ, તમામ ગામો, ગ્રામ પંચાયતો, જિલ્લાઓ, રાજ્યો અને કેન્દ્રશાસિત પ્રદેશોમાં ભારતે ગ્રામીણ ભારતમાં 100 મિલિયનથી વધુ શૌચાલયોનું નિર્માણ કરીને 2 ઓક્ટોબર 2019 સુધીમાં, મહાત્મા ગાંધીની 150મી જન્મજયંતિ સુધીમાં પોતાને "ખુલ્લામાં શૌચ મુક્ત" (ODF) જાહેર કર્યું. ખુલ્લામાં શૌચ મુક્ત વર્તણૂકો ટકી રહે તે સુનિશ્ચિત કરવા માટે, કોઈ પણ પાછળ ન રહે અને ઘન અને પ્રવાહી કચરા વ્યવસ્થાપન સુવિધાઓ સુલભ હોય, મિશન SBMG એટલે કે ODF-પ્લસના બીજા તબક્કા તરફ આગળ વધી રહ્યું છે. સ્વચ્છ ભારત મિશન (ગ્રામીણ) ના બીજા તબક્કા હેઠળની ODF પ્લસ પ્રવૃત્તિઓ ODF વર્તણૂકોને મજબૂત બનાવશે અને ગામડાઓમાં ઘન અને પ્રવાહી કચરાના સુરક્ષિત સંચાલન માટે હસ્તક્ષેપ પૂરા પાડવા પર ધ્યાન કેન્દ્રિત કરશે.'),
];
//***************************************************************************************************************************
List<SchemeModal> sdata = [
  SchemeModal(
      eligibility:
          '1.The applicant must be a farmer residing in Gujarat state.\n2.The applicant must have availed of a loan for agricultural purposes from a cooperative institution or a bank.\n3. The applicant must have suffered crop loss due to natural calamities such as drought, flood, or earthquake.The applicant must possess the land for agricultural purposes in his/her name or have the right to cultivate such land.\n4.The land should be surveyed by the Revenue Department of Gujarat and should have a record of rights.]\n5.The crop loss should be certified by the Revenue Department of Gujarat.\n6.The applicant should have insured the crop under the Pradhan Mantri Fasal Bima Yojana or any other crop insurance scheme recognized by the Government of Gujarat.',
      eligibilityH:
          '1.आवेदक को गुजरात राज्य का रहने वाला किसान होना चाहिए।\n2.आवेदक ने किसी सहकारी संस्था या बैंक से कृषि उद्देश्यों के लिए ऋण लिया हो।\n3. आवेदक को सूखे, बाढ़ या भूकंप जैसी प्राकृतिक आपदाओं के कारण फसल का नुकसान हुआ होगा। आवेदक के पास अपने नाम पर कृषि उद्देश्यों के लिए भूमि होनी चाहिए या ऐसी भूमि पर खेती करने का अधिकार होना चाहिए।\n4.भूमि होनी चाहिए गुजरात के राजस्व विभाग द्वारा सर्वेक्षण किया जाना चाहिए और अधिकारों का रिकॉर्ड होना चाहिए।]\n5.फसल के नुकसान को गुजरात के राजस्व विभाग द्वारा प्रमाणित किया जाना चाहिए।\n6.आवेदक को प्रधानमंत्री फसल बीमा योजना के तहत फसल का बीमा कराना चाहिए या गुजरात सरकार द्वारा मान्यता प्राप्त कोई अन्य फसल बीमा योजना।',
      eligibilityG:
          '1. અરજદાર ગુજરાત રાજ્યમાં રહેતો ખેડૂત હોવો જોઈએ.\n2. અરજદારે સહકારી સંસ્થા અથવા બેંક પાસેથી કૃષિ હેતુ માટે લોન લીધી હોવી જોઈએ.\n3. અરજદારે દુષ્કાળ, પૂર અથવા ભૂકંપ જેવી કુદરતી આફતોને લીધે પાકને નુકસાન સહન કરવું પડ્યું હોવું જોઈએ. અરજદાર પાસે તેના નામે ખેતીના હેતુ માટે જમીન હોવી જોઈએ અથવા તેને એવી જમીન ખેડવાનો અધિકાર હોવો જોઈએ.\n4. જમીન હોવી જોઈએ ગુજરાતના મહેસૂલ વિભાગ દ્વારા સર્વેક્ષણ કરવામાં આવ્યું છે અને તેની પાસે અધિકારોનો રેકોર્ડ હોવો જોઈએ.]\n5. પાકનું નુકસાન ગુજરાતના મહેસૂલ વિભાગ દ્વારા પ્રમાણિત હોવું જોઈએ.\n6. અરજદારે પ્રધાનમંત્રી ફસલ બીમા યોજના હેઠળ પાકનો વીમો લેવો જોઈએ અથવા ગુજરાત સરકાર દ્વારા માન્ય કોઈપણ અન્ય પાક વીમા યોજના.',
      titleH: 'मुख्यमंत्री किसान सहाय योजना',
      documentH:
          '1. गुजरात का निवास प्रमाण\n2. आधार कार्ड\n3. जाति प्रमाण पत्र\n4. आय प्रमाण पत्र\n5. भूमि रिकॉर्ड की प्रति\n6. बैंक के खाते का विवरण',
      descriptionH:
          'मुख्यमंत्री किसान सहाय योजना गुजरात सरकार के राजस्व विभाग द्वारा कृषि और सहकारिता विभाग के सहयोग से कार्यान्वित की जाती है। राजस्व विभाग फसल क्षति के सत्यापन और पात्र किसानों को मुआवजे के वितरण सहित योजना के कार्यान्वयन के लिए जिम्मेदार है। कृषि और सहकारिता विभाग योजना के कार्यान्वयन के लिए तकनीकी सहायता और समर्थन प्रदान करता है ताकि यह सुनिश्चित किया जा सके कि किसानों को प्राकृतिक आपदाओं के कारण फसल क्षति के मामले में समय पर और पर्याप्त राहत मिले।',
      title: 'Mukhya Mantri Kisan Sahay Yojana',
      document:
          '1. Residence Proof of Gujarat\n2. Aadhar Card\n3. Caste Certificate\n4. Income Certificate\n5. Copy of Land Records\n6. Bank Account Details',
      id: 1,
      description:
          'Mukhya Mantri Kisan Sahay Yojana is implemented by the Revenue Department of the Government of Gujarat in collaboration with the Agriculture and Co-operation Department. The Revenue Department is responsible for the implementation of the scheme, including the verification of crop damage and the disbursal of compensation to eligible farmers. The Agriculture and Co-operation Department provides technical assistance and support for the implementation of the scheme to ensure that farmers receive timely and adequate relief in case of crop damage due to natural calamities.',
      link: 'https://agri.gujarat.gov.in/MMKSY.htm',
      titleG: 'મુખ્ય મંત્રી કિસાન સહાય યોજના',
      documentG:
          '1. ગુજરાતનો રહેઠાણનો પુરાવો\n2. આધાર કાર્ડ\n3. જાતિ પ્રમાણપત્ર\n4. આવકનું પ્રમાણપત્ર\n5. જમીનના રેકોર્ડની નકલ\n6. બેંક ખાતાની વિગતો',
      descriptionG:
          'મુખ્ય મંત્રી કિસાન સહાય યોજના ગુજરાત સરકારના મહેસૂલ વિભાગ દ્વારા કૃષિ અને સહકાર વિભાગના સહયોગથી લાગુ કરવામાં આવે છે. આ યોજનાના અમલીકરણ માટે મહેસૂલ વિભાગ જવાબદાર છે, જેમાં પાકના નુકસાનની ચકાસણી અને પાત્ર ખેડૂતોને વળતરની ચુકવણીનો સમાવેશ થાય છે. કૃષિ અને સહકાર વિભાગ કુદરતી આફતોના કારણે પાકને થતા નુકસાનના કિસ્સામાં ખેડૂતોને સમયસર અને પર્યાપ્ત રાહત મળે તે સુનિશ્ચિત કરવા યોજનાના અમલીકરણ માટે તકનીકી સહાય અને સમર્થન પૂરું પાડે છે.'),
  SchemeModal(
      eligibility:
          '1. All farmers and Female farmers of the state.\n2. The scheme is available to all farmers in the state of Gujarat.\n3. There are no restrictions based on caste, religion, or gender.\n4. Farmers who are interested in learning about the latest agricultural practices and improving their crop yields are encouraged to participate.',
      eligibilityH:
          '1. राज्य के सभी किसान एवं महिला किसान.\n2. यह योजना गुजरात राज्य के सभी किसानों के लिए उपलब्ध है।\n3. जाति, धर्म या लिंग के आधार पर कोई प्रतिबंध नहीं है।\n4. जो किसान नवीनतम कृषि पद्धतियों के बारे में सीखने और अपनी फसल की पैदावार में सुधार करने में रुचि रखते हैं, उन्हें भाग लेने के लिए प्रोत्साहित किया जाता है।',
      eligibilityG:
          '1. રાજ્યના તમામ ખેડૂતો અને મહિલા ખેડૂતો.\n2. આ યોજના ગુજરાત રાજ્યના તમામ ખેડૂતો માટે ઉપલબ્ધ છે.\n3. જાતિ, ધર્મ અથવા લિંગના આધારે કોઈ પ્રતિબંધો નથી.\n4. ખેડૂતો કે જેઓ નવીનતમ કૃષિ પદ્ધતિઓ વિશે શીખવા અને તેમની પાકની ઉપજ સુધારવામાં રસ ધરાવતા હોય તેમને ભાગ લેવા માટે પ્રોત્સાહિત કરવામાં આવે છે.',
      titleH: 'कृषि महोत्सव',
      documentH:
          '1. पते का प्रमाण जैसे मतदाता पहचान पत्र, पासपोर्ट, आधार कार्ड, ड्राइविंग लाइसेंस, बिजली बिल\n2. या हालिया संपत्ति कर बिल',
      descriptionH:
          'राज्य में दूसरी हरित क्रांति की ओर बढ़ते हुए और पांच वर्षों में किसानों की आय को दोगुना करने के उद्देश्य से राज्य सरकार द्वारा कृषि में एक अभिनव दृष्टिकोण के रूप में राज्य में कृषि महोत्सव -2005 की शुरुआत की गई। कृषि महोत्सव-2005 में कई अच्छे परिणाम प्राप्त हुए, प्रत्येक वर्ष प्रारंभ होने वाले एक माह की लंबी अवधि के लिए कृषि महोत्सव आयोजित किये जाने के बाद कृषि महोत्सव के दौरान "कृषि रथ" नामक एक मोबाइल प्रदर्शनी के माध्यम से ग्रामीण स्तर तक संपर्क स्थापित किया गया है। किसानों की कृषि संबंधी समस्याओं को दूर करने के लिए "कृषि रथ" के साथ विशेषज्ञों ने हर गांव का दौरा किया और प्रौद्योगिकी का हस्तांतरण किया। व्यक्तिगत किसानों को सलाह और सहायता देने के साथ-साथ साधनहीन किसानों को मुफ्त इनपुट किट का वितरण भी किया गया है। जल संरक्षण जैसे समुदाय आधारित कार्यक्रम भी शामिल किये गये। इस प्रकार गैर-सरकारी संगठनों, प्रगतिशील किसानों और सहकारी समितियों और निजी संस्थानों की भी सक्रिय भागीदारी बनाई गई। कृषि महोत्सव-2012 और 2013 जिला पंचायत सीट के अनुसार (क्लस्टर आधार) आयोजित किया गया था। कृषि रथ के माध्यम से कृषि विभाग के अधिकारियों एवं वैज्ञानिकों द्वारा जिला पंचायत क्षेत्र के निर्धारित ग्रामों में भ्रमण किया गया। तालुका पंचायत सीट के निर्धारित गांव में पूरे दिन का कार्यक्रम आयोजित किया गया। उन गाँवों के किसानों को पशु टीकाकरण, कृत्रिम गर्भाधान जैसे विभिन्न कार्यक्रमों में मार्गदर्शन के साथ-साथ कृषि और उससे संबंधित क्षेत्र का ज्ञान भी प्रदान किया गया।',
      title: 'Krishi Mahotsav',
      document:
          '1. Address proof such as a voter ID card, passport,Aadhaar card,driving license,electricity bill\n2. or recent property tax bill',
      id: 2,
      description:
          'Moving to the second green revolution in the state and the purposes of double the income of farmers in five years to introduced Krushi Mahotsav -2005 in the state by the State Government as an innovative approach in agriculture. Many good results obtained in agricultural Festival -2005, after the agricultural festivals are held for a month long period of time to start the every year.During Krishi Mahotsav contact up to village level has been established through a mobile exhibition called "Krishi Rath” that visited every village. Experts accompanying with "Krishi Rath” to cater farming problems transfer of technology to the farmers. Along with advising and assisting individual farmer, distribution of free input kits to resource poor farmers in has been made. Community based programs like water conservation also been included. By this way active involvement of NGOs, progressive farmers and cooperatives and private institution also been made.Krushi Mahotsav-2012 & 2013 was held according to District panchayat seat wise (Cluster base). The officers and Scientists of Agriculture have visited in decided villages of District panchayat seat by the medium of Krushi Rath. The full day program organized in decided village of taluka panchayat seat. The farmers of those villages guided in different program like Animal vaccination, Artificial insemination as well as provided knowledge of Agriculture and its related field.',
      link: 'https://agri.gujarat.gov.in/krushi-mahotsav.htm',
      titleG: 'કૃષિ મહોત્સવ ',
      documentG:
          '1. આધાર કાર્ડ\n2. સરનામાનો પુરાવો\n3. પાસબુકની નકલ\n4. નોંધણી પત્રક\n5. લાયકાત પ્રમાણપત્ર\n6. પાન કાર્ડ',
      descriptionG:
          'રાજ્યમાં બીજી હરિયાળી ક્રાંતિ તરફ આગળ વધવા અને ખેડૂતોની આવક પાંચ વર્ષમાં બમણી કરવાના હેતુથી રાજ્ય સરકાર દ્વારા કૃષિમાં નવીન અભિગમ તરીકે કૃષિ મહોત્સવ-2005ની શરૂઆત કરવામાં આવી છે. કૃષિ ઉત્સવ-2005 માં ઘણા સારા પરિણામો પ્રાપ્ત થયા છે, કૃષિ ઉત્સવો દર વર્ષે શરૂ કરવા માટે એક મહિનાના લાંબા સમય સુધી યોજાય છે.કૃષિ મહોત્સવ દરમિયાન દરેક ગામની મુલાકાત લેનાર "કૃષિ રથ" નામના મોબાઈલ પ્રદર્શન દ્વારા ગ્રામ્ય સ્તર સુધી સંપર્ક સ્થાપિત કરવામાં આવ્યો છે. ખેડૂતોને ટેકનોલોજી ટ્રાન્સફર કરવા માટે ખેતીની સમસ્યાઓને પહોંચી વળવા "કૃષિ રથ" સાથે નિષ્ણાતો. વ્યક્તિગત ખેડુતોને સલાહ અને મદદ કરવા સાથે, ગરીબ ખેડૂતોને સંસાધન માટે મફત ઇનપુટ કીટનું વિતરણ કરવામાં આવ્યું છે. જળ સંરક્ષણ જેવા સમુદાય આધારિત કાર્યક્રમોનો પણ સમાવેશ કરવામાં આવ્યો છે. આ રીતે એનજીઓ, પ્રગતિશીલ ખેડૂતો અને સહકારી સંસ્થાઓ અને ખાનગી સંસ્થાઓની પણ સક્રિય ભાગીદારી કરવામાં આવી છે.'),
];

List<SchemeModal> sRdata = [
  //******************************
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'मुख्यमंत्री ग्राम सड़क योजना',
      descriptionH:
          'पीएमजीएसवाई - प्रधानमंत्री ग्राम सड़क योजना के सफल समापन के बाद, सरकार। गुजरात सरकार ने राज्य में ग्रामीण सड़क नेटवर्क के बुनियादी ढांचे को मजबूत करने की आवश्यकता पर विचार किया और वर्ष 2016-17 में "मुख्यमंत्री ग्राम सड़क योजना" की योजना बनाई।',
      documentH: '1. राशन कार्ड\n2. वोटर आईडी कार्ड\n3. आधार\n4. पैन कार्ड',
      title: 'Mukhy Mantri Gram Sadak Yojana',
      document: '1. Ration card\n2. Voter ID Card\n3. Aadhaar\n4. PAN card',
      id: 1,
      description:
          'After successful completion of PMGSY – Pradhan Mantri Gram Sadak Yojana, The Govt. of Gujarat envisage the need for strengthening of rural roads network infrastructure in the state and planned for “ Mukhy Mantri Gram Sadak Yojana” in year 2016-17.',
      link:
          'https://indiainvestmentgrid.gov.in/opportunities/nip-project/704686',
      titleG: 'પ્રધાનમંત્રી ગ્રામ સડક યોજના ',
      documentG: '1. રેશન કાર્ડ\n2. મતદાર ઓળખ કાર્ડ\n3. આધાર\n4. પાન કાર્ડ',
      descriptionG:
          'PMGSY-પ્રધાનમંત્રી ગ્રામ સડક યોજના સફળતાપૂર્વક પૂર્ણ થયા પછી, સરકાર. ગુજરાત રાજ્યમાં ગ્રામીણ રોડ નેટવર્ક ઈન્ફ્રાસ્ટ્રક્ચરને મજબૂત કરવાની જરૂરિયાતની કલ્પના કરે છે અને વર્ષ 2016-17માં “મુખ્ય મંત્રી ગ્રામ સડક યોજના” માટે આયોજન કરવામાં આવ્યું છે.'),
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'मुख्यमंत्री आवास योजना (गुजरात हाउसिंग बोर्ड)',
      documentH:
          '1. पते का प्रमाण\n2. आधार कार्ड\n3. एक पासपोर्ट साइज फोटो\n4. जाति प्रमाण पत्र\n5. आय सत्यापन दस्तावेज़',
      descriptionH:
          'गुजरात हाउसिंग बोर्ड ने गुजरात हाउसिंग बोर्ड योजना नामक एक किफायती आवास कार्यक्रम शुरू किया है। यह योजना विशेष रूप से ईडब्ल्यूएस, एलआईजी या एमआईजी सामाजिक समूहों के अंतर्गत आने वाले घरों की तलाश कर रहे लोगों के लिए बनाई गई थी। गुजरात हाउसिंग बोर्ड योजना एक आवास योजना है जिसे शहरी क्षेत्रों में सस्ते आवास की बढ़ती मांग के जवाब में शुरू किया गया था। हम इस लेख में बताएंगे कि योग्य उम्मीदवार किफायती आवास योजना के लिए ऑनलाइन आवेदन कैसे करें। महानगरीय, नगर निगम और विकास प्राधिकरण क्षेत्रों में पहले से मौजूद झुग्गियों को वहां घर बनाकर बसाया जाएगा',
      title: 'Mukhya Mantri Awas Yojana (Gujarat Housing Board)',
      document:
          '1. Proof of address\n2. Aadhar Card\n3. a passport-sized photo\n4. certificate of caste\n5. income verification documents',
      id: 2,
      description:
          'Gujarat Housing Board has launched an affordable housing program called the Gujarat Housing Board Scheme. This scheme was created Particularly for people looking for homes that fall under the EWS, LIG, or MIG social groups. The Gujarat Housing Board scheme is a housing Scheme that was launched in response to the expanding demand for cheap housing in urban regions. We’ll explain how to apply online for the eligible candidate’s affordable housing scheme in this article. Slums that already exist will be in metropolitan, municipal, and development authority regions by building homes there',
      link: 'https://pmayojana.in/gujarat-housing-board-scheme/',
      titleG: 'મુખ્ય મંત્રી આવાસ યોજના (ગુજરાત હાઉસિંગ બોર્ડ)',
      documentG:
          '1. સરનામાનો પુરાવો\n2. આધાર કાર્ડ\n3. પાસપોર્ટ સાઇઝનો ફોટો\n4. જાતિનું પ્રમાણપત્ર\n5. આવક ચકાસણી દસ્તાવેજો',
      descriptionG:
          'ગુજરાત હાઉસિંગ બોર્ડે ગુજરાત હાઉસિંગ બોર્ડ સ્કીમ તરીકે ઓળખાતા સસ્તું હાઉસિંગ પ્રોગ્રામ શરૂ કર્યો છે. આ યોજના ખાસ કરીને EWS, LIG ​​અથવા MIG સામાજિક જૂથો હેઠળ આવતા ઘરો શોધી રહેલા લોકો માટે બનાવવામાં આવી હતી. ગુજરાત હાઉસિંગ બોર્ડ સ્કીમ એ હાઉસિંગ સ્કીમ છે જે શહેરી વિસ્તારોમાં સસ્તા આવાસની વિસ્તરી રહેલી માંગના જવાબમાં શરૂ કરવામાં આવી હતી. અમે આ લેખમાં લાયક ઉમેદવારની સસ્તું આવાસ યોજના માટે ઑનલાઇન કેવી રીતે અરજી કરવી તે સમજાવીશું. જે ઝૂંપડપટ્ટીઓ પહેલાથી જ અસ્તિત્વમાં છે તે મેટ્રોપોલિટન, મ્યુનિસિપલ અને ડેવલપમેન્ટ ઓથોરિટીના પ્રદેશોમાં ઘરો બાંધીને હશે.'),
  //******************************
];

List<SchemeModal> sEdata = [
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'विद्यालक्ष्मी बांड योजना',
      documentH:
          '1. निवास प्रमाण: निवास प्रमाण पत्र, बिजली बिल\n2. पहचान प्रमाण: आधार कार्ड। जन्म प्रमाणपत्र। बीपीएल राशन कार्ड\n3. बैंक का विवरण',
      descriptionH:
          'गांवों में शिक्षा की दुनिया में लड़कियों को प्रोत्साहित करने के लिए विद्यालक्ष्मी बॉन्ड योजना शुरू की गई है। गांवों में गरीब पिछड़े और अन्य समुदायों और वर्गों की लड़कियां रहती हैं। वह शिक्षा से वंचित थी। उन्हें प्राथमिक विद्यालय में जाने में सक्षम बनाने और उनके माता-पिता को वित्तीय सहायता प्रदान करने के लिए विद्यालक्ष्मी बांड योजना शुरू की गई है। गुजरात सरकार हमारे राज्य गुजरात में बालिका शिक्षा को बढ़ावा देने के लिए कई प्रयास कर रही है। मध्याह्न भोजन योजना को भी इसमें शामिल किया जाएगा। गुजरात राज्य में बालिका शिक्षा के स्तर को बढ़ाने के लिए, जिन गांवों में महिला साक्षरता दर 35% से कम है। ऐसे गांवों में 1 से 100% लड़कियों का नामांकन और नई प्रवेश बढ़ाए गए हैं और प्रवेशार्थी कक्षा-7 तक अपनी पढ़ाई जारी रखते हैं।',
      title: 'Vidyalaxmi bond scheme',
      document:
          '1. Residence proof: Domicile certificate, Electricity bill\n2. Identity proof: Aadhar card. Birth certificate. BPL Ration card\n3. Bank Detail',
      id: 1,
      description:
          'Vidyalakshmi Bond Yojana has been launched to encourage girls in the world of education in villages.There are girls living in villages and poor backward and other communities and classes. She was deprived of education. Vidyalakshmi Bond Yojana has been launched to enable them to go to primary school and also provide financial assistance to their parents.Gujarat government is making many efforts to promote girl education in our state of Gujarat. Mid-day meal plan will also be included in it.To increase the level of girl education in the state of Gujarat, in villages where the female literacy rate is less than 35%.In such villages 1 to 100% girls are enrolled and new admissions are increased and the entrants continue their studies till class-7.',
      link: 'https://govinfo.me/vidya-laxmi-yojana-gujarat/',
      titleG: 'વિદ્યાલક્ષ્મી બોન્ડ યોજના',
      documentG:
          '1. રહેઠાણનો પુરાવો: ડોમિસાઇલ પ્રમાણપત્ર, વીજળીનું બિલ\n2. ઓળખનો પુરાવો: આધાર કાર્ડ. જન્મ પ્રમાણપત્ર. BPL રેશન કાર્ડ\n3. બેંક વિગતવાર',
      descriptionG:
          ' ગામડાઓમાં કન્યાઓને શિક્ષણ જગતમાં ઉત્તેજન આપવા માટે વિદ્યાલક્ષ્મી બોન્ડ યોજનાનો માલા કરવામાં આવ્યો છે.ગામડાઓમાં રહેતી અને ગરીબ પછાત તેમજ અન્ય સમાજ તેમજ વર્ગની કન્યાઓ રહેતી હોય છે. તેઓ શિક્ષણથી વંચિત રહેતી હતી. તે પ્રાથમિક શાળાએ જતી થાય તેમજ તેમના માતાપિતાને પણ આર્થિક મદદ મળી રહે તે માટે વિદ્યાલક્ષ્મી બોન્ડ યોજના ચાલુ કરવામાં આવી છે.આપણાં ગુજરાત રાજ્યમાં કન્યા કેળવણીને ઉત્તેજન આપવા ગુજરાત સરકાર ઘણા પ્રયાસો કરી રહી છે. તેમાં મધ્યાહન ભોજન યોજના પણ આવી જાય.ગુજરાત રાજયમાં કન્યા કેળવણીનું પ્રમાણ વધારવા, જે ગામમાં સ્ત્રી સાક્ષરતા દર 35 % થી ઓછું હોય.તેવા ગામોમાં 1 થી 100% કન્યાઓનું નામાંકન થાય અને નવા પ્રવેશ વધે તેમજ પ્રવેશ મેળવનાર ધોરણ-7 સુધી પોતાનો અભ્યાસ ચાલુ.ધોરણ 7 સુધી અભ્યાસ ચાલુ રાખે તે માટે આ યોજના લાવવામાં આવી છે.'),
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'गुणोत्सव',
      documentH: 'कोई आवश्यक दस्तावेज़ नहीं',
      descriptionH:
          'प्राथमिक शिक्षा वह नींव है जिस पर प्रत्येक नागरिक और समग्र रूप से राष्ट्र का विकास होता है। हाल के दिनों में, भारत की बेहतर शिक्षा प्रणाली को अक्सर भारत के आर्थिक विकास में मुख्य योगदानकर्ताओं में से एक के रूप में उद्धृत किया जाता है। साथ ही, भारत में प्रारंभिक शिक्षा की गुणवत्ता भी एक बड़ी चिंता का विषय रही है। प्राथमिक विद्यालय के छात्रों को कम से कम पढ़ने, लिखने और सरल गणित समीकरणों का बुनियादी ज्ञान होना चाहिए जो उनकी दैनिक गतिविधियों को करने में सहायक हो सकता है।',
      title: 'Gunotsav',
      document: 'No required Documents',
      id: 2,
      description:
          'Primary education is the foundation on which the development of every citizen and the nation as a whole built on. In recent past, India improved education system is often cited as one of the main contributors to the economic development of India. At the same time, the quality of elementary education in India has also been a major concern. Student of primary school at least have basic knowledge of reading, writing and simple mathematics equations which may be helpful in performing their daily activities.',
      link: 'https://gunotsav.gujarat.gov.in/',
      titleG: 'ગુણોત્સવ',
      documentG: 'જરૂરી દસ્તાવેજો નથી',
      descriptionG:
          'પ્રાથમિક શિક્ષણ એ પાયો છે જેના પર દરેક નાગરિક અને સમગ્ર રાષ્ટ્રનો વિકાસ થાય છે. તાજેતરના ભૂતકાળમાં, ભારતની સુધારેલી શિક્ષણ પ્રણાલીને ઘણીવાર ભારતના આર્થિક વિકાસમાં મુખ્ય ફાળો આપનાર તરીકે ટાંકવામાં આવે છે. તે જ સમયે, ભારતમાં પ્રાથમિક શિક્ષણની ગુણવત્તા પણ મુખ્ય ચિંતાનો વિષય છે. પ્રાથમિક શાળાના વિદ્યાર્થીને ઓછામાં ઓછું વાંચન, લેખન અને ગણિતના સરળ સમીકરણોનું પ્રાથમિક જ્ઞાન હોય છે જે તેમની દૈનિક પ્રવૃત્તિઓ કરવામાં મદદરૂપ થઈ શકે છે.'),
];

List<SchemeModal> sHdata = [
  SchemeModal(
      eligibility:
          '1 .The annual income of the family is up to ₹4 Lakhs \n2. Any member(s) who are Accredited Social Health Activist (ASHA) workers\n3.	Any member(s) who have accredited reporters\n4.	Class-3 and Class-4 employees employed on a fixed payroll by the State Government\n5.	Senior Citizens with families of a total annual income of up to ₹6 Lakhs',
      eligibilityH:
          '1 .परिवार की वार्षिक आय ₹4 लाख तक है\n2. कोई भी सदस्य जो मान्यता प्राप्त सामाजिक स्वास्थ्य कार्यकर्ता (आशा) कार्यकर्ता हैं\n3. कोई भी सदस्य जिसके पास मान्यता प्राप्त पत्रकार हैं\n4. राज्य सरकार द्वारा निर्धारित वेतनमान पर नियोजित वर्ग-3 एवं वर्ग-4 कर्मचारी\n5. वरिष्ठ नागरिक जिनके परिवार की कुल वार्षिक आय ₹6 लाख तक है,',
      eligibilityG:
          '1 .પરિવારની વાર્ષિક આવક ₹4 લાખ સુધી છે \n2. કોઈપણ સભ્ય(સદસ્યો) કે જેઓ માન્યતાપ્રાપ્ત સામાજિક આરોગ્ય કાર્યકર્તા (આશા) કાર્યકર્તા છે\n3. કોઈપણ સભ્ય(સદસ્યો) કે જેમણે પત્રકારોને માન્યતા આપી છે\n4. રાજ્ય સરકાર દ્વારા ફિક્સ પગારપત્રક પર કાર્યરત વર્ગ-3 અને વર્ગ-4ના કર્મચારીઓ\n5. ₹6 લાખ સુધીની કુલ વાર્ષિક આવક ધરાવતા પરિવારો ધરાવતા વરિષ્ઠ નાગરિકો',
      titleH: 'मुख्यमंत्री अमृतम (एमए) योजना',
      documentH:
          '1. पते का प्रमाण\n2. पहचान प्रमाण\n3. आय का प्रमाण\n4. प्रमाणपत्र जिसमें कहा गया हो कि आपका परिवार गरीबी रेखा से नीचे के लिए पात्र है',
      descriptionH:
          'स्वास्थ्य देखभाल पर घरेलू खर्च की उच्च लागत के परिणामस्वरूप बड़ी संख्या में परिवार गरीबी में धकेल दिए जाते हैं। गरीबी रेखा से नीचे (बीपीएल) आबादी विशेष रूप से विनाशकारी स्वास्थ्य जोखिमों के प्रति संवेदनशील है। गुजरात में बीपीएल आबादी के सामने आने वाली इस प्रमुख कमजोरी को दूर करने के लिए, राज्य सरकार ने मुख्यमंत्री अमृतम (एमए) योजना नामक एक चिकित्सा देखभाल योजना शुरू की है। योजना का उद्देश्य स्वास्थ्य देखभाल प्रदाताओं के एक ईएम पैनल नेटवर्क के माध्यम से अस्पताल में भर्ती, सर्जरी और थेरेपी से जुड़ी पहचानी गई बीमारियों के इलाज के लिए बीपीएल परिवारों की गुणवत्तापूर्ण चिकित्सा और शल्य चिकित्सा देखभाल तक पहुंच में सुधार करना है।',
      title: 'Mukhya Mantri Amrutum (MA) Yojana',
      document:
          '1. Address proof\n2. Identification proof\n3. Proof of income\n4. Certificate saying that your family qualifies for the below-the-poverty line',
      id: 1,
      description:
          'A large number of households are pushed into poverty as a result of the high costs of household spending on health care. The Below Poverty Line (BPL) population is especially vulnerable to catastrophic health risks. To address this key vulnerability faced by the BPL population in Gujarat, the State Government has launched a medical care scheme called Mukhyamantri Amrutum (MA) Yojana. The objective of the scheme is to improve access of BPL families to quality medical and surgical care for the treatment of identified diseases involving hospitalization, surgeries and therapies through an em panel network of health care providers.',
      link: 'https://www.myscheme.gov.in/schemes/ma',
      titleG: 'મુખ્ય મંત્રી અમૃતમ યોજના',
      documentG:
          '1. સરનામાનો પુરાવો\n2.ઓળખનો પુરાવો\n3. આવકનો પુરાવો\n4. પ્રમાણપત્ર જણાવે છે કે તમારું કુટુંબ ગરીબી રેખા નીચે માટે લાયક છે',
      descriptionG:
          ' આરોગ્ય સંભાળ પર ઘરગથ્થુ ખર્ચના ઊંચા ખર્ચના પરિણામે મોટી સંખ્યામાં પરિવારો ગરીબીમાં ધકેલાય છે. ગરીબી રેખા નીચે (BPL) વસ્તી ખાસ કરીને આપત્તિજનક આરોગ્ય જોખમો માટે સંવેદનશીલ છે. ગુજરાતમાં BPL વસ્તી દ્વારા સામનો કરવામાં આવતી આ મુખ્ય નબળાઈને દૂર કરવા માટે, રાજ્ય સરકારે મુખ્ય મંત્રી અમૃતમ (MA) યોજના નામની તબીબી સંભાળ યોજના શરૂ કરી છે. આ યોજનાનો ઉદ્દેશ્ય આરોગ્ય સંભાળ પ્રદાતાઓના એમ પેનલ નેટવર્ક દ્વારા હોસ્પિટલમાં દાખલ, શસ્ત્રક્રિયાઓ અને ઉપચારો સાથે સંકળાયેલા ઓળખાયેલા રોગોની સારવાર માટે ગુણવત્તાયુક્ત તબીબી અને સર્જીકલ સંભાળ માટે બીપીએલ પરિવારોની ઍક્સેસમાં સુધારો કરવાનો છે.'),
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'स्वास्थ्य बीमा योजना',
      documentH: 'कोई आवश्यक दस्तावेज़ नहीं',
      descriptionH:
          'स्वास्थ्य बीमा योजना का उद्देश्य बुनकर समुदाय को देश में सर्वोत्तम स्वास्थ्य सुविधाओं तक पहुंचने के लिए वित्तीय रूप से सक्षम बनाना है। इस योजना में न केवल बुनकर बल्कि उसकी पत्नी और दो बच्चों को भी शामिल किया जाएगा, पहले से मौजूद सभी बीमारियों के साथ-साथ नई बीमारियों को भी कवर किया जाएगा और ओपीडी के लिए पर्याप्त प्रावधान रखा जाएगा। सहायक हथकरघा श्रमिक जैसे कि ताना-बाना, वाइंडिंग, रंगाई, छपाई, फिनिशिंग, साइजिंग, झाला बनाना, जैक्वार्ड कटिंग आदि में लगे लोग भी कवर किए जाने के पात्र हैं।',
      title: 'Health Insurance Scheme',
      document: 'No required documents',
      id: 2,
      description:
          'The Health Insurance Scheme aims at financially enabling the weaver community to access the best of healthcare facilities in the country. The scheme is to cover not only the weaver but his wife and two children, to cover all pre-existing diseases as well as new diseases and keeping substantial provision for OPD. The ancillary Handlooms workers like those engaged in warping, winding, dyeing, printing, finishing, sizing, Jhala making, Jacquard cutting etc. are also eligible to be covered.',
      link:
          'https://cottage.gujarat.gov.in/Eng/HomeGuj-214079262A74-214079-282472242566-282472214079',
      titleG: 'સ્વા્સ્થ્ય વિમા યોજના',
      documentG: 'જરૂરી દસ્તાવેજો નથી',
      descriptionG:
          'પઆરોગ્ય વીમા યોજનાનો હેતુ વણકર સમુદાયને દેશમાં શ્રેષ્ઠ આરોગ્યસંભાળ સુવિધાઓનો ઉપયોગ કરવા માટે આર્થિક રીતે સક્ષમ કરવાનો છે. આ યોજના માત્ર વણકર જ નહીં પરંતુ તેની પત્ની અને બે બાળકોને આવરી લેવા માટે છે, અગાઉથી અસ્તિત્વમાં રહેલા તમામ રોગો તેમજ નવા રોગોને આવરી લે છે અને OPD માટે નોંધપાત્ર જોગવાઈ રાખે છે. આનુષંગિક હેન્ડલૂમ કામદારો જેમ કે જેઓ વાર્પિંગ, વાઇન્ડિંગ, ડાઇંગ, પ્રિન્ટિંગ, ફિનિશિંગ, સાઈઝિંગ, ઝાલા મેકિંગ, જેક્વાર્ડ કટીંગ વગેરેમાં રોકાયેલા છે તેઓ પણ આવરી લેવાને પાત્ર છે.'),
];

List<SchemeModal> sIdata = [
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'ग्रामसभा भवन योजना',
      documentH:
          '1. निवास प्रमाण: निवास प्रमाण पत्र, बिजली बिल\n2. पहचान प्रमाण: आधार कार्ड। जन्म प्रमाणपत्र। बीपीएल राशन कार्ड\n3. बैंक का विवरण',
      descriptionH:
          'गांवों में शिक्षा की दुनिया में लड़कियों को प्रोत्साहित करने के लिए विद्यालक्ष्मी बॉन्ड योजना शुरू की गई है। गांवों में गरीब पिछड़े और अन्य समुदायों और वर्गों की लड़कियां रहती हैं। वह शिक्षा से वंचित थी। उन्हें प्राथमिक विद्यालय में जाने में सक्षम बनाने और उनके माता-पिता को वित्तीय सहायता प्रदान करने के लिए विद्यालक्ष्मी बांड योजना शुरू की गई है। गुजरात सरकार हमारे राज्य गुजरात में बालिका शिक्षा को बढ़ावा देने के लिए कई प्रयास कर रही है। मध्याह्न भोजन योजना को भी इसमें शामिल किया जाएगा। गुजरात राज्य में बालिका शिक्षा के स्तर को बढ़ाने के लिए, जिन गांवों में महिला साक्षरता दर 35% से कम है। ऐसे गांवों में 1 से 100% लड़कियों का नामांकन और नई प्रवेश बढ़ाए गए हैं और प्रवेशार्थी कक्षा-7 तक अपनी पढ़ाई जारी रखते हैं।',
      title: 'Gramsabha Bhavan Yojana',
      document:
          '1. Residence proof: Domicile certificate, Electricity bill\n2. Identity proof: Aadhar card. Birth certificate. BPL Ration card\n3. Bank Detail',
      id: 1,
      description:
          'Vidyalakshmi Bond Yojana has been launched to encourage girls in the world of education in villages.There are girls living in villages and poor backward and other communities and classes. She was deprived of education. Vidyalakshmi Bond Yojana has been launched to enable them to go to primary school and also provide financial assistance to their parents.Gujarat government is making many efforts to promote girl education in our state of Gujarat. Mid-day meal plan will also be included in it.To increase the level of girl education in the state of Gujarat, in villages where the female literacy rate is less than 35%.In such villages 1 to 100% girls are enrolled and new admissions are increased and the entrants continue their studies till class-7.',
      link: 'https://govinfo.me/vidya-laxmi-yojana-gujarat/',
      titleG: 'વિદ્યાલક્ષ્મી બોન્ડ યોજના',
      documentG:
          '1. રહેઠાણનો પુરાવો: ડોમિસાઇલ પ્રમાણપત્ર, વીજળીનું બિલ\n2. ઓળખનો પુરાવો: આધાર કાર્ડ. જન્મ પ્રમાણપત્ર. BPL રેશન કાર્ડ\n3. બેંક વિગતવાર',
      descriptionG:
          ' ગામડાઓમાં કન્યાઓને શિક્ષણ જગતમાં ઉત્તેજન આપવા માટે વિદ્યાલક્ષ્મી બોન્ડ યોજનાનો માલા કરવામાં આવ્યો છે.ગામડાઓમાં રહેતી અને ગરીબ પછાત તેમજ અન્ય સમાજ તેમજ વર્ગની કન્યાઓ રહેતી હોય છે. તેઓ શિક્ષણથી વંચિત રહેતી હતી. તે પ્રાથમિક શાળાએ જતી થાય તેમજ તેમના માતાપિતાને પણ આર્થિક મદદ મળી રહે તે માટે વિદ્યાલક્ષ્મી બોન્ડ યોજના ચાલુ કરવામાં આવી છે.આપણાં ગુજરાત રાજ્યમાં કન્યા કેળવણીને ઉત્તેજન આપવા ગુજરાત સરકાર ઘણા પ્રયાસો કરી રહી છે. તેમાં મધ્યાહન ભોજન યોજના પણ આવી જાય.ગુજરાત રાજયમાં કન્યા કેળવણીનું પ્રમાણ વધારવા, જે ગામમાં સ્ત્રી સાક્ષરતા દર 35 % થી ઓછું હોય.તેવા ગામોમાં 1 થી 100% કન્યાઓનું નામાંકન થાય અને નવા પ્રવેશ વધે તેમજ પ્રવેશ મેળવનાર ધોરણ-7 સુધી પોતાનો અભ્યાસ ચાલુ.ધોરણ 7 સુધી અભ્યાસ ચાલુ રાખે તે માટે આ યોજના લાવવામાં આવી છે.'),
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'गुणोत्सव',
      documentH: 'कोई आवश्यक दस्तावेज़ नहीं',
      descriptionH:
          'प्राथमिक शिक्षा वह नींव है जिस पर प्रत्येक नागरिक और समग्र रूप से राष्ट्र का विकास होता है। हाल के दिनों में, भारत की बेहतर शिक्षा प्रणाली को अक्सर भारत के आर्थिक विकास में मुख्य योगदानकर्ताओं में से एक के रूप में उद्धृत किया जाता है। साथ ही, भारत में प्रारंभिक शिक्षा की गुणवत्ता भी एक बड़ी चिंता का विषय रही है। प्राथमिक विद्यालय के छात्रों को कम से कम पढ़ने, लिखने और सरल गणित समीकरणों का बुनियादी ज्ञान होना चाहिए जो उनकी दैनिक गतिविधियों को करने में सहायक हो सकता है।',
      title: 'Gunotsav',
      document: 'No required Documents',
      id: 2,
      description:
          'Primary education is the foundation on which the development of every citizen and the nation as a whole built on. In recent past, India improved education system is often cited as one of the main contributors to the economic development of India. At the same time, the quality of elementary education in India has also been a major concern. Student of primary school at least have basic knowledge of reading, writing and simple mathematics equations which may be helpful in performing their daily activities.',
      link: 'https://gunotsav.gujarat.gov.in/',
      titleG: 'ગુણોત્સવ',
      documentG: 'જરૂરી દસ્તાવેજો નથી',
      descriptionG:
          'પ્રાથમિક શિક્ષણ એ પાયો છે જેના પર દરેક નાગરિક અને સમગ્ર રાષ્ટ્રનો વિકાસ થાય છે. તાજેતરના ભૂતકાળમાં, ભારતની સુધારેલી શિક્ષણ પ્રણાલીને ઘણીવાર ભારતના આર્થિક વિકાસમાં મુખ્ય ફાળો આપનાર તરીકે ટાંકવામાં આવે છે. તે જ સમયે, ભારતમાં પ્રાથમિક શિક્ષણની ગુણવત્તા પણ મુખ્ય ચિંતાનો વિષય છે. પ્રાથમિક શાળાના વિદ્યાર્થીને ઓછામાં ઓછું વાંચન, લેખન અને ગણિતના સરળ સમીકરણોનું પ્રાથમિક જ્ઞાન હોય છે જે તેમની દૈનિક પ્રવૃત્તિઓ કરવામાં મદદરૂપ થઈ શકે છે.'),
];

List<SchemeModal> sWdata = [
  SchemeModal(
      eligibility:
          '1.This scheme is for the first two girl children of the family.\n2.Applicant must belong to Gujarat state.\n3.Applicant must have a bank account.\n4.The annual income of the applicant’s family should not be more than Rs. 2 Lakh.m5.Girls born after 02-08-2019 are eligible to get financial assistance under Gujarat Vahli Dikri Yojana.',
      eligibilityH:
          '1.यह योजना परिवार की पहली दो लड़कियों के लिए है।\n2.आवेदक गुजरात राज्य से संबंधित होना चाहिए।\n3.आवेदक के पास एक बैंक खाता होना चाहिए।\n4.आवेदक के परिवार की वार्षिक आय इससे अधिक नहीं होनी चाहिए रुपये से अधिक 2 लाख.m5.02-08-2019 के बाद जन्मी लड़कियां गुजरात वाहली डिकरी योजना के तहत वित्तीय सहायता प्राप्त करने के लिए पात्र हैं।',
      eligibilityG:
          '1.આ યોજના પરિવારની પ્રથમ બે દીકરીઓ માટે છે.\n2.અરજદાર ગુજરાત રાજ્યનો હોવો જોઈએ.\n3.અરજદારનું બેંક ખાતું હોવું આવશ્યક છે.\n4.અરજદારના પરિવારની વાર્ષિક આવક વધુ ન હોવી જોઈએ. કરતાં રૂ. 2 લાખ.m5.02-08-2019 પછી જન્મેલી છોકરીઓ ગુજરાત વહલી દિકરી યોજના હેઠળ નાણાકીય સહાય મેળવવા માટે પાત્ર છે.',
      titleH: 'वहली डिकरी योजना',
      documentH:
          '1. गुजरात का अधिवास\n2. आधार कार्ड\n3. पासपोर्ट साइज फोटो\n4. आय प्रमाण पत्र\n5. जाति प्रमाण पत्र\n6. बच्चे का जन्म प्रमाण पत्र\n7. बैंक के खाते का विवरण',
      descriptionH:
          'उपमुख्यमंत्री नितिन पटेल ने कहा कि इस योजना में प्रारंभिक हस्तक्षेप भी शामिल होगा, क्योंकि परिवार की पहली और दूसरी बेटी को कक्षा I में दाखिला लेने पर 4,000 रुपये की वित्तीय सहायता दी जाएगी, कक्षा IX में नामांकन पर 6,000 रुपये की वित्तीय सहायता दी जाएगी। यह योजना 2 लाख रुपये प्रति वर्ष से कम आय वाले गरीब परिवारों की लड़कियों के लिए होगी। पटेल ने कहा, "इस योजना का उद्देश्य समाज में लड़कियों की सामाजिक-आर्थिक स्थिति को मजबूत करके, उनकी स्कूल छोड़ने की दर को रोकना और बचपन में उनके विवाह को रोककर बालिका जन्म दर में सुधार करना है।',
      title: 'Vahli Dikri Yojana',
      document:
          '1. Domicile of Gujarat\n2. Aadhar Card\n3. Passport Size Photo\n4. Income Certificate\n5. Caste Certificate\n6. Birth Certificate of Child\n7. Bank Account Details',
      id: 1,
      description:
          'Deputy chief minister Nitin Patel said that the scheme would also have early intervention part, as financial aid of Rs 4,000 will be given to first and second daughter of a family when she enrols in Class I, Rs 6,000 on enrolment in Class IX. The scheme will be for girls from poor families with incomes below Rs 2 lakh a year. “The scheme aims to improve the girl child birth rate by strengthening the socio-economic status of girls in society, arrest their dropout rate and prevent their marriages as children,” said Patel',
      link: 'https://www.myscheme.gov.in/schemes/vdy#details',
      titleG: 'વવ્હાલી દિકરી યોજના',
      documentG:
          '1. ગુજરાતનું નિવાસસ્થાન\n2. આધાર કાર્ડ\n3. પાસપોર્ટ સાઇઝનો ફોટો\n4. આવકનું પ્રમાણપત્ર\n5. જાતિ પ્રમાણપત્ર\n6. બાળકનું જન્મ પ્રમાણપત્ર\n7. બેંક ખાતાની વિગતો',
      descriptionG:
          'નાયબ મુખ્ય પ્રધાન નીતિન પટેલે જણાવ્યું હતું કે આ યોજનામાં પ્રારંભિક હસ્તક્ષેપનો ભાગ પણ હશે, કારણ કે જ્યારે પરિવારની પ્રથમ અને બીજી પુત્રી ધોરણ I માં પ્રવેશ મેળવે છે ત્યારે તેને 4,000 રૂપિયાની નાણાકીય સહાય આપવામાં આવશે, ધોરણ 9 માં નોંધણી પર 6,000 રૂપિયા. આ યોજના ગરીબ પરિવારની છોકરીઓ માટે છે જેની આવક વાર્ષિક 2 લાખ રૂપિયાથી ઓછી છે. પટેલે જણાવ્યું હતું કે, "આ યોજનાનો હેતુ સમાજમાં છોકરીઓની સામાજિક-આર્થિક સ્થિતિને મજબૂત કરીને, તેમના ડ્રોપઆઉટ રેટને રોકવા અને બાળકો તરીકે તેમના લગ્ન અટકાવીને બાળકીનો જન્મ દર સુધારવાનો છે'),
  SchemeModal(
      eligibility: '',
      eligibilityH: '',
      eligibilityG: '',
      titleH: 'मुख्यमंत्री अमृतम (एमए) वात्सल्य योजना',
      documentH:
          '1. पते का प्रमाण\n2. पहचान प्रमाण\n3. आय का प्रमाण\n4. प्रमाणपत्र जिसमें कहा गया हो कि आपका परिवार गरीबी रेखा से नीचे के लिए पात्र है',
      descriptionH:
          'स्वास्थ्य देखभाल पर घरेलू खर्च की उच्च लागत के परिणामस्वरूप बड़ी संख्या में परिवार गरीबी में धकेल दिए जाते हैं। गरीबी रेखा से नीचे (बीपीएल) आबादी विशेष रूप से विनाशकारी स्वास्थ्य जोखिमों के प्रति संवेदनशील है। गुजरात में बीपीएल आबादी के सामने आने वाली इस प्रमुख कमजोरी को दूर करने के लिए, राज्य सरकार ने मुख्यमंत्री अमृतम (एमए) योजना नामक एक चिकित्सा देखभाल योजना शुरू की है। योजना का उद्देश्य स्वास्थ्य देखभाल प्रदाताओं के एक ईएम पैनल नेटवर्क के माध्यम से अस्पताल में भर्ती, सर्जरी और उपचार से जुड़ी पहचानी गई बीमारियों के इलाज के लिए बीपीएल परिवारों की गुणवत्तापूर्ण चिकित्सा और शल्य चिकित्सा देखभाल तक पहुंच में सुधार करना है।',
      title: 'Mukhya Mantri Amrutum (MA) Vatsalya Yojana',
      document:
          '1. Address proof\n2. Identification proof\n3. Proof of income\n4. Certificate saying that your family qualifies for the below-the-poverty line',
      id: 2,
      description:
          'A large number of households are pushed into poverty as a result of the high costs of household spending on health care. The Below Poverty Line (BPL) population is especially vulnerable to catastrophic health risks. To address this key vulnerability faced by the BPL population in Gujarat, the State Government has launched a medical care scheme called Mukhyamantri Amrutum (MA) Yojana. The objective of the scheme is to improve access of BPL families to quality medical and surgical care for the treatment of identified diseases involving hospitalization, surgeries and therapies through an em panel network of health care providers',
      link: 'https://www.myscheme.gov.in/schemes/ma',
      titleG: 'મુખ્ય મંત્રી અમૃતમ (MA) વાત્સલ્ય યોજના',
      documentG:
          '1. સરનામાનો પુરાવો\n2. ઓળખનો પુરાવો\n3. આવકનો પુરાવો\n4. પ્રમાણપત્ર જણાવે છે કે તમારું કુટુંબ ગરીબી રેખા નીચે માટે લાયક છે',
      descriptionG:
          'આરોગ્ય સંભાળ પર ઘરગથ્થુ ખર્ચના ઊંચા ખર્ચના પરિણામે મોટી સંખ્યામાં પરિવારો ગરીબીમાં ધકેલાય છે. ગરીબી રેખા નીચે (BPL) વસ્તી ખાસ કરીને આપત્તિજનક આરોગ્ય જોખમો માટે સંવેદનશીલ છે. ગુજરાતમાં BPL વસ્તી દ્વારા સામનો કરવામાં આવતી આ મુખ્ય નબળાઈને દૂર કરવા માટે, રાજ્ય સરકારે મુખ્ય મંત્રી અમૃતમ (MA) યોજના નામની તબીબી સંભાળ યોજના શરૂ કરી છે. આ યોજનાનો ઉદ્દેશ્ય આરોગ્ય સંભાળ પ્રદાતાઓના એમ પેનલ નેટવર્ક દ્વારા હોસ્પિટલમાં દાખલ, શસ્ત્રક્રિયાઓ અને ઉપચારો સાથે સંકળાયેલા ઓળખાયેલા રોગોની સારવાર માટે ગુણવત્તાયુક્ત તબીબી અને સર્જીકલ સંભાળ માટે બીપીએલ પરિવારોની ઍક્સેસમાં સુધારો કરવાનો છે'),
];

//********************************************************************************************************************************************************************************

// List<SchemeModal> sdata = [
//   SchemeModal(
//       eligibility:
//       '1.The applicant must be a farmer residing in Gujarat state.\n2.The applicant must have availed of a loan for agricultural purposes from a cooperative institution or a bank.\n3. The applicant must have suffered crop loss due to natural calamities such as drought, flood, or earthquake.The applicant must possess the land for agricultural purposes in his/her name or have the right to cultivate such land.\n4.The land should be surveyed by the Revenue Department of Gujarat and should have a record of rights.]\n5.The crop loss should be certified by the Revenue Department of Gujarat.\n6.The applicant should have insured the crop under the Pradhan Mantri Fasal Bima Yojana or any other crop insurance scheme recognized by the Government of Gujarat.',
//       eligibilityH: '1.आवेदक को गुजरात राज्य का रहने वाला किसान होना चाहिए।\n2.आवेदक ने किसी सहकारी संस्था या बैंक से कृषि उद्देश्यों के लिए ऋण लिया हो।\n3. आवेदक को सूखे, बाढ़ या भूकंप जैसी प्राकृतिक आपदाओं के कारण फसल का नुकसान हुआ होगा। आवेदक के पास अपने नाम पर कृषि उद्देश्यों के लिए भूमि होनी चाहिए या ऐसी भूमि पर खेती करने का अधिकार होना चाहिए।\n4.भूमि होनी चाहिए गुजरात के राजस्व विभाग द्वारा सर्वेक्षण किया जाना चाहिए और अधिकारों का रिकॉर्ड होना चाहिए।]\n5.फसल के नुकसान को गुजरात के राजस्व विभाग द्वारा प्रमाणित किया जाना चाहिए।\n6.आवेदक को प्रधानमंत्री फसल बीमा योजना के तहत फसल का बीमा कराना चाहिए या गुजरात सरकार द्वारा मान्यता प्राप्त कोई अन्य फसल बीमा योजना।',
//       eligibilityG: '1. અરજદાર ગુજરાત રાજ્યમાં રહેતો ખેડૂત હોવો જોઈએ.\n2. અરજદારે સહકારી સંસ્થા અથવા બેંક પાસેથી કૃષિ હેતુ માટે લોન લીધી હોવી જોઈએ.\n3. અરજદારે દુષ્કાળ, પૂર અથવા ભૂકંપ જેવી કુદરતી આફતોને લીધે પાકને નુકસાન સહન કરવું પડ્યું હોવું જોઈએ. અરજદાર પાસે તેના નામે ખેતીના હેતુ માટે જમીન હોવી જોઈએ અથવા તેને એવી જમીન ખેડવાનો અધિકાર હોવો જોઈએ.\n4. જમીન હોવી જોઈએ ગુજરાતના મહેસૂલ વિભાગ દ્વારા સર્વેક્ષણ કરવામાં આવ્યું છે અને તેની પાસે અધિકારોનો રેકોર્ડ હોવો જોઈએ.]\n5. પાકનું નુકસાન ગુજરાતના મહેસૂલ વિભાગ દ્વારા પ્રમાણિત હોવું જોઈએ.\n6. અરજદારે પ્રધાનમંત્રી ફસલ બીમા યોજના હેઠળ પાકનો વીમો લેવો જોઈએ અથવા ગુજરાત સરકાર દ્વારા માન્ય કોઈપણ અન્ય પાક વીમા યોજના.',
//       titleH: 'मुख्यमंत्री किसान सहाय योजना',
//       documentH:
//       '1. गुजरात का निवास प्रमाण\n2. आधार कार्ड\n3. जाति प्रमाण पत्र\n4. आय प्रमाण पत्र\n5. भूमि रिकॉर्ड की प्रति\n6. बैंक के खाते का विवरण',
//       descriptionH:
//       'मुख्यमंत्री किसान सहाय योजना गुजरात सरकार के राजस्व विभाग द्वारा कृषि और सहकारिता विभाग के सहयोग से कार्यान्वित की जाती है। राजस्व विभाग फसल क्षति के सत्यापन और पात्र किसानों को मुआवजे के वितरण सहित योजना के कार्यान्वयन के लिए जिम्मेदार है। कृषि और सहकारिता विभाग योजना के कार्यान्वयन के लिए तकनीकी सहायता और समर्थन प्रदान करता है ताकि यह सुनिश्चित किया जा सके कि किसानों को प्राकृतिक आपदाओं के कारण फसल क्षति के मामले में समय पर और पर्याप्त राहत मिले।',
//       title: 'Mukhya Mantri Kisan Sahay Yojana',
//       document:
//       '1. Residence Proof of Gujarat\n2. Aadhar Card\n3. Caste Certificate\n4. Income Certificate\n5. Copy of Land Records\n6. Bank Account Details',
//       id: 1,
//       description:
//       'Mukhya Mantri Kisan Sahay Yojana is implemented by the Revenue Department of the Government of Gujarat in collaboration with the Agriculture and Co-operation Department. The Revenue Department is responsible for the implementation of the scheme, including the verification of crop damage and the disbursal of compensation to eligible farmers. The Agriculture and Co-operation Department provides technical assistance and support for the implementation of the scheme to ensure that farmers receive timely and adequate relief in case of crop damage due to natural calamities.',
//       link: 'https://agri.gujarat.gov.in/MMKSY.htm',
//       titleG: 'મુખ્ય મંત્રી કિસાન સહાય યોજના',
//       documentG:
//       '1. ગુજરાતનો રહેઠાણનો પુરાવો\n2. આધાર કાર્ડ\n3. જાતિ પ્રમાણપત્ર\n4. આવકનું પ્રમાણપત્ર\n5. જમીનના રેકોર્ડની નકલ\n6. બેંક ખાતાની વિગતો',
//       descriptionG:
//       'મુખ્ય મંત્રી કિસાન સહાય યોજના ગુજરાત સરકારના મહેસૂલ વિભાગ દ્વારા કૃષિ અને સહકાર વિભાગના સહયોગથી લાગુ કરવામાં આવે છે. આ યોજનાના અમલીકરણ માટે મહેસૂલ વિભાગ જવાબદાર છે, જેમાં પાકના નુકસાનની ચકાસણી અને પાત્ર ખેડૂતોને વળતરની ચુકવણીનો સમાવેશ થાય છે. કૃષિ અને સહકાર વિભાગ કુદરતી આફતોના કારણે પાકને થતા નુકસાનના કિસ્સામાં ખેડૂતોને સમયસર અને પર્યાપ્ત રાહત મળે તે સુનિશ્ચિત કરવા યોજનાના અમલીકરણ માટે તકનીકી સહાય અને સમર્થન પૂરું પાડે છે.'),
//   SchemeModal(
//       eligibility:
//       '1. All farmers and Female farmers of the state.\n2. The scheme is available to all farmers in the state of Gujarat.\n3. There are no restrictions based on caste, religion, or gender.\n4. Farmers who are interested in learning about the latest agricultural practices and improving their crop yields are encouraged to participate.',
//       eligibilityH: '1. राज्य के सभी किसान एवं महिला किसान.\n2. यह योजना गुजरात राज्य के सभी किसानों के लिए उपलब्ध है।\n3. जाति, धर्म या लिंग के आधार पर कोई प्रतिबंध नहीं है।\n4. जो किसान नवीनतम कृषि पद्धतियों के बारे में सीखने और अपनी फसल की पैदावार में सुधार करने में रुचि रखते हैं, उन्हें भाग लेने के लिए प्रोत्साहित किया जाता है।',
//       eligibilityG: '1. રાજ્યના તમામ ખેડૂતો અને મહિલા ખેડૂતો.\n2. આ યોજના ગુજરાત રાજ્યના તમામ ખેડૂતો માટે ઉપલબ્ધ છે.\n3. જાતિ, ધર્મ અથવા લિંગના આધારે કોઈ પ્રતિબંધો નથી.\n4. ખેડૂતો કે જેઓ નવીનતમ કૃષિ પદ્ધતિઓ વિશે શીખવા અને તેમની પાકની ઉપજ સુધારવામાં રસ ધરાવતા હોય તેમને ભાગ લેવા માટે પ્રોત્સાહિત કરવામાં આવે છે.',
//       titleH: 'कृषि महोत्सव',
//       documentH:
//       '1. पते का प्रमाण जैसे मतदाता पहचान पत्र, पासपोर्ट, आधार कार्ड, ड्राइविंग लाइसेंस, बिजली बिल\n2. या हालिया संपत्ति कर बिल',
//       descriptionH:
//       'राज्य में दूसरी हरित क्रांति की ओर बढ़ते हुए और पांच वर्षों में किसानों की आय को दोगुना करने के उद्देश्य से राज्य सरकार द्वारा कृषि में एक अभिनव दृष्टिकोण के रूप में राज्य में कृषि महोत्सव -2005 की शुरुआत की गई। कृषि महोत्सव-2005 में कई अच्छे परिणाम प्राप्त हुए, प्रत्येक वर्ष प्रारंभ होने वाले एक माह की लंबी अवधि के लिए कृषि महोत्सव आयोजित किये जाने के बाद कृषि महोत्सव के दौरान "कृषि रथ" नामक एक मोबाइल प्रदर्शनी के माध्यम से ग्रामीण स्तर तक संपर्क स्थापित किया गया है। किसानों की कृषि संबंधी समस्याओं को दूर करने के लिए "कृषि रथ" के साथ विशेषज्ञों ने हर गांव का दौरा किया और प्रौद्योगिकी का हस्तांतरण किया। व्यक्तिगत किसानों को सलाह और सहायता देने के साथ-साथ साधनहीन किसानों को मुफ्त इनपुट किट का वितरण भी किया गया है। जल संरक्षण जैसे समुदाय आधारित कार्यक्रम भी शामिल किये गये। इस प्रकार गैर-सरकारी संगठनों, प्रगतिशील किसानों और सहकारी समितियों और निजी संस्थानों की भी सक्रिय भागीदारी बनाई गई। कृषि महोत्सव-2012 और 2013 जिला पंचायत सीट के अनुसार (क्लस्टर आधार) आयोजित किया गया था। कृषि रथ के माध्यम से कृषि विभाग के अधिकारियों एवं वैज्ञानिकों द्वारा जिला पंचायत क्षेत्र के निर्धारित ग्रामों में भ्रमण किया गया। तालुका पंचायत सीट के निर्धारित गांव में पूरे दिन का कार्यक्रम आयोजित किया गया। उन गाँवों के किसानों को पशु टीकाकरण, कृत्रिम गर्भाधान जैसे विभिन्न कार्यक्रमों में मार्गदर्शन के साथ-साथ कृषि और उससे संबंधित क्षेत्र का ज्ञान भी प्रदान किया गया।',
//       title: 'Krishi Mahotsav',
//       document:
//       '1. Address proof such as a voter ID card, passport,Aadhaar card,driving license,electricity bill\n2. or recent property tax bill',
//       id: 2,
//       description:
//       'Moving to the second green revolution in the state and the purposes of double the income of farmers in five years to introduced Krushi Mahotsav -2005 in the state by the State Government as an innovative approach in agriculture. Many good results obtained in agricultural Festival -2005, after the agricultural festivals are held for a month long period of time to start the every year.During Krishi Mahotsav contact up to village level has been established through a mobile exhibition called "Krishi Rath” that visited every village. Experts accompanying with "Krishi Rath” to cater farming problems transfer of technology to the farmers. Along with advising and assisting individual farmer, distribution of free input kits to resource poor farmers in has been made. Community based programs like water conservation also been included. By this way active involvement of NGOs, progressive farmers and cooperatives and private institution also been made.Krushi Mahotsav-2012 & 2013 was held according to District panchayat seat wise (Cluster base). The officers and Scientists of Agriculture have visited in decided villages of District panchayat seat by the medium of Krushi Rath. The full day program organized in decided village of taluka panchayat seat. The farmers of those villages guided in different program like Animal vaccination, Artificial insemination as well as provided knowledge of Agriculture and its related field.',
//       link: 'https://agri.gujarat.gov.in/krushi-mahotsav.htm',
//       titleG: 'કૃષિ મહોત્સવ ',
//       documentG:
//       '1. આધાર કાર્ડ\n2. સરનામાનો પુરાવો\n3. પાસબુકની નકલ\n4. નોંધણી પત્રક\n5. લાયકાત પ્રમાણપત્ર\n6. પાન કાર્ડ',
//       descriptionG:
//       'રાજ્યમાં બીજી હરિયાળી ક્રાંતિ તરફ આગળ વધવા અને ખેડૂતોની આવક પાંચ વર્ષમાં બમણી કરવાના હેતુથી રાજ્ય સરકાર દ્વારા કૃષિમાં નવીન અભિગમ તરીકે કૃષિ મહોત્સવ-2005ની શરૂઆત કરવામાં આવી છે. કૃષિ ઉત્સવ-2005 માં ઘણા સારા પરિણામો પ્રાપ્ત થયા છે, કૃષિ ઉત્સવો દર વર્ષે શરૂ કરવા માટે એક મહિનાના લાંબા સમય સુધી યોજાય છે.કૃષિ મહોત્સવ દરમિયાન દરેક ગામની મુલાકાત લેનાર "કૃષિ રથ" નામના મોબાઈલ પ્રદર્શન દ્વારા ગ્રામ્ય સ્તર સુધી સંપર્ક સ્થાપિત કરવામાં આવ્યો છે. ખેડૂતોને ટેકનોલોજી ટ્રાન્સફર કરવા માટે ખેતીની સમસ્યાઓને પહોંચી વળવા "કૃષિ રથ" સાથે નિષ્ણાતો. વ્યક્તિગત ખેડુતોને સલાહ અને મદદ કરવા સાથે, ગરીબ ખેડૂતોને સંસાધન માટે મફત ઇનપુટ કીટનું વિતરણ કરવામાં આવ્યું છે. જળ સંરક્ષણ જેવા સમુદાય આધારિત કાર્યક્રમોનો પણ સમાવેશ કરવામાં આવ્યો છે. આ રીતે એનજીઓ, પ્રગતિશીલ ખેડૂતો અને સહકારી સંસ્થાઓ અને ખાનગી સંસ્થાઓની પણ સક્રિય ભાગીદારી કરવામાં આવી છે.'),
// ];

// List<SchemeModal> sRdata = [
//   //******************************
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'मुख्यमंत्री ग्राम सड़क योजना',
//       descriptionH:
//       'पीएमजीएसवाई - प्रधानमंत्री ग्राम सड़क योजना के सफल समापन के बाद, सरकार। गुजरात सरकार ने राज्य में ग्रामीण सड़क नेटवर्क के बुनियादी ढांचे को मजबूत करने की आवश्यकता पर विचार किया और वर्ष 2016-17 में "मुख्यमंत्री ग्राम सड़क योजना" की योजना बनाई।',
//       documentH: '1. राशन कार्ड\n2. वोटर आईडी कार्ड\n3. आधार\n4. पैन कार्ड',
//       title: 'Mukhy Mantri Gram Sadak Yojana',
//       document: '1. Ration card\n2. Voter ID Card\n3. Aadhaar\n4. PAN card',
//       id: 1,
//       description:
//       'After successful completion of PMGSY – Pradhan Mantri Gram Sadak Yojana, The Govt. of Gujarat envisage the need for strengthening of rural roads network infrastructure in the state and planned for “ Mukhy Mantri Gram Sadak Yojana” in year 2016-17.',
//       link:
//       'https://indiainvestmentgrid.gov.in/opportunities/nip-project/704686',
//       titleG: 'પ્રધાનમંત્રી ગ્રામ સડક યોજના ',
//       documentG: '1. રેશન કાર્ડ\n2. મતદાર ઓળખ કાર્ડ\n3. આધાર\n4. પાન કાર્ડ',
//       descriptionG:
//       'PMGSY-પ્રધાનમંત્રી ગ્રામ સડક યોજના સફળતાપૂર્વક પૂર્ણ થયા પછી, સરકાર. ગુજરાત રાજ્યમાં ગ્રામીણ રોડ નેટવર્ક ઈન્ફ્રાસ્ટ્રક્ચરને મજબૂત કરવાની જરૂરિયાતની કલ્પના કરે છે અને વર્ષ 2016-17માં “મુખ્ય મંત્રી ગ્રામ સડક યોજના” માટે આયોજન કરવામાં આવ્યું છે.'),
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'मुख्यमंत्री आवास योजना (गुजरात हाउसिंग बोर्ड)',
//       documentH:
//       '1. पते का प्रमाण\n2. आधार कार्ड\n3. एक पासपोर्ट साइज फोटो\n4. जाति प्रमाण पत्र\n5. आय सत्यापन दस्तावेज़',
//       descriptionH:
//       'गुजरात हाउसिंग बोर्ड ने गुजरात हाउसिंग बोर्ड योजना नामक एक किफायती आवास कार्यक्रम शुरू किया है। यह योजना विशेष रूप से ईडब्ल्यूएस, एलआईजी या एमआईजी सामाजिक समूहों के अंतर्गत आने वाले घरों की तलाश कर रहे लोगों के लिए बनाई गई थी। गुजरात हाउसिंग बोर्ड योजना एक आवास योजना है जिसे शहरी क्षेत्रों में सस्ते आवास की बढ़ती मांग के जवाब में शुरू किया गया था। हम इस लेख में बताएंगे कि योग्य उम्मीदवार किफायती आवास योजना के लिए ऑनलाइन आवेदन कैसे करें। महानगरीय, नगर निगम और विकास प्राधिकरण क्षेत्रों में पहले से मौजूद झुग्गियों को वहां घर बनाकर बसाया जाएगा',
//       title: 'Mukhya Mantri Awas Yojana (Gujarat Housing Board)',
//       document:
//       '1. Proof of address\n2. Aadhar Card\n3. a passport-sized photo\n4. certificate of caste\n5. income verification documents',
//       id: 2,
//       description:
//       'Gujarat Housing Board has launched an affordable housing program called the Gujarat Housing Board Scheme. This scheme was created Particularly for people looking for homes that fall under the EWS, LIG, or MIG social groups. The Gujarat Housing Board scheme is a housing Scheme that was launched in response to the expanding demand for cheap housing in urban regions. We’ll explain how to apply online for the eligible candidate’s affordable housing scheme in this article. Slums that already exist will be in metropolitan, municipal, and development authority regions by building homes there',
//       link: 'https://pmayojana.in/gujarat-housing-board-scheme/',
//       titleG: 'મુખ્ય મંત્રી આવાસ યોજના (ગુજરાત હાઉસિંગ બોર્ડ)',
//       documentG:
//       '1. સરનામાનો પુરાવો\n2. આધાર કાર્ડ\n3. પાસપોર્ટ સાઇઝનો ફોટો\n4. જાતિનું પ્રમાણપત્ર\n5. આવક ચકાસણી દસ્તાવેજો',
//       descriptionG:
//       'ગુજરાત હાઉસિંગ બોર્ડે ગુજરાત હાઉસિંગ બોર્ડ સ્કીમ તરીકે ઓળખાતા સસ્તું હાઉસિંગ પ્રોગ્રામ શરૂ કર્યો છે. આ યોજના ખાસ કરીને EWS, LIG ​​અથવા MIG સામાજિક જૂથો હેઠળ આવતા ઘરો શોધી રહેલા લોકો માટે બનાવવામાં આવી હતી. ગુજરાત હાઉસિંગ બોર્ડ સ્કીમ એ હાઉસિંગ સ્કીમ છે જે શહેરી વિસ્તારોમાં સસ્તા આવાસની વિસ્તરી રહેલી માંગના જવાબમાં શરૂ કરવામાં આવી હતી. અમે આ લેખમાં લાયક ઉમેદવારની સસ્તું આવાસ યોજના માટે ઑનલાઇન કેવી રીતે અરજી કરવી તે સમજાવીશું. જે ઝૂંપડપટ્ટીઓ પહેલાથી જ અસ્તિત્વમાં છે તે મેટ્રોપોલિટન, મ્યુનિસિપલ અને ડેવલપમેન્ટ ઓથોરિટીના પ્રદેશોમાં ઘરો બાંધીને હશે.'),
//   //******************************
//
//
// ];
//
// List<SchemeModal> sEdata = [
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'विद्यालक्ष्मी बांड योजना',
//       documentH:
//       '1. निवास प्रमाण: निवास प्रमाण पत्र, बिजली बिल\n2. पहचान प्रमाण: आधार कार्ड। जन्म प्रमाणपत्र। बीपीएल राशन कार्ड\n3. बैंक का विवरण',
//       descriptionH:
//       'गांवों में शिक्षा की दुनिया में लड़कियों को प्रोत्साहित करने के लिए विद्यालक्ष्मी बॉन्ड योजना शुरू की गई है। गांवों में गरीब पिछड़े और अन्य समुदायों और वर्गों की लड़कियां रहती हैं। वह शिक्षा से वंचित थी। उन्हें प्राथमिक विद्यालय में जाने में सक्षम बनाने और उनके माता-पिता को वित्तीय सहायता प्रदान करने के लिए विद्यालक्ष्मी बांड योजना शुरू की गई है। गुजरात सरकार हमारे राज्य गुजरात में बालिका शिक्षा को बढ़ावा देने के लिए कई प्रयास कर रही है। मध्याह्न भोजन योजना को भी इसमें शामिल किया जाएगा। गुजरात राज्य में बालिका शिक्षा के स्तर को बढ़ाने के लिए, जिन गांवों में महिला साक्षरता दर 35% से कम है। ऐसे गांवों में 1 से 100% लड़कियों का नामांकन और नई प्रवेश बढ़ाए गए हैं और प्रवेशार्थी कक्षा-7 तक अपनी पढ़ाई जारी रखते हैं।',
//       title: 'Vidyalaxmi bond scheme',
//       document:
//       '1. Residence proof: Domicile certificate, Electricity bill\n2. Identity proof: Aadhar card. Birth certificate. BPL Ration card\n3. Bank Detail',
//       id: 1,
//       description:
//       'Vidyalakshmi Bond Yojana has been launched to encourage girls in the world of education in villages.There are girls living in villages and poor backward and other communities and classes. She was deprived of education. Vidyalakshmi Bond Yojana has been launched to enable them to go to primary school and also provide financial assistance to their parents.Gujarat government is making many efforts to promote girl education in our state of Gujarat. Mid-day meal plan will also be included in it.To increase the level of girl education in the state of Gujarat, in villages where the female literacy rate is less than 35%.In such villages 1 to 100% girls are enrolled and new admissions are increased and the entrants continue their studies till class-7.',
//       link: 'https://govinfo.me/vidya-laxmi-yojana-gujarat/',
//       titleG: 'વિદ્યાલક્ષ્મી બોન્ડ યોજના',
//       documentG:
//       '1. રહેઠાણનો પુરાવો: ડોમિસાઇલ પ્રમાણપત્ર, વીજળીનું બિલ\n2. ઓળખનો પુરાવો: આધાર કાર્ડ. જન્મ પ્રમાણપત્ર. BPL રેશન કાર્ડ\n3. બેંક વિગતવાર',
//       descriptionG:
//       ' ગામડાઓમાં કન્યાઓને શિક્ષણ જગતમાં ઉત્તેજન આપવા માટે વિદ્યાલક્ષ્મી બોન્ડ યોજનાનો માલા કરવામાં આવ્યો છે.ગામડાઓમાં રહેતી અને ગરીબ પછાત તેમજ અન્ય સમાજ તેમજ વર્ગની કન્યાઓ રહેતી હોય છે. તેઓ શિક્ષણથી વંચિત રહેતી હતી. તે પ્રાથમિક શાળાએ જતી થાય તેમજ તેમના માતાપિતાને પણ આર્થિક મદદ મળી રહે તે માટે વિદ્યાલક્ષ્મી બોન્ડ યોજના ચાલુ કરવામાં આવી છે.આપણાં ગુજરાત રાજ્યમાં કન્યા કેળવણીને ઉત્તેજન આપવા ગુજરાત સરકાર ઘણા પ્રયાસો કરી રહી છે. તેમાં મધ્યાહન ભોજન યોજના પણ આવી જાય.ગુજરાત રાજયમાં કન્યા કેળવણીનું પ્રમાણ વધારવા, જે ગામમાં સ્ત્રી સાક્ષરતા દર 35 % થી ઓછું હોય.તેવા ગામોમાં 1 થી 100% કન્યાઓનું નામાંકન થાય અને નવા પ્રવેશ વધે તેમજ પ્રવેશ મેળવનાર ધોરણ-7 સુધી પોતાનો અભ્યાસ ચાલુ.ધોરણ 7 સુધી અભ્યાસ ચાલુ રાખે તે માટે આ યોજના લાવવામાં આવી છે.'),
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'गुणोत्सव',
//       documentH: 'कोई आवश्यक दस्तावेज़ नहीं',
//       descriptionH:
//       'प्राथमिक शिक्षा वह नींव है जिस पर प्रत्येक नागरिक और समग्र रूप से राष्ट्र का विकास होता है। हाल के दिनों में, भारत की बेहतर शिक्षा प्रणाली को अक्सर भारत के आर्थिक विकास में मुख्य योगदानकर्ताओं में से एक के रूप में उद्धृत किया जाता है। साथ ही, भारत में प्रारंभिक शिक्षा की गुणवत्ता भी एक बड़ी चिंता का विषय रही है। प्राथमिक विद्यालय के छात्रों को कम से कम पढ़ने, लिखने और सरल गणित समीकरणों का बुनियादी ज्ञान होना चाहिए जो उनकी दैनिक गतिविधियों को करने में सहायक हो सकता है।',
//       title: 'Gunotsav',
//       document: 'No required Documents',
//       id: 2,
//       description:
//       'Primary education is the foundation on which the development of every citizen and the nation as a whole built on. In recent past, India improved education system is often cited as one of the main contributors to the economic development of India. At the same time, the quality of elementary education in India has also been a major concern. Student of primary school at least have basic knowledge of reading, writing and simple mathematics equations which may be helpful in performing their daily activities.',
//       link: 'https://gunotsav.gujarat.gov.in/',
//       titleG: 'ગુણોત્સવ',
//       documentG: 'જરૂરી દસ્તાવેજો નથી',
//       descriptionG:
//       'પ્રાથમિક શિક્ષણ એ પાયો છે જેના પર દરેક નાગરિક અને સમગ્ર રાષ્ટ્રનો વિકાસ થાય છે. તાજેતરના ભૂતકાળમાં, ભારતની સુધારેલી શિક્ષણ પ્રણાલીને ઘણીવાર ભારતના આર્થિક વિકાસમાં મુખ્ય ફાળો આપનાર તરીકે ટાંકવામાં આવે છે. તે જ સમયે, ભારતમાં પ્રાથમિક શિક્ષણની ગુણવત્તા પણ મુખ્ય ચિંતાનો વિષય છે. પ્રાથમિક શાળાના વિદ્યાર્થીને ઓછામાં ઓછું વાંચન, લેખન અને ગણિતના સરળ સમીકરણોનું પ્રાથમિક જ્ઞાન હોય છે જે તેમની દૈનિક પ્રવૃત્તિઓ કરવામાં મદદરૂપ થઈ શકે છે.'),
// ];
//
// List<SchemeModal> sHdata = [
//   SchemeModal(
//       eligibility:
//       '1 .The annual income of the family is up to ₹4 Lakhs \n2. Any member(s) who are Accredited Social Health Activist (ASHA) workers\n3.	Any member(s) who have accredited reporters\n4.	Class-3 and Class-4 employees employed on a fixed payroll by the State Government\n5.	Senior Citizens with families of a total annual income of up to ₹6 Lakhs',
//       eligibilityH: '1 .परिवार की वार्षिक आय ₹4 लाख तक है\n2. कोई भी सदस्य जो मान्यता प्राप्त सामाजिक स्वास्थ्य कार्यकर्ता (आशा) कार्यकर्ता हैं\n3. कोई भी सदस्य जिसके पास मान्यता प्राप्त पत्रकार हैं\n4. राज्य सरकार द्वारा निर्धारित वेतनमान पर नियोजित वर्ग-3 एवं वर्ग-4 कर्मचारी\n5. वरिष्ठ नागरिक जिनके परिवार की कुल वार्षिक आय ₹6 लाख तक है,',
//       eligibilityG: '1 .પરિવારની વાર્ષિક આવક ₹4 લાખ સુધી છે \n2. કોઈપણ સભ્ય(સદસ્યો) કે જેઓ માન્યતાપ્રાપ્ત સામાજિક આરોગ્ય કાર્યકર્તા (આશા) કાર્યકર્તા છે\n3. કોઈપણ સભ્ય(સદસ્યો) કે જેમણે પત્રકારોને માન્યતા આપી છે\n4. રાજ્ય સરકાર દ્વારા ફિક્સ પગારપત્રક પર કાર્યરત વર્ગ-3 અને વર્ગ-4ના કર્મચારીઓ\n5. ₹6 લાખ સુધીની કુલ વાર્ષિક આવક ધરાવતા પરિવારો ધરાવતા વરિષ્ઠ નાગરિકો',
//       titleH: 'मुख्यमंत्री अमृतम (एमए) योजना',
//       documentH:
//       '1. पते का प्रमाण\n2. पहचान प्रमाण\n3. आय का प्रमाण\n4. प्रमाणपत्र जिसमें कहा गया हो कि आपका परिवार गरीबी रेखा से नीचे के लिए पात्र है',
//       descriptionH:
//       'स्वास्थ्य देखभाल पर घरेलू खर्च की उच्च लागत के परिणामस्वरूप बड़ी संख्या में परिवार गरीबी में धकेल दिए जाते हैं। गरीबी रेखा से नीचे (बीपीएल) आबादी विशेष रूप से विनाशकारी स्वास्थ्य जोखिमों के प्रति संवेदनशील है। गुजरात में बीपीएल आबादी के सामने आने वाली इस प्रमुख कमजोरी को दूर करने के लिए, राज्य सरकार ने मुख्यमंत्री अमृतम (एमए) योजना नामक एक चिकित्सा देखभाल योजना शुरू की है। योजना का उद्देश्य स्वास्थ्य देखभाल प्रदाताओं के एक ईएम पैनल नेटवर्क के माध्यम से अस्पताल में भर्ती, सर्जरी और थेरेपी से जुड़ी पहचानी गई बीमारियों के इलाज के लिए बीपीएल परिवारों की गुणवत्तापूर्ण चिकित्सा और शल्य चिकित्सा देखभाल तक पहुंच में सुधार करना है।',
//       title: 'Mukhya Mantri Amrutum (MA) Yojana',
//       document:
//       '1. Address proof\n2. Identification proof\n3. Proof of income\n4. Certificate saying that your family qualifies for the below-the-poverty line',
//       id: 1,
//       description:
//       'A large number of households are pushed into poverty as a result of the high costs of household spending on health care. The Below Poverty Line (BPL) population is especially vulnerable to catastrophic health risks. To address this key vulnerability faced by the BPL population in Gujarat, the State Government has launched a medical care scheme called Mukhyamantri Amrutum (MA) Yojana. The objective of the scheme is to improve access of BPL families to quality medical and surgical care for the treatment of identified diseases involving hospitalization, surgeries and therapies through an em panel network of health care providers.',
//       link: 'https://www.myscheme.gov.in/schemes/ma',
//       titleG: 'મુખ્ય મંત્રી અમૃતમ યોજના',
//       documentG:
//       '1. સરનામાનો પુરાવો\n2.ઓળખનો પુરાવો\n3. આવકનો પુરાવો\n4. પ્રમાણપત્ર જણાવે છે કે તમારું કુટુંબ ગરીબી રેખા નીચે માટે લાયક છે',
//       descriptionG:
//       ' આરોગ્ય સંભાળ પર ઘરગથ્થુ ખર્ચના ઊંચા ખર્ચના પરિણામે મોટી સંખ્યામાં પરિવારો ગરીબીમાં ધકેલાય છે. ગરીબી રેખા નીચે (BPL) વસ્તી ખાસ કરીને આપત્તિજનક આરોગ્ય જોખમો માટે સંવેદનશીલ છે. ગુજરાતમાં BPL વસ્તી દ્વારા સામનો કરવામાં આવતી આ મુખ્ય નબળાઈને દૂર કરવા માટે, રાજ્ય સરકારે મુખ્ય મંત્રી અમૃતમ (MA) યોજના નામની તબીબી સંભાળ યોજના શરૂ કરી છે. આ યોજનાનો ઉદ્દેશ્ય આરોગ્ય સંભાળ પ્રદાતાઓના એમ પેનલ નેટવર્ક દ્વારા હોસ્પિટલમાં દાખલ, શસ્ત્રક્રિયાઓ અને ઉપચારો સાથે સંકળાયેલા ઓળખાયેલા રોગોની સારવાર માટે ગુણવત્તાયુક્ત તબીબી અને સર્જીકલ સંભાળ માટે બીપીએલ પરિવારોની ઍક્સેસમાં સુધારો કરવાનો છે.'),
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'स्वास्थ्य बीमा योजना',
//       documentH: 'कोई आवश्यक दस्तावेज़ नहीं',
//       descriptionH:
//       'स्वास्थ्य बीमा योजना का उद्देश्य बुनकर समुदाय को देश में सर्वोत्तम स्वास्थ्य सुविधाओं तक पहुंचने के लिए वित्तीय रूप से सक्षम बनाना है। इस योजना में न केवल बुनकर बल्कि उसकी पत्नी और दो बच्चों को भी शामिल किया जाएगा, पहले से मौजूद सभी बीमारियों के साथ-साथ नई बीमारियों को भी कवर किया जाएगा और ओपीडी के लिए पर्याप्त प्रावधान रखा जाएगा। सहायक हथकरघा श्रमिक जैसे कि ताना-बाना, वाइंडिंग, रंगाई, छपाई, फिनिशिंग, साइजिंग, झाला बनाना, जैक्वार्ड कटिंग आदि में लगे लोग भी कवर किए जाने के पात्र हैं।',
//       title: 'Health Insurance Scheme',
//       document: 'No required documents',
//       id: 2,
//       description:
//       'The Health Insurance Scheme aims at financially enabling the weaver community to access the best of healthcare facilities in the country. The scheme is to cover not only the weaver but his wife and two children, to cover all pre-existing diseases as well as new diseases and keeping substantial provision for OPD. The ancillary Handlooms workers like those engaged in warping, winding, dyeing, printing, finishing, sizing, Jhala making, Jacquard cutting etc. are also eligible to be covered.',
//       link:
//       'https://cottage.gujarat.gov.in/Eng/HomeGuj-214079262A74-214079-282472242566-282472214079',
//       titleG: 'સ્વા્સ્થ્ય વિમા યોજના',
//       documentG: 'જરૂરી દસ્તાવેજો નથી',
//       descriptionG:
//       'પઆરોગ્ય વીમા યોજનાનો હેતુ વણકર સમુદાયને દેશમાં શ્રેષ્ઠ આરોગ્યસંભાળ સુવિધાઓનો ઉપયોગ કરવા માટે આર્થિક રીતે સક્ષમ કરવાનો છે. આ યોજના માત્ર વણકર જ નહીં પરંતુ તેની પત્ની અને બે બાળકોને આવરી લેવા માટે છે, અગાઉથી અસ્તિત્વમાં રહેલા તમામ રોગો તેમજ નવા રોગોને આવરી લે છે અને OPD માટે નોંધપાત્ર જોગવાઈ રાખે છે. આનુષંગિક હેન્ડલૂમ કામદારો જેમ કે જેઓ વાર્પિંગ, વાઇન્ડિંગ, ડાઇંગ, પ્રિન્ટિંગ, ફિનિશિંગ, સાઈઝિંગ, ઝાલા મેકિંગ, જેક્વાર્ડ કટીંગ વગેરેમાં રોકાયેલા છે તેઓ પણ આવરી લેવાને પાત્ર છે.'),
// ];
//
// List<SchemeModal> sIdata = [
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'ग्रामसभा भवन योजना',
//       documentH:
//       '1. निवास प्रमाण: निवास प्रमाण पत्र, बिजली बिल\n2. पहचान प्रमाण: आधार कार्ड। जन्म प्रमाणपत्र। बीपीएल राशन कार्ड\n3. बैंक का विवरण',
//       descriptionH:
//       'गांवों में शिक्षा की दुनिया में लड़कियों को प्रोत्साहित करने के लिए विद्यालक्ष्मी बॉन्ड योजना शुरू की गई है। गांवों में गरीब पिछड़े और अन्य समुदायों और वर्गों की लड़कियां रहती हैं। वह शिक्षा से वंचित थी। उन्हें प्राथमिक विद्यालय में जाने में सक्षम बनाने और उनके माता-पिता को वित्तीय सहायता प्रदान करने के लिए विद्यालक्ष्मी बांड योजना शुरू की गई है। गुजरात सरकार हमारे राज्य गुजरात में बालिका शिक्षा को बढ़ावा देने के लिए कई प्रयास कर रही है। मध्याह्न भोजन योजना को भी इसमें शामिल किया जाएगा। गुजरात राज्य में बालिका शिक्षा के स्तर को बढ़ाने के लिए, जिन गांवों में महिला साक्षरता दर 35% से कम है। ऐसे गांवों में 1 से 100% लड़कियों का नामांकन और नई प्रवेश बढ़ाए गए हैं और प्रवेशार्थी कक्षा-7 तक अपनी पढ़ाई जारी रखते हैं।',
//       title: 'Gramsabha Bhavan Yojana',
//       document:
//       '1. Residence proof: Domicile certificate, Electricity bill\n2. Identity proof: Aadhar card. Birth certificate. BPL Ration card\n3. Bank Detail',
//       id: 1,
//       description:
//       'Vidyalakshmi Bond Yojana has been launched to encourage girls in the world of education in villages.There are girls living in villages and poor backward and other communities and classes. She was deprived of education. Vidyalakshmi Bond Yojana has been launched to enable them to go to primary school and also provide financial assistance to their parents.Gujarat government is making many efforts to promote girl education in our state of Gujarat. Mid-day meal plan will also be included in it.To increase the level of girl education in the state of Gujarat, in villages where the female literacy rate is less than 35%.In such villages 1 to 100% girls are enrolled and new admissions are increased and the entrants continue their studies till class-7.',
//       link: 'https://govinfo.me/vidya-laxmi-yojana-gujarat/',
//       titleG: 'વિદ્યાલક્ષ્મી બોન્ડ યોજના',
//       documentG:
//       '1. રહેઠાણનો પુરાવો: ડોમિસાઇલ પ્રમાણપત્ર, વીજળીનું બિલ\n2. ઓળખનો પુરાવો: આધાર કાર્ડ. જન્મ પ્રમાણપત્ર. BPL રેશન કાર્ડ\n3. બેંક વિગતવાર',
//       descriptionG:
//       ' ગામડાઓમાં કન્યાઓને શિક્ષણ જગતમાં ઉત્તેજન આપવા માટે વિદ્યાલક્ષ્મી બોન્ડ યોજનાનો માલા કરવામાં આવ્યો છે.ગામડાઓમાં રહેતી અને ગરીબ પછાત તેમજ અન્ય સમાજ તેમજ વર્ગની કન્યાઓ રહેતી હોય છે. તેઓ શિક્ષણથી વંચિત રહેતી હતી. તે પ્રાથમિક શાળાએ જતી થાય તેમજ તેમના માતાપિતાને પણ આર્થિક મદદ મળી રહે તે માટે વિદ્યાલક્ષ્મી બોન્ડ યોજના ચાલુ કરવામાં આવી છે.આપણાં ગુજરાત રાજ્યમાં કન્યા કેળવણીને ઉત્તેજન આપવા ગુજરાત સરકાર ઘણા પ્રયાસો કરી રહી છે. તેમાં મધ્યાહન ભોજન યોજના પણ આવી જાય.ગુજરાત રાજયમાં કન્યા કેળવણીનું પ્રમાણ વધારવા, જે ગામમાં સ્ત્રી સાક્ષરતા દર 35 % થી ઓછું હોય.તેવા ગામોમાં 1 થી 100% કન્યાઓનું નામાંકન થાય અને નવા પ્રવેશ વધે તેમજ પ્રવેશ મેળવનાર ધોરણ-7 સુધી પોતાનો અભ્યાસ ચાલુ.ધોરણ 7 સુધી અભ્યાસ ચાલુ રાખે તે માટે આ યોજના લાવવામાં આવી છે.'),
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'गुणोत्सव',
//       documentH: 'कोई आवश्यक दस्तावेज़ नहीं',
//       descriptionH:
//       'प्राथमिक शिक्षा वह नींव है जिस पर प्रत्येक नागरिक और समग्र रूप से राष्ट्र का विकास होता है। हाल के दिनों में, भारत की बेहतर शिक्षा प्रणाली को अक्सर भारत के आर्थिक विकास में मुख्य योगदानकर्ताओं में से एक के रूप में उद्धृत किया जाता है। साथ ही, भारत में प्रारंभिक शिक्षा की गुणवत्ता भी एक बड़ी चिंता का विषय रही है। प्राथमिक विद्यालय के छात्रों को कम से कम पढ़ने, लिखने और सरल गणित समीकरणों का बुनियादी ज्ञान होना चाहिए जो उनकी दैनिक गतिविधियों को करने में सहायक हो सकता है।',
//       title: 'Gunotsav',
//       document: 'No required Documents',
//       id: 2,
//       description:
//       'Primary education is the foundation on which the development of every citizen and the nation as a whole built on. In recent past, India improved education system is often cited as one of the main contributors to the economic development of India. At the same time, the quality of elementary education in India has also been a major concern. Student of primary school at least have basic knowledge of reading, writing and simple mathematics equations which may be helpful in performing their daily activities.',
//       link: 'https://gunotsav.gujarat.gov.in/',
//       titleG: 'ગુણોત્સવ',
//       documentG: 'જરૂરી દસ્તાવેજો નથી',
//       descriptionG:
//       'પ્રાથમિક શિક્ષણ એ પાયો છે જેના પર દરેક નાગરિક અને સમગ્ર રાષ્ટ્રનો વિકાસ થાય છે. તાજેતરના ભૂતકાળમાં, ભારતની સુધારેલી શિક્ષણ પ્રણાલીને ઘણીવાર ભારતના આર્થિક વિકાસમાં મુખ્ય ફાળો આપનાર તરીકે ટાંકવામાં આવે છે. તે જ સમયે, ભારતમાં પ્રાથમિક શિક્ષણની ગુણવત્તા પણ મુખ્ય ચિંતાનો વિષય છે. પ્રાથમિક શાળાના વિદ્યાર્થીને ઓછામાં ઓછું વાંચન, લેખન અને ગણિતના સરળ સમીકરણોનું પ્રાથમિક જ્ઞાન હોય છે જે તેમની દૈનિક પ્રવૃત્તિઓ કરવામાં મદદરૂપ થઈ શકે છે.'),
// ];
//
// List<SchemeModal> sWdata = [
//   SchemeModal(
//       eligibility:
//       '1.This scheme is for the first two girl children of the family.\n2.Applicant must belong to Gujarat state.\n3.Applicant must have a bank account.\n4.The annual income of the applicant’s family should not be more than Rs. 2 Lakh.\m5.Girls born after 02-08-2019 are eligible to get financial assistance under Gujarat Vahli Dikri Yojana.',
//       eligibilityH:'1.यह योजना परिवार की पहली दो लड़कियों के लिए है।\n2.आवेदक गुजरात राज्य से संबंधित होना चाहिए।\n3.आवेदक के पास एक बैंक खाता होना चाहिए।\n4.आवेदक के परिवार की वार्षिक आय इससे अधिक नहीं होनी चाहिए रुपये से अधिक 2 लाख.\m5.02-08-2019 के बाद जन्मी लड़कियां गुजरात वाहली डिकरी योजना के तहत वित्तीय सहायता प्राप्त करने के लिए पात्र हैं।',
//
//       eligibilityG: '1.આ યોજના પરિવારની પ્રથમ બે દીકરીઓ માટે છે.\n2.અરજદાર ગુજરાત રાજ્યનો હોવો જોઈએ.\n3.અરજદારનું બેંક ખાતું હોવું આવશ્યક છે.\n4.અરજદારના પરિવારની વાર્ષિક આવક વધુ ન હોવી જોઈએ. કરતાં રૂ. 2 લાખ.\m5.02-08-2019 પછી જન્મેલી છોકરીઓ ગુજરાત વહલી દિકરી યોજના હેઠળ નાણાકીય સહાય મેળવવા માટે પાત્ર છે.',
//       titleH: 'वहली डिकरी योजना',
//       documentH:
//       '1. गुजरात का अधिवास\n2. आधार कार्ड\n3. पासपोर्ट साइज फोटो\n4. आय प्रमाण पत्र\n5. जाति प्रमाण पत्र\n6. बच्चे का जन्म प्रमाण पत्र\n7. बैंक के खाते का विवरण',
//       descriptionH:
//       'उपमुख्यमंत्री नितिन पटेल ने कहा कि इस योजना में प्रारंभिक हस्तक्षेप भी शामिल होगा, क्योंकि परिवार की पहली और दूसरी बेटी को कक्षा I में दाखिला लेने पर 4,000 रुपये की वित्तीय सहायता दी जाएगी, कक्षा IX में नामांकन पर 6,000 रुपये की वित्तीय सहायता दी जाएगी। यह योजना 2 लाख रुपये प्रति वर्ष से कम आय वाले गरीब परिवारों की लड़कियों के लिए होगी। पटेल ने कहा, "इस योजना का उद्देश्य समाज में लड़कियों की सामाजिक-आर्थिक स्थिति को मजबूत करके, उनकी स्कूल छोड़ने की दर को रोकना और बचपन में उनके विवाह को रोककर बालिका जन्म दर में सुधार करना है।',
//       title: 'Vahli Dikri Yojana',
//       document:
//       '1. Domicile of Gujarat\n2. Aadhar Card\n3. Passport Size Photo\n4. Income Certificate\n5. Caste Certificate\n6. Birth Certificate of Child\n7. Bank Account Details',
//       id: 1,
//       description:
//       'Deputy chief minister Nitin Patel said that the scheme would also have early intervention part, as financial aid of Rs 4,000 will be given to first and second daughter of a family when she enrols in Class I, Rs 6,000 on enrolment in Class IX. The scheme will be for girls from poor families with incomes below Rs 2 lakh a year. “The scheme aims to improve the girl child birth rate by strengthening the socio-economic status of girls in society, arrest their dropout rate and prevent their marriages as children,” said Patel',
//       link: 'https://www.myscheme.gov.in/schemes/vdy#details',
//       titleG: 'વવ્હાલી દિકરી યોજના',
//       documentG:
//       '1. ગુજરાતનું નિવાસસ્થાન\n2. આધાર કાર્ડ\n3. પાસપોર્ટ સાઇઝનો ફોટો\n4. આવકનું પ્રમાણપત્ર\n5. જાતિ પ્રમાણપત્ર\n6. બાળકનું જન્મ પ્રમાણપત્ર\n7. બેંક ખાતાની વિગતો',
//       descriptionG:
//       'નાયબ મુખ્ય પ્રધાન નીતિન પટેલે જણાવ્યું હતું કે આ યોજનામાં પ્રારંભિક હસ્તક્ષેપનો ભાગ પણ હશે, કારણ કે જ્યારે પરિવારની પ્રથમ અને બીજી પુત્રી ધોરણ I માં પ્રવેશ મેળવે છે ત્યારે તેને 4,000 રૂપિયાની નાણાકીય સહાય આપવામાં આવશે, ધોરણ 9 માં નોંધણી પર 6,000 રૂપિયા. આ યોજના ગરીબ પરિવારની છોકરીઓ માટે છે જેની આવક વાર્ષિક 2 લાખ રૂપિયાથી ઓછી છે. પટેલે જણાવ્યું હતું કે, "આ યોજનાનો હેતુ સમાજમાં છોકરીઓની સામાજિક-આર્થિક સ્થિતિને મજબૂત કરીને, તેમના ડ્રોપઆઉટ રેટને રોકવા અને બાળકો તરીકે તેમના લગ્ન અટકાવીને બાળકીનો જન્મ દર સુધારવાનો છે'),
//   SchemeModal(
//       eligibility: '',
//       eligibilityH: '',
//       eligibilityG: '',
//       titleH: 'मुख्यमंत्री अमृतम (एमए) वात्सल्य योजना',
//       documentH:
//       '1. पते का प्रमाण\n2. पहचान प्रमाण\n3. आय का प्रमाण\n4. प्रमाणपत्र जिसमें कहा गया हो कि आपका परिवार गरीबी रेखा से नीचे के लिए पात्र है',
//       descriptionH:
//       'स्वास्थ्य देखभाल पर घरेलू खर्च की उच्च लागत के परिणामस्वरूप बड़ी संख्या में परिवार गरीबी में धकेल दिए जाते हैं। गरीबी रेखा से नीचे (बीपीएल) आबादी विशेष रूप से विनाशकारी स्वास्थ्य जोखिमों के प्रति संवेदनशील है। गुजरात में बीपीएल आबादी के सामने आने वाली इस प्रमुख कमजोरी को दूर करने के लिए, राज्य सरकार ने मुख्यमंत्री अमृतम (एमए) योजना नामक एक चिकित्सा देखभाल योजना शुरू की है। योजना का उद्देश्य स्वास्थ्य देखभाल प्रदाताओं के एक ईएम पैनल नेटवर्क के माध्यम से अस्पताल में भर्ती, सर्जरी और उपचार से जुड़ी पहचानी गई बीमारियों के इलाज के लिए बीपीएल परिवारों की गुणवत्तापूर्ण चिकित्सा और शल्य चिकित्सा देखभाल तक पहुंच में सुधार करना है।',
//       title: 'Mukhya Mantri Amrutum (MA) Vatsalya Yojana',
//       document:
//       '1. Address proof\n2. Identification proof\n3. Proof of income\n4. Certificate saying that your family qualifies for the below-the-poverty line',
//       id: 2,
//       description:
//       'A large number of households are pushed into poverty as a result of the high costs of household spending on health care. The Below Poverty Line (BPL) population is especially vulnerable to catastrophic health risks. To address this key vulnerability faced by the BPL population in Gujarat, the State Government has launched a medical care scheme called Mukhyamantri Amrutum (MA) Yojana. The objective of the scheme is to improve access of BPL families to quality medical and surgical care for the treatment of identified diseases involving hospitalization, surgeries and therapies through an em panel network of health care providers',
//       link: 'https://www.myscheme.gov.in/schemes/ma',
//       titleG: 'મુખ્ય મંત્રી અમૃતમ (MA) વાત્સલ્ય યોજના',
//       documentG:
//       '1. સરનામાનો પુરાવો\n2. ઓળખનો પુરાવો\n3. આવકનો પુરાવો\n4. પ્રમાણપત્ર જણાવે છે કે તમારું કુટુંબ ગરીબી રેખા નીચે માટે લાયક છે',
//       descriptionG:
//       'આરોગ્ય સંભાળ પર ઘરગથ્થુ ખર્ચના ઊંચા ખર્ચના પરિણામે મોટી સંખ્યામાં પરિવારો ગરીબીમાં ધકેલાય છે. ગરીબી રેખા નીચે (BPL) વસ્તી ખાસ કરીને આપત્તિજનક આરોગ્ય જોખમો માટે સંવેદનશીલ છે. ગુજરાતમાં BPL વસ્તી દ્વારા સામનો કરવામાં આવતી આ મુખ્ય નબળાઈને દૂર કરવા માટે, રાજ્ય સરકારે મુખ્ય મંત્રી અમૃતમ (MA) યોજના નામની તબીબી સંભાળ યોજના શરૂ કરી છે. આ યોજનાનો ઉદ્દેશ્ય આરોગ્ય સંભાળ પ્રદાતાઓના એમ પેનલ નેટવર્ક દ્વારા હોસ્પિટલમાં દાખલ, શસ્ત્રક્રિયાઓ અને ઉપચારો સાથે સંકળાયેલા ઓળખાયેલા રોગોની સારવાર માટે ગુણવત્તાયુક્ત તબીબી અને સર્જીકલ સંભાળ માટે બીપીએલ પરિવારોની ઍક્સેસમાં સુધારો કરવાનો છે'),
// ];

List<SchemeModal> uadata = [
  SchemeModal(
      title: 'Krishak Durghatna Kalyan Yojana',
      document: '(a)Attested copy of Khatauni, OR\n'
          '(b) Attested copy of the registered lease for the registered private lessee\n'
          '(c) Any one of the following certificates for Bataidar:-\n'
          '(i)- A certificate will be taken from the land owner or his heir/legal heir to the effect that agricultural work has been done by the person who died in the accident or has become disabled on his land in the crop year. Or\n'
          '(ii)- If the land owner is not available, the certificate is given by the village head and regional accountant with his signature and seal that the said affected person was a sharecropper on the land of the landowner.\n'
          '1. Age certificate.\n'
          '2. Address proof.\n'
          '3. Family member details.',
      id: 1,
      description:
          'Under this scheme, while expanding the definition of a farmer, along with the Khatauni registered account holder / co-account holder, such earning members of their family whose main source of livelihood is agricultural income from the land registered in the name of the account holder / co-account holder and such landless persons. Those who do agricultural work on the land obtained on lease or on share and whose main means of livelihood is agriculture on the land taken on such lease or share have also been included.',
      link: ' https://www.myscheme.gov.in/schemes/kdky',
      titleG: 'કૃષક દુર્ઘટના કલ્યાણ યોજના ',
      documentG: '(a) ખતૌનીની પ્રમાણિત નકલ, અથવા\n'
          '(b) રજિસ્ટર્ડ ખાનગી પટેદાર માટે નોંધાયેલ લીઝની પ્રમાણિત નકલ\n'
          '(c) બટેદાર માટે નીચેનામાંથી કોઈપણ એક પ્રમાણપત્ર:-\n'
          '(i)- જમીનના માલિક અથવા તેના વારસદાર/કાયદેસરના વારસદાર પાસેથી એક પ્રમાણપત્ર લેવામાં આવશે કે જે વ્યક્તિ અકસ્માતમાં મૃત્યુ પામ્યો હોય અથવા તેની જમીન પર પાક વર્ષમાં અપંગ બની ગયો હોય તે વ્યક્તિ દ્વારા કૃષિ કાર્ય કરવામાં આવ્યું હોય. અથવા\n'
          '(ii)- જો જમીન માલિક ઉપલબ્ધ ન હોય, તો ગામના વડા અને પ્રાદેશિક એકાઉન્ટન્ટ દ્વારા તેમની સહી અને સીલ સાથેનું પ્રમાણપત્ર આપવામાં આવે છે કે અસરગ્રસ્ત વ્યક્તિ જમીન માલિકની જમીન પર શેરખેતી હતી.\n'
          '1. ઉંમર પ્રમાણપત્ર.\n'
          '2. સરનામાનો પુરાવો.\n'
          '3. પરિવારના સભ્યોની વિગતો.',
      descriptionG:
          'આ યોજના હેઠળ, ખેડૂતની વ્યાખ્યાને વિસ્તૃત કરતી વખતે, ખતૌની નોંધાયેલ ખાતાધારક/સહ-ખાતાધારક સાથે, તેમના કુટુંબના આવા કમાતા સભ્યો કે જેમની આજીવિકાનો મુખ્ય સ્ત્રોત ખાતાધારકના નામે નોંધાયેલ જમીનમાંથી ખેતીની આવક છે. / સહ-એકાઉન્ટ ધારક અને આવી જમીન વિહોણી વ્યક્તિઓ. જેઓ ભાડાપટ્ટે અથવા શેર પર મેળવેલ જમીન પર કૃષિ કાર્ય કરે છે અને જેમની આજીવિકાનું મુખ્ય સાધન આવી લીઝ અથવા શેર પર લેવામાં આવેલી જમીન પર ખેતી છે તેમને પણ સામેલ કરવામાં આવ્યા છે',
      titleH: 'किसान क्रेडिट कार्ड (केसीसी) योजना',
      documentH: '(ए)खतौनी की सत्यापित प्रतिलिपि, या\n'
          '(बी) पंजीकृत निजी पट्टेदार के लिए पंजीकृत पट्टे की सत्यापित प्रति\n'
          '(सी) बटाईदार के लिए निम्नलिखित प्रमाणपत्रों में से कोई एक:-\n'
          '(i)- भूमि स्वामी अथवा उसके उत्तराधिकारी/कानूनी उत्तराधिकारी से इस आशय का प्रमाण पत्र लिया जाएगा कि फसल वर्ष में उसकी भूमि पर दुर्घटना में मृत अथवा विकलांग हो चुके व्यक्ति द्वारा कृषि कार्य किया गया है। या\n'
          '(ii)-यदि भूमि स्वामी उपलब्ध नहीं है तो ग्राम प्रधान एवं क्षेत्रीय लेखपाल द्वारा अपने हस्ताक्षर एवं मुहर के साथ प्रमाण पत्र दिया जाता है कि उक्त प्रभावित व्यक्ति भूमि स्वामी की भूमि पर बटाईदार था।'
          '1. आयु प्रमाण पत्र.\n'
          '2. पते का प्रमाण.\n'
          '3. परिवार के सदस्य का विवरण।',
      descriptionH:
          'इस योजना के तहत किसान की परिभाषा का विस्तार करते हुए खतौनी के पंजीकृत खातेदार/सहखातेदार के साथ-साथ उसके परिवार के ऐसे कमाऊ सदस्य जिनकी आजीविका का मुख्य स्रोत खाते के नाम पर दर्ज भूमि से कृषि आय है। धारक। / सहखातेदार एवं ऐसे भूमिहीन व्यक्ति। इसमें वे लोग भी शामिल हैं जो पट्टे या शेयर पर प्राप्त भूमि पर कृषि कार्य करते हैं और जिनकी आजीविका का मुख्य साधन ऐसे पट्टे या शेयर पर प्राप्त भूमि पर कृषि है।',
      eligibility:
          '1. After September 14, 2019,  the families of the farmers who were victims of the accident can also get the benefit of the scheme.\n'
          '2. The age of the applicant farmer should be between 18 to 70 years.\n'
          '3. After the death of the applicant farmer in the accident, the parents, wife, daughter-in-law, son, daughter, grandson and granddaughter of his family will be provided financial assistance by the government.\n'
          '4. Those farmers of the state who do not have their own agricultural land and do the work of farming on share or rent.\n'
          '5. The benefit of UP Chief Minister Farmer Accident Welfare Scheme will be given to the farmer suffering from 60 percent or more disability.',
      eligibilityH:
          '1. 14 सितंबर 2019 के बाद हादसे का शिकार हुए किसानों के परिवारों को भी योजना का लाभ मिल सकता है.\n'
          '2. आवेदक किसान की उम्र 18 से 70 साल के बीच होनी चाहिए.\n'
          '3. आवेदक किसान की दुर्घटना में मृत्यु होने पर उसके परिवार के माता-पिता, पत्नी, बहू, बेटा, बेटी, पोते और पोती को सरकार द्वारा आर्थिक सहायता प्रदान की जाएगी।\n'
          '4. राज्य के वे किसान जिनके पास अपनी कृषि भूमि नहीं है और बटाई या किराये पर खेती का कार्य करते हैं।\n'
          '5. यूपी मुख्यमंत्री कृषक दुर्घटना कल्याण योजना का लाभ 60 प्रतिशत या उससे अधिक विकलांगता से पीड़ित किसान को दिया जाएगा।',
      eligibilityG:
          '1. 14 સપ્ટેમ્બર, 2019 પછી, અકસ્માતનો ભોગ બનેલા ખેડૂતોના પરિવારોને પણ યોજનાનો લાભ મળી શકશે.\n'
          '2. અરજદાર ખેડૂતની ઉંમર 18 થી 70 વર્ષની વચ્ચે હોવી જોઈએ.\n'
          '3. અકસ્માતમાં અરજદાર ખેડૂતના મૃત્યુ બાદ તેમના પરિવારના માતા-પિતા, પત્ની, પુત્રવધૂ, પુત્ર, પુત્રી, પૌત્ર અને પૌત્રીને સરકાર દ્વારા આર્થિક સહાય આપવામાં આવશે.\n'
          '4. રાજ્યના એવા ખેડૂતો કે જેમની પાસે પોતાની ખેતીની જમીન નથી અને તેઓ શેર કે ભાડે ખેતીનું કામ કરે છે.\n'
          '5. યુપી મુખ્યમંત્રી ખેડૂત અકસ્માત કલ્યાણ યોજનાનો લાભ 60 ટકા કે તેથી વધુ વિકલાંગતા ધરાવતા ખેડૂતને આપવામાં આવશે.'),
];

List<SchemeModal> uedata = [
  SchemeModal(
    title: 'Mahadevi Verma Shramik Pustak Kraya Dhan Yojana',
    document:
        '1. Attested copy of the online application form filled in relation to the scheme.\n'
        '2. Readable self-certified copy of the beneficiary\'s bank passbook (with the bank\'s IFSC code).\n'
        '3. Readable copy of ration card, family register or other government record in confirmation of the relationship of the dependent.\n'
        '4. Readable attested copy of Aadhar card of the beneficiary father and mother.\n'
        '5. Attested copy of the fee receipt of the course in which admission has been taken.',
    id: 1,
    description:
        'The Mahadevi Verma Shramik Pustak Kraya Dhan Yojana (MVSPKDPY), launched in 2022 by the Uttar Pradesh government, is a commendable initiative aimed at empowering daughters of construction workers. Recognizing the financial challenges faced by these families, the scheme offers a one-time grant to aid these students in purchasing books for their higher education. This financial assistance proves to be a significant support, alleviating some of the burden on families and enabling these young women to focus on their academic pursuits. By facilitating their access to necessary course materials, the MVSPKDPY fosters a culture of higher learning within this community and paves the way for the daughters of construction workers to achieve their educational goals.',
    link: 'https://www.myscheme.gov.in/schemes/mvspkdpy',
    titleG: 'મહાદેવી વર્મા શ્રમિક પુસ્તક ક્રાયા ધન યોજના',
    documentG: '1. સ્કીમના સંબંધમાં ભરેલ ઓનલાઈન અરજી ફોર્મની પ્રમાણિત નકલ.\n'
        '2. લાભાર્થીની બેંક પાસબુકની વાંચી શકાય તેવી સ્વ-પ્રમાણિત નકલ (બેંકના IFSC કોડ સાથે).\n'
        '3. આશ્રિતના સંબંધની પુષ્ટિમાં રેશન કાર્ડ, ફેમિલી રજિસ્ટર અથવા અન્ય સરકારી રેકોર્ડની વાંચી શકાય તેવી નકલ.\n'
        '4. લાભાર્થી પિતા અને માતાના આધાર કાર્ડની વાંચી શકાય તેવી પ્રમાણિત નકલ.\n'
        '5. જે કોર્સમાં પ્રવેશ લેવામાં આવ્યો છે તેની ફીની રસીદની પ્રમાણિત નકલ.',
    descriptionG:
        'ઉત્તર પ્રદેશ સરકાર દ્વારા 2022 માં શરૂ કરવામાં આવેલી મહાદેવી વર્મા શ્રમિક પુસ્તક ક્રાયા ધન યોજના (MVSPKDPY) બાંધકામ કામદારોની પુત્રીઓને સશક્તિકરણ કરવાના હેતુથી પ્રશંસનીય પહેલ છે. આ પરિવારો દ્વારા સામનો કરવામાં આવતા નાણાકીય પડકારોને ઓળખીને, આ યોજના આ વિદ્યાર્થીઓને તેમના ઉચ્ચ શિક્ષણ માટે પુસ્તકો ખરીદવામાં મદદ કરવા માટે એક વખતની ગ્રાન્ટ ઓફર કરે છે. આ નાણાકીય સહાય પરિવારો પરના કેટલાક બોજને દૂર કરવા અને આ યુવતીઓને તેમના શૈક્ષણિક કાર્યો પર ધ્યાન કેન્દ્રિત કરવા સક્ષમ બનાવવા માટે એક મહત્વપૂર્ણ આધાર સાબિત થાય છે. જરૂરી અભ્યાસક્રમ સામગ્રીની તેમની ઍક્સેસની સુવિધા આપીને, MVSPKDPY આ સમુદાયમાં ઉચ્ચ શિક્ષણની સંસ્કૃતિને પ્રોત્સાહન આપે છે અને બાંધકામ કામદારોની દીકરીઓ માટે તેમના શૈક્ષણિક લક્ષ્યોને પ્રાપ્ત કરવાનો માર્ગ મોકળો કરે છે.',
    titleH: 'महादेवी वर्मा श्रमिक पुस्तक क्रय धन योजना',
    documentH:
        '1. योजना के संबंध में भरे गए ऑनलाइन आवेदन पत्र की सत्यापित प्रति।\n'
        '2. लाभार्थी के बैंक पासबुक की पढ़ने योग्य स्व-प्रमाणित प्रति (बैंक के आईएफएससी कोड के साथ)।\n'
        '3. आश्रित के रिश्ते की पुष्टि में राशन कार्ड, परिवार रजिस्टर या अन्य सरकारी रिकॉर्ड की पठनीय प्रति।\n'
        '4. लाभार्थी पिता और माता के आधार कार्ड की पठनीय प्रमाणित प्रति।\n'
        '5. जिस पाठ्यक्रम में प्रवेश लिया गया है उसकी फीस रसीद की सत्यापित प्रति।',
    descriptionH:
        'उत्तर प्रदेश सरकार द्वारा 2022 में शुरू की गई महादेवी वर्मा श्रमिक पुस्तक क्रय धन योजना (एमवीएसपीकेडीपीवाई) निर्माण श्रमिकों की बेटियों को सशक्त बनाने के उद्देश्य से एक सराहनीय पहल है। इन परिवारों के सामने आने वाली वित्तीय चुनौतियों को स्वीकार करते हुए, योजना इन छात्रों को उनकी उच्च शिक्षा के लिए किताबें खरीदने में सहायता करने के लिए एकमुश्त अनुदान प्रदान करती है। यह वित्तीय सहायता एक महत्वपूर्ण समर्थन साबित होती है, परिवारों पर कुछ बोझ कम करती है और इन युवा महिलाओं को अपनी शैक्षणिक गतिविधियों पर ध्यान केंद्रित करने में सक्षम बनाती है। आवश्यक पाठ्यक्रम सामग्री तक उनकी पहुंच को सुविधाजनक बनाकर, एमवीएसपीकेडीपीवाई इस समुदाय के भीतर उच्च शिक्षा की संस्कृति को बढ़ावा देता है और निर्माण श्रमिकों की बेटियों के लिए उनके शैक्षिक लक्ष्यों को प्राप्त करने का मार्ग प्रशस्त करता है।',
    eligibility:
        '1. The worker must be working in an establishment registered under the Shops and Commercial Establishments Act, 1962 or the Factories Act, 1948 in Uttar Pradesh.\n'
        '2. The monthly salary (basic salary + dearness allowance) of the worker should not exceed ₹15,000/-.\n'
        '3. The worker must have completed at least six months of continuous service in the establishment/factory and must be in service at the time of application.\n'
        '4. The benefit of the scheme will be available to only two daughters of the worker.\n'
        '5. In case the worker is a woman herself, she will be eligible for the benefit.\n'
        '6. Where both the parents are working as workers in factories/establishments, then only one of them will be eligible for this assistance.',
    eligibilityH:
        '1. कर्मचारी को उत्तर प्रदेश में दुकान और वाणिज्यिक प्रतिष्ठान अधिनियम, 1962 या फैक्टरी अधिनियम, 1948 के तहत पंजीकृत प्रतिष्ठान में काम करना चाहिए।\n'
        '2. कर्मचारी का मासिक वेतन (मूल वेतन + महंगाई भत्ता) ₹15,000/- से अधिक नहीं होना चाहिए।\n'
        '3. कर्मचारी को प्रतिष्ठान/कारखाने में कम से कम छह महीने की निरंतर सेवा पूरी करनी होगी और आवेदन के समय सेवा में होना चाहिए।\n'
        '4. योजना का लाभ श्रमिक की केवल दो बेटियों को ही मिलेगा।\n'
        '5. यदि कार्यकर्ता स्वयं महिला है, तो वह लाभ के लिए पात्र होगी।\n'
        '6. जहां माता-पिता दोनों कारखानों/प्रतिष्ठानों में श्रमिक के रूप में कार्यरत हैं, वहां उनमें से केवल एक ही इस सहायता के लिए पात्र होगा।',
    eligibilityG:
        '1. કાર્યકર્તાએ ઉત્તર પ્રદેશમાં દુકાનો અને વાણિજ્યિક સ્થાપના અધિનિયમ, 1962 અથવા ફેક્ટરી એક્ટ, 1948 હેઠળ નોંધાયેલ સંસ્થામાં કામ કરવું આવશ્યક છે.\n'
        '2. કામદારનો માસિક પગાર (મૂળભૂત પગાર + મોંઘવારી ભથ્થું) ₹15,000/-થી વધુ ન હોવો જોઈએ.\n'
        '3. કાર્યકર્તાએ સ્થાપના/કારખાનામાં ઓછામાં ઓછા છ મહિનાની સતત સેવા પૂર્ણ કરી હોય અને અરજી કરતી વખતે સેવામાં હોવા જોઈએ.\n'
        '4. યોજનાનો લાભ કામદારની માત્ર બે દીકરીઓને જ મળશે.\n'
        '5. જો કાર્યકર પોતે મહિલા હોય, તો તે લાભ માટે પાત્ર રહેશે.\n'
        '6. જ્યાં બંને માતા-પિતા કારખાના/સ્થાપનાઓમાં કામદાર તરીકે કામ કરતા હોય, તો તેમાંથી માત્ર એક જ આ સહાય માટે પાત્ર હશે.',
  ),
  SchemeModal(
    title: 'Atal Awasiya Vidyala Yojana',
    document: '1. Parents Labor Registration cards.\n'
        '2. Child birth certificate\n'
        '3. Mark sheet of previous class attended.\n'
        '4. Medical certificate (if required).\n'
        '5. Passport size photograph.',
    id: 2,
    description:
        'The Atal Awasiya Vidyalaya Yojana is an initiative launched by the Uttar Pradesh government to provide free education to children of construction workers employed in the informal sector. Under this scheme, two children of registered workers between the ages of 6 and 16 receive free residential education in dedicated schools.The UP Atal Awasiya Vidyalaya Yojana is a scheme that provides free education to poor children of construction workers in Uttar Pradesh. The scheme is currently being implemented in 18 districts of the state. The goal of the scheme is to provide these children with the opportunity to succeed in life and improve their standard of living',
    link: 'https://www.myscheme.gov.in/schemes/aavy',
    titleG: 'અટલ આવાસ વિદ્યાલય યોજના',
    documentG: '1. પેરેન્ટ્સ લેબર રજીસ્ટ્રેશન કાર્ડ.\n'
        '2. બાળ જન્મ પ્રમાણપત્ર\n'
        '3. અગાઉના વર્ગની માર્કશીટ હાજરી આપી.\n'
        '4. તબીબી પ્રમાણપત્ર (જો જરૂરી હોય તો).\n'
        '5. પાસપોર્ટ સાઇઝનો ફોટોગ્રાફ.',
    descriptionG:
        'અટલ આવાસ વિદ્યાલય યોજના એ ઉત્તર પ્રદેશ સરકાર દ્વારા અનૌપચારિક ક્ષેત્રમાં કાર્યરત બાંધકામ કામદારોના બાળકોને મફત શિક્ષણ આપવા માટે શરૂ કરવામાં આવેલ પહેલ છે. આ યોજના હેઠળ, 6 થી 16 વર્ષની વય વચ્ચેના નોંધાયેલા કામદારોના બે બાળકો સમર્પિત શાળાઓમાં મફત નિવાસી શિક્ષણ મેળવે છે. UP અટલ આવાસ વિદ્યાલય યોજના એ એક યોજના છે જે ઉત્તર પ્રદેશમાં બાંધકામ કામદારોના ગરીબ બાળકોને મફત શિક્ષણ પૂરું પાડે છે. આ યોજના હાલમાં રાજ્યના 18 જિલ્લામાં અમલમાં છે. યોજનાનો ધ્યેય આ બાળકોને જીવનમાં સફળ થવાની અને તેમના જીવનધોરણમાં સુધારો કરવાની તક પૂરી પાડવાનો છે',
    titleH: 'अटल आवासीय विद्यालय योजना',
    documentH: '1. माता-पिता श्रम पंजीकरण कार्ड.\n'
        '2. बच्चे का जन्म प्रमाणपत्र\n'
        '3. पिछली कक्षा की मार्कशीट में भाग लिया।\n'
        '4. चिकित्सा प्रमाणपत्र (यदि आवश्यक हो).\n'
        '5. पासपोर्ट के आकार की तस्वीर।',
    descriptionH:
        'अटल आवासीय विद्यालय योजना उत्तर प्रदेश सरकार द्वारा अनौपचारिक क्षेत्र में कार्यरत निर्माण श्रमिकों के बच्चों को मुफ्त शिक्षा प्रदान करने के लिए शुरू की गई एक पहल है। इस योजना के तहत, पंजीकृत श्रमिकों के 6 से 16 वर्ष की आयु के बीच के दो बच्चों को समर्पित स्कूलों में मुफ्त आवासीय शिक्षा प्राप्त होती है। यूपी अटल आवासीय विद्यालय योजना एक ऐसी योजना है जो उत्तर प्रदेश में निर्माण श्रमिकों के गरीब बच्चों को मुफ्त शिक्षा प्रदान करती है। यह योजना वर्तमान में राज्य के 18 जिलों में लागू की जा रही है। योजना का लक्ष्य इन बच्चों को जीवन में सफल होने और उनके जीवन स्तर में सुधार करने का अवसर प्रदान करना है।',
    eligibility:
        '1. Children destitute during the Corona period, identified by the Women Welfare Department, Lucknow.\n'
        '2. Children for the Chief Minister Child Service Scheme (General) are eligible.\n'
        '3. Orphan children and offspring of duly registered construction workers, who have completed at least 01 year (365 days) membership period of the board after registration.\n'
        '4. A maximum of 02 children per registered worker can avail educational benefits.',
    eligibilityH:
        '1. कोरोना काल में निराश्रित बच्चों को महिला कल्याण विभाग लखनऊ द्वारा चिन्हित किया गया।\n'
        '2. मुख्यमंत्री बाल सेवा योजना (सामान्य) के लिए बच्चे पात्र हैं।\n'
        '3. अनाथ बच्चे और विधिवत पंजीकृत निर्माण श्रमिकों की संतानें, जिन्होंने पंजीकरण के बाद बोर्ड की कम से कम 01 वर्ष (365 दिन) की सदस्यता अवधि पूरी कर ली हो।\n'
        '4. प्रति पंजीकृत श्रमिक अधिकतम 02 बच्चे शैक्षिक लाभ प्राप्त कर सकते हैं।',
    eligibilityG:
        '1. મહિલા કલ્યાણ વિભાગ, લખનૌ દ્વારા ઓળખવામાં આવેલા કોરોના સમયગાળા દરમિયાન નિરાધાર બાળકો.\n'
        '2. મુખ્યમંત્રી બાળ સેવા યોજના (સામાન્ય) માટે બાળકો પાત્ર છે.\n'
        '3. અનાથ બાળકો અને યોગ્ય રીતે નોંધાયેલા બાંધકામ કામદારોના સંતાનો, જેમણે નોંધણી પછી બોર્ડની સભ્યપદનો ઓછામાં ઓછો 01 વર્ષ (365 દિવસ) પૂર્ણ કર્યો હોય.\n'
        '4. નોંધાયેલ કાર્યકર દીઠ વધુમાં વધુ 02 બાળકો શૈક્ષણિક લાભો મેળવી શકે છે.',
  ),
  SchemeModal(
    title: 'Kaushal Vikas Yojana',
    document: '1. Photocopy of registration certificate.\n'
        '2. Proof of deposit of updated contribution.\n'
        '3. Application form related to the discipline.',
    id: 3,
    description:
        'This scheme aims to address the skill gap faced by construction workers registered with the Board by providing them with access to essential training opportunities for competency development and technical advancement. Currently, construction workers rely solely on on-the-job experience, lacking formal technical training due to institutional limitations. This hinders their ability to secure fair wages and access better services. Recognizing the financial constraints often preventing workers and their families from pursuing formal training, this scheme offers reimbursement for both training costs and lost wages. By bridging this financial gap, the initiative empowers individuals to elevate their skillsets and career prospects.',
    link: 'https://www.myscheme.gov.in/schemes/kvy',
    titleG: 'કૌશલ વિકાસ યોજના',
    documentG: '1. નોંધણી પ્રમાણપત્રની ફોટોકોપી.\n'
        '2. અપડેટ કરેલ યોગદાન જમા કરાવવાનો પુરાવો.\n'
        '3. શિસ્ત સંબંધિત અરજી ફોર્મ.',
    descriptionG:
        'આ યોજનાનો ઉદ્દેશ્ય બોર્ડમાં નોંધાયેલા બાંધકામ કામદારોને સક્ષમતાના વિકાસ અને ટેકનિકલ પ્રગતિ માટે આવશ્યક તાલીમની તકો ઉપલબ્ધ કરાવીને તેમને અનુભવાતી કૌશલ્ય અંતરને દૂર કરવાનો છે. હાલમાં, બાંધકામ કામદારો ફક્ત નોકરી પરના અનુભવ પર આધાર રાખે છે, સંસ્થાકીય મર્યાદાઓને કારણે ઔપચારિક તકનીકી તાલીમનો અભાવ છે. આ તેમની વાજબી વેતન સુરક્ષિત કરવાની અને વધુ સારી સેવાઓ મેળવવાની ક્ષમતાને અવરોધે છે. કામદારો અને તેમના પરિવારોને ઔપચારિક તાલીમ લેતા અટકાવતી નાણાકીય અવરોધોને ઓળખીને, આ યોજના તાલીમ ખર્ચ અને ખોવાયેલ વેતન બંને માટે વળતર આપે છે. આ નાણાકીય અંતરને દૂર કરીને, પહેલ વ્યક્તિઓને તેમની કુશળતા અને કારકિર્દીની સંભાવનાઓને ઉન્નત કરવા માટે સશક્ત બનાવે છે.',
    titleH: 'कौशल विकास योजना',
    documentH: '1. पंजीकरण प्रमाणपत्र की फोटोकॉपी.\n'
        '2. अद्यतन अंशदान जमा करने का प्रमाण.\n'
        '3. अनुशासन से संबंधित आवेदन प्रपत्र.',
    descriptionH:
        'इस योजना का उद्देश्य बोर्ड के साथ पंजीकृत निर्माण श्रमिकों को योग्यता विकास और तकनीकी उन्नति के लिए आवश्यक प्रशिक्षण अवसरों तक पहुंच प्रदान करके उनके सामने आने वाले कौशल अंतर को संबोधित करना है। वर्तमान में, निर्माण श्रमिक संस्थागत सीमाओं के कारण औपचारिक तकनीकी प्रशिक्षण की कमी के कारण केवल नौकरी के अनुभव पर निर्भर रहते हैं। इससे उचित वेतन पाने और बेहतर सेवाओं तक पहुंचने की उनकी क्षमता में बाधा आती है। श्रमिकों और उनके परिवारों को औपचारिक प्रशिक्षण लेने से रोकने वाली वित्तीय बाधाओं को ध्यान में रखते हुए, यह योजना प्रशिक्षण लागत और खोई हुई मजदूरी दोनों के लिए प्रतिपूर्ति प्रदान करती है। इस वित्तीय अंतर को पाटकर, यह पहल व्यक्तियों को अपने कौशल और करियर की संभावनाओं को बढ़ाने के लिए सशक्त बनाती है।',
    eligibility:
        '1. Applicant himself or his/her husband/wife/father must be a registered construction worker and his/her contribution must be updated.\n'
        '2. If the registered worker himself wants to undergo training, then his/her age should be between 18-35.\n'
        '3. Age dependencies: (Dependent wife/ unmarried daughter has no age limit)(The maximum age of dependent son is 21 years).',
    eligibilityH:
        '1. आवेदक स्वयं या उसके पति/पत्नी/पिता एक पंजीकृत निर्माण श्रमिक होना चाहिए और उसका योगदान अद्यतन होना चाहिए।\n'
        '2. यदि पंजीकृत श्रमिक स्वयं प्रशिक्षण लेना चाहता है तो उसकी आयु 18-35 के बीच होनी चाहिए।\n'
        '3. आयु निर्भरता: (आश्रित पत्नी/अविवाहित पुत्री की कोई आयु सीमा नहीं है) (आश्रित पुत्र की अधिकतम आयु 21 वर्ष है)।',
    eligibilityG:
        '1. અરજદાર પોતે અથવા તેના/તેણીના પતિ/પત્ની/પિતા રજિસ્ટર્ડ બાંધકામ કામદાર હોવા જોઈએ અને તેના/તેણીના યોગદાનને અપડેટ કરવું આવશ્યક છે.\n'
        '2. જો નોંધાયેલ કાર્યકર પોતે તાલીમ લેવા માંગતો હોય, તો તેની ઉંમર 18-35 ની વચ્ચે હોવી જોઈએ.\n'
        '3. વય અવલંબન: (આશ્રિત પત્ની / અપરિણીત પુત્રીની કોઈ વય મર્યાદા નથી) (આશ્રિત પુત્રની મહત્તમ ઉંમર 21 વર્ષ છે).',
  ),
];

List<SchemeModal> uhdata = [
  SchemeModal(
      title: 'Gambhir Bimari Sahayata Yojana',
      document: '1. Copy of construction worker registration card.\n'
          '2. Copy of Aadhar Card.\n'
          '3. Copy of bank passbook for account number, branch name and IFSC code.\n'
          '4. Disease related Details.\n'
          '5. Doctors certificate on format.\n'
          '6. Medicines original bill.\n'
          '7. Certificate of being an unmarried daughter or a daughter below 21 years of age.',
      id: 1,
      description:
          'The Uttar Pradesh Gambhir Bimari Sahayata Yojana is a government-funded scheme that provides financial assistance to such construction workers who are not covered under "Ayushman Bharat Jan Arogya Yojana" and "Pradhan Mantri Jan Aarogya Yojana" in the UP Building and Other Construction Workers Welfare Board.Benefits will be provided to the family member of the construction worker in case of illness, for treatment in any government hospital or autonomous hospital of the Government of India or Uttar Pradesh Government or such hospitals which have been empanelled by the National Health Authority of Ayushman Bharat Pradhan Mantri Jan Arogya Yojana or SACHIS (State Agency For Comprehensive Health Insurance and Integrated Services) functioning at the state level.',
      link: ' https://www.myscheme.gov.in/schemes/gbsy',
      titleG: 'ગંભીર બિમારી સહાયતા યોજના ',
      documentG: '1. બાંધકામ કામદાર નોંધણી કાર્ડની નકલ.\n'
          '2. આધાર કાર્ડની નકલ.\n'
          '3. એકાઉન્ટ નંબર, શાખાનું નામ અને IFSC કોડ માટે બેંક પાસબુકની નકલ.\n'
          '4. રોગ સંબંધિત વિગતો.\n'
          '5. ફોર્મેટ પર ડોકટરોનું પ્રમાણપત્ર.\n'
          '6. દવાઓનું મૂળ બિલ.\n'
          '7. અપરિણીત પુત્રી અથવા 21 વર્ષથી ઓછી ઉંમરની પુત્રી હોવાનું પ્રમાણપત્ર.',
      descriptionG:
          'ઉત્તર પ્રદેશ ગંભીર બિમારી સહાયતા યોજના એ સરકાર દ્વારા ભંડોળ પૂરું પાડવામાં આવતી યોજના છે જે આવા બાંધકામ કામદારોને નાણાકીય સહાય પૂરી પાડે છે જેઓ યુપી બિલ્ડિંગ અને અન્ય બાંધકામ કામદારો કલ્યાણમાં "આયુષ્માન ભારત જન આરોગ્ય યોજના" અને "પ્રધાનમંત્રી જન આરોગ્ય યોજના" હેઠળ આવરી લેવામાં આવતા નથી. પાટીયું.બિમારીના કિસ્સામાં બાંધકામ કામદારના પરિવારના સદસ્યને, ભારત સરકાર અથવા ઉત્તર પ્રદેશ સરકારની કોઈપણ સરકારી હોસ્પિટલ અથવા સ્વાયત્ત હોસ્પિટલ અથવા આયુષ્માન ભારતની રાષ્ટ્રીય આરોગ્ય સત્તા દ્વારા સૂચિબદ્ધ કરાયેલી આવી હોસ્પિટલોમાં સારવાર માટે લાભો આપવામાં આવશે. પ્રધાન મંત્રી જન આરોગ્ય યોજના અથવા SACHIS (સ્ટેટ એજન્સી ફોર કોમ્પ્રીહેન્સિવ હેલ્થ ઈન્સ્યોરન્સ એન્ડ ઈન્ટીગ્રેટેડ સર્વિસીસ) રાજ્ય સ્તરે કાર્યરત છે.',
      titleH: 'गंभीर बीमारी सहायता योजना',
      documentH: '1. निर्माण श्रमिक पंजीकरण कार्ड की प्रति।\n'
          '2. आधार कार्ड की कॉपी.\n'
          '3. खाता संख्या, शाखा का नाम और आईएफएससी कोड के लिए बैंक पासबुक की प्रति।\n'
          '4. रोग संबंधी विवरण.\n'
          '5. डॉक्टरों का प्रमाणपत्र प्रारूप पर.\n'
          '6. दवाइयों का मूल बिल.\n'
          '7. अविवाहित पुत्री या 21 वर्ष से कम आयु की पुत्री होने का प्रमाण पत्र।',
      descriptionH:
          'उत्तर प्रदेश गंभीर बीमारी सहायता योजना एक सरकार द्वारा वित्त पोषित योजना है जो ऐसे निर्माण श्रमिकों को वित्तीय सहायता प्रदान करती है जो यूपी भवन और अन्य निर्माण श्रमिक कल्याण में "आयुष्मान भारत जन आरोग्य योजना" और "प्रधानमंत्री जन आरोग्य योजना" के अंतर्गत नहीं आते हैं। तख़्ता।निर्माण श्रमिक के परिवार के सदस्य को बीमारी की स्थिति में भारत सरकार या उत्तर प्रदेश सरकार के किसी भी सरकारी अस्पताल या स्वायत्त अस्पताल या ऐसे अस्पताल जो आयुष्मान भारत के राष्ट्रीय स्वास्थ्य प्राधिकरण द्वारा सूचीबद्ध किए गए हैं, में इलाज के लिए लाभ प्रदान किया जाएगा। प्रधान मंत्री जन आरोग्य योजना या SACHIS (व्यापक स्वास्थ्य बीमा और एकीकृत सेवाओं के लिए राज्य एजेंसी) राज्य स्तर पर कार्य कर रही है।',
      eligibility:
          '1. Applicant must be registered workers under labor department.\n'
          '2. Beneficiary can not get the similar type of government scheme benefits like Pradhan Mantri Jan-Arogya Yojana and Chief Minister Jan-Arogya Yojana.',
      eligibilityH:
          '1. आवेदक को श्रम विभाग के अंतर्गत पंजीकृत श्रमिक होना चाहिए।\n'
          '2. लाभार्थी को प्रधानमंत्री जन-आरोग्य योजना और मुख्यमंत्री जन-आरोग्य योजना जैसी समान प्रकार की सरकारी योजना का लाभ नहीं मिल सकता है।',
      eligibilityG: '1. અરજદાર શ્રમ વિભાગ હેઠળ નોંધાયેલ કામદાર હોવા જોઈએ.\n'
          '2. લાભાર્થી પ્રધાનમંત્રી જન-આરોગ્ય યોજના અને મુખ્યમંત્રી જન-આરોગ્ય યોજના જેવી સમાન પ્રકારની સરકારી યોજનાના લાભો મેળવી શકતા નથી.'),
  SchemeModal(
      title: 'Nirmaan Kamgar Mrtyu Va Divyangta Sahayta Yojana',
      document: '1.Death certificate.\n'
          '2.Bank account photocopy.\n'
          '3.ID card photocopy.\n'
          '4.Accident reports.\n'
          '5.Disability documentation.\n'
          '6.Self-declaration.',
      id: 2,
      description:
          'The Nirman Kamgar Mrtyu Va Divyangta Sahayata Yojana Uttar Pradesh is a crucial scheme launched by the Uttar Pradesh government for the welfare of registered construction workers in the state. It provides financial assistance to the families of construction workers in case of death or disability due to accident or illness.',
      link: ' https://www.myscheme.gov.in/schemes/nkmvdsy',
      titleG: 'નિર્માણ કામગાર મૃત્યુ વા દિવ્યાંગતા સહાય યોજના',
      documentG: '1. મૃત્યુ પ્રમાણપત્ર.\n'
          '2.બેંક ખાતાની ફોટોકોપી.\n'
          '3. ID કાર્ડની ફોટોકોપી.\n'
          '4. અકસ્માતના અહેવાલો.\n'
          '5.અપંગતા દસ્તાવેજીકરણ.\n'
          '6.સ્વ-ઘોષણા.',
      descriptionG:
          'નિર્માણ કામદાર મૃત્યુ વા દિવ્યાંગતા સહાય યોજના ઉત્તર પ્રદેશ એ રાજ્યમાં નોંધાયેલા બાંધકામ કામદારોના કલ્યાણ માટે ઉત્તર પ્રદેશ સરકાર દ્વારા શરૂ કરવામાં આવેલી એક નિર્ણાયક યોજના છે. તે અકસ્માત અથવા બીમારીને કારણે મૃત્યુ અથવા અપંગતાના કિસ્સામાં બાંધકામ કામદારોના પરિવારોને નાણાકીય સહાય પૂરી પાડે છે.',
      titleH: 'निर्माण कामगार मृत्यु एवं दिव्यांगता सहायता योजना',
      documentH: '1.मृत्यु प्रमाणपत्र.\n'
          '2.बैंक खाते की फोटोकॉपी.\n'
          '3.आईडी कार्ड फोटोकॉपी.\n'
          '4.दुर्घटना रिपोर्ट.\n'
          '5.विकलांगता दस्तावेज.\n'
          '6.स्व-घोषणा.',
      descriptionH:
          'निर्माण कामगार मृत्यु एवं दिव्यांगता सहायता योजना उत्तर प्रदेश राज्य में पंजीकृत निर्माण श्रमिकों के कल्याण के लिए उत्तर प्रदेश सरकार द्वारा शुरू की गई एक महत्वपूर्ण योजना है। यह दुर्घटना या बीमारी के कारण मृत्यु या विकलांगता की स्थिति में निर्माण श्रमिकों के परिवारों को वित्तीय सहायता प्रदान करता है।',
      eligibility:
          '1.Applicant/Beneficiary must  be registered with labor department.\n'
          '2.Only family member will able to get the death benefits.\n'
          '3.Death benefit will not be applicable in the case of suicide.\n'
          '4.Deaths due to murder, snakebite, lightning, childbirth and other natural calamities will be considered as normal deaths and benefits will be admissible accordingly.\n'
          '5.In death benefit claim of a construction worker, Aadhaar authentication of the dependent will be required if the dependent applies',
      eligibilityH: '1.आवेदक/लाभार्थी को श्रम विभाग में पंजीकृत होना चाहिए।\n'
          '2.केवल परिवार के सदस्य को ही मृत्यु लाभ मिल सकेगा।\n'
          '3.आत्महत्या के मामले में मृत्यु लाभ लागू नहीं होगा।\n'
          '4.हत्या, सर्पदंश, बिजली गिरने, प्रसव और अन्य प्राकृतिक आपदाओं के कारण होने वाली मौतों को सामान्य मौत माना जाएगा और तदनुसार लाभ स्वीकार्य होंगे।\n'
          '5.एक निर्माण श्रमिक के मृत्यु लाभ दावे में, यदि आश्रित आवेदन करता है तो आश्रित के आधार प्रमाणीकरण की आवश्यकता होगी',
      eligibilityG:
          '1. અરજદાર/લાભાર્થી શ્રમ વિભાગમાં નોંધાયેલ હોવું આવશ્યક છે.\n'
          '2. માત્ર પરિવારના સભ્ય જ મૃત્યુ લાભો મેળવી શકશે.\n'
          '3. આત્મહત્યાના કિસ્સામાં મૃત્યુ લાભ લાગુ થશે નહીં.\n'
          '4.હત્યા, સર્પદંશ, વીજળી, બાળજન્મ અને અન્ય કુદરતી આફતોના કારણે થતા મૃત્યુને સામાન્ય મૃત્યુ તરીકે ગણવામાં આવશે અને તે મુજબ લાભો સ્વીકારવામાં આવશે.\n'
          '5. બાંધકામ કામદારના મૃત્યુ લાભના દાવામાં, જો આશ્રિત લાગુ થાય તો આશ્રિતનું આધાર પ્રમાણીકરણ જરૂરી રહેશે'),
];

List<SchemeModal> uwdata = [
  SchemeModal(
      title: 'National Family Benefit Scheme - Uttar Pradesh',
      document: '1. Death certificate.\n'
          '2. Below poverty line card.\n'
          '3. Below poverty line ration card (blue card).\n'
          '4. Residence proof.',
      id: 1,
      description:
          'The NFBS also known as Rashtriya Parivarik Labh Yojana was started by the UP government on in January 2016.Under this scheme, the families who have lost their lead earners will get a lump sum amount of money as compensation. To claim the compensation one must have applied to register under the scheme. The entire application process is available only online. There is no provision of offline application for the scheme.',
      link: ' https://www.myscheme.gov.in/schemes/nfbs',
      titleG: 'રાષ્ટ્રીય કુટુંબ લાભ યોજના - ઉત્તર પ્રદેશ',
      documentG: '1. મૃત્યુ પ્રમાણપત્ર.\n'
          '2. ગરીબી રેખા નીચેનું કાર્ડ.\n'
          '3. ગરીબી રેખા નીચે રેશન કાર્ડ (બ્લુ કાર્ડ).\n'
          '4. રહેઠાણનો પુરાવો.',
      descriptionG:
          'UP સરકાર દ્વારા જાન્યુઆરી 2016 માં NFBS તરીકે પણ ઓળખાય છે. વળતરનો દાવો કરવા માટે વ્યક્તિએ સ્કીમ હેઠળ નોંધણી કરાવવા માટે અરજી કરવી આવશ્યક છે. સમગ્ર અરજી પ્રક્રિયા માત્ર ઓનલાઈન ઉપલબ્ધ છે. યોજના માટે ઑફલાઇન અરજી કરવાની કોઈ જોગવાઈ નથી.',
      titleH: 'राष्ट्रीय पारिवारिक लाभ योजना - उत्तर प्रदेश',
      documentH: '1. मृत्यु प्रमाणपत्र.\n'
          '2. गरीबी रेखा से नीचे का कार्ड.\n'
          '3. गरीबी रेखा से नीचे का राशन कार्ड (नीला कार्ड).\n'
          '4. निवास प्रमाण.',
      descriptionH:
          'एनएफबीएस को राष्ट्रीय पारिवारिक लाभ योजना के रूप में भी जाना जाता है, जिसे यूपी सरकार ने जनवरी 2016 में शुरू किया था। इस योजना के तहत, जिन परिवारों ने अपने मुख्य आय वाले को खो दिया है, उन्हें मुआवजे के रूप में एकमुश्त धनराशि मिलेगी। मुआवजे का दावा करने के लिए व्यक्ति को योजना के तहत पंजीकरण के लिए आवेदन करना होगा। संपूर्ण आवेदन प्रक्रिया केवल ऑनलाइन उपलब्ध है। योजना के लिए ऑफलाइन आवेदन का कोई प्रावधान नहीं है।',
      eligibility:
          '1. To apply for the scheme one must be living under the poverty line.\n'
          '2. The applicant should not be aged less than 18 years or above 60 years.\n'
          '3. The family income of the applicant should not be more than Rs. 56, 450/- if the family is from the urban area and Rs. 46, 080/- if the family is from the rural area.\n'
          '4. Support will be provided to the family after the death of the only earner of the family.',
      eligibilityH:
          '1. योजना के लिए आवेदन करने के लिए व्यक्ति को गरीबी रेखा के नीचे रहना होगा।\n'
          '2. आवेदक की आयु 18 वर्ष से कम या 60 वर्ष से अधिक नहीं होनी चाहिए।\n'
          '3. आवेदक की पारिवारिक आय 20 हजार रूपये से अधिक नहीं होनी चाहिए। 56,450/- यदि परिवार शहरी क्षेत्र से है और रु. 46,080/- यदि परिवार ग्रामीण क्षेत्र से है।\n'
          '4. परिवार के एकमात्र कमाने वाले की मृत्यु के बाद परिवार को सहायता प्रदान की जाएगी।',
      eligibilityG:
          '1. યોજના માટે અરજી કરવા માટે વ્યક્તિ ગરીબી રેખા હેઠળ જીવતો હોવો જોઈએ.\n'
          '2. અરજદારની ઉંમર 18 વર્ષથી ઓછી અથવા 60 વર્ષથી વધુ હોવી જોઈએ નહીં.\n'
          '3. અરજદારની કૌટુંબિક આવક રૂ. થી વધુ ન હોવી જોઈએ. 56, 450/- જો પરિવાર શહેરી વિસ્તારનો હોય અને રૂ. 46, 080/- જો પરિવાર ગ્રામીણ વિસ્તારનો હોય.\n'
          '4. પરિવારના એકમાત્ર કમાનાર વ્યક્તિના મૃત્યુ બાદ પરિવારને સહાય આપવામાં આવશે.'),
  SchemeModal(
      title: 'Raja Harishachandra Shramik Mratak Antyeshti Sahayata Yojana',
      document:
          '1. Attested photocopy of the online filled application form related to the scheme.\n'
          '2. Read photocopy of the beneficiarys bank passbook (with IFS code of the bank).\n'
          '3. Read photocopy of ration card/family register or other government record in confirmation of relationship with the dependent.\n'
          '4. Death certificate issued by Registrar (Birth/Death).',
      id: 2,
      description:
          'The "Raja Harishchandra Shramik Mrityu Antim Sanskar Sahayata Yojana" (RHSMASSSY) is a scheme launched by the Government of Uttar Pradesh to provide financial assistance to the families of registered workers who die while in service. The schemes purpose is to alleviate the financial burden on these families during a difficult time and help them with the final rites of the deceased worker.',
      link: ' https://www.myscheme.gov.in/schemes/nkmvdsy',
      titleG: 'રાજા હરિશ્ચંદ્ર શ્રમિક મૃત્યુક અંત્યષ્ટિ સહાય યોજના',
      documentG:
          '1. સ્કીમ સંબંધિત ઓનલાઈન ભરેલ અરજી ફોર્મની પ્રમાણિત ફોટોકોપી.\n'
          '2. લાભાર્થીઓની બેંક પાસબુકની ફોટોકોપી વાંચો (બેંકના IFS કોડ સાથે).\n'
          '3. આશ્રિત સાથેના સંબંધની પુષ્ટિમાં રેશન કાર્ડ/ફેમિલી રજિસ્ટર અથવા અન્ય સરકારી રેકોર્ડની ફોટોકોપી વાંચો.\n'
          '4. રજિસ્ટ્રાર (જન્મ/મૃત્યુ) દ્વારા જારી કરાયેલ મૃત્યુ પ્રમાણપત્ર',
      descriptionG:
          'ન"રાજા હરિશ્ચંદ્ર શ્રમિક મૃત્યુ અંતીમ સંસ્કાર સહાયતા યોજના" (RHSMASSY) એ ઉત્તર પ્રદેશ સરકાર દ્વારા સેવામાં મૃત્યુ પામેલા નોંધાયેલા કામદારોના પરિવારોને નાણાકીય સહાય પૂરી પાડવા માટે શરૂ કરવામાં આવેલી એક યોજના છે. આ યોજનાનો હેતુ મુશ્કેલ સમયમાં આ પરિવારો પરના આર્થિક બોજને ઓછો કરવાનો અને મૃત કાર્યકરના અંતિમ સંસ્કારમાં તેમને મદદ કરવાનો છે.',
      titleH: 'राजा हरिश्चंद्र श्रमिक मृतक अंत्येष्टि सहायता योजना',
      documentH:
          '1. योजना से संबंधित ऑनलाइन भरे गए आवेदन पत्र की सत्यापित छायाप्रति।\n'
          '2. लाभार्थियों के बैंक पासबुक की फोटोकॉपी (बैंक के आईएफएस कोड के साथ) पढ़ें।\n'
          '3. आश्रित के साथ संबंध की पुष्टि के लिए राशन कार्ड/परिवार रजिस्टर या अन्य सरकारी रिकॉर्ड की फोटोकॉपी पढ़ें।\n'
          '4. रजिस्ट्रार (जन्म/मृत्यु) द्वारा जारी मृत्यु प्रमाण पत्र।',
      descriptionH:
          '"राजा हरिश्चंद्र श्रमिक मृत्यु अंतिम संस्कार सहायता योजना" (आरएचएसएमएएसएसवाई) उत्तर प्रदेश सरकार द्वारा सेवा के दौरान मरने वाले पंजीकृत श्रमिकों के परिवारों को वित्तीय सहायता प्रदान करने के लिए शुरू की गई एक योजना है। योजना का उद्देश्य कठिन समय के दौरान इन परिवारों पर वित्तीय बोझ को कम करना और मृत श्रमिक के अंतिम संस्कार में मदद करना है।',
      eligibility:
          '1. Workers should be working in an establishment registered under the Factories Act, 1948.\n'
          '2. The monthly salary of the worker (basic salary + dearness allowance) should not exceed ₹15,000/-.\n'
          '3. It is mandatory to apply within one year from the date of death of the worker.\n'
          '4. Financial assistance will be payable to the workers spouse or dependent (son/unmarried daughter), mother/father in case the worker is unmarried.',
      eligibilityH:
          '1. श्रमिकों को फ़ैक्टरी अधिनियम, 1948 के तहत पंजीकृत प्रतिष्ठान में काम करना चाहिए।\n'
          '2. कर्मचारी का मासिक वेतन (मूल वेतन + महंगाई भत्ता) ₹15,000/- से अधिक नहीं होना चाहिए।\n'
          '3. कर्मचारी की मृत्यु की तारीख से एक वर्ष के भीतर आवेदन करना अनिवार्य है।\n'
          '4. श्रमिक के अविवाहित होने की स्थिति में वित्तीय सहायता श्रमिक के पति/पत्नी या आश्रित (पुत्र/अविवाहित पुत्री), माता/पिता को देय होगी।',
      eligibilityG:
          '1. કામદારોએ ફેક્ટરી એક્ટ, 1948 હેઠળ નોંધાયેલ સંસ્થામાં કામ કરવું જોઈએ.\n'
          '2. કામદારનો માસિક પગાર (મૂળભૂત પગાર + મોંઘવારી ભથ્થું) ₹15,000/-થી વધુ ન હોવો જોઈએ.\n'
          '3. કામદારના મૃત્યુની તારીખથી એક વર્ષની અંદર અરજી કરવી ફરજિયાત છે.\n'
          '4. જો કામદાર અપરિણીત હોય તો નાણાંકીય સહાય કામદારોની પત્ની અથવા આશ્રિત (પુત્ર/અપરિણીત પુત્રી), માતા/પિતાને ચૂકવવાપાત્ર રહેશે.'),
];

List<SchemeModal> madata = [
  SchemeModal(
      title: 'Bhausaheb Fundkar Falbag Lagvad Scheme',
      document: '1.Aadhaar Card\n'
          '2. 7/12 Certificate\n'
          '3. 8-A Certificate\n'
          '4. Caste Certificate for SC,ST beneficiaries\n'
          '5. Self Declaration\n'
          '6. Pre Sanction Letter\n'
          '7. Invoice of Implement.',
      id: 1,
      description:
          'The pattern of assistance under this scheme of total amount payable in three years.The subsidy amount will be directly credited to the Aadhaar link Bank Account every year. The beneficiary has to maintain the percentage survival of fruit plant shall be minimum 80% for first year and  90%  for the second year.State Sponsored Bhausaheb Fundkar Falbag Lagvad Scheme was launched by Agriculture Department of Maharashtra from Kharif Season of the year 2018-19.This scheme include the 16 perennial fruit crops like Mango, Cashew, Guava, Sapota, Custered Apple, Pomegranate, Paper Lemon, Coconut, Tamarind, Fig, Amla, Kokum, Jackfruit, Jamun, Orange, Mosambi. Farmer from Konkan division can avail benefit of 0.10 Hector to 10.00 Hector And rest Of Maharashtra 0.20 Ha. to 6.00 Ha. planting under the scheme.',
      link:
          'https://www.myscheme.gov.in/schemes/bhausaheb-fundkar-horticulture-plantataion-scheme',
      titleG: 'ભાઈસાહેબ ફંડકર ફલબાગ લગવડ યોજના',
      documentG: '1.આધાર કાર્ડ\n'
          '2. 7/12 પ્રમાણપત્ર\n'
          '3. 8-એક પ્રમાણપત્ર\n'
          '4. SC, ST લાભાર્થીઓ માટે જાતિ પ્રમાણપત્ર\n'
          '5. સ્વયં ઘોષણા\n'
          '6. પૂર્વ મંજૂરી પત્ર\n'
          '7. અમલીકરણનું ઇન્વૉઇસ.',
      descriptionG:
          'ત્રણ વર્ષમાં ચૂકવવાપાત્ર કુલ રકમની આ યોજના હેઠળ સહાયની પેટર્ન. સબસિડીની રકમ દર વર્ષે સીધા આધાર લિંક બેંક ખાતામાં જમા કરવામાં આવશે. લાભાર્થીએ પ્રથમ વર્ષ માટે ઓછામાં ઓછા 80% અને બીજા વર્ષ માટે 90% ફળ છોડની ટકાવારી ટકાવી રાખવાની રહેશે. રાજ્ય પ્રાયોજિત ભાઈસાહેબ ફંડકર ફાલબાગ લગવડ યોજના મહારાષ્ટ્રના કૃષિ વિભાગ દ્વારા વર્ષ 2018-19ની ખરીફ સિઝનથી શરૂ કરવામાં આવી હતી. આ યોજનામાં કેરી, કાજુ, જામફળ, સપોટા, કસ્ટર્ડ સફરજન, દાડમ, કાગળ લીંબુ, નારિયેળ, આમલી, અંજીર, આમળા, કોકમ, જેકફ્રૂટ, જામુન, નારંગી, મોસંબી જેવા 16 બારમાસી ફળ પાકોનો સમાવેશ થાય છે. કોંકણ વિભાગના ખેડૂત 0.10 હેક્ટરથી 10.00 હેક્ટર અને બાકીના મહારાષ્ટ્રના 0.20 હેક્ટરનો લાભ મેળવી શકે છે. થી 6.00 હે. યોજના હેઠળ વાવેતર.',
      titleH: 'भाऊसाहेब फुंडकर फलबाग लागवद योजना',
      documentH: '1.आधार कार्ड\n'
          '2. 7/12 प्रमाणपत्र\n'
          '3. 8-ए प्रमाणपत्र\n'
          '4. एससी, एसटी लाभार्थियों के लिए जाति प्रमाण पत्र\n'
          '5. स्वघोषणा\n'
          '6. पूर्व मंजूरी पत्र\n'
          '7. कार्यान्वयन का चालान.',
      descriptionH:
          'इस योजना के तहत सहायता का पैटर्न तीन वर्षों में देय कुल राशि का है। सब्सिडी राशि हर साल सीधे आधार लिंक बैंक खाते में जमा की जाएगी। लाभार्थी को फलों के पौधे की जीवित रहने की दर पहले वर्ष के लिए न्यूनतम 80% और दूसरे वर्ष के लिए 90% बनाए रखनी होगी। राज्य प्रायोजित भाऊसाहेब फुंडकर फलबाग लगवद योजना महाराष्ट्र के कृषि विभाग द्वारा वर्ष 2018-19 के खरीफ सीजन से शुरू की गई थी। .इस योजना में आम, काजू, अमरूद, चीकू, सीताफल, अनार, कागजी नींबू, नारियल, इमली, अंजीर, आंवला, कोकम, कटहल, जामुन, संतरा, मोसंबी जैसी 16 बारहमासी फल वाली फसलें शामिल हैं। कोंकण संभाग के किसान 0.10 हेक्टेयर से 10.00 हेक्टेयर और शेष महाराष्ट्र के 0.20 हेक्टेयर का लाभ उठा सकते हैं। से 6.00 हे. योजना के तहत पौधारोपण',
      eligibility:
          '1.The beneficiary should be a permanent resident of Maharashtra State.\n'
          '2.Farmer should have Aadhaar Card.\n'
          '3.Farmer should have 7/12 certificate and 8 –A certificate.',
      eligibilityH: '1.लाभार्थी महाराष्ट्र राज्य का स्थायी निवासी होना चाहिए।\n'
          '2.किसान के पास आधार कार्ड होना चाहिए.\n'
          '3.किसान के पास 7/12 सर्टिफिकेट और 8-ए सर्टिफिकेट होना चाहिए।',
      eligibilityG: '1. લાભાર્થી મહારાષ્ટ્ર રાજ્યનો કાયમી નિવાસી હોવો જોઈએ.\n'
          '2. ખેડૂત પાસે આધાર કાર્ડ હોવું જોઈએ.\n'
          '3. ખેડૂત પાસે 7/12 પ્રમાણપત્ર અને 8 -A પ્રમાણપત્ર હોવું જોઈએ.'),
  SchemeModal(
      title: 'Chief Minister Agriculture and Food Processing Scheme',
      document: '1.Beneficiary Application (Annexure II)\n'
          '2.Bank Loan Sanction Letter (Original)\n'
          '3.Bank Appraisal (Original)\n'
          '4.7/12, 8A (Original) or Agreement\n'
          '5.PAN card of individual/business, Aadhaar card\n'
          '6.Enterprise Registration Certificate (Udyam Registration)\n'
          '7.Detailed Project Report (DPR) of the project (Original)\n'
          '8.A fow chart of the projects process output\n'
          '9.Notarized Agreement to be submitted for Project Construction (Annexure-III)\n'
          '10.Construction Blue Print (Bank Attested)\n'
          '11.Construction Budget (Bank Attested)\n'
          '12.Machinery Quotation (Bank Attested)\n'
          '13.Pre-project feasibility study report (Annexure-V)\n'
          '14.Recommendation Letter of District Level Project Implementation Committee (Annexure- VI)\n'
          '15.Audit reports for last three years (Only for Upgradation, Expansion and Modernization Projects).',
      id: 2,
      description:
          'Chief Minister Agriculture and Food Processing Scheme is being implemented in the state since 2017-18 which  has been extended for the next five years till the year 2026-27 as per the government resolution dated 17 May 2022.  The main objectives of the scheme are to encourage model technology based projects and quality enhancement of agriculture produce, to encourage exports, to create skill manpower for agro and food processing and employment generation through small and medium agro and food processing units in rural areas.',
      link:
          'https://www.myscheme.gov.in/schemes/chief-minister-agriculture-and-food-processing-scheme',
      titleG: 'મુખ્યમંત્રી કૃષિ અને ફૂડ પ્રોસેસિંગ યોજના',
      documentG: '1. લાભાર્થીની અરજી (પરિશિષ્ટ II)\n'
          '2. બેંક લોન મંજૂરી પત્ર (મૂળ)\n'
          '3.બેંક મૂલ્યાંકન (મૂળ)\n'
          '4.7/12, 8A (મૂળ) અથવા કરાર\n'
          '5.વ્યક્તિગત/વ્યવસાયનું પાન કાર્ડ, આધાર કાર્ડ\n'
          '6. એન્ટરપ્રાઇઝ નોંધણી પ્રમાણપત્ર (ઉદ્યમ નોંધણી)\n'
          '7. પ્રોજેક્ટનો વિગતવાર પ્રોજેક્ટ રિપોર્ટ (ડીપીઆર) (મૂળ)\n'
          '8. પ્રોજેક્ટ્સ પ્રોસેસ આઉટપુટનો ચાર ચાર્ટ\n'
          '9.પ્રોજેક્ટ કન્સ્ટ્રક્શન (પરિશિષ્ટ-III) માટે સબમિટ કરવાનો નોટરાઇઝ્ડ કરાર\n'
          '10. કન્સ્ટ્રક્શન બ્લુ પ્રિન્ટ (બેંક પ્રમાણિત)\n'
          '11. બાંધકામ બજેટ (બેંક પ્રમાણિત)\n'
          '12. મશીનરી ક્વોટેશન (બેંક પ્રમાણિત)\n'
          '13.પ્રી-પ્રોજેક્ટ ફિઝિબિલિટી સ્ટડી રિપોર્ટ (પરિશિષ્ટ-V)\n'
          '14. જિલ્લા કક્ષાની પ્રોજેક્ટ અમલીકરણ સમિતિનો ભલામણ પત્ર (પરિશિષ્ટ- VI)\n'
          '15. છેલ્લા ત્રણ વર્ષના ઓડિટ અહેવાલો (ફક્ત અપગ્રેડેશન, વિસ્તરણ અને આધુનિકીકરણ પ્રોજેક્ટ્સ માટે).',
      descriptionG:
          'રાજ્યમાં 2017-18 થી મુખ્યમંત્રી કૃષિ અને ફૂડ પ્રોસેસિંગ યોજના લાગુ કરવામાં આવી રહી છે જે 17 મે 2022 ના સરકારી ઠરાવ મુજબ આગામી પાંચ વર્ષ માટે વર્ષ 2026-27 સુધી લંબાવવામાં આવી છે. યોજનાના મુખ્ય ઉદ્દેશ્યો છે. ગ્રામીણ વિસ્તારોમાં નાના અને મધ્યમ કૃષિ અને ફૂડ પ્રોસેસિંગ એકમો દ્વારા કૃષિ અને ખાદ્ય પ્રક્રિયા અને રોજગાર નિર્માણ માટે કૌશલ્ય માનવબળનું સર્જન કરવા, નિકાસને પ્રોત્સાહિત કરવા, મોડેલ ટેક્નોલોજી આધારિત પ્રોજેક્ટ્સ અને કૃષિ પેદાશોની ગુણવત્તા વધારવાને પ્રોત્સાહન આપવું.',
      titleH: 'मुख्यमंत्री कृषि एवं खाद्य प्रसंस्करण योजना',
      documentH: '1.लाभार्थी आवेदन (अनुलग्नक II)\n'
          '2.बैंक ऋण स्वीकृति पत्र (मूल)\n'
          '3.बैंक मूल्यांकन (मूल)\n'
          '4.7/12, 8ए (मूल) या अनुबंध\n'
          '5.व्यक्ति/व्यवसाय का पैन कार्ड, आधार कार्ड\n'
          '6.उद्यम पंजीकरण प्रमाणपत्र (उद्यम पंजीकरण)\n'
          '7.परियोजना की विस्तृत परियोजना रिपोर्ट (डीपीआर) (मूल)\n'
          '8.परियोजना प्रक्रिया आउटपुट का एक फ़ाउ चार्ट\n'
          '9.परियोजना निर्माण के लिए नोटरीकृत अनुबंध प्रस्तुत किया जाना है (अनुलग्नक-III)\n'
          '10.निर्माण ब्लू प्रिंट (बैंक प्रमाणित)\n'
          '11.निर्माण बजट (बैंक द्वारा प्रमाणित)\n'
          '12.मशीनरी कोटेशन (बैंक प्रमाणित)\n'
          '13.परियोजना-पूर्व व्यवहार्यता अध्ययन रिपोर्ट (अनुलग्नक-V)\n'
          '14.जिला स्तरीय परियोजना कार्यान्वयन समिति का अनुशंसा पत्र (अनुलग्नक- VI)\n'
          '15.पिछले तीन वर्षों की ऑडिट रिपोर्ट (केवल उन्नयन, विस्तार और आधुनिकीकरण परियोजनाओं के लिए)।',
      descriptionH:
          'राज्य में मुख्यमंत्री कृषि एवं खाद्य प्रसंस्करण योजना वर्ष 2017-18 से क्रियान्वित की जा रही है जिसे शासन के संकल्प दिनांक 17 मई 2022 के अनुसार अगले पांच वर्षों के लिए वर्ष 2026-27 तक बढ़ा दिया गया है। योजना के मुख्य उद्देश्य हैं मॉडल प्रौद्योगिकी आधारित परियोजनाओं और कृषि उपज की गुणवत्ता बढ़ाने को प्रोत्साहित करना, निर्यात को प्रोत्साहित करना, कृषि और खाद्य प्रसंस्करण के लिए कौशल जनशक्ति तैयार करना और ग्रामीण क्षेत्रों में छोटी और मध्यम कृषि और खाद्य प्रसंस्करण इकाइयों के माध्यम से रोजगार सृजन करना।',
      eligibility: '1.The beneficiary should have age above 18 years.\n'
          '2.The beneficiary should have Aadhaar Card/ Pan Card.\n'
          '3.The beneficiary should have Good Bank CIBIL  Score.\n'
          '4.The beneficiary have 7/12 certificate and 8 –A certificate or Lease documents.',
      eligibilityH: '1.लाभार्थी की आयु 18 वर्ष से अधिक होनी चाहिए।\n'
          '2.लाभार्थी के पास आधार कार्ड/पैन कार्ड होना चाहिए.\n'
          '3.लाभार्थी का बैंक सिबिल स्कोर अच्छा होना चाहिए।\n'
          '4.लाभार्थी के पास 7/12 प्रमाणपत्र और 8-ए प्रमाणपत्र या पट्टा दस्तावेज हैं।',
      eligibilityG: '1. લાભાર્થીની ઉંમર 18 વર્ષથી વધુ હોવી જોઈએ.\n'
          '2. લાભાર્થી પાસે આધાર કાર્ડ/પાન કાર્ડ હોવું જોઈએ.\n'
          '3. લાભાર્થી પાસે સારો બેંક CIBIL સ્કોર હોવો જોઈએ.\n'
          '4. લાભાર્થી પાસે 7/12 પ્રમાણપત્ર અને 8-A પ્રમાણપત્ર અથવા લીઝ દસ્તાવેજો છે.'),
  SchemeModal(
      title: 'Namo Shetkari Mahasanman Nidhi Yojana',
      document: '1.	Aadhar Card\n'
          '2.	7/12\n'
          '3.	8-A\n'
          '4.	Ferfar\n'
          '5.	Ration card etc',
      id: 3,
      description:
          'Under this scheme an amount of Rs. 6000/- will be transferred annually in three equal instalments. Government Resolution No Kisani-2023/CR 42/11 A dated 15/06/2023 has been issued regarding the scheme. Farmers which are eligible for PM Kisan Yojana will be eligible for the benefit of "Namo Shetkari Mahasanman Nidhi Yojana"',
      link:
          'https://www.myscheme.gov.in/schemes/chief-minister-agriculture-and-food-processing-scheme',
      titleG: 'મુખ્યમંત્રી કૃષિ અને ફૂડ પ્રોસેસિંગ યોજના',
      documentG: '1.	આધાર કાર્ડ\n'
          '2.	7/12\n'
          '3.	8-A\n'
          '4.	ફરફાર\n'
          '5.	રેશન કાર્ડ વગેરે',
      descriptionG:
          'આ યોજના હેઠળ રૂ. 6000/- વાર્ષિક ત્રણ સમાન હપ્તામાં ટ્રાન્સફર કરવામાં આવશે. યોજના અંગે સરકારી ઠરાવ નંબર કિસાની-2023/CR 42/11 A તા.15/06/2023 જારી કરવામાં આવ્યો છે. જે ખેડૂતો પીએમ કિસાન યોજના માટે પાત્ર છે તેઓ "નમો શેતકરી મહાસન્માન નિધિ યોજના"નો લાભ મેળવવા માટે પાત્ર બનશે.',
      titleH: 'मुख्यमंत्री कृषि एवं खाद्य प्रसंस्करण योजना',
      documentH: '1.	आधार कार्ड\n'
          '2.	7/12\n'
          '3.	8-ए\n'
          '4.	फ़रफ़र\n'
          '5.	राशन कार्ड आदि',
      descriptionH:
          'इस योजना के तहत रु. 6000/- प्रतिवर्ष तीन समान किस्तों में हस्तांतरित किये जायेंगे। योजना के संबंध में सरकारी संकल्प संख्या किसानी-2023/सीआर 42/11 ए दिनांक 15/06/2023 जारी किया गया है। जो किसान पीएम किसान योजना के लिए पात्र हैं वे "नमो शेतकारी महासंमान निधि योजना" के लाभ के लिए पात्र होंगे।',
      eligibility:
          'Cultivable land holding farmers families (comprising of husband, wife and minor children) having land holding on dated 01.02.2019 are eligible for both PM KISAN & NSMNY scheme.',
      eligibilityH:
          'दिनांक 01.02.2019 को भूमि धारण करने वाले कृषि योग्य भूमि धारक किसान परिवार (पति, पत्नी और नाबालिग बच्चों सहित) पीएम किसान और एनएसएमएनवाई दोनों योजनाओं के लिए पात्र हैं।',
      eligibilityG:
          'તારીખ 01.02.2019 ના રોજ જમીન ધરાવનાર ખેડૂત પરિવારો (પતિ, પત્ની અને સગીર બાળકોનો સમાવેશ થાય છે) ખેતીલાયક જમીન ધરાવતા ખેડૂતો PM કિસાન અને NSMNY બંને યોજના માટે પાત્ર છે.'),
];

List<SchemeModal> medata = [
  SchemeModal(
      title: 'Stipends To Trainees In Industrial Training Institute',
      document: '1.Identity proof i.e. Aadhar Card\n'
    '2.Caste certificate\n'
  '3.Father’s income certificate\n'
    '4.Bank details\n'
    '5.Educational certificate',
      id: 1,
      description:
      'The scheme “Stipends to Trainees in Industrial Training Institute” was launched by the Department of Social Justice and Special Assistance, Government of Maharashtra for Scheduled Caste students in Industrial Training Institute (ITI).The objective of the scheme is to provide Technical Training to Scheduled Caste students in ITI for their job opportunities. Under the scheme, the students of the SC category residing in the hostel of the organization Department of Technical Education gives ₹60/- per month and the Social Welfare department gives them ₹ 40/- per month.',
      link:
      'https://www.myscheme.gov.in/schemes/bhausaheb-fundkar-horticulture-plantataion-scheme',
      titleG: 'ઔદ્યોગિક તાલીમ સંસ્થામાં તાલીમાર્થીઓને સ્ટાઈપેન્ડ',
      documentG: '1.ઓળખનો પુરાવો એટલે કે આધાર કાર્ડ\n'
          '2.જાતિનું પ્રમાણપત્ર\n'
          '3. પિતાની આવકનું પ્રમાણપત્ર\n'
          '4.બેંક વિગતો\n'
          '5. શૈક્ષણિક પ્રમાણપત્ર',
      descriptionG:
      'ઔદ્યોગિક તાલીમ સંસ્થા (ITI) માં અનુસૂચિત જાતિના વિદ્યાર્થીઓ માટે મહારાષ્ટ્ર સરકારના સામાજિક ન્યાય અને વિશેષ સહાય વિભાગ દ્વારા "ઔદ્યોગિક તાલીમ સંસ્થામાં તાલીમાર્થીઓને સ્ટાઈપેન્ડ્સ" યોજના શરૂ કરવામાં આવી હતી.યોજનાનો ઉદ્દેશ્ય ITI માં અનુસૂચિત જાતિના વિદ્યાર્થીઓને તેમની નોકરીની તકો માટે ટેકનિકલ તાલીમ આપવાનો છે. આ યોજના હેઠળ, સંસ્થાના ટેકનિકલ શિક્ષણ વિભાગની છાત્રાલયમાં રહેતા SC વર્ગના વિદ્યાર્થીઓ દર મહિને ₹60/- આપે છે અને સમાજ કલ્યાણ વિભાગ તેમને દર મહિને ₹40/- આપે છે.',
      titleH: 'औद्योगिक प्रशिक्षण संस्थान में प्रशिक्षुओं को वजीफा',
      documentH: '1.पहचान प्रमाण यानी आधार कार्ड\n'
          '2.जाति प्रमाणपत्र\n'
          '3.पिता का आय प्रमाण पत्र\n'
          '4.बैंक विवरण\n'
          '5.शैक्षिक प्रमाणपत्र',
      descriptionH:
      'औद्योगिक प्रशिक्षण संस्थान (आईटीआई) में अनुसूचित जाति के छात्रों के लिए महाराष्ट्र सरकार के सामाजिक न्याय और विशेष सहायता विभाग द्वारा "औद्योगिक प्रशिक्षण संस्थान में प्रशिक्षुओं को वजीफा" योजना शुरू की गई थी।योजना का उद्देश्य अनुसूचित जाति के छात्रों को आईटीआई में नौकरी के अवसरों के लिए तकनीकी प्रशिक्षण प्रदान करना है। योजना के तहत संस्था के छात्रावास में रहने वाले एससी वर्ग के विद्यार्थियों को तकनीकी शिक्षा विभाग ₹60/- प्रति माह और समाज कल्याण विभाग उन्हें ₹40/- प्रति माह देता है।',
      eligibility:
      '1.The applicant must be a permanent resident of Maharashtra.\n'
          '2.The student should belong to Scheduled Caste (SC) category.\n'
          '3.It is mandatory for the student should take training in a recognized Industrial Training Institute.\n'
          '4.The annual income of the applicant’s father should not be more than ₹ 65290/-.',
      eligibilityH: '1.आवेदक महाराष्ट्र का स्थायी निवासी होना चाहिए।\n'
          '2.छात्र अनुसूचित जाति (एससी) वर्ग से संबंधित होना चाहिए।\n'
          '3.छात्र को किसी मान्यता प्राप्त औद्योगिक प्रशिक्षण संस्थान से प्रशिक्षण लेना अनिवार्य है.\n'
          '4.आवेदक के पिता की वार्षिक आय ₹65290/- से अधिक नहीं होनी चाहिए।',
      eligibilityG:
      '1. અરજદાર મહારાષ્ટ્રનો કાયમી રહેવાસી હોવો જોઈએ.\n'
          '2. વિદ્યાર્થી અનુસૂચિત જાતિ (SC) શ્રેણીનો હોવો જોઈએ.\n'
          '3. વિદ્યાર્થીએ માન્ય ઔદ્યોગિક તાલીમ સંસ્થામાં તાલીમ લેવી ફરજિયાત છે.\n'
          '4. અરજદારના પિતાની વાર્ષિક આવક ₹ 65290/- કરતાં વધુ ન હોવી જોઈએ.',),
  SchemeModal(
      title: 'LIDCOM Education Loan Scheme',
      document: '1.Aadhaar Card.2-Passport Sized Photograph (Signed Across)\n'
          '2.Marksheet / Passing Certificate of the Latest Educational Qualification.\n'
          '3.Proof of Admission : Offer Letter or Admission Letter from the Institution.\n'
          '4.Conditional admission letter may be considered in case of studies abroad.\n'
          '5.Residential Certificate / Domicile Certificate of the State of Maharashtra.\n'
          '6.Income Certificate issued by an Authorised Govt.Officer.\n'
          '7.Caste Certificate issued by an Authorised Govt.\n'
          '8.Officer.Details of the Bank Account (Bank Name, Branch Name, Address, IFSC, etc).\n'
          '9.A/C statement for last 1 year in case of any previous loan from other Banks/Lenders (if any)',
      id: 2,
      description:
      'Being implemented since the year 2009, the "Education Loan Scheme" is a scheme by the Leather Industries Development Corporation (LIDCOM), Govt. of Maharashtra. In this scheme, finance of upto ₹ 20,00,000 is provided for post graduate students in the 18-50 years age group from Charmakar Community for studies in India and in abroad. Only the citizens who are a permanent resident of the state of Maharashtra are eligible to apply to this scheme. This is a Central Government Scheme and the funding for this scheme come from the National Scheduled Castes Finance and Development Corporation, New Delhi (NSFDC). The main objective of LIDCOM is to implement various schemes to uplift lifestyle of Charmakars (Dhor, Chambhar, Holar, Mochi etc.) who are economically weak and below poverty line and with an intention to develop them educationally, economically and socially so as to give them respectable place in Society.',
      link:
      'https://www.myscheme.gov.in/schemes/chief-minister-agriculture-and-food-processing-scheme',
      titleG: 'LIDCOM શિક્ષણ લોન યોજના',
      documentG: '1.આધાર કાર્ડ.2-પાસપોર્ટ સાઇઝનો ફોટો (આખામાં સહી કરેલ)\n'
          '2. તાજેતરની શૈક્ષણિક લાયકાતનું માર્કશીટ / પાસ થવાનું પ્રમાણપત્ર.\n'
          '3.પ્રવેશનો પુરાવો : સંસ્થા તરફથી ઑફર લેટર અથવા એડમિશન લેટર.\n'
          '4. વિદેશમાં અભ્યાસના કિસ્સામાં શરતી પ્રવેશ પત્ર ધ્યાનમાં લેવામાં આવી શકે છે.\n'
          '5. મહારાષ્ટ્ર રાજ્યનું રહેણાંક પ્રમાણપત્ર / નિવાસી પ્રમાણપત્ર.\n'
          '6. અધિકૃત સરકારી અધિકારી દ્વારા જારી કરાયેલ આવકનું પ્રમાણપત્ર.\n'
          '7.અધિકૃત સરકાર દ્વારા જારી કરાયેલ જાતિનું પ્રમાણપત્ર\n'
          '8.ઓફિસર.બેંક ખાતાની વિગતો (બેંકનું નામ, શાખાનું નામ, સરનામું, IFSC, વગેરે).\n'
          '9.A/C સ્ટેટમેન્ટ અન્ય બેંકો/ધિરાણકર્તાઓ (જો કોઈ હોય તો) ની અગાઉની લોનના કિસ્સામાં છેલ્લા 1 વર્ષ માટે ',
      descriptionG:
      'વર્ષ 2009 થી અમલમાં આવી રહી છે, "એજ્યુકેશન લોન સ્કીમ" એ લેધર ઇન્ડસ્ટ્રીઝ ડેવલપમેન્ટ કોર્પોરેશન (LIDCOM), સરકાર દ્વારા એક યોજના છે. મહારાષ્ટ્રના. આ યોજનામાં, ચર્મકાર સમુદાયના 18-50 વર્ષની વય જૂથના અનુસ્નાતક વિદ્યાર્થીઓને ભારતમાં અને વિદેશમાં અભ્યાસ માટે ₹ 20,00,000 સુધીનું ધિરાણ પૂરું પાડવામાં આવે છે. ફક્ત મહારાષ્ટ્ર રાજ્યના કાયમી નિવાસી એવા નાગરિકો જ આ યોજના માટે અરજી કરવા પાત્ર છે. આ કેન્દ્ર સરકારની યોજના છે અને આ યોજના માટેનું ભંડોળ રાષ્ટ્રીય અનુસૂચિત જાતિ નાણાં અને વિકાસ નિગમ, નવી દિલ્હી (NSFDC) તરફથી આવે છે. LIDCOMનો મુખ્ય ઉદ્દેશ્ય આર્થિક રીતે નબળા અને ગરીબી રેખા નીચે રહેલા ચર્મકારો (ધોર, ચાંભર, હોલાર, મોચી વગેરે) ની જીવનશૈલીના ઉત્થાન માટે વિવિધ યોજનાઓ અમલમાં મૂકવાનો છે અને તેમનો શૈક્ષણિક, આર્થિક અને સામાજિક રીતે વિકાસ કરવાના આશય સાથે છે. સમાજમાં તેમનું આદરણીય સ્થાન.',
      titleH: 'LIDCOM शिक्षा ऋण योजना',
      documentH: '1.आधार कार्ड.2-पासपोर्ट आकार का फोटो (हस्ताक्षरित)\n'
          '2.नवीनतम शैक्षणिक योग्यता की मार्कशीट/उत्तीर्ण प्रमाण पत्र।\n'
          '3.प्रवेश का प्रमाण: संस्थान से प्रस्ताव पत्र या प्रवेश पत्र।\n'
          '4.विदेश में पढ़ाई के मामले में सशर्त प्रवेश पत्र पर विचार किया जा सकता है।\n'
          '5.महाराष्ट्र राज्य का आवासीय प्रमाण पत्र/निवास प्रमाण पत्र।\n'
          '6.प्राधिकृत सरकारी अधिकारी द्वारा जारी आय प्रमाण पत्र।\n'
          '7.प्राधिकृत सरकार द्वारा जारी जाति प्रमाण पत्र।\n'
          '8.अधिकारी.बैंक खाते का विवरण (बैंक का नाम, शाखा का नाम, पता, आईएफएससी, आदि).\n'
          '9.अन्य बैंकों/उधारदाताओं से किसी पिछले ऋण के मामले में पिछले 1 वर्ष का ए/सी विवरण (यदि कोई हो)',
      descriptionH:
      'वर्ष 2009 से कार्यान्वित की जा रही "शिक्षा ऋण योजना" चमड़ा उद्योग विकास निगम (LIDCOM), सरकार द्वारा एक योजना है। महाराष्ट्र का. इस योजना में, चर्मकार समुदाय के 18-50 वर्ष आयु वर्ग के स्नातकोत्तर छात्रों को भारत और विदेश में अध्ययन के लिए ₹ 20,00,000 तक का वित्त प्रदान किया जाता है। केवल वे नागरिक जो महाराष्ट्र राज्य के स्थायी निवासी हैं, इस योजना के लिए आवेदन करने के पात्र हैं। यह एक केंद्र सरकार की योजना है और इस योजना के लिए धन राष्ट्रीय अनुसूचित जाति वित्त और विकास निगम, नई दिल्ली (NSFDC) से आता है। LIDCOM का मुख्य उद्देश्य आर्थिक रूप से कमजोर और गरीबी रेखा से नीचे रहने वाले चर्मकारों (धोर, चांभर, होलर, मोची आदि) की जीवनशैली को ऊपर उठाने के लिए विभिन्न योजनाओं को लागू करना है और उन्हें शैक्षिक, आर्थिक और सामाजिक रूप से विकसित करने के इरादे से है। उन्हें समाज में सम्मानजनक स्थान मिले।',
      eligibility: '1.The applicant should be a citizen of India.\n'
          '2.The applicant should be a permanent resident of Maharashtra State.\n'
          '3.The applicant should be from Charmakar Community only (Dhor, Chambhar, Holar, Mochi etc.).\n'
          '4.The applicant should be in the 18 to 50 years age group.\n'
          '5.The annual income of the family of the applicant should be less than or equal to Rs.3,00,000/-.\n'
          '6.The applicant should have a knowledge of the business for which s/he has applied for loan.',

      eligibilityH:
      '1.आवेदक भारत का नागरिक होना चाहिए.\n'
          '2.आवेदक महाराष्ट्र राज्य का स्थायी निवासी होना चाहिए।\n'
          '3.आवेदक केवल चर्मकार समुदाय (धोर, चांभर, होलार, मोची आदि) से होना चाहिए।\n'
          '4.आवेदक की आयु 18 से 50 वर्ष के बीच होनी चाहिए।\n'
          '5.आवेदक के परिवार की वार्षिक आय 3,00,000/- रुपये से कम या उसके बराबर होनी चाहिए.\n'
          '6.आवेदक को उस व्यवसाय के बारे में जानकारी होनी चाहिए जिसके लिए उसने ऋण के लिए आवेदन किया है।',
      eligibilityG: '1. અરજદાર ભારતનો નાગરિક હોવો જોઈએ.\n'
          '2. અરજદાર મહારાષ્ટ્ર રાજ્યનો કાયમી રહેવાસી હોવો જોઈએ.\n'
          '3. અરજદાર માત્ર ચર્મકાર સમુદાયમાંથી જ હોવો જોઈએ (ધોર, ચાંભર, હોલાર, મોચી વગેરે).\n'
          '4. અરજદાર 18 થી 50 વર્ષની વય જૂથમાં હોવો જોઈએ.\n'
          '5. અરજદારના પરિવારની વાર્ષિક આવક રૂ.3,00,000/- કરતાં ઓછી અથવા તેની બરાબર હોવી જોઈએ.\n'
          '6. અરજદારને તે વ્યવસાયનું જ્ઞાન હોવું જોઈએ કે જેના માટે તેણે લોન માટે અરજી કરી છે.'),
  SchemeModal(
      title: 'Namo Shetkari Mahasanman Nidhi Yojana',
      document: '1.	Aadhar Card\n'
          '2.	7/12\n'
          '3.	8-A\n'
          '4.	Ferfar\n'
          '5.	Ration card etc',
      id: 3,
      description:
      'Under this scheme an amount of Rs. 6000/- will be transferred annually in three equal instalments. Government Resolution No Kisani-2023/CR 42/11 A dated 15/06/2023 has been issued regarding the scheme. Farmers which are eligible for PM Kisan Yojana will be eligible for the benefit of "Namo Shetkari Mahasanman Nidhi Yojana"',
      link:
      'https://www.myscheme.gov.in/schemes/chief-minister-agriculture-and-food-processing-scheme',
      titleG: 'મુખ્યમંત્રી કૃષિ અને ફૂડ પ્રોસેસિંગ યોજના',
      documentG: '1.	આધાર કાર્ડ\n'
          '2.	7/12\n'
          '3.	8-A\n'
          '4.	ફરફાર\n'
          '5.	રેશન કાર્ડ વગેરે',
      descriptionG:
      'આ યોજના હેઠળ રૂ. 6000/- વાર્ષિક ત્રણ સમાન હપ્તામાં ટ્રાન્સફર કરવામાં આવશે. યોજના અંગે સરકારી ઠરાવ નંબર કિસાની-2023/CR 42/11 A તા.15/06/2023 જારી કરવામાં આવ્યો છે. જે ખેડૂતો પીએમ કિસાન યોજના માટે પાત્ર છે તેઓ "નમો શેતકરી મહાસન્માન નિધિ યોજના"નો લાભ મેળવવા માટે પાત્ર બનશે.',
      titleH: 'मुख्यमंत्री कृषि एवं खाद्य प्रसंस्करण योजना',
      documentH: '1.	आधार कार्ड\n'
          '2.	7/12\n'
          '3.	8-ए\n'
          '4.	फ़रफ़र\n'
          '5.	राशन कार्ड आदि',
      descriptionH:
      'इस योजना के तहत रु. 6000/- प्रतिवर्ष तीन समान किस्तों में हस्तांतरित किये जायेंगे। योजना के संबंध में सरकारी संकल्प संख्या किसानी-2023/सीआर 42/11 ए दिनांक 15/06/2023 जारी किया गया है। जो किसान पीएम किसान योजना के लिए पात्र हैं वे "नमो शेतकारी महासंमान निधि योजना" के लाभ के लिए पात्र होंगे।',
      eligibility:
      'Cultivable land holding farmers families (comprising of husband, wife and minor children) having land holding on dated 01.02.2019 are eligible for both PM KISAN & NSMNY scheme.',
      eligibilityH:
      'दिनांक 01.02.2019 को भूमि धारण करने वाले कृषि योग्य भूमि धारक किसान परिवार (पति, पत्नी और नाबालिग बच्चों सहित) पीएम किसान और एनएसएमएनवाई दोनों योजनाओं के लिए पात्र हैं।',
      eligibilityG:
      'તારીખ 01.02.2019 ના રોજ જમીન ધરાવનાર ખેડૂત પરિવારો (પતિ, પત્ની અને સગીર બાળકોનો સમાવેશ થાય છે) ખેતીલાયક જમીન ધરાવતા ખેડૂતો PM કિસાન અને NSMNY બંને યોજના માટે પાત્ર છે.'),
];