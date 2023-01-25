// ignore_for_file: constant_identifier_names, unnecessary_const, unused_import

import 'package:flutter/material.dart';

import 'models/survey.dart';
import './models/cities.dart';
import './models/place.dart';
// import './widgets/city_categories.dart';

const Cateegories_data = const [
  Category(
    id: 'h1',
    title: 'الأنشطة',
    // color: Colors.purple,
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
    // color: Colors.orange,
    imageUrl:
        'http://www.asdaa-okazz.com/uploads/original_images/c0407cO_O20a1d556-c1a3-498c-b888-a13228e6e7bc.jpeg',
  ),
  Category(
    id: 'h4',
    title: 'التجول في المدن',
    // color: Colors.amber,
    imageUrl: 'https://www.cruisemapper.com/images/ports/10144-bc7d0d8647.jpg',
  ),
  Category(
    id: 'h5',
    title: 'التخييم',
    // color: Colors.blue,
    imageUrl:
        'https://img.rezdy.com/PRODUCT_IMAGE/13699/emptyquarter_gallery_11_lg.jpg',
  ),
  Category(
    id: 'h6',
    title: 'التنزه في الحدائق',
    // color: Colors.green,
    imageUrl:
        'https://www.trfihi-parks.com/images/parks/LjLa8D_1537844822_1.jpg',
  ),
];

