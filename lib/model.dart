import 'package:flutter/material.dart';

class Model
{
  String? image;

  Model(this.image);
}
List cer= car.map((e) => Model(e["image"])).toList();
var car=[
  {"image":"assets/ot1.jpg"},
  {"image":"assets/ot2.jpg"},
  {"image":"assets/ot3.jpg"},
  {"image":"assets/ot4.jpg"},
  {"image":"assets/ot5.png"},
  {"image":"assets/ot6.jpg"},
];
//
class Model1
{
  String? image;

  Model1(this.image);

}
List lie=dow.map((e) => Model1(e["image"])).toList();
var dow =[
  // {"image":"assets/otl1.jpg"},
  {"image":"assets/otl2.jpg"},
  // {"image":"assets/otl3.jpg"},
  {"image":"assets/otl4.jpg"},
  // {"image":"assets/otl5.jpg"},
  {"image":"assets/otl6.jpg"},
  {"image":"assets/otl7.jpg"},
  {"image":"assets/otl8.jpg"},
  {"image":"assets/otl9.jpg"},
  // {"image":"assets/otl10.jpg"},
];
//
class Model2
{
  String? image;
  String? text;


  Model2(this.image,this.text);
}
List aps=ups.map((e) => Model2(e["image"],e["text"])).toList();
var ups = [
  {"image":"assets/g1.jpg","text":"🔒Rent"},
  {"image":"assets/g2.jpg","text":"🔒Rent"},
  {"image":"assets/g3.jpg","text":"🔒Rent"},
  {"image":"assets/g4.jpg","text":"🔒Rent"},
  {"image":"assets/g5.jpg","text":"🔒Rent"},
  {"image":"assets/g6.jpg","text":"🔒Rent"},
  {"image":"assets/g7.png","text":"🔒Rent"},
  {"image":"assets/g8.jpg","text":"🔒Rent"},
];
//
class Model3
{
  String? image;

  Model3(this.image);
}
List dc=cd.map((e) => Model3(e["image"])).toList();
var cd =[
  {"image":"assets/cm1.jpg"},
  {"image":"assets/cm2.jpg"},
  {"image":"assets/cm4.jpg"},
  {"image":"assets/cm5.jpg"},
  {"image":"assets/cm6.jpg"},
  {"image":"assets/otl3.jpg"},
];
//
class Model4
{
  String? image;
  String? text1;

  Model4(this.image,this.text1);
}
List act=ac.map((e) => Model4(e["image"],e["text1"])).toList();
var ac = [
  {"image":"assets/ac1.jpg","text1":"🔏 Subscription"},
  {"image":"assets/ac2.jpg","text1":"🔏 Subscription"},
  {"image":"assets/ac3.jpg","text1":"🔏 Subscription"},
  {"image":"assets/ac4.png","text1":"🔏 Subscription"},
  {"image":"assets/ac5.jpg","text1":"🔏 Subscription"},
  {"image":"assets/ac6.jpg","text1":"🔏 Subscription"},
];
//
class Epd
{
  String? text;
  String? text1;
  String? text2;
  String? text3;

  Epd(this.text,this.text1,this.text2,this.text3);
}
List ep=epi.map((e) => Epd(e["text"],e["text1"],e["text2"],e["text3"])).toList();
var epi = [
  {"text":"Episode 1","text1":"Genres","text2":"How to survive","text3":"votext"},
  {"text":"Episode 2","text1":"Directors","text2":"going to boom","text3":"Sundar c"},
  {"text":"Episode 3","text1":"Starring","text2":"mental disorder","text3":"ishwarya rajesh"},
  {"text":"Episode 4","text1":"Supporing Actors","text2":"find peace","text3":"madona sebastin"},
  {"text":"Episode 5","text1":"Networks","text2":"hold there","text3":"Amazon Networks"},
  {"text":"Episode 6","text1":"Maturity rating","text2":"Death calling","text3":"5"},
];
//
class Model5
{
  String? image;
  String? text;

