import '../models/country.dart';

final List<Country> countryData = [
  // 1
  Country(
    name: "Vietnam",
    image: "https://flagcdn.com/w640/vn.png",
    type: "Asia Tenggara",
    description:
        "Vietnam adalah sebuah negara di Asia Tenggara yang terkenal dengan pantai, sungai, pagoda Buddha, dan kota-kota yang ramai. Ibukotanya adalah Hanoi, sedangkan kota terbesar adalah Kota Ho Chi Minh.",
    basePower: 98,
    skills: ["Hanoi", "Kota Ho Chi Minh", "Ha Long Bay", "Da Nang"],
    movies: [
      "https://images.unsplash.com/photo-1528127269322-539801943592?w=800",
      "https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=800",
      "https://images.unsplash.com/photo-1559592413-7cec4d0cae2b?w=800",
    ],
    height: "331,212 km²",
    weight: "98.8 Juta",
    category: "Republik Sosialis",
    ability: "Bahasa Vietnam",
    weaknesses: ["Tropis", "Monsoon"],
    stats: {
      "Keamanan": 75,
      "Wisata": 88,
      "Ekonomi": 80,
      "Budaya": 90,
    },
    evolutions: ["Hanoi", "Da Nang", "Ho Chi Minh"],
  ),

  // 2
  Country(
    name: "Laos",
    image: "https://flagcdn.com/w640/la.png",
    type: "Asia Tenggara",
    description:
        "Laos adalah satu-satunya negara tanpa laut di Asia Tenggara. Dikenal dengan pemandangan pegunungan yang indah, arsitektur kolonial Prancis, serta permukiman suku bukit dan biara-biara Buddha.",
    basePower: 7,
    skills: ["Vientiane", "Luang Prabang", "Vang Vieng", "Pakse"],
    movies: [
      "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?w=800",
      "https://images.unsplash.com/photo-1528181304800-259b08848526?w=800",
      "https://images.unsplash.com/photo-1563492065599-3520f775eeed?w=800",
    ],
    height: "236,800 km²",
    weight: "7.5 Juta",
    category: "Republik Demokratik Rakyat",
    ability: "Bahasa Lao",
    weaknesses: ["Landlocked", "Tropis"],
    stats: {
      "Keamanan": 80,
      "Wisata": 78,
      "Ekonomi": 65,
      "Budaya": 85,
    },
    evolutions: ["Vientiane", "Luang Prabang"],
  ),

  // 3
  Country(
    name: "Thailand",
    image: "https://flagcdn.com/w640/th.png",
    type: "Asia Tenggara",
    description:
        "Thailand adalah negara Asia Tenggara yang terkenal dengan pantai tropis, istana kerajaan yang megah, reruntuhan kuno, dan kuil-kuil hias yang menampilkan patung Buddha. Kota Bangkok menjadi pusat budaya dan ekonomi.",
    basePower: 71,
    skills: ["Bangkok", "Chiang Mai", "Phuket", "Pattaya"],
    movies: [
      "https://images.unsplash.com/photo-1508009603885-50cf7c579365?w=800",
      "https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?w=800",
      "https://images.unsplash.com/photo-1528181304800-259b08848526?w=800",
    ],
    height: "513,120 km²",
    weight: "71.6 Juta",
    category: "Monarki Konstitusional",
    ability: "Bahasa Thai",
    weaknesses: ["Tropis", "Banjir"],
    stats: {
      "Keamanan": 82,
      "Wisata": 95,
      "Ekonomi": 84,
      "Budaya": 92,
    },
    evolutions: ["Bangkok", "Chiang Mai", "Phuket"],
  ),

  // 4
  Country(
    name: "Malaysia",
    image: "https://flagcdn.com/w640/my.png",
    type: "Asia Tenggara",
    description:
        "Malaysia adalah negara Asia Tenggara yang mencakup sebagian Semenanjung Melayu dan pulau Kalimantan. Dikenal dengan pantai, hutan hujan, dan perpaduan pengaruh budaya Melayu, Cina, India, dan Eropa.",
    basePower: 34,
    skills: ["Kuala Lumpur", "Penang", "Johor Bahru", "Malaka"],
    movies: [
      "https://images.unsplash.com/photo-1596422846543-75c6fc197f07?w=800",
      "https://images.unsplash.com/photo-1508009603885-50cf7c579365?w=800",
      "https://images.unsplash.com/photo-1541417904950-b855846fe074?w=800",
    ],
    height: "329,847 km²",
    weight: "34.3 Juta",
    category: "Monarki Federal",
    ability: "Bahasa Melayu",
    weaknesses: ["Tropis", "Kelembaban Tinggi"],
    stats: {
      "Keamanan": 85,
      "Wisata": 89,
      "Ekonomi": 86,
      "Budaya": 88,
    },
    evolutions: ["Kuala Lumpur", "Penang", "Langkawi"],
  ),

  // 5
  Country(
    name: "Singapura",
    image: "https://flagcdn.com/w640/sg.png",
    type: "Asia Tenggara",
    description:
        "Singapura adalah negara pulau dan kota yang terletak di ujung selatan Semenanjung Melayu. Merupakan pusat keuangan global utama dengan iklim tropis dan populasi yang sangat multikultural.",
    basePower: 6,
    skills: ["Marina Bay", "Sentosa", "Orchard", "Changi"],
    movies: [
      "https://images.unsplash.com/photo-1525625293386-3f8f99389edd?w=800",
      "https://images.unsplash.com/photo-1565967511849-76a60a516170?w=800",
      "https://images.unsplash.com/photo-1506377247377-2a5b3b417ebb?w=800",
    ],
    height: "734 km²",
    weight: "5.9 Juta",
    category: "Republik Parlementer",
    ability: "Inggris / Melayu / Mandarin",
    weaknesses: ["Wilayah Sempit", "Lahan Terbatas"],
    stats: {
      "Keamanan": 98,
      "Wisata": 94,
      "Ekonomi": 99,
      "Budaya": 87,
    },
    evolutions: ["Marina Bay", "Sentosa Island"],
  ),

  // 6
  Country(
    name: "Brunei",
    image: "https://flagcdn.com/w640/bn.png",
    type: "Asia Tenggara",
    description:
        "Brunei Darussalam adalah negara berdaulat di pantai utara pulau Kalimantan. Dikenal kaya akan sumber daya minyak bumi dan gas alam, serta arsitektur masjid emas yang menawan.",
    basePower: 1,
    skills: ["Bandar Seri Begawan", "Kampong Ayer", "Ulu Temburong"],
    movies: [
      "https://images.unsplash.com/photo-1584551246679-0daf3d275d0f?w=800",
      "https://images.unsplash.com/photo-1563492065599-3520f775eeed?w=800",
      "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?w=800",
    ],
    height: "5,765 km²",
    weight: "450 Ribu",
    category: "Kesultanan Absolut",
    ability: "Bahasa Melayu",
    weaknesses: ["Dependensi Minyak", "Tropis"],
    stats: {
      "Keamanan": 92,
      "Wisata": 72,
      "Ekonomi": 85,
      "Budaya": 80,
    },
    evolutions: ["Bandar Seri Begawan", "Temburong"],
  ),

  // 7
  Country(
    name: "Filipina",
    image: "https://flagcdn.com/w640/ph.png",
    type: "Asia Tenggara",
    description:
        "Filipina adalah sebuah negara kepulauan di Asia Tenggara yang terdiri dari lebih dari 7.000 pulau. Terkenal dengan pantai berpasir putih, bukit cokelat di Bohol, serta keramahan penduduknya.",
    basePower: 115,
    skills: ["Manila", "Cebu", "Boracay", "Palawan"],
    movies: [
      "https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?w=800",
      "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?w=800",
      "https://images.unsplash.com/photo-1508009603885-50cf7c579365?w=800",
    ],
    height: "300,000 km²",
    weight: "115.6 Juta",
    category: "Republik Presidensial",
    ability: "Filipino / Inggris",
    weaknesses: ["Badai Topan", "Gempa Bumi"],
    stats: {
      "Keamanan": 74,
      "Wisata": 91,
      "Ekonomi": 79,
      "Budaya": 89,
    },
    evolutions: ["Manila", "Cebu", "Palawan"],
  ),

  // 8
  Country(
    name: "China",
    image: "https://flagcdn.com/w640/cn.png",
    type: "Asia Timur",
    description:
        "China adalah negara terluas di Asia Timur dengan sejarah peradaban ribuan tahun. Memiliki keajaiban dunia Tembok Besar, tradisi budaya kaya, serta pertumbuhan teknologi yang sangat pesat.",
    basePower: 1411,
    skills: ["Beijing", "Shanghai", "Guangzhou", "Shenzhen"],
    movies: [
      "https://images.unsplash.com/photo-1508804185872-d7badad00f7d?w=800",
      "https://images.unsplash.com/photo-1547981609-4b6bfe67ca0b?w=800",
      "https://images.unsplash.com/photo-1474181487882-5abf3f0ba6c2?w=800",
    ],
    height: "9,596,961 km²",
    weight: "1.41 Miliar",
    category: "Republik Rakyat",
    ability: "Bahasa Mandarin",
    weaknesses: ["Polusi Udara", "Kepadatan"],
    stats: {
      "Keamanan": 88,
      "Wisata": 94,
      "Ekonomi": 98,
      "Budaya": 97,
    },
    evolutions: ["Beijing", "Shanghai", "Guangzhou"],
  ),

  // 9
  Country(
    name: "Uzbekistan",
    image: "https://flagcdn.com/w640/uz.png",
    type: "Asia Tengah",
    description:
        "Uzbekistan adalah negara di Asia Tengah yang kaya akan arsitektur bersejarah Jalur Sutra. Kota-kota kuno seperti Samarkand dan Bukhara terkenal dengan masjid berlapis ubin biru indah.",
    basePower: 36,
    skills: ["Tashkent", "Samarkand", "Bukhara", "Khiva"],
    movies: [
      "https://images.unsplash.com/photo-1565008447742-97f6f38c985c?w=800",
      "https://images.unsplash.com/photo-1584551246679-0daf3d275d0f?w=800",
      "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?w=800",
    ],
    height: "448,978 km²",
    weight: "36.0 Juta",
    category: "Republik Presidensial",
    ability: "Bahasa Uzbek",
    weaknesses: ["Landlocked Doubly", "Iklim Kering"],
    stats: {
      "Keamanan": 83,
      "Wisata": 82,
      "Ekonomi": 74,
      "Budaya": 93,
    },
    evolutions: ["Tashkent", "Samarkand", "Bukhara"],
  ),

  // 10
  Country(
    name: "Kazakhstan",
    image: "https://flagcdn.com/w640/kz.png",
    type: "Asia Tengah",
    description:
        "Kazakhstan adalah negara kurungan darat terbesar di dunia yang terletak di Asia Tengah. Menampilkan padang rumput (steppa) yang luas, pegunungan tinggi, dan arsitektur modern di Astana.",
    basePower: 20,
    skills: ["Astana", "Almaty", "Shymkent", "Aktau"],
    movies: [
      "https://images.unsplash.com/photo-1558588942-930faae5a389?w=800",
      "https://images.unsplash.com/photo-1565008447742-97f6f38c985c?w=800",
      "https://images.unsplash.com/photo-1547981609-4b6bfe67ca0b?w=800",
    ],
    height: "2,724,900 km²",
    weight: "20.0 Juta",
    category: "Republik Presidensial",
    ability: "Bahasa Kazakh / Rusia",
    weaknesses: ["Musim Dingin Ekstrem", "Iklim Benua"],
    stats: {
      "Keamanan": 81,
      "Wisata": 79,
      "Ekonomi": 82,
      "Budaya": 84,
    },
    evolutions: ["Astana", "Almaty"],
  ),

  // 11
  Country(
    name: "Turkey",
    image: "https://flagcdn.com/w640/tr.png",
    type: "Eropa",
    description:
        "Turkey (Turki) adalah negara lintas benua yang menghubungkan Eropa Tenggara dan Asia Barat. Terkenal dengan Istanbul, balon udara Cappadocia, situs bersejarah Hagia Sophia, dan kuliner khas.",
    basePower: 85,
    skills: ["Istanbul", "Ankara", "Cappadocia", "Antalya"],
    movies: [
      "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?w=800",
      "https://images.unsplash.com/photo-1541432901042-2d8bd64b4a9b?w=800",
      "https://images.unsplash.com/photo-1565008447742-97f6f38c985c?w=800",
    ],
    height: "783,562 km²",
    weight: "85.3 Juta",
    category: "Republik Presidensial",
    ability: "Bahasa Turki",
    weaknesses: ["Rentan Gempa", "Inflasi"],
    stats: {
      "Keamanan": 80,
      "Wisata": 96,
      "Ekonomi": 83,
      "Budaya": 96,
    },
    evolutions: ["Istanbul", "Cappadocia", "Ankara"],
  ),

  // 12
  Country(
    name: "Albania",
    image: "https://flagcdn.com/w640/al.png",
    type: "Eropa",
    description:
        "Albania adalah negara kecil di semenanjung Balkan Eropa Tenggara. Memiliki garis pantai Laut Ionia dan Laut Adria yang menakjubkan, kastil-kastil tua, dan sejarah kuno yang unik.",
    basePower: 3,
    skills: ["Tirana", "Durrës", "Sarandë", "Shkodër"],
    movies: [
      "https://images.unsplash.com/photo-1565008447742-97f6f38c985c?w=800",
      "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?w=800",
      "https://images.unsplash.com/photo-1508009603885-50cf7c579365?w=800",
    ],
    height: "28,748 km²",
    weight: "2.7 Juta",
    category: "Republik Parlementer",
    ability: "Bahasa Albania",
    weaknesses: ["Infrastruktur Berkembang"],
    stats: {
      "Keamanan": 84,
      "Wisata": 81,
      "Ekonomi": 72,
      "Budaya": 86,
    },
    evolutions: ["Tirana", "Sarandë"],
  ),

  // 13
  Country(
    name: "Serbia",
    image: "https://flagcdn.com/w640/rs.png",
    type: "Eropa",
    description:
        "Serbia adalah negara terkurung daratan di Eropa Tenggara (Balkan). Kota resminya Belgrade terkenal dengan Benteng Kalemegdan yang megah dan kehidupan malam yang hidup di tepi sungai Danube.",
    basePower: 7,
    skills: ["Belgrade", "Novi Sad", "Niš", "Subotica"],
    movies: [
      "https://images.unsplash.com/photo-1565008447742-97f6f38c985c?w=800",
      "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?w=800",
      "https://images.unsplash.com/photo-1508009603885-50cf7c579365?w=800",
    ],
    height: "88,361 km²",
    weight: "6.6 Juta",
    category: "Republik Parlementer",
    ability: "Bahasa Serbia",
    weaknesses: ["Landlocked", "Ketegangan Regional"],
    stats: {
      "Keamanan": 82,
      "Wisata": 78,
      "Ekonomi": 76,
      "Budaya": 88,
    },
    evolutions: ["Belgrade", "Novi Sad"],
  ),

  // 14
  Country(
    name: "Mesir",
    image: "https://flagcdn.com/w640/eg.png",
    type: "Afrika",
    description:
        "Mesir adalah negara di Afrika Utara yang menghubungkan benua Afrika dengan Timur Tengah. Dikenal secara internasional dengan Piramida Giza, Spinks, Lembah Para Raja, serta Sungai Nil.",
    basePower: 110,
    skills: ["Kairo", "Alexandria", "Giza", "Luxor"],
    movies: [
      "https://images.unsplash.com/photo-1503177119275-0aa32b3a9368?w=800",
      "https://images.unsplash.com/photo-1568322445389-f64ac2515020?w=800",
      "https://images.unsplash.com/photo-1539650116574-8efeb43e2750?w=800",
    ],
    height: "1,010,408 km²",
    weight: "110.9 Juta",
    category: "Republik Semipresidensial",
    ability: "Bahasa Arab",
    weaknesses: ["Gurun Pasir", "Cuaca Panas Ekstrem"],
    stats: {
      "Keamanan": 77,
      "Wisata": 95,
      "Ekonomi": 78,
      "Budaya": 99,
    },
    evolutions: ["Kairo", "Alexandria", "Luxor"],
  ),

  // 15
  Country(
    name: "Jordan",
    image: "https://flagcdn.com/w640/jo.png",
    type: "Timur Tengah",
    description:
        "Jordan (Yordania) adalah negara Arab di tepi timur Sungai Yordan. Dikenal dengan situs arkeologi kota batu Petra yang legendaris, Laut Mati, serta keindahan gurun Wadi Rum.",
    basePower: 11,
    skills: ["Amman", "Petra", "Aqaba", "Jerash"],
    movies: [
      "https://images.unsplash.com/photo-1579606032822-26d03046f4eb?w=800",
      "https://images.unsplash.com/photo-1503177119275-0aa32b3a9368?w=800",
      "https://images.unsplash.com/photo-1539650116574-8efeb43e2750?w=800",
    ],
    height: "89,342 km²",
    weight: "11.3 Juta",
    category: "Monarki Konstitusional",
    ability: "Bahasa Arab",
    weaknesses: ["Kelangkaan Air", "Gurun"],
    stats: {
      "Keamanan": 86,
      "Wisata": 93,
      "Ekonomi": 77,
      "Budaya": 94,
    },
    evolutions: ["Amman", "Petra"],
  ),

  // 16
  Country(
    name: "UAE",
    image: "https://flagcdn.com/w640/ae.png",
    type: "Timur Tengah",
    description:
        "UAE (Uni Emirat Arab) adalah federasi tujuh emirat di Semenanjung Arab. Terkenal dengan kemewahan arsitektur modern seperti Burj Khalifa di Dubai dan Masjid Sheikh Zayed di Abu Dhabi.",
    basePower: 10,
    skills: ["Dubai", "Abu Dhabi", "Sharjah", "Ajman"],
    movies: [
      "https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=800",
      "https://images.unsplash.com/photo-1580674684081-7617fbf3d745?w=800",
      "https://images.unsplash.com/photo-1546412414-8035e1776c9a?w=800",
    ],
    height: "83,600 km²",
    weight: "9.5 Juta",
    category: "Federasi Monarki",
    ability: "Bahasa Arab / Inggris",
    weaknesses: ["Cuaca Panas Gurun", "Lahan Kering"],
    stats: {
      "Keamanan": 97,
      "Wisata": 96,
      "Ekonomi": 97,
      "Budaya": 85,
    },
    evolutions: ["Dubai", "Abu Dhabi"],
  ),

  // 17
  Country(
    name: "Qatar",
    image: "https://flagcdn.com/w640/qa.png",
    type: "Timur Tengah",
    description:
        "Qatar adalah negara peninsula di Teluk Persia. Memiliki pendapatan per kapita yang sangat tinggi berkat cadangan gas alam, serta pernah menjadi tuan rumah Piala Dunia 2022.",
    basePower: 3,
    skills: ["Doha", "Al Wakrah", "Al Rayyan", "Lusail"],
    movies: [
      "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?w=800",
      "https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=800",
      "https://images.unsplash.com/photo-1580674684081-7617fbf3d745?w=800",
    ],
    height: "11,586 km²",
    weight: "2.7 Juta",
    category: "Emirat Absolut",
    ability: "Bahasa Arab",
    weaknesses: ["Suhu Sangat Panas"],
    stats: {
      "Keamanan": 96,
      "Wisata": 87,
      "Ekonomi": 96,
      "Budaya": 84,
    },
    evolutions: ["Doha", "Lusail"],
  ),

  // 18
  Country(
    name: "Saudi",
    image: "https://flagcdn.com/w640/sa.png",
    type: "Timur Tengah",
    description:
        "Saudi (Arab Saudi) adalah negara terbesar di Timur Tengah. Merupakan tempat kelahiran agama Islam yang menjadi rumah bagi dua kota suci Mekkah dan Madinah, serta megaproyek NEOM.",
    basePower: 36,
    skills: ["Riyadh", "Mekkah", "Madinah", "Jeddah"],
    movies: [
      "https://images.unsplash.com/photo-1586724237569-f3d0c1dee8c6?w=800",
      "https://images.unsplash.com/photo-1591604466107-ec97de577aff?w=800",
      "https://images.unsplash.com/photo-1565552070094-1a3b934b95fa?w=800",
    ],
    height: "2,149,690 km²",
    weight: "36.4 Juta",
    category: "Monarki Absolut",
    ability: "Bahasa Arab",
    weaknesses: ["Iklim Gurun Ekstrem"],
    stats: {
      "Keamanan": 92,
      "Wisata": 90,
      "Ekonomi": 93,
      "Budaya": 96,
    },
    evolutions: ["Riyadh", "Jeddah", "Mekkah"],
  ),

  // 19
  Country(
    name: "India",
    image: "https://flagcdn.com/w640/in.png",
    type: "Asia Selatan",
    description:
        "India adalah negara berpopulasi terbesar di dunia yang terletak di Asia Selatan. Memiliki keberagaman lanskap dari puncak Himalaya hingga pantai Samudra Hindia, serta keajaiban Taj Mahal.",
    basePower: 1428,
    skills: ["New Delhi", "Mumbai", "Bengaluru", "Agra"],
    movies: [
      "https://images.unsplash.com/photo-1564507592333-c60657eea523?w=800",
      "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?w=800",
      "https://images.unsplash.com/photo-1548013146-72479768bada?w=800",
    ],
    height: "3,287,263 km²",
    weight: "1.42 Miliar",
    category: "Republik Federal",
    ability: "Hindi / Inggris",
    weaknesses: ["Monsoon Ekstrem", "Kepadatan"],
    stats: {
      "Keamanan": 76,
      "Wisata": 93,
      "Ekonomi": 90,
      "Budaya": 98,
    },
    evolutions: ["New Delhi", "Mumbai", "Agra"],
  ),

  // 20
  Country(
    name: "Nepal",
    image: "https://flagcdn.com/w640/np.png",
    type: "Asia Selatan",
    description:
        "Nepal adalah negara terkurung daratan di Asia Selatan di kawasan pegunungan Himalaya. Berada di rumah bagi Gunung Everest (puncak tertinggi dunia) serta kuil-kuil kuno di Kathmandu.",
    basePower: 30,
    skills: ["Kathmandu", "Pokhara", "Lalitpur", "Bhaktapur"],
    movies: [
      "https://images.unsplash.com/photo-1544735716-392fe2489ffa?w=800",
      "https://images.unsplash.com/photo-1584551246679-0daf3d275d0f?w=800",
      "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?w=800",
    ],
    height: "147,516 km²",
    weight: "30.5 Juta",
    category: "Republik Federal",
    ability: "Bahasa Nepal",
    weaknesses: ["Landlocked", "Medan Pegunungan Ekstrem"],
    stats: {
      "Keamanan": 83,
      "Wisata": 90,
      "Ekonomi": 68,
      "Budaya": 91,
    },
    evolutions: ["Kathmandu", "Pokhara"],
  ),
];