const Cities_data = const [
  City(
    id: 'c1',
    title: 'الخبر',
    imageUrl:
        // 'https://wondrousdrifter.com/wp-content/uploads/2022/06/Dammam-Saudi-Arabia-travel-728x410.jpg.webp',
        // 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTPFm7W1AGt5XFl772SU_iUg0NKQmdMKRWILGXu-jhaSKgowxXl',
        // 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTijHE5DB_VS81zZwEZGJ81Yt0aw-VbgOFrazw1EBQOgLCUnh2q',
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
    title: 'شتوية فاردو ',
    imageUrl:
        'https://fastly.4sqi.net/img/general/width960/347227966_t1MJGg6CCZHttti2uozRZ9mxgqT1Wngl99B-To9lmx8.jpg',
    activities: [
      'أجواء الشتوية .. مع ڤاردو غيير',
      'استمتع بالأجواء في الشتوية ولا تنسى تمر عالبوثات وتجرّب',
      'الدخول للشتوية بالحجز فقط عن طريق ذا شيفز ، بإنتظار زيارتكم في أقرب فرصة',
      'شتوية ڤاردو ما تحلى إلا بزيارتكم 🤍',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Exploration,
    mapUrl: 'https://maps.app.goo.gl/EnzBajR7zfwZpXAv6?g_st=ic',
    description: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: true,
    isBeach: true,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm2',
    categories: [
      'c4',
    ],
    title: 'سوق القيصرية',
    imageUrl:
        'https://pbs.twimg.com/media/Fm1SFRXWYAAGTdX?format=jpg&name=medium',
    placeType: PlaceType.Exploration,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    mapUrl: '',
    description: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm3',
    categories: [
      'c4',
    ],
    title: 'جبل الشعبة',
    imageUrl:
    'https://www.instagram.com/p/CmjiyzMM3-N/?utm_source=ig_web_copy_link',
        // 'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Adventures,
     mapUrl: '',
    description: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
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
      'c1',
      'C8',
    ],
    title: 'إثراء ( مركز الملك عبدالعزيز الثقافي العالمي )',
    imageUrl:
        'https://www.visitsaudi.com/content/dam/no-dynamic-media-folder/manifest-batch3r/dammam-refresh/dammam_refresh_winter_campaign_card_2.jpg',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/ajzx9MmmuR6BVaTh6',
    description: [
      'افتتح "مركز الملك عبدالعزيز الثّقافي العالمي"، والمعروف اختصارًا بـ "إثراء"، في عام 2017م، ليصبح محضنًا هامّاً للثقافة السعوديَّة، وتحفةً فنيَّةً أخَّاذة التصميم، مستوحاة من أشكال الصخور النفطيَّة، والرياح الصحروايَّة المحاطة بأنبوب فولاذيٍّ طوله 350 كم',
      'دى "إثراء" رؤيةٌ طموحةٌ ليصبح مركزًا ثقافيًّا رياديًّا في المملكة العربيًّة السعوديًّة، وملتقى للفنِّ والعلم، وعندما تذهب إلى "إثراء"، ستشاهد مساحة هائلة تبلغ 85.000 متر مربَّع، تضم متحفًا ومسرحًا ومكتبةً وسينما ومجموعةً من المعارض ومختبرًا للأفكار والمعرفة، بقاعات ذات تصاميمٍ معماريَّة مذهلة',
      // 'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: true,
    isBeach: true,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'شاطئ نصف القمر',
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/93/4c/e7/half-moon-beach.jpg?w=1200&h=-1&s=1',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/oZo84cAxbjiCcwtt5',
    description: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'القرية الشعبية',
    imageUrl:
        'https://www.viewsaudi.com/ar/wp-content/uploads/2021/04/Heritage-Village-Dammam-1.png',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/7LYw1LLbTQLsi8sPA',
    description: [
      'تنقسم القرية الشّعبيّة بجزئيها إلى متحفٍ تراثيّ ومطعمٍ شعبيّ يأخذك برحلةٍ عبر التاريخ،',
      'لتعيش نمط الحياة البسيطة في عصورٍ ماضية، ويضمّ المبنى المؤلَّف من خمسة طوابق متحفًا تُعرض فيه العديد من المجوهرات والمخطوطات والأقمشة وغيرها من القطع الأثريّة،',
      'وتذوّق أشهى الأطباق المحليّة مثل: أطباق المزّة التّقليديّة، وأطباق اللحوم المشويّة، والأرز، والتي تعكس تجربة الطّعام الشّعبيّ الأصيل في البيت السعودي.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'مول الفناتير',
    imageUrl:
        'https://www.tripswd.com/wp-content/uploads/2021/01/Jubail-Malls-3.jpg',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/TTL1BpDDeLFM8wLA7',
    description: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'محمية الجبيل',
    imageUrl:
        'https://www.travellwd.com/wp-content/uploads/2019/09/%D9%85%D8%AD%D9%85%D9%8A%D8%A9-%D8%A7%D9%84%D8%AC%D8%A8%D9%8A%D9%84-700x468.jpg',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/MF6kA2EvmqgPjeWd8',
    description: [
      'محمية الجبيل للأحياء الفطرية هي محمية طبيعة في المملكة العربية السعودية تحت إشراف الهيئة السعودية للحياة الفطرية',
      // 'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      // 'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'شاطىء الفناتير',
    imageUrl:
        'https://www.google.com/maps/place/Corniche+Fanateer/@27.1546064,49.5693479,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipNqHvW27orML9NAGUEQt-i-QiSzRHphbKllfJw5!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNqHvW27orML9NAGUEQt-i-QiSzRHphbKllfJw5%3Dw203-h270-k-no!7i3024!8i4032!4m5!3m4!1s0x3e350e2ab09a35a7:0x76b722d12c49597a!8m2!3d27.1546064!4d49.5693479?hl=en-US#',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/BbMupC7vgLZnAXaU6',
    description: [
      'يعتبر شاطئ الفناتير من الشواطئ الحديثة في مدينة الجبيل فتم تطويره لزيادة نسبة السياحة في الجبيل حيث يتوفر به العديد من المرافق والخدمات الحيوية، كما يوجد به أفضل أنواع السياحة في مدينة الجبيل سياحة الألعاب الترفيهية التي تنتشر على الشاطئ.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
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
    title: 'جبل القارة',
    imageUrl:
        'https://www.visitsaudi.com/content/dam/no-dynamic-media-folder/manifest-batch3r/ahsa-refresh/ahsa_winter_campaign_card_1.jpg',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Adventures,
    mapUrl: 'https://goo.gl/maps/yn27Roo8GCGZ5nwu5',
    description: [
      'يبلغ ارتفاع جبل القارة حوالي 75 مترًا (أو حوالي 250 قدمًا) — والمشهد من قمة الواحة التي تبلغ مساحتها 30 ألف فدان أدناه لا يفوت.',
      'قمم الحجر الجيري الضبابية تستحق المشاهدة أيضًا. استكشف شبكة الكهوف التي تشق ممرات متعرجة تحيط بها الجدران الصخرية المرتفعة، وقم بزيارة متحف أرض الحضارات للتعرف على تاريخ المنطقة الذي يعود إلى آلاف السنين.',
      // 'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: true,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm11',
    categories: [
      'c5',
    ],
    title: 'الخفجي مول',
    imageUrl:
        'https://fastly.4sqi.net/img/general/600x600/60735779_zvloOmlUf3Yq_AZZv6uW61pbovjdZYXrmjT5nQRfSUI.jpg',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.CityDown,
    mapUrl: 'https://goo.gl/maps/VsuRUcqb2UsHcRU58',
    description: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm12',
    categories: [
      'c5',
    ],
    title: 'حديقة العبير بالخفجي',
    imageUrl:
        'https://images.unsplash.com/photo-1452022582947-b521d8779ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODN8fGRlc2VydHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/RE9n5mEcsh9UpBcu9',
    description: [
      'واحدة من معالم السياحة في الخفجي التي تُعد مُتنفسًا جيدًا',
      'تضم الحديقة مساحات من الخُضرة مُنظّمة ومُهندمة بشكل جيد تحث على الاستجمام والاسترخاء للباحثين عن الهدوء مع مناطق ترفيه لألعاب الأطفال.',
      // 'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
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
    title: 'ميدان الفروسية',
    imageUrl:
        'https://www.urtrips.com/wp-content/uploads/2019/01/Tourism-in-Khafji-1-1.jpg',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/WDVgPgN9fFtE52BX8',
    description: [
      'يُعد ركوب الخيل من أكثر الأنشطة التراثية التي تمتاز بها مدينة الخفجي السعودية بل ومدن المملكة بصفة عامة',
      'لذا كان من الطبيعي أن ينضم ميدان الفروسية لقائمة افضل اماكن سياحيه في الخفجي .',
      'تُقام السباقات الثلاثاء من كل أسبوع، ويُمكنك التواصل مع إدارة المكان مُسبقًا للتفاوض بشأن أمور الحجز.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
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
    title: 'كورنيش الخفجي',
    imageUrl:
        'https://www.urtrips.com/wp-content/uploads/2019/01/Tourism-in-Khafji-2-1.jpg',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/HchszUNuZwSM4JNQ9',
    description: [
      'من أهم معالم جذب السياحه في الخفجي وأكثرها شعبية وزيارة من سكان المدينة المحليين والمقيمين بالمملكة والدول المُجاورة بل يعدُّه البعض المُتنفس الرئيسي والوحيد لأهل الخفجي، وخليجيًا يُصنّف بأنه ثاني أفضل الشواطئ بطول ساحل الخليج العربي.',
      'يُمكنك الاستمتاع بالسباحة وصيد الأسماك مع إقامة حفلات الشواء على الشاطئ، ',
      'كما يُمكن لأطفالك الاستمتاع بمناطق الألعاب الخاصة بهم',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
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
    title: 'حديقة الدانة',
    imageUrl:
        'https://www.travellwd.com/wp-content/uploads/2021/02/%D8%AD%D8%AF%D9%8A%D9%82%D8%A9-%D8%A7%D9%84%D8%AF%D8%A7%D9%86%D8%A9-%D9%81%D9%8A-%D8%B1%D8%A3%D8%B3-%D8%A7%D9%84%D8%AA%D9%86%D9%88%D8%B1%D8%A9.jpg',
    activities: [
      'زيارة المنتزه الترفيهي',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.CityDown,
    mapUrl: '',
    description: [
      'حديقة الدانة من أكبر المنتزهات الترفيهية الهامة في مدينة رأس تنورة بالمملكة العربية السعودية.',
      'تتمتع الحديقة بالمناظر الطبيعية الجميلة، حيث المسطحات الخضراء الكبيرة الواسعة والأشجار الكثيفة.',
      'تُعد المُتنفس الطبيعي المُفضل للعائلة السعودية في رأس تنورة.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: true,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
  Places(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'شاطئ رأس تنورة',
    imageUrl:
        'https://www.travellwd.com/wp-content/uploads/2021/02/%D8%B4%D8%A7%D8%B7%D8%A6-%D8%B1%D8%A3%D8%B3-%D8%AA%D9%86%D9%88%D8%B1%D8%A9.bmp',
    activities: [
      'شاطئ برماله الذهبية الناعمة',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية',
      'لإستلقاء على للتشمس أو التأمل وممارسة جميع الرياضات الترفيهية مثل الكرة الشاطئية وغيرها.'
    ],
    placeType: PlaceType.Activities,
    mapUrl: 'https://goo.gl/maps/dd6d39qRxg7TEKwC9',
    description: [
      'يُعتبر شاطئ رأس تنورة من أجمل الوجهات السياحية في المدينة بالمملكة العربية السعودية',
      'ويلقي إقبالًا من قِبل الكثير من الزوار من داخل مدينة رأس تنورة وكذلك ومن خارجها على حد سواء. يتميز الشاطئ برماله الذهبية الناعمة، حيث يُمكنك الإستلقاء عليها للتشمس أو التأمل وممارسة جميع الرياضات الترفيهية مثل الكرة الشاطئية وغيرها. هذا فضلًا عن مياهه الفيروزية النظيفة والهادئة، حيث يُمكنك الإستمتاع بالسباحة فيها بأمان سواء للصغار أو الكبار',
      'بالإضافة إلى ذلك يضم الشاطئ كافة الوسائل والمرافق الخدمية التي يحتاجها المصطافين، على سبيل المثال دورات المياة، وأماكن الجلوس ذات المظلات وغيرها. أيضًا يُحاط به المسطحات الخضراء الجميلة، التي تُتيح لك قضاء وقت هادئ وسط أجواء طبيعية جميلة.',
      'ينتشر بإمتداد الشاطئ الذي يبلغ طوله نحو 5 كيلو متر تقريبًا، مجموعة من أكشاك بيع الوجبات السريعة، والمرطبات والعصائر المُنعشة. فإن كُنت تنوي السياحة في مدينة رأس تنورة صيفًا، ننصحك بزيارة هذا الشاطئ الهادئ.',
    ],
    isTrending: true,
    isBeach: true,
    isActivities: true,
    isResturant: true,
    isHotel: false,
  ),
  Places(
    id: 'm17',
    categories: [
      'c7',
    ],
    title: 'حديقة بودل الترفيهية',
    imageUrl:
        'https://www.urtrips.com/wp-content/uploads/2018/12/boudl-land.jpg',
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/dnbmwGjSJc94k3Ak9',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    description: [
      'مدينة بودل الترفيهية من اهم الاماكن السياحيه في حفر الباطن السعودية حيث أنها تُعتبر مُتنفس للعائلة بالكامل',
      'كونها تضم العديد من المرافق التي تُوفر قضاء وقتاً مُمتعاً بالنسبة لهم بين الألعاب الترفيهية والمسطحات الخضراء',
      'كما أن الحديقة تُقيم العديد من الاحتفالات والمسابقات المُميزة.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
   Places(
    id: 'm18',
    categories: [
      'c7',
    ],
    title: 'حديقة أبو موسى الأشعري',
    imageUrl:
        'https://www.google.com/maps/place/Abu+Musa+Park/@28.4467361,45.9842188,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipPxwalqVa_903nLYsxpwCdA-qrpECanHbUQ7jCy!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipPxwalqVa_903nLYsxpwCdA-qrpECanHbUQ7jCy%3Dw114-h86-k-no!7i4640!8i3472!4m5!3m4!1s0x3fd7472ea5b97829:0x89d760584184ab10!8m2!3d28.4467361!4d45.9842188#',
    placeType: PlaceType.GardenPark,
    mapUrl: 'https://goo.gl/maps/YNaHPZ5mY7JLVbcD7',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    description: [
      'مدينة بودل الترفيهية من اهم الاماكن السياحيه في حفر الباطن السعودية حيث أنها تُعتبر مُتنفس للعائلة بالكامل',
      'كونها تضم العديد من المرافق التي تُوفر قضاء وقتاً مُمتعاً بالنسبة لهم بين الألعاب الترفيهية والمسطحات الخضراء',
      'كما أن الحديقة تُقيم العديد من الاحتفالات والمسابقات المُميزة.',
      // 'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isTrending: false,
    isBeach: false,
    isActivities: true,
    isResturant: false,
    isHotel: false,
  ),
];
