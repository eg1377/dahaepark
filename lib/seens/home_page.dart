import 'package:anim_search_bar/anim_search_bar.dart';import 'package:card_swiper/card_swiper.dart';import 'package:flutter/material.dart';import 'package:google_fonts/google_fonts.dart';final List<String> imgList = [  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzAxMTRfMTY5%2FMDAxNDg0Mzg5NjM1Nzc5.3cbC6qwUM0dKqiW1QaNByEVo2s1VkmqblnrvhU3UeJgg.SVoRyzwabpsuc18TMDbOymyzlzVfzwpAmARWGDYZsHAg.JPEG.xiongmao12%2FNaverBlog_20170114_192715_46.jpg&type=a340',  'https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20201118_285%2F1605668370135zi2Tl_JPEG%2F6804149853867801_1726461645.jpg&type=a340',  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAxMDlfMTMw%2FMDAxNjczMjQ2NTY4Njkw.8kCf73FJNMuee_irtNkKAcTVudwBVlPZFn2inqYs1U0g.x4XGR_OtOWumlJhQDANE17tOaeD7y6UKYJ3WkfPTtZkg.JPEG.dhe0117%2FIMG_2215.jpg&type=a340',  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA5MTlfMzEg%2FMDAxNTM3MzY4Nzk2MTAz.Vms7N41-8IJForVsbZlHFmuVt5g5fX1nbSvWifr2vOIg.qh-PFAHglFUpx4Fm01Pi3CZ5FL5f9oMNnajMhmpOjHkg.GIF.wiwe%2F%2528_______alice_in_wonderland_%25C0%25CC%25BB%25F3%25C7%25D1_%25B3%25AA%25B6%25F3%25C0%25C7_%25BE%25D9%25B8%25AE%25BD%25BA.gif&type=a340',  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA0MjlfMjE2%2FMDAxNTU2NDk5MDY2Nzk3.68Ox2VRj-Gh8R5beaL60MsTtd5tmnYTz3WT4Gh1N8JQg.mtaVGT83UVbWXOx9kxHO73f06t9-sJ3fO1i-w9ZB4H0g.GIF.nterm%2FWavyImpureCusimanse-size_restricted.gif&type=a340'];class HomePage extends StatefulWidget {  const HomePage ({Key? key}) : super(key: key);  @override  State<HomePage> createState() => _HomePageState();}// Home Page 1Pageclass _HomePageState extends State<HomePage> {  TextEditingController textController = TextEditingController();  final controller = PageController(viewportFraction: 0.8, keepPage: true);  @override  Widget build(BuildContext context) {    // 내부 text, icon 간격 주기    return Scaffold(      backgroundColor: Colors.white,      body: ListView(        children: [          Column(children: [            // top 서치 바            Padding(              padding: const EdgeInsets.only(right: 20, left: 20),              child: AnimSearchBar(                width: 400,                textController: textController,                onSuffixTap: () {                  setState(() {                    textController.clear();                  });                },                onSubmitted: (String) {},              ),            ),            // 프로필 사진            Container(                height: 250,                width: 500,                color: Colors.white,                child: const Padding(                  padding: EdgeInsets.all(25.0),                  child: CircleAvatar(                    radius: 150,                    // Change this radius for the width of the circular border                    backgroundColor: Colors.white,                    child: CircleAvatar(                      radius: 290,                      // This radius is the radius of the picture in the circle avatar itself.                      backgroundImage: NetworkImage(                        'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA3MjJfMTY1%2FMDAxNjU4NDcyMTc4NTUw.97PPfT6nrieQOCutqvLgdEDqkeleMKdYxSuZjsc_3_Yg.ttXrJk49xO5XklQV4ctPBr_EPFK0-5ObHOzqT5RpJBkg.JPEG.ymtlfet%2FIMG_5143.jpg&type=a340',                      ),                      child: Align(                        alignment: Alignment.bottomRight,                      ),                    ),                  ),                )),            Container(              child: Text(                '"Hello My name is Alice"',                style: GoogleFonts.satisfy(                  textStyle: const TextStyle(fontWeight: FontWeight.bold),                  fontSize: 30                ),              ),            ),            Padding(              padding: const EdgeInsets.only(top: 45),              child: Container(                height: 250,                child: Padding(                  padding: const EdgeInsets.all(10),                  child: Swiper(                  /*    control: const SwiperControl(),                      pagination: const SwiperPagination(                        alignment: Alignment.bottomCenter,                        builder: DotSwiperPaginationBuilder(                          color: Colors.white10, activeColor: Colors.blueGrey,                        ),                      ),*/                      /*layout: SwiperLayout.CUSTOM,                      customLayoutOption: CustomLayoutOption(                          startIndex: -1,                          stateCount: 3                      )..addRotate([                        -45.0/180,                        0.0,                        45.0/180                      ])..addTranslate([                        const Offset(-370.0, -40.0),                        const Offset(0.0, 0.0),                        const Offset(370.0, -40.0)                          ]),*/                    itemWidth: 300.0,                    itemHeight: 300.0,                    itemBuilder: (BuildContext context, int index) {                      return Image.network(                        imgList[index],                        fit: BoxFit.contain,                      );                    },                    layout: SwiperLayout.STACK,                    itemCount: imgList.length,                    viewportFraction: 0.8,                    scale: 0.9,                    pagination:                        const SwiperPagination(),                    /*control: const SwiperControl(),*/                    /*itemBuilder: (BuildContext context,int index) {                        return Image.network(imgList[index],fit: BoxFit.fill,);                      }*/                  ),                ),              ),            ),          /*  SmoothPageIndicator(              controller: controller,              count: imgList.length,              effect: const WormEffect(                dotHeight: 16,                dotWidth: 16,                type: WormType.thin,                // strokeWidth: 5,              ),            ),*/          ]),        ],      ),    );  }}