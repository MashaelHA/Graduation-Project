// ignore_for_file: constant_identifier_names, unnecessary_const, unused_import

import 'package:flutter/material.dart';

import '../models/survey.dart';
import '../models/cities.dart';
import '../models/place.dart';
// import './widgets/city_categories.dart';

const Cateegories_data = const [
  Category(
    id: 'h1',
    title: 'الأنشطة',
    imageUrl:
        'https://www.ootlah.com/wp-content/uploads/2022/08/2-halfmoon_0007_WhatsApp-Image-2022-04-29-at-4.06.28-PM-1.jpg',
  ),
  Category(
    id: 'h2',
    title: 'المغامرات',
    // color: Colors.red,
    imageUrl:
        'https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2019/03/12/images/123513.jpg',
  ),
  Category(
    id: 'h3',
    title: 'تأمل الطبيعة',
    imageUrl:
        'http://www.asdaa-okazz.com/uploads/original_images/c0407cO_O20a1d556-c1a3-498c-b888-a13228e6e7bc.jpeg',
  ),
  Category(
    id: 'h4',
    title: 'التجول في المدن',
    imageUrl: 'https://www.cruisemapper.com/images/ports/10144-bc7d0d8647.jpg',
  ),
  Category(
    id: 'h5',
    title: 'التخييم',
    imageUrl:
        'https://img.rezdy.com/PRODUCT_IMAGE/13699/emptyquarter_gallery_11_lg.jpg',
  ),
  Category(
    id: 'h6',
    title: 'التنزه في الحدائق',
    imageUrl:
        'https://www.trfihi-parks.com/images/parks/LjLa8D_1537844822_1.jpg',
  ),
];

const Cities_data = const [
  City(
    id: 'c1',
    title: 'الخبر',
    imageUrl:
        'https://media.istockphoto.com/id/1256866846/photo/al-khobar-water-tower-at-sunrise-eastern-province-saudi-arabia.jpg?s=612x612&w=0&k=20&c=sZZMa27k9BZpQ-SJ55fqrKgC6739FQrdobSGu58VNYo=',
  ),
  City(
    id: 'c2',
    title: 'الدمام',
    imageUrl:
        'https://scontent.fdmm2-4.fna.fbcdn.net/v/t1.6435-9/118768944_3320568438022405_36412373333119783_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=SNeYIhXdd_8AX9EGf70&_nc_ht=scontent.fdmm2-4.fna&oh=00_AfCDpVWrq8yUHFR0OAvBXRyoSmh5cjT-MQjVWxzObRLOqg&oe=63F06CF9',
  ),
  City(
    id: 'c3',
    title: 'الجبيل',
    imageUrl:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQDLecf4sEjE09laybxrRGxDp18C4eyc2eD6y4u0_LlL7TzEPJx',
  ),
  City(
    id: 'c4',
    title: 'الأحساء',
    imageUrl:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQibuWR8QzfWiWWKn9x_sZaZeB9O_T04RCkvaMDZLO0CrAKjA1_',
  ),
  City(
    id: 'c5',
    title: 'الخفجي',
    imageUrl:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQU7qDHXQpWEDHmAiGLADc-ZynMLjjepi82Q9YyDg3zsnDBxWPy',
  ),
  City(
    id: 'c6',
    title: 'رأس تنورة',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-t7qezr31PdCimFtjYPDXzUFRRq5NOQ282L50t4EB7b8cEX2_',
  ),
  City(
    id: 'c7',
    title: 'حفر الباطن',
    imageUrl:
        'https://www.ewaahotels.com/uploads/image-slider/6900c1bed377c845d59bc871660e0e6a1583325948.jpg',
  ),
  City(
    id: 'c8',
    title: 'الظهران',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqtdhdCJ7_x476W9Ow4FTtdpmIaf5rAW1GZyOzP_0V5Tdsonuk',
  ),
];