  Model5(this.image,this.text);
}
List gr=gri.map((e) => Model5(e["image"],e["text"])).toList();
var gri =[
  {"image":"https://m.media-amazon.com/images/M/MV5BNWQ5MTRlMjMtM2E2Yy00NjRmLWI0YTYtOGM2YjU2NjdlZTJjXkEyXkFqcGdeQXVyMjYwMjMwMzk@._V1_.jpg","text":"Kathir"},
  {"image":"https://bingeddata.s3.amazonaws.com/uploads/2022/06/Suzhal_The_Vortex.jpg","text":"Aishwarya Rajesh"},
  {"image":"https://images.plex.tv/photo?size=large-1920&scale=1&url=https%3A%2F%2Fimage.tmdb.org%2Ft%2Fp%2Foriginal%2FpoFvgrd1BoxZ0LVMSv57mEMSp0i.jpg","text":"sriya reddy"},
  {"image":"https://www.filmibeat.com/ph-big/2012/06/suzhal_134077954538.jpg","text":"Ramesh"},
  {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEcDozvOMIsTJt6JcphrynKreceFaBMt56ug&usqp=CAU","text":"Gopika Ramesh"},
  {"image":"https://english.cdn.zeenews.com/sites/default/files/suzhal-3.jpg","text":"Parthiban"},
];
//
class Model6
{
  String? image;
  String? images;
  String? image1;
  String? image2;
  Model6(this.image,this.images,this.image1,this.image2);
}
List du=dou.map((e) => Model6(e["image"],e["images"],e["image1"],e["image2"])).toList();
var dou = [
  {"image":"https://pbs.twimg.com/media/Ez-lmwhUcAA7ou4.jpg:large","images":"https://static.javatpoint.com/top10-technologies/images/top-10-english-movies2.jpg","image1":"https://hips.hearstapps.com/hmg-prod/images/best-romantic-movies-2023-after-everything-64ad95af0cb9f.jpg?crop=1xw:1xh;center,top&resize=980:*","image2":"https://media.timeout.com/images/105416511/image.jpg"},
  {"image":"https://sund-images.sunnxt.com/101535/960x540_Kaappaan_101535_c3cfa1c6-4d6b-4a5f-807f-7e66d868ad5a.jpg","images":"https://assets.gadgets360cdn.com/pricee/assets/product/202310/Locked_In_1697422612.jpg","image1":"https://movies.romanticbug.com/wp-content/uploads/2016/11/The-Vow-Movie.jpg","image2":"https://helios-i.mashable.com/imagery/articles/01btuFzjas8kutWD5fsw2xK/hero-image.fill.size_1248x702.v1653402621.jpg"},
  {"image":"https://images.ottplay.com/images/mudhal-nee-mudivum-nee-1642697612.jpg","images":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00362457-xfysqdpbew-portrait.jpg","image1":"https://s3.amazonaws.com/static.rogerebert.com/uploads/movie/movie_poster/first-love-2022/large_first-love-movie-poster-2022.jpeg","image2":"https://todaysparent.mblycdn.com/tp/resized/2018/04/767x431/best-animated-movies-for-kids-coco.jpg"},
  {"image":"https://wallpapers.com/images/featured/soorarai-pottru-flme0spd94sne2j2.jpg","images":"https://i.redd.it/kzsgrq7k5osb1.jpg","image1":"https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-1z5383601/portrait/1920x77011be809991a14b769e51e461f44dee01.jpg","image2":"https://i.pinimg.com/originals/ad/1d/3b/ad1d3b40efbb975d1c4177dd1a57eece.jpg"},
  {"image":"https://static.toiimg.com/thumb/msid-101049590,width-1280,height-720,resizemode-4/101049590.jpg","images":"https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-1z5423222/portrait/1920x770cbc86f924f224457a7cc01f5c5cab26c.jpg","image1":"https://e1.pxfuel.com/desktop-wallpaper/398/564/desktop-wallpaper-official-poster-of-an-english-romantic-romantic-movies.jpg","image2":"https://parade.com/.image/t_share/MTkwNTgxMTQyNDM5NjAyMDQ0/scoob.jpg"},
  {"image":"https://i.ytimg.com/vi/fu60st6eF6M/maxresdefault.jpg","images":"https://assets.gadgets360cdn.com/pricee/assets/product/202212/65_1671448856.jpg","image1":"https://hips.hearstapps.com/hmg-prod/images/while-you-were-sleeping-movie-1544810376.jpg","image2":"https://www.goodwood.com/globalassets/.road--racing/road/news/2020/3-march/best-movies-tv-series-kids-list/best-car-movies-and-tv-series-for-kids-list-cars-2006-goodwood-27032020.jpg?crop=(0,271,2600,1734)&width=1600"},
  {"image":"https://www.newstap.in/h-upload/2023/07/13/1520736-aradhaya.jpg","images":"https://static.javatpoint.com/best/images/best-english-movies10.png","image1":"https://m.media-amazon.com/images/M/MV5BNzc3Mzg1OGYtZjc3My00Y2NhLTgyOWUtYjRhMmI4OTkwNDg4XkEyXkFqcGdeQXVyMTU3NDU4MDg2._V1_.jpg","image2":"https://wallpaperaccess.com/full/98204.jpg"},
  {"image":"https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/old_images/MOVIE/2465/1000172465/1000172465-h","images":"https://qph.cf2.quoracdn.net/main-qimg-5cac450b5879a4b32c71618851bf0128-lq","image1":"https://cdn.moviefone.com/image-assets/814338/aSgl2DxPG3DuQXoaHr500KeULmT.jpg?d=360x540&q=60","image2":"https://i.ytimg.com/vi/ebfV2J4lso4/maxresdefault.jpg"},
];