class TourismPlace {
  String name;
  String desc;
  String time;
  String price;
  String img1;
  String img2;
  String img3;
  String location;
  String open;
  String imageasset;

  TourismPlace({
    required this.name,
    required this.desc,
    required this.location,
    required this.open,
    required this.time,
    required this.price,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.imageasset,
  });
}

var TourismPlaceList = [
  TourismPlace(
    name: "Surabaya Submarine Monument",
    desc:
        "Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.",
    time: "08:00 - 20:00",
    price: "Rp10.000,",
    location: "Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng, Kota SBY",
    open: "Everyday",
    imageasset: "assets/img/kapalselam.jpg",
    img1: "assets/img/kapalselam1.jpg",
    img2: "assets/img/kapalselam2.jpg",
    img3: "assets/img/kapalselam3.jpg",
  ),
  TourismPlace(
    name: "Kelenteng Sanggar Agung",
    desc:
        "Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi para wisatawan",
    time: "06:00 - 18:00",
    price: "Rp15.000,",
    location: "Jl. Sukolilo No.100, Sukolilo Baru, Kec. Bulak, Kota SBY",
    open: "Everyday",
    imageasset: "assets/img/klentengtaek.jpg",
    img1: "assets/img/klenteng3.jpg",
    img2: "assets/img/klenteng1.jpg",
    img3: "assets/img/klenteng2.jpg",
  ),
  TourismPlace(
    name: "Tugu Pahlawan Nasional Surabaya",
    desc:
        "Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan sebanyak 10 lengkungan, dan terbagi atas 11 ruas",
    time: "24 jam",
    price: "Rp69.000,",
    location: "Jl. Pahlawan, Alun-alun Contong, Kec. Bubutan, Kota SBY",
    open: "Everyday",
    imageasset: "assets/img/tugupalawan.jpg",
    img1: "assets/img/tugu1.jpg",
    img2: "assets/img/tugu2.jpg",
    img3: "assets/img/tugu3.jpg",
  ),
];
