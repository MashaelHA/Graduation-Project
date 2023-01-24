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
      'C5',
      'c6',
    ],
    title: 'البحيرة الكبرى',
    imageUrl:
        'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: '',
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
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'البحيرات الصغرى',
    imageUrl:
        'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: '',
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
    title: 'بحيرة الزمرد',
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.CityDown,
    mapUrl: '',
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
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'شاطئ الأول',
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: '',
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
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'الشاطىء الكبير',
    imageUrl:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: '',
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
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'شاطىء الصخور',
    imageUrl:
        'https://images.unsplash.com/photo-1519602035691-16ac091344ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjE1fHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Cammping,
    mapUrl: '',
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
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'الصحراء الكبرى',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: '',
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
    id: 'm11',
    categories: [
      'c4',
      'c1',
    ],
    title: 'الصحراء الغربية',
    imageUrl:
        'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: '',
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
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'الصحراء الرملية',
    imageUrl:
        'https://images.unsplash.com/photo-1452022582947-b521d8779ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODN8fGRlc2VydHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Exploration,
    mapUrl: '',
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
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'المدينة الأولى',
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.CityDown,
    mapUrl: '',
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
  // PlaceType(
  //   id: 'm14',
  //   categories: [
  //     'c5',
  //   ],
  //   title: 'المدينة الثانية',
  //   tripType: TripType.Activities,
  //   season: Season.Winter,
  //   imageUrl:
  //       'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  //   duration: 30,
  //   activities: [
  //     'زيارة المواقع الأثرية',
  //     'جولة سياحية على الأقدام',
  //     'زيارة المراكز التجارية للتبضع',
  //     'تناول وجبة الغداء',
  //     'استمتاع المناظر الجملية'
  //   ],
  //   program: [
  //     'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
  //     'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
  //     'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
  //     'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
  //   ],
  //   isInSummer: true,
  //   isForFamilies: true,
  //   isInWinter: true,
  // ),
  // Trip(
  //   id: 'm15',
  //   categories: [
  //     'c5',
  //   ],
  //   title: 'المدينة القديمة',
  //   tripType: TripType.Activities,
  //   season: Season.Winter,
  //   imageUrl:
  //       'https://images.unsplash.com/photo-1519923041107-e4dc8d9193da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njd8fG9sZCUyMGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  //   duration: 30,
  //   activities: [
  //     'زيارة المواقع الأثرية',
  //     'جولة سياحية على الأقدام',
  //     'زيارة المراكز التجارية للتبضع',
  //     'تناول وجبة الغداء',
  //     'استمتاع المناظر الجملية'
  //   ],
  //   program: [
  //     'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
  //     'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
  //     'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
  //     'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
  //   ],
  //   isInSummer: true,
  //   isForFamilies: true,
  //   isInWinter: true,
  // ),
  Places(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'رياضة التثلج',
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    placeType: PlaceType.Activities,
    mapUrl: '',
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
    id: 'm17',
    categories: [
      'c6',
      'c2',
    ],
    title: 'القفز المظلي',
    imageUrl:
        'https://images.unsplash.com/photo-1601024445121-e5b82f020549?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBhcmFjaHV0ZSUyMGp1bXBpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    placeType: PlaceType.Adventures,
    mapUrl: '',
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
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
];