const PlaceType_data = const [
  Places(
    id: 'm1',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'شتوية فاردو ',
    imageUrlPlace:
        'https://fastly.4sqi.net/img/general/width960/347227966_t1MJGg6CCZHttti2uozRZ9mxgqT1Wngl99B-To9lmx8.jpg',
    evaluation: '3.6',
    placeType: PlaceType.Exploration,
    mapUrl: 'https://maps.app.goo.gl/EnzBajR7zfwZpXAv6?g_st=ic',
    description: [
      'أجواء الشتوية .. مع ڤاردو غيير \n استمتع بالأجواء في الشتوية ولا تنسى تمر عالبوثات وتجرّب \n الدخول للشتوية بالحجز فقط عن طريق ذا شيفز ، بإنتظار زيارتكم في أقرب فرصة \n شتوية ڤاردو ما تحلى إلا بزيارتكم ',
    ],
    isTrending: true,
    isBeach: true,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm2',
    categories: [
      'c4',
    ],
    cityName: 'الأحساء',
    title: 'سوق القيصرية',
    imageUrlPlace:
        'https://pbs.twimg.com/media/Fm1SFRXWYAAGTdX?format=jpg&name=medium',
    evaluation: '4.4',
    placeType: PlaceType.Exploration,
    mapUrl: 'https://goo.gl/maps/sDwLZhD99aS7yECo8',
    description: [
      'زيارة المواقع الأثرية \n جولة سياحية على الأقدام \n زيارة المراكز التجارية للتبضع',
    ],
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm3',
    categories: [
      'c4',
    ],
    cityName: 'الأحساء',
    title: 'جبل الشعبة',
    imageUrlPlace:
        'https://www.bshaer.net/wp-content/uploads/2022/11/IMG-20221101-WA0008.jpg',
    // 'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',

    placeType: PlaceType.Adventures,
    mapUrl: 'https://goo.gl/maps/6KjgWhDWeotFhoaG8',
    evaluation: '4.0',
    description: [
      'منتزه جبل الشعبة يتكون من عناصر ترفيهية عدة منها (ساحات تزلج جبلية، مظلات للجلوس، ساحات خاصة لإقامة الفعاليات، ممرات المشاة، شلالات، جسور شد خشبية معلقة، وكذلك الحبل الطائر) . \n ',
    ],
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm4',
    categories: [
      'c2',
      'C8',
    ],
    cityName: 'الظهران',
    title: 'إثراء', //'إثراء ( مركز الملك عبدالعزيز الثقافي العالمي )'
    imageUrlPlace:
        'https://www.visitsaudi.com/content/dam/no-dynamic-media-folder/manifest-batch3r/dammam-refresh/dammam_refresh_winter_campaign_card_2.jpg',

    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/ajzx9MmmuR6BVaTh6',
    evaluation: '4.6',
    description: [
      'افتتح "مركز الملك عبدالعزيز الثّقافي العالمي"، والمعروف اختصارًا بـ "إثراء"، في عام 2017م، ليصبح محضنًا هامّاً للثقافة السعوديَّة، وتحفةً فنيَّةً أخَّاذة التصميم، مستوحاة من أشكال الصخور النفطيَّة، والرياح الصحروايَّة المحاطة بأنبوب فولاذيٍّ طوله 350 كم .لدى "إثراء" رؤيةٌ طموحةٌ ليصبح مركزًا ثقافيًّا رياديًّا في المملكة العربيًّة السعوديًّة، وملتقى للفنِّ والعلم، وعندما تذهب إلى "إثراء"، ستشاهد مساحة هائلة تبلغ 85.000 متر مربَّع، تضم متحفًا ومسرحًا ومكتبةً وسينما ومجموعةً من المعارض ومختبرًا للأفكار والمعرفة، بقاعات ذات تصاميمٍ معماريَّة مذهلة',
    ],
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    cityName: 'الخبر',
    title: 'شاطئ نصف القمر',
    imageUrlPlace:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/93/4c/e7/half-moon-beach.jpg?w=1200&h=-1&s=1',
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/oZo84cAxbjiCcwtt5',
    evaluation: '4.4',
    description: [
      'يقع على الخليج العربي والذي يُصنّف من أجمل شواطئ الدمام وأكثرها زيارة. يشكل عامل جذبٍ إضافي ليكون بذلك الوجهة الأمثل لإمضاء عطلة صيفية لا تُنسى. لتجوّل على امتداد شاطئ نصف القمر هو أول مُتعة ندعوك لاختبارها فور وصولك إلى المكان، فلا شيء يُضاهي روعة المشي بجانب البحر والاستمتاع بمنظر الأمواج وهي تتلاحق لتُلامس قدميك. حبّ أغلب مُرتادي شاطئ هاف مون الدمام الأنشطة البحرية وعلى وجه الخصوص السباحة، ففي حال كنت أيضاً من هواتها، فلا تفوّت فرصة التمتّعُ بمياه البحر الدافئة.',
    ],
    isTrending: false,
    isBeach: true,
    isActivities: false,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm6',
    categories: [
      'c2',
    ],
    cityName: 'الدمام',
    title: 'القرية الشعبية',
    imageUrlPlace:
        'https://www.viewsaudi.com/ar/wp-content/uploads/2021/04/Heritage-Village-Dammam-1.png',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/7LYw1LLbTQLsi8sPA',
    evaluation: '4.0',
    description: [
      'تنقسم القرية الشّعبيّة بجزئيها إلى متحفٍ تراثيّ ومطعمٍ شعبيّ يأخذك برحلةٍ عبر التاريخ، لتعيش نمط الحياة البسيطة في عصورٍ ماضية، ويضمّ المبنى المؤلَّف من خمسة طوابق متحفًا تُعرض فيه العديد من المجوهرات والمخطوطات والأقمشة وغيرها من القطع الأثريّة، وتذوّق أشهى الأطباق المحليّة مثل: أطباق المزّة التّقليديّة، وأطباق اللحوم المشويّة، والأرز، والتي تعكس تجربة الطّعام الشّعبيّ الأصيل في البيت السعودي.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm7',
    categories: [
      'c3',
    ],
    cityName: 'الجبيل',
    title: 'مول الفناتير',
    imageUrlPlace:
        'https://www.tripswd.com/wp-content/uploads/2021/01/Jubail-Malls-3.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/TTL1BpDDeLFM8wLA7',
    evaluation: '3.5',
    description: [
      'مجمع جيد ويحوي بعض المحال التجارية والمطاعم ومنطقة اللعاب للطفال ... توجد به اسواق المزرعة 3 كما توجد به مطعمين للعوائل وهم مهرجا ودار الكرم',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm8',
    categories: [
      'c3',
    ],
    cityName: 'الجبيل',
    title: 'محمية الجبيل',
    imageUrlPlace:
        'https://www.travellwd.com/wp-content/uploads/2019/09/%D9%85%D8%AD%D9%85%D9%8A%D8%A9-%D8%A7%D9%84%D8%AC%D8%A8%D9%8A%D9%84-700x468.jpg',
    evaluation: '3.9',
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/MF6kA2EvmqgPjeWd8',
    description: [
      'محمية الجبيل للأحياء الفطرية هي محمية طبيعة في المملكة العربية السعودية تحت إشراف الهيئة السعودية للحياة الفطرية',
    ],
    isTrending: false,
    isBeach: true,
    isActivities: false,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm9',
    categories: [
      'c3',
    ],
    cityName: 'الجبيل',
    title: 'شاطىء الفناتير',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2018/05/Al-Fanateer-Beach.jpg',
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/BbMupC7vgLZnAXaU6',
    evaluation: '4.6',
    description: [
      'يعتبر شاطئ الفناتير من الشواطئ الحديثة في مدينة الجبيل فتم تطويره لزيادة نسبة السياحة في الجبيل حيث يتوفر به العديد من المرافق والخدمات الحيوية، كما يوجد به أفضل أنواع السياحة في مدينة الجبيل سياحة الألعاب الترفيهية التي تنتشر على الشاطئ.',
    ],
    isTrending: false,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm10',
    categories: [
      'c4',
    ],
    cityName: 'الأحساء',
    title: 'جبل القارة',
    imageUrlPlace:
        'https://www.visitsaudi.com/content/dam/no-dynamic-media-folder/manifest-batch3r/ahsa-refresh/ahsa_winter_campaign_card_1.jpg',
    placeType: PlaceType.Adventures,
    mapUrl: 'https://goo.gl/maps/yn27Roo8GCGZ5nwu5',
    evaluation: '4.1',
    description: [
      'يبلغ ارتفاع جبل القارة حوالي 75 مترًا (أو حوالي 250 قدمًا) — والمشهد من قمة الواحة التي تبلغ مساحتها 30 ألف فدان أدناه لا يفوت. قمم الحجر الجيري الضبابية تستحق المشاهدة أيضًا. استكشف شبكة الكهوف التي تشق ممرات متعرجة تحيط بها الجدران الصخرية المرتفعة، وقم بزيارة متحف أرض الحضارات للتعرف على تاريخ المنطقة الذي يعود إلى آلاف السنين.',
    ],
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm11',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'الخفجي مول',
    imageUrlPlace:
        'https://fastly.4sqi.net/img/general/600x600/60735779_zvloOmlUf3Yq_AZZv6uW61pbovjdZYXrmjT5nQRfSUI.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/VsuRUcqb2UsHcRU58',
    evaluation: '3.3',
    description: [
      'يقع الخفجي مول في شارع الأمير فهد بن سلمان في مدينة الخفجي ، يعتبر الخفجي مول واحداً من أهم الأسواق التجارية المميزة والرائعة،ويضم العديد من المرافق الترفيهية التي تجذب اليه السائحين والعائلات للأستمتاع به.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm12',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'حديقة العبير',
    imageUrlPlace:
        'https://images.unsplash.com/photo-1452022582947-b521d8779ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODN8fGRlc2VydHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/RE9n5mEcsh9UpBcu9',
    evaluation: '3.8',
    description: [
      'واحدة من معالم السياحة في الخفجي التي تُعد مُتنفسًا جيدًا. تضم الحديقة مساحات من الخُضرة مُنظّمة ومُهندمة بشكل جيد تحث على الاستجمام والاسترخاء للباحثين عن الهدوء مع مناطق ترفيه لألعاب الأطفال.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm13',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'ميدان الفروسية',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2019/01/Tourism-in-Khafji-1-1.jpg',
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/WDVgPgN9fFtE52BX8',
    evaluation: '4.9',
    description: [
      'يُعد ركوب الخيل من أكثر الأنشطة التراثية التي تمتاز بها مدينة الخفجي السعودية بل ومدن المملكة بصفة عامة لذا كان من الطبيعي أن ينضم ميدان الفروسية لقائمة افضل اماكن سياحيه في الخفجي . تُقام السباقات الثلاثاء من كل أسبوع، ويُمكنك التواصل مع إدارة المكان مُسبقًا للتفاوض بشأن أمور الحجز.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm14',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'كورنيش الخفجي',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2019/01/Tourism-in-Khafji-2-1.jpg',
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/HchszUNuZwSM4JNQ9',
    evaluation: '4.2',
    description: [
      'يعد كورنيش الخفجي واحدا من افضل الأماكن السياحية في الخفجي ، حيث يتمتع بإطلالات ساحره على الخليج العربي ، ويحتوي على ممشى ومساحات خضراء واسعة . كما يتميز بمجموعة من الفنادق والمطاعم القريبة منه.',
    ],
    isTrending: true,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm15',
    categories: [
      'c6',
    ],
    cityName: 'رأس تنورة',
    title: 'حديقة الدانة',
    imageUrlPlace:
        'https://www.travellwd.com/wp-content/uploads/2021/02/%D8%AD%D8%AF%D9%8A%D9%82%D8%A9-%D8%A7%D9%84%D8%AF%D8%A7%D9%86%D8%A9-%D9%81%D9%8A-%D8%B1%D8%A3%D8%B3-%D8%A7%D9%84%D8%AA%D9%86%D9%88%D8%B1%D8%A9.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/p8upGUgPGc94peHq7',
    evaluation: '3.8',
    description: [
      'حديقة الدانة من أكبر المنتزهات الترفيهية الهامة في مدينة رأس تنورة بالمملكة العربية السعودية. تتمتع الحديقة بالمناظر الطبيعية الجميلة، حيث المسطحات الخضراء الكبيرة الواسعة والأشجار الكثيفة. تُعد المُتنفس الطبيعي المُفضل للعائلة السعودية في رأس تنورة.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm16',
    categories: [
      'c6',
    ],
    cityName: 'رأس تنورة',
    title: 'شاطئ رأس تنورة',
    imageUrlPlace:
        'https://www.travellwd.com/wp-content/uploads/2021/02/%D8%B4%D8%A7%D8%B7%D8%A6-%D8%B1%D8%A3%D8%B3-%D8%AA%D9%86%D9%88%D8%B1%D8%A9.bmp',
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/dd6d39qRxg7TEKwC9',
    evaluation: '4.7',
    description: [
      'يُعتبر شاطئ رأس تنورة من أجمل الوجهات السياحية في المدينة بالمملكة العربية السعودية ويلقي إقبالًا من قِبل الكثير من الزوار من داخل مدينة رأس تنورة وكذلك ومن خارجها على حد سواء. يتميز الشاطئ برماله الذهبية الناعمة، حيث يُمكنك الإستلقاء عليها للتشمس أو التأمل وممارسة جميع الرياضات الترفيهية مثل الكرة الشاطئية وغيرها. هذا فضلًا عن مياهه الفيروزية النظيفة والهادئة، حيث يُمكنك الإستمتاع بالسباحة فيها بأمان سواء للصغار أو الكبار بالإضافة إلى ذلك يضم الشاطئ كافة الوسائل والمرافق الخدمية التي يحتاجها المصطافين، على سبيل المثال دورات المياة، وأماكن الجلوس ذات المظلات وغيرها. أيضًا يُحاط به المسطحات الخضراء الجميلة، التي تُتيح لك قضاء وقت هادئ وسط أجواء طبيعية جميلة. ينتشر بإمتداد الشاطئ الذي يبلغ طوله نحو 5 كيلو متر تقريبًا، مجموعة من أكشاك بيع الوجبات السريعة، والمرطبات والعصائر المُنعشة. فإن كُنت تنوي السياحة في مدينة رأس تنورة صيفًا، ننصحك بزيارة هذا الشاطئ الهادئ.',
    ],
    isTrending: true,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm17',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'حديقة بودل الترفيهية',
    imageUrlPlace: 'https://goo.gl/maps/2MfJ5RseaRzBjJvw6',
    // 'https://www.urtrips.com/wp-content/uploads/2018/12/boudl-land.jpg',
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/dnbmwGjSJc94k3Ak9',
    evaluation: '3,5',
    description: [
      'مدينة بودل الترفيهية من اهم الاماكن السياحيه في حفر الباطن السعودية حيث أنها تُعتبر مُتنفس للعائلة بالكامل. كونها تضم العديد من المرافق التي تُوفر قضاء وقتاً مُمتعاً بالنسبة لهم بين الألعاب الترفيهية والمسطحات الخضراء. كما أن الحديقة تُقيم العديد من الاحتفالات والمسابقات المُميزة.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm18',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'حديقة أبو موسى الأشعري',
    imageUrlPlace:
        'https://www.viewsaudi.com/ar/wp-content/uploads/2022/07/zeVDt1_1539307885_532741352216.jpg',
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/YNaHPZ5mY7JLVbcD7',
    evaluation: '3.8',
    description: [
      'مدينة بودل الترفيهية من اهم الاماكن السياحيه في حفر الباطن السعودية حيث أنها تُعتبر مُتنفس للعائلة بالكامل، كونها تضم العديد من المرافق التي تُوفر قضاء وقتاً مُمتعاً بالنسبة لهم بين الألعاب الترفيهية والمسطحات الخضراء، كما أن الحديقة تُقيم العديد من الاحتفالات والمسابقات المُميزة.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm19',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'الظهران مول',
    imageUrlPlace:
        'https://top10malls.com/wp-content/uploads/2022/01/%D9%85%D9%88%D9%84-%D8%A7%D9%84%D8%B8%D9%87%D8%B1%D8%A7%D9%86.jpg',
    description: [
      'يقع الظهران مول في حي الدوحة الجنوبية الظهران ، ويعد مجمع الظهران مول من أكبر وأضخم المولات التي شهدتها المملكة العربية السعودية، كما تم افتتاح هذا المول العملاق في (مدينة الظهران في المنطقة الشرقية ) لذلك سمي الظهران مول نسبة الى المدينة المنسوبة اليه ، والذي يعد من أكبر التجمعات التجارية الترفيهية المتكاملة على مستوى الشرق الأوسط ، ويضم مجمع الظهران مول عدد كبير من المحلات التجارية يصل إلى أكثر من 300 محل لبيع المُنتجات المُختلفة، وهو معروف بضمُه لعدد من المحلات التي تحمل أشهر الماركات العالمية ، ويتواجد العديد من البراندات العالمية والكافيهات والمطاعم وهايبر ماركت وترفيه. واحد من معالم السياحة في الظهران الشهيرة لما يضمه من مرافق ترفيهية جعلته واحد من مقاصد العائلة المُفضلة بالنسبة لأهل الظهران، يقع مجمع الظهران في شارع الملك سعود بضاحية الدوحة الجنوبية، '
    ],
    mapUrl: 'https://goo.gl/maps/nWpTKKK5aigGakg17',
    evaluation: '4.4',
    placeType: PlaceType.Activities,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm20',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'حديقة تلال الظهران',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2018/12/Dhahran-Hills-Park-3.jpg',
    description: [
      'يُعد منتزة تلال الظهران من افضل الاماكن الترفيهية وواحدة من معالم السياحة في الظهران ، وهي وجهة مُفضلة للعائلات بصحبة الأطفال حيث قضاء أجمل أوقات من المتعة والإثارة، يتميز المنتزه بتقديم كل ماهو جديد من فترة إلى أخرى لاستقطاب عدد كبير من الزوّار. بالإضافة إلى أنه يضم مجموعة من الألعاب الترفيهية والمائية التي تنقلك في عالم من المتعة والاستمتاع بالإضافة إلى البحيرة الرائعة.'
    ],
    mapUrl: 'https://goo.gl/maps/YoENL3HQF9m9nCaV8',
    evaluation: '4.5',
    placeType: PlaceType.GardenPark,
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm21',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'خليج الدانة',
    imageUrlPlace:
        'https://www.dbr.sa/wp-content/uploads/2019/01/LUXURY-AND-NATURE-3-800x509.jpg',
    description: [
      'خليج الدانة هو مشروع عمراني ذو رؤية وتقدمية يقع على خليج نصف القمر. مدينة سياحية حديثة شاملة ومتكاملة تضم مجموعة قوية من المشاريع التي تشمل مجموعة كبيرة ومتنوعة من العقارات السكنية والتجارية ؛ مثالية للأغراض الشخصية والاستثمارية. يمتد خليج الدانة على مساحة 2.8 مليون متر مربع ، وسوف يقدم للمملكة أسلوب حياة حقيقي على الواجهة البحرية من خلال الفيلات السكنية الراقية المطلة على الشاطئ ، والمنتزه الواسع على الواجهة البحرية المليء بالمقاهي والمطاعم. مطاعم ، ومناطق متنزهات واسعة ، ومنتزه مائي للسيدات هو الأول من نوعه ، ومرافق ترفيهية وترفيهية بالإضافة إلى 3 فنادق ومنتجعين على الواجهة البحرية. '
    ],
    mapUrl: 'https://goo.gl/maps/GjCEr7Psn6GGZNj79',
    evaluation: '3.8',
    placeType: PlaceType.Activities,
    isTrending: true,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm22',
    categories: [
      'c8',
      'c2',
    ],
    cityName: 'الظهران',
    title: 'حديقة بحيرة مدن',
    imageUrlPlace:
        'https://modon.gov.sa/Style%20Library/Products/assets/images//madan-lake.png',
    description: [
      'تهتم مدن بتطوير دورها الاجتماعي والمشاركة في الأنشطة المختلفة. في هذا الإطار أنشأت مدن بحيرة مدن في المدينة الصناعية الثانية بالدمام ، وهي أكبر بحيرة صناعية تم تطويرها في المملكة ، حيث أنها مياه متجددة يتم معالجتها بطريقة صديقة للبيئة في الثانية. المدينة الصناعية بالدمام. تبلغ المساحة الإجمالية لمشروع البحيرة 400 ألف متر مربع ، تبلغ مساحة البحيرة منها 210 ألف متر مربع بنسبة 52٪.',
    ],
    mapUrl: 'https://goo.gl/maps/Xe5a94iYL5jqfNcCA',
    evaluation: '4.3',
    placeType: PlaceType.GardenPark,
    isTrending: false,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm23',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'حديقة الأمير سعود بن نايف ',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2018/11/Saud-Bin-Naif-Park.jpg',
    description: [
      'تُعد الحديقة واحدة من أشهر اماكن سياحية في الظهران وهي بالفعل من أجمل حدائق السعودية لما تضمه من مرافق رائعة، تتميز هذه الحديقة بكونها أول حديقة ذكية يتم إنشائها في المملكة وتضم المُسطحات الخضراء الشاسعة التي تَبعث على الراحة والاسترخاء، كما تستضيف الحديقة العديد من الفعاليات الثقافية والفنية.'
    ],
    mapUrl: 'https://goo.gl/maps/qcDDDz1YuUUoYmyN9',
    evaluation: '3.4',
    placeType: PlaceType.GardenPark,
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm24',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'امواج مول',
    imageUrlPlace:
        'https://pbs.twimg.com/ext_tw_video_thumb/1580285255008788480/pu/img/f8qRLn5sxvIxmG6s.jpg',
    description: [
      'مواج مول يتميز بموقعه الاستراتيجي حيث يسهل الوصول اليه من جميع مناطق الشرقية، وموقعه بالقرب من الكثافة السكانية العالية ليقدم لهم كل مايحتاجونه من خيارات عديدة للتسوق والترفيهللعائلة والاطفال من خلال اجواء راقية وتصميم مميز يحيث تم اختيار المشروع بدقة متناهية ليوفر جميع وسائل الراحة العصرية لزوار المول.'
    ],
    mapUrl: 'https://goo.gl/maps/kKyu8Nsk3VGRSBb18',
    evaluation: '4.1',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm25',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'Outback Steakhouse',
    imageUrlPlace:
        'https://ksarestaurant.com/uploads/restaurant/255_58e56410521d2.jpg', //'https://media-cdn.tripadvisor.com/media/photo-s/0e/ac/b1/56/photo1jpg.jpg',
    description: [
      'أوت باك ستيك هاوس في الظهران مول هو واحد من أفضل الأماكن والمطاعم المدرجة في قائمة ستيك هاوس في الخبر والظهران',
    ],
    mapUrl: 'https://goo.gl/maps/xbYufE57kDFQGXy98',
    evaluation: '4.4',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm26',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'مادو',
    imageUrlPlace:
        'https://www.alsharqiacafes.com/wp-content/uploads/2021/01/%D9%85%D8%B7%D8%B9%D9%85-%D9%85%D8%A7%D8%AF%D9%88-%D8%A7%D9%84%D8%B8%D9%87%D8%B1%D8%A7%D9%86.jpg',
    description: [
      'مادو مطعم تركي في الظهران مول هو واحد من أفضل الأماكن والمطاعم المدرجة في قائمة ومقهى المطاعم في الخبر والظهران. لكن اسعاره مرتفعه نوعا ما والخدمة في المكان رائعة والعاملين متعاونين ودودين مع كل الزبائن ومناسب لعواي والافراد ',
    ],
    mapUrl: 'https://goo.gl/maps/aQxVmKTYf8McXQJy9',
    evaluation: '3.5',
    placeType: PlaceType.GardenPark,
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm27',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'قرافيتي',
    imageUrlPlace: 'https://i.ytimg.com/vi/71jBMKz_Fyw/hqdefault.jpg',
    description: [
      'ألعاب جرافيتي و التي تتضمن ترامبولين، تسلق جدران جرافيتي، و مجموعة متنوعة من ألعاب الواقع الأفتراضي، وأيضا يوجد مطعم نيوتن',
    ],
    mapUrl: 'https://goo.gl/maps/9VZUXsarxQ45jnuP7',
    evaluation: '4.3',
    placeType: PlaceType.Activities,
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm28',
    categories: ['c8', 'c2', 'c1'],
    cityName: 'الظهران',
    title: 'شتاء وكف',
    imageUrlPlace:
        'https://www.ithra.com/application/files/cache/thumbnails/effd504a3952ce25314c67db45b4587a.jpg',
    description: [
      'مخيم وكف على العديد من المرافق المختلفة، إذ يحكي كل مرفق عن تجربة زاخرة بدءًا من منطقة سمرة إلى قمرة أنس، إلى جناح الطرب لتجربة مميزة لن ترغب في تفويتها.  كما يستضيف وكف الأجواء الممتعة لـ الكشتة يوميًا من الخامسة مساءً وحتّى منتصف الليل، لأوقات اجتماعية حافلة بالأصدقاء والعائلة لتعيش تجربة تخييم وسط الصحراء يرافقها طربًا عروض موسيقى وطبخ حيّة، بينما تُقدم لك أشهى الأطباق!',
    ],
    mapUrl: 'https://goo.gl/maps/3wsPwGR8Mr9jdncT9',
    evaluation: '4.2',
    placeType: PlaceType.CityDown,
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm29',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'حديقة الدوحة',
    imageUrlPlace:
        'https://ibnbattutatravel.com/wp-content/uploads/listing-images/ibnbattuta-PHZqFy4-qYRHH-Iae.jpg',
    description: [
      'حديقة الدوحة هي حديقة فسيحة تقع على بعد دقائق من المدينة، وهي من الحدائق الغير معروفة في الوسط السياحي، لذلك فهي غير مكتظة وتتمتع ببيئة هادئة تجلب الراحة والاسترخاء لجميع زوارها. وسيجد الزوار في الحديقة أماكن استراحة مظللة وملاعب للأطفال ومسارات مخصصة لقيادة الدراجات الهوائية وعدة كافتيريات صغيرة تقدم أشهى الأطباق السريعة.'
    ],
    mapUrl: 'https://goo.gl/maps/S9nc1mw3nsLMojfV7',
    evaluation: '4.2',
    placeType: PlaceType.GardenPark,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm30',
    categories: [
      'c8',
    ],
    cityName: 'الظهران',
    title: 'منتجع هوليداي',
    imageUrlPlace:
        'https://d2xf5gjipzd8cd.cloudfront.net/available/393824569/393824569_WxH.jpg',
    description: [
      'يقع هذا المنتجع من فئة 4 نجوم في مدينة الخبر ويضم غرفاً حديثة مع مناظر خلابة تطل على خليج نصف القمر. وتشمل المرافق 3 أحواض للسباحة تطل على حديقة خضراء وشاطئاً خاصاً. تتميز غرف منتجع هوليدي إن الخبر شاطئ نصف القمر المكيفة بألوان دافئة ونوافذ كبيرة وأرضيات من البلاط. توفر جميع الغرف خدمة الواي فاي المجانية وتضم جهاز تلفزيون ذي شاشة مسطحة وميني بار ومرافق لإعداد الشاي والقهوة.يوفر منتجع هوليدي إن الخبر شاطئ نصف القمر خدمة تأجير القوارب التي تسير بالدواسات لاستكشاف المياه الضحلة في خليج نصف القمر. كما يضم ملعباً رياضياً متعدد الأغراض وصالة رياضية وملعباً للأطفال.',
    ],
    mapUrl: 'https://goo.gl/maps/ZujhkwrHi3iFCEGi9',
    evaluation: '3.6',
    placeType: PlaceType.GardenPark,
    isTrending: false,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm30',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'حديقة الملك فيصل',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2018/12/king-faisal-park.jpg',
    description: [
      'تُعتبر من أشهر حدائق حفر الباطن وواحدة من أهم معالم السياحة في حفر الباطن السعودية لما تضمه من مسطحات خضراء شاسعة وأشجار مُنتشرة تضمن للزوّار قضاء وقت هادئ من الاسترخاء والمتعة، هذا إلى جانب ألعاب الأطفال المُنتشرة في الحديقة والتي تضمن للأطفال قضاء وقت مرح ومُمتع، وتقع الحديقة في موقع ممتاز حيث تقاطع طريقي الملك عبد العزيز و الأمير فيصل بن عبد العزيز.'
    ],
    mapUrl: 'https://goo.gl/maps/tMGKTWXQHQ3xvZHG9',
    evaluation: '2.3',
    placeType: PlaceType.GardenPark,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm31',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'ملاهي جامبولين',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2022/11/Jumpoline-Amusement-Park-Hafar-Al-Batin_2.jpg',
    description: [
      'يجد المُولعون بالتشويق والمتعة مطلبهم في ملاهي جامبولين، حيث تُعدّ الأفضل بين عدة مناطق سياحية في حفر الباطن كونها تُوفّر أنشطة ممتعة ومناسبة لمختلف الفئات العمرية، فعندما تقوم بزيارة الملاهي هذه سوف تُدهش بتنوّع الألعاب والأنشطة وهذا ما سيضمن لك رحلة زاخرة بالحماس والمغامرة لن تستطيع نسيانها.'
    ],
    mapUrl: 'https://goo.gl/maps/Jq88RCitwGoYPP4y7',
    evaluation: '4.2',
    placeType: PlaceType.Activities,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm32',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'العثيم مول',
    imageUrlPlace:
        'https://www.urtrips.com/wp-content/uploads/2018/10/El-Mashreq-Mall-Hafar-El-Batin-2.jpg',
    description: [
      'يعد المشرق مول حفر الباطن من افضل مولات حفر الباطن ومن بين معالم السياحة في حفر الباطن حيث يشمل العديد من الأنشطة التجارية والترفيهية المُصمَمة بإتقان لتُلبي رغبات زوّاره. وتظهر فيه سمات التجربة العالمية والمُنشآت التجارية الحديثة، ونظراً لموقع المدينة المتميز، فقد اُعتبر المول وجهة مضمونة للمتسوقين من دولة الكويت دون تكُبد عناء السفر الطويل. ويضم المول مدينة ألعاب ترفيهية، أبراج فندقية، هايبر ماركت، وسلسلة من المطاعم والمقاهي العالمية والمحلية.'
    ],
    mapUrl: 'https://goo.gl/maps/N8ppM5XYLuExfonMA',
    evaluation: '3.9',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm33',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'المكان مول',
    imageUrlPlace:
        'https://top10malls.com/wp-content/uploads/2022/01/%D8%A7%D9%84%D9%85%D9%83%D8%A7%D9%86-%D9%85%D9%88%D9%84-%D8%AD%D9%81%D8%B1-%D8%A7%D9%84%D8%A8%D8%A7%D8%B7%D9%86.jpg',
    description: [
      'المكان مول حفر الباطن مول في حي النايفية في الجزء الجنوبي لحفر الباطن، على طريق الملك عبد العزيز، بالقرب من محطة ويعد من اماكن التسوق الوحيدة بالمنطقة بها اغلب الماركات المشهورة واماكن ترفيه ومقاهي ومطاعم .'
    ],
    mapUrl: 'https://goo.gl/maps/QGAbg5GN9qFb6ka59',
    evaluation: '4.1',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  // Places(
  //   id: 'm34',
  //   categories: [
  //     'c7',
  //   ],
  //   cityName: 'حفر الباطن',
  //   title: 'العثيم مول',
  //   imageUrlPlace:
  //       'https://www.viewsaudi.com/ar/wp-content/uploads/2022/10/Hala-Mall-Hafar-Al-Batin-1.jpg',
  //   activities: [
  //     'زيارة المواقع الأثرية',
  //     'جولة سياحية على الأقدام',
  //     'زيارة المراكز التجارية للتبضع',
  //     'تناول وجبة الغداء',
  //     'استمتاع المناظر الجملية'
  //   ],
  //   description: [
  //     'يُعتبر هلا مول حفر الباطن نقلة نوعية في مجال التسوق والترفيه، حيث يحتضن مجموعة مميّزة من المعارض، صالات العرض، وقاعات الترفيه التي تشمل التزلج، البولينج، والبلياردو، يشمل عدد متاجر هلا مول 355 متجرًا لتوفر احتياجات كل أفراد العائلة'
  //   ],
  //   mapUrl: 'https://goo.gl/maps/wtRWio7WUNtksnAG8',
  //   evaluation: '3.8',
  //   placeType: PlaceType.CityDown,
  //   isTrending: false,
  //   isBeach: false,
  //   isActivities: true,
  //   isResturant: false,
  //   isHotel: false,
  // ),
  Places(
    id: 'm35',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'بودل الميدان',
    imageUrlPlace:
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/304627123.jpg?k=eff6af53b665adf1be0df49bcbdc9bdb6dde3a1ecbba0fa95d7ef21c02448342&o=&hp=1',
    description: [
      'يقع بودل الميدان على مقربة من بلدية حفر الباطن، ويوفر أماكن إقامة مكيفة مع خدمة الواي فاي المجانية، ويقدم مقهى، وبوفيه الإفطار، ومواقف مجانية للسيارات'
    ],
    mapUrl: 'https://goo.gl/maps/ymjQydJewvSpTnH79',
    evaluation: '3.8',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm36',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'سفن بالاسيس',
    imageUrlPlace:
        'https://cf.bstatic.com/xdata/images/hotel/max1280x900/246746926.jpg?k=872eefed7639635b274e2741413e2570edb75a4d2ce408a8c5bed81aa18cb816&o=&hp=1',
    description: [
      'قع فندق Seven Palaces في مدينة حفر الباطن، ويحتوي على مطعم ومركز للياقة البدنية وبار وصالة مشتركة، كما تشمل المرافق المتوفرة في مكان الإقامة هذا مكتباً للاستقبال يعمل على مدار الساعة وخدمة الغرف، بالإضافة إلى خدمة الواي فاي مجاناً في جميع أنحاء مكان الإقامة، ويضم هذا الفندق غرفاً عائلية.',
    ],
    mapUrl: 'https://goo.gl/maps/RY84YmqA59LQeACw8',
    evaluation: '4.2',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm37',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'فندق المهيدب الدولى',
    imageUrlPlace:
        'https://static.holdinn.net/thumb/550x350/11/al-muhaidb-residence-al-dowally-164734.jpg',
    description: [
      'المهيدب ريزيدنس الدولي هو وحدات مفروشة من الدرجة الثالثة، يقع على طريق الملك فهد الدولي مقابل كبري ابو قعر, حي الفيصلية، حفر الباطن. يبعد 3.2 كم فقط عن هلا مول. تتميز هذه الوحدات المفروشة بموقع فريد، وتصميم رائع، كما يضم أثاث مريح.',
    ],
    mapUrl: 'https://goo.gl/maps/QS7m8c7fj2TL24QZA',
    evaluation: '3.5',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm38',
    categories: [
      'c7',
    ],
    cityName: 'حفر الباطن',
    title: 'دولف',
    imageUrlPlace:
        'https://doolve-hotel-hafar-al-batin.albooked.com/data/Photos/OriginalPhoto/6050/605033/605033229/Doolv-Hotel-Hafar-Al-Batin-Exterior.JPEG',
    description: [
      'يقع فندق دولف الحفر في حفر الباطن، كما يوفر مكان الإقامة خدمة الغرف وصالة مشتركة وخدمة صرف العملات للضيوف.',
    ],
    mapUrl: 'https://goo.gl/maps/yJQyb75gdEiD3cyA9',
    evaluation: '3.8',
    placeType: PlaceType.CityDown,
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm39',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'LINES | لاينز',
    imageUrlPlace: 'https://f.top4top.io/p_25854wrkf1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/BfcAHbeBefsnssZRA?g_st=ig',
    evaluation: '3.5',
    description: [
      'يقع لاينز كافيه في شارع الملك عبدالله بمدينة الخفجي ، وهو مكان ترفيهي للشباب والعوائل. يوجد به صالة بولينغ ويقدم القهوة المختصة وبعض اصناف الحلويات اللذيذة.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm40',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'مطعم حكاية لبنانية',
    imageUrlPlace: 'https://l.top4top.io/p_2585ri8b91.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/qrsgoczeGVrJsZHe6?g_st=ic',
    evaluation: '3.5',
    description: [
      'يقع مطعم حكاية لبنانية في طريق الأمير نايف في حي الجوهرة بمدينة الخفجي ، يقدم وجبة فطور ووجبة غداء ووجبة عشاء ، يتميز مطعم حكاية لبنانية بالطابع اللبناني وتقديمه المأكولات اللبنانية.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm41',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'قروف سنتر',
    imageUrlPlace: 'https://i.top4top.io/p_2585hzb071.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/Hd34DwXCtj1W3iCx5?g_st=ic',
    evaluation: '4.0',
    description: [
      'يقع قروف سنتر في شارع الملك عبدالله بن عبد العزيز بحي الريان في مدينة الخفجي ، وهو عباره عن مجمع للمطاعم والمقاهي ومحلات للعطور . يوجد به مواقف للسيارات',
    ],
    isTrending: true,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm42',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'حصير',
    imageUrlPlace: 'https://i.top4top.io/p_2585ucmeb1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/AWDvAwiFhARim8EY8?g_st=ic',
    evaluation: '4.5',
    description: [
      'يقع مقهى حصير في في شارع الأمير منصور بحي الجوهرة  في مدينة الخفجي ، وهو عبارة عن بار قهوة مختصة ويوفر ايضا خدمة طلبات سيارات.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm43',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'بانو كافيه',
    imageUrlPlace: 'https://j.top4top.io/p_25856zeqg1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/c89fdoRSpRSZSjSj6?g_st=ic',
    evaluation: '4.0',
    description: [
      'يقع مقهى بانو في في شارع الملك عبدالله بحي العزيزية  في مدينة الخفجي ، وهو عبارة عن مقهى يقدم  القهوة المختصة.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm44',
    categories: [
      'c5',
    ],
    cityName: 'الخفجي',
    title: 'العثيم مول',
    imageUrlPlace: 'https://a.top4top.io/p_2585adtnl1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: ' https://maps.app.goo.gl/TusSLTykg7siFEkv9?g_st=ic',
    evaluation: '3.5',
    description: [
      'تعد شركة عبدالله العثيم للأستثمار أحد أكبر الشركات بالمملكة العربية السعودية في مجال إنشاء وإدارة وتشغيل المجمعات التجارية الضخمة،يقع العثيم مول في شارع الملك عبدالله بن عبدالعزيز بحي الجوهرة في مدينة الخفجي ، وهو مجمع يضم محلات الملابس والعطور ويوجد به مطاعم وكافيهات والعاب سفوري لاند.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm45',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'قرية الدغيثر',
    imageUrlPlace:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnfI4aEFYm65iirsb8mB0ShjB60wH30-_j2w&usqp=CAU',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/CMZkyATVb7i9YaPH8',
    evaluation: '4.1',
    description: [
      'قرية سياحية تحتوي على العديد من المطاعم والكافيهات',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm46',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: ' حديقة الورود ',
    imageUrlPlace:
        'https://cms-cdn.almosafer.com/drupal_cms/alm/files/public/cityguides-import/al_khobar_zoo2_0.jpg',
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/F6s7uXEisyyK4Mp49',
    evaluation: '3.9',
    description: [
      'حديقة تحتوي على مسطحات خضراء، وايضا يوجد بها ملعبين ، ملعب لكرة القدم وملعب لكرة السلة ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm47',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'سكاي زون',
    imageUrlPlace:
        'https://www.viewsaudi.com/ar/wp-content/uploads/2022/07/%D8%A7%D9%84%D8%AD%D9%83%D9%8A%D8%B1-%D8%AA%D8%A7%D9%8A%D9%85-%D8%AC%D8%A7%D8%B2%D8%A7%D9%863.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/AWDvAwiFhARim8EY8?g_st=ic',
    evaluation: '4.0',
    description: [
      'من اكثر مدن ملاهي في الخبر إثارة وترفيه',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm48',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'كورنيش الخبر',
    imageUrlPlace:
        'https://www.travellwd.com/wp-content/uploads/2021/02/%D8%A7%D9%84%D8%AC%D9%84%D9%88%D8%B3-%D8%A3%D8%B3%D9%81%D9%84-%D8%A7%D9%84%D9%85%D8%B8%D9%84%D8%A7%D8%AA-%D8%A7%D9%84%D8%AE%D8%B4%D8%A8%D9%8A%D8%A9-%D9%81%D9%8A-%D9%83%D9%88%D8%B1%D9%86%D9%8A%D8%B4-%D8%A7%D9%84%D8%AE%D8%A8%D8%B1.jpg',
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/mfqTTLW3jiRDD9VeA',
    evaluation: '4.0',
    description: [
      ' يعد كورنيش الخبر افضل الاماكن السياحية بالخبر، لانه يعتبر مكان للاسترخاء والاستجمام ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm49',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'حديقة اسكان الخبر',
    imageUrlPlace:
        'https://www.trfihi-parks.com/images/parks/NSJcJG_1537592841_2.jpg',
    placeType: PlaceType.GardenPark,
    mapUrl: ' https://goo.gl/maps/22F17ady2XaRH2KW7',
    evaluation: '4.3',
    description: [
      'تعد شركة عبدالله العثيم للأستثمار أحد أكبر الشركات بالمملكة العربية السعودية في مجال إنشاء وإدارة وتشغيل المجمعات التجارية الضخمة،يقع العثيم مول في شارع الملك عبدالله بن عبدالعزيز بحي الجوهرة في مدينة الخفجي ، وهو مجمع يضم محلات الملابس والعطور ويوجد به مطاعم وكافيهات والعاب سفوري لاند.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm50',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'حديقة الأمير سعود بن جلوي',
    imageUrlPlace:
        'https://www.trfihi-parks.com/images/parks/3669-9380961355827726.jpg',
    placeType: PlaceType.GardenPark,
    mapUrl:
        'https://maps.google.com/?q=76M4+C54%20Prince%20Ibn%20Jalawy%20Park,%20Custodian%20of%20The%20Two%20Holy%20Mosques%20Rd,%20Al%20Khobar%20Al%20Shamalia,%20Al%20Khobar%2034443&ftid=0x3e49e83d11e46643:0xebe1830d102634c4&hl=en-SA&gl=sa&entry=gps&lucs=47062720&g_st=it',
    evaluation: '4.2',
    description: [
      ' حديقة الامير سعود هي من أكبر الحدائق في مدين الخبر وهي تعتبر مكان ومعلم سياحي بارز في الخبر',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm51',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'حديقة القصيبي ',
    imageUrlPlace:
        'https://www.trfihi-parks.com/images/parks/28-qasibe-garden-1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/PWFNRAvaR3KfteQ29?g_st=it',
    evaluation: '4.1',
    description: [
      ' تعتبر حديقة القصيبي من اشهر المنتزهات نظرا لمساحتها الخضراء الشاسعه وماتضمه من العاب للاطفال ومسارات للمشي ',
      'حديقة تحتوي على مسطحات خضراء، وايضا يوجد بها ملعبين ، ملعب لكرة القدم وملعب لكرة السلة ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm52',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'الخبر مول',
    imageUrlPlace:
        'https://elbosla.com/wp-content/uploads/2022/10/%D8%A7%D9%84%D8%AE%D8%A8%D8%B1-%D9%85%D9%88%D9%84-650x386-1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://maps.app.goo.gl/AWDvAwiFhARim8EY8?g_st=ic',
    evaluation: '3.9',
    description: [
      ' مجمع تجاري يحتوي على العدد من المحلات التجارية والمطاعم ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm53',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'ستيك هاوس',
    imageUrlPlace:
        'https://thesaudifood.com/wp-content/uploads/2020/10/%D8%B3%D8%AA%D9%8A%D9%83-%D9%87%D8%A7%D9%88%D8%B3_-_-%D8%AE%D8%B1%D8%A7%D8%A6%D8%B7-_Google___-780x470.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/KJDvoBEHppDqrWmm7',
    evaluation: '4.0',
    description: [
      ' مطعم ستيك وبرجر ويوجد به قسم للعوائل وقسم للأفراد ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm54',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'مطعم منجيامو',
    imageUrlPlace:
        'https://media-cdn.tripadvisor.com/media/photo-s/03/08/18/38/sign.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: ' https://goo.gl/maps/DSwHTVrCey6FXyNu6',
    evaluation: '4.3',
    description: [
      ' مطعم مأكولات إيطالية',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm55',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'مطعم لاسكالا',
    imageUrlPlace:
        'https://1.bp.blogspot.com/-slxii85-YYM/YLQJ1F3uvnI/AAAAAAAACpU/MrT52okCjEAjEYt5QZVX3roPTH9d7t-sgCLcBGAsYHQ/s600/%25D9%2585%25D8%25B7%25D8%25B9%25D9%2585%2B%25D9%2584%25D8%25A7%25D8%25B3%25D9%2583%25D8%25A7%25D9%2584%25D8%25A7%2B%25D8%25A7%25D9%2584%25D8%25AE%25D8%25A8%25D8%25B11.webp',
    placeType: PlaceType.Exploration,
    mapUrl: 'https://goo.gl/maps/3fBePV6goarBUK5T7',
    evaluation: '3.9',
    description: [
      ' مطعم فرنسي للافراد والعوائل وتوجد به جلسات داخليه وخارجية ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm56',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'براسا دي برازيل',
    imageUrlPlace:
        'https://1.bp.blogspot.com/--mDqJwiBqeQ/X_eeC2gZNnI/AAAAAAAAAQQ/UiZeJp0QaBMC7LGRDT9n0viFhkXrX35qQCLcBGAsYHQ/s600/%25D8%25A8%25D8%25B1%25D8%25A7%25D8%25B3%25D8%25A7%2B%25D8%25A7%25D9%2584%25D8%25A8%25D8%25B1%25D8%25A7%25D8%25B2%25D9%258A%25D9%2584%25D9%258A.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/K6FswV7z3SCmAHZy5',
    evaluation: '4.2',
    description: [
      ' مطعم يقدم اكلات برازيليه وتوجد جلسات داخليه وخارجية',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm57',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'مطعم السنبوك',
    imageUrlPlace:
        'https://www.viewsaudi.com/ar/wp-content/uploads/2022/06/%D9%85%D8%B7%D8%B9%D9%85-%D8%A7%D9%84%D8%B3%D9%86%D8%A8%D9%88%D9%83-1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/6tBvZtg5jXuyyMzQA',
    evaluation: '3.6',
    description: [
      ' مطعم للمأكولات البحرية ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm58',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'مطعم  كومو',
    imageUrlPlace:
        'https://media-cdn.tripadvisor.com/media/photo-s/1c/77/1c/ee/caption.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/Lhj5GsnzinFEDqrR6',
    evaluation: '4.0',
    description: [
      ' مطعم للمأكولات البحرية ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm59',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'فتة وصنوبر',
    imageUrlPlace:
        'https://1.bp.blogspot.com/-rMpo7OdoLo8/YA-ZCbUzJjI/AAAAAAAABNA/txokofJbwCQBO4Vzp1h8-stz3DTk1dqPQCLcBGAsYHQ/s600/%25D9%2585%25D8%25B7%25D8%25B9%25D9%2585%2B%25D9%2581%25D8%25AA%25D8%25A9%2B%25D9%2588%25D8%25B5%25D9%2586%25D9%2588%25D8%25A8%25D8%25B1.jpg',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/qZpRo6uGsdDvsutd7',
    evaluation: '4.0',
    description: [
      ' مطعم للمأكولات اللبنانية ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm60',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'بلي كافيه',
    imageUrlPlace:
        'https://lh3.googleusercontent.com/p/AF1QipNvkvbXDCPuuIaKKYgm4C-H3taYATgsL3jRJrUW=s1280-p-no-v1',
    placeType: PlaceType.CityDown,
    mapUrl: ' https://goo.gl/maps/DSwHTVrCey6FXyNu6',
    evaluation: '3.9',
    description: [
      ' يقدم اطباق هندية وامريكية وإيطالية',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm61',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'باستيل كافيه',
    imageUrlPlace:
        'https://i0.wp.com/cafesriyadh.com/wp-content/uploads/2020/09/%D9%83%D8%A7%D9%81%D9%8A%D9%87-%D8%A8%D8%A7%D8%B3%D8%AA%D9%8A%D9%84.jpg?fit=900%2C1200&ssl=1',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/eRVdkaE8Y3amTUxTA',
    evaluation: '4.1',
    description: [
      ' يقدم اطباق مميزة ومشروبات متنوعة ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm62',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'فندق مريديان',
    imageUrlPlace:
        'https://cf.bstatic.com/xdata/images/hotel/max1280x900/178775197.jpg?k=5ce6e0b62a98e3e012214d686510ecc20f1eb5d3471701da2d0530df726df39b&o=&hp=1',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/1tKnwEMWrwsm6mrX6',
    evaluation: '4.3',
    description: [
      'يضم فندق مريديان الفاخر ذو الـ 5 نجوم مرافق للياقة البدنية ومسبحاً في الهواء الطلق، وتتوفر مواقف مجانية للسيارات في الموقع بالإضافة إلى خدمة الواي فاي المجانية في الغرف.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm63',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'فندق موڤنبيك',
    imageUrlPlace:
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/401949237.jpg?k=869ccee46f6eea6bc79a14bf14d6472d0efed0767acbba3a1923d66dc29e0548&o=&hp=1',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/wsw19cyycKEz9gBp6',
    evaluation: '4.4',
    description: [
      ' فندق يقع في حي تجاري ويتميز بوجود مسبح داخلي ومركز لياقة بدنية',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm64',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'فندق أسوار بوتيك',
    imageUrlPlace:
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/139303126.jpg?k=1a0ac17056084bf46b2d4fd675510ad9ae60b9ff2c6c9c5e87d6f76ded7a8235&o=&hp=1',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/ubTiPAdd8LcLtgYM9',
    evaluation: '3.8',
    description: [
      'فندق ٤ نجوم ويقدم خدمة واي فاي مجانية',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm65',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'فندق سوفيتل',
    imageUrlPlace:
        'https://i0.wp.com/news.travelerpedia.net/wp-content/uploads/2014/12/%D8%B3%D9%88%D9%81%D8%AA%D9%8A%D9%84-%D8%A7%D9%84%D8%AE%D8%A8%D8%B1.jpg',
    placeType: PlaceType.Exploration,
    mapUrl: 'https://goo.gl/maps/jby5cQbrkkk6dqGi9',
    evaluation: '4.5',
    description: [
      'فندق ٥ نجوم ، يتميز بأطلالات مفتوحة ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm66',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'كمبينسكي العثمان',
    imageUrlPlace:
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/234686710.jpg?k=88dee9f138ab8313b84c51decb248ceb039ea90316a4e4b0eb0643a65ce8ecc2&o=&hp=1',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/79UuMwb7oNnqhZEy8',
    evaluation: '4.5',
    description: [
      'فندق يتمتع بموقع مثالي لانه يقع بين الخبر والدمام ويقع على بُعد دقائق فقط من مراكز التسوق الشهيرة ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm57',
    categories: [
      'c1',
    ],
    cityName: 'الخبر',
    title: 'فندق جولدن بوجاري',
    imageUrlPlace:
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/122478150.jpg?k=ed045f4ac5689e18919121e2b0ba8256974646fb18d217accc8bf48a2d4c7648&o=&hp=1',
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/cc6FmXCqDxhsYQHGA',
    evaluation: '3.9',
    description: [
      'فندق يضم مركز للياقة البدنية ومسبحاً داخليا للرجال والسيدات ',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
  Places(
    id: 'm58',
    categories: [
      'c1',
    ],
    cityName: '',
    title: '',
    imageUrlPlace: '',
    placeType: PlaceType.CityDown,
    mapUrl: '',
    evaluation: '',
    description: [
      '',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: false,
    isResturant: false,
    isHotel: true,
  ),
];
