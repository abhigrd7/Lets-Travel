//
//  NSMutableDictionary+DataDictionary.m
//  Let'sTravel
//
//  Created by Mac on 21/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import "NSMutableDictionary+DataDictionary.h"

@implementation NSMutableDictionary (DataDictionary)
+(NSMutableDictionary *)DataDictionary;

{
   // -----------------------------------------------------------------------------------------
    //Destinaton Array
   // NSMutableArray *Destination=[[NSMutableArray alloc]initWithObjects:@"Mumbai",@"Delhi",@"Goa",@"Pune", nil];
    
   // -----------------------------------------------------------------------------------------
    //TourismPlacesNames Array
    
    NSMutableArray *MumbaiPlacesName=[[NSMutableArray alloc]initWithObjects:@"MarineDrive",@"GateWayOfIndia",@"SiddhiVinayak Temple",@"HajiAli", nil];
    
    NSMutableArray *DelhiPlacesName=[[NSMutableArray alloc]initWithObjects:@"India Gate",@"Lotus Temple",@"Akshardham Temple",@"Qutb Minar",nil];
    
   
    NSMutableArray *GoaPlacesName=[[NSMutableArray alloc]initWithObjects:@"Dudhsagar Falls",@"Fort Aguada",@"Goa Chitra Museum",@"Salim Ali Bird Sanctuary", nil];

    
    NSMutableArray *PunePlacesName=[[NSMutableArray alloc]initWithObjects:@"Sinhgad",@"ShanivarWada",@"DagdushethGanpati",@"Parvati",nil];
    
    
    NSMutableArray *JaipurPlacesName=[[NSMutableArray alloc]initWithObjects:@"Amer Fort",@"Hawa Mahal",@"City Palace",@"Jantar Mantar", nil];
    
    
    NSMutableArray *ManaliPlacesName=[[NSMutableArray alloc]initWithObjects:@"Hidimba Devi Temple",@"Solang Valley",@"Rohtang Pass",@"Bhrigu Lake", nil];
    
    
    NSMutableArray *HyderabadPlacesName=[[NSMutableArray alloc]initWithObjects:@"Golkonda Fort",@"Char Minar",@"Hussain Sagar",@"The Ramoji Film City", nil];
    
    
    NSMutableArray *BengaluruPlacesName=[[NSMutableArray alloc]initWithObjects:@"Lal Bagh",@"Cubbon Park",@"Bannerghatta National Park",@"Vidhana Soudha",nil];
    
    
    NSMutableArray *KeralaPlacesName=[[NSMutableArray alloc]initWithObjects:@"Thekkady",@"Fort Kochi",@"Muzhappilangad Beach",@"Padmanabhaswamy Temple", nil];
    
    
    NSMutableArray *KolkataPlacesName=[[NSMutableArray alloc]initWithObjects:@"Victoria Memorial",@"Indian Museum",@"Dakshineswar Kali Temple",@"Eden Gardens ", nil];
    
   //Tour Places Info-------------------------------------------------------------------------
    
    NSMutableArray *MumbaiPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                      @"Marine Drive is a 3.5-kilometre-long boulevard in South Mumbai in the city of Mumbai. It is a 'C'-shaped six-lane concrete road along the coast, which is a natural bay. The road links Nariman Point to Babulnath and Malabar Hill",
                                      @"The Gateway of India is a monument built during the 20th century in Mumbai City of Maharashtra state in Western India. It is located on the waterfront in the Apollo Bunder area in South Mumbai and overlooks the Arabian Sea",
                                      @"The Shree Siddhivinayak Ganapati Mandir is a Hindu temple dedicated to Lord Shri Ganesh. It is located in Prabhadevi, Mumbai, Maharashtra.",
                                      @"The Haji Ali Dargah is a mosque and dargah located on an islet off the coast of Worli in the southern part of Mumbai. Near the heart of the city proper, the dargah is one of the most recognisable landmarks of Mumbai.",nil];
    
    NSMutableArray *DelhiPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                     @"The India Gate, is a war memorial located astride the Rajpath, on the eastern edge of the ‘ceremonial axis’ of New Delhi, India, formerly called Kingsway.",
                                     @"The Lotus Temple, located in New Delhi, India, is a Bahá'í House of Worship completed in 1986. Notable for its flowerlike shape, it serves as the Mother Temple of the Indian subcontinent and has become a prominent attraction in the city. ",
                                     @"Akshardham or Swaminarayan Akshardham complex is a Hindu mandir, and a spiritual-cultural campus in New Delhi, India",
                                     @"Qlnar, at 72 meters, is the tallest brick minaret in the world. Qutub Minar, along with the ancient and medieval monuments surrounding it, form the Qutub Complex, which is a UNESCO World Heritage Site.",nil];
    
    NSMutableArray *GoaPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                   @"Dudhsagar Falls is a four-tiered waterfall located on the Mandovi River in the border of the Indian states of Karnataka and Goa.",
                                   @"Fort Aguada and its lighthouse is a well-preserved seventeenth-century Portuguese fort standing in Goa, India, on Sinquerim Beach, overlooking the Arabian Sea",
                                   @"The Goa Chitra is a museum based in the former Portuguese colony of Goa. It has a large collection -- over 4000 artefacts -- focusing on Goa's traditional agrarian technology and lifestyle.",
                                   @"Salim Ali Bird Sanctuary is an estuarine mangrove habitat, which is declared as a bird sanctuary, and located on western tip of the Island of Chorao along the Mandovi River, Goa, in India", nil];
    
    
    NSMutableArray *PunePlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                    @"Sinhagad, Sinhgarh, or Sinhgad, is a fortress located roughly 30 kilometres southwest of the city of Pune, India. Previously called Kondhana, the fort has been the site of many important battles, most notably the Battle of Sinhagad in 1671.",
                                    @"Shaniwarwada is an 18th-century fortification in the city of Pune in Maharashtra, India. Built in 1732, it was the seat of the Peshwa rulers of the Maratha Empire until 1818, when the Peshwas lost",
                                    @"Shreemant Dagdusheth Halwai Ganapati Temple in Pune is dedicated to the Hindu God Ganesh. The temple is popular in Maharashtra and is visited by thousands of pilgrims every year. ",
                                    @"Parvati Hill is a hillock in Pune, India. The hillock rises to 2,100 feet above sea level. Atop the hillock is the Parvati Temple, one of the most scenic locations in Pune.", nil];
    
    NSMutableArray *JaipurPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                      @"Amer Fort is located in Amer, a town with an area of 4 square kilometres located 11 kilometres from Jaipur, Rajasthan state, India. Located high on a hill, it is the principal tourist attraction in the Jaipur area.",@"Hawa Mahal is a palace in Jaipur, India, so named because it was essentially a high screen wall built so the women of the royal household could observe street festivals while unseen from the outside.",
                                      @"Hawa Mahal is a palace in Jaipur, India, so named because it was essentially a high screen wall built so the women of the royal household could observe street festivals while unseen from the outside",
                                      @"City Palace, Jaipur, which includes the Chandra Mahal and Mubarak Mahal palaces and other buildings, is a palace complex in Jaipur, the capital of the Rajasthan state, India.",

                                      @"Observatory in Jaipur, India.The Jantar Mantar monument of Jaipur, Rajasthan is a collection of nineteen architectural astronomical instruments, built by the Rajput king Sawai Jai Singh, and completed in 1734 CE ",
                                      nil];
    
    NSMutableArray *ManaliPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                      @"Hindu temple in Manali, Himachal Pradesh, India .Hidimbi Devi Temple, also known variously as the Hadimba Temple, is located in Manāli, a hill station in the State of Himāchal Pradesh in north India.",
                                      @"Solang Nala derives its name from combination of words Solang and Nullah. It is a side valley at the top of the Kullu Valley in Himachal Pradesh, India 14 km northwest of the resort town Manali ",
                                      @"Mountain pass in India .Rohtang Pass, is a high mountain pass on the eastern Pir Panjal Range of the Himalayas around 51 km from Manali. It connects the Kullu Valley with the Lahaul and Spiti Valleys of Himachal Pradesh, India. ",
                                      @"Bhrigu Lake is a lake located at an elevation of around 4,300 metres in Kullu district, Himachal Pradesh, India. It is located to the east of Rohtang Pass and is around 6 kilometres from Gulaba village", nil];
    
    NSMutableArray *HyderbadPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                        @"Golkonda, also known as Golconda or Golla konda, is a citadel and fort in Southern India and was the capital of the medieval sultanate of the Qutb Shahi dynasty, is situated 11 kilometres west of Hyderabad",
                                        @"The Charminar, constructed in 1591 CE, is a monument and mosque located in Hyderabad, Telangana, India. The landmark has become a global icon of Hyderabad, listed among the most recognized structures of India. ",
                                        @"Hussain Sagar .Lake in Hyderabad, India.Hussain Sagar is a lake in Hyderabad built by Hazrat Hussain Shah Wali in 1562, during the rule of Ibrahim Quli Qutub Shah. It is spread across an area of 5.7 square kilometers and is fed by River Musi.",
                                        @"", nil];
   
    NSMutableArray *BengaluruPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                         @"Botanical garden in Bengaluru, India.Lalbagh or Lalbagh Botanical Gardens, meaning The Red Garden in English, is a well known botanical garden in southern Bangalore, India.",
                                         @"Park in Bengaluru, India.Cubbon Park is a landmark 'lung' area of the Bangalore city, located within the heart of city in the Central Administrative Area.",
                                         @"National park in Bengaluru, India.Bannerghatta National Park, near Bangalore, Karnataka, was founded in 1970 and declared as a national park in 1974. In 2002 a portion of the park, became a biological reserve, the Bannerghatta Biological Park",
                                         @"Building in Bengaluru, India.The Vidhana Soudha located in Bengaluru, is the seat of the state legislature of Karnataka. It is an imposing building, constructed in a style sometimes described as Mysore Neo-Dravidian, and incorporates",
                                         nil];
    
   
    NSMutableArray *KeralaPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                      @"Thekkady is the location of the Periyar National Park, which is an important tourist attraction in the Kerala state of India",
                                      @"Fort Kochi is a region in the city of Kochi in the state of Kerala, India. This is part of a handful of water-bound regions toward the south-west of the mainland Kochi, and collectively known as Old Kochi or West Kochi.",
                                      @"Beach in Muzhappilangad, India.Muzhappilangad Drive-in Beach is a beach in the state of Kerala in southwestern India. It is located parallel to National Highway 66 between Kannur and Thalassery.",
                                      @"Hindu temple in Thiruvananthapuram, India.Padmanabhaswamy temple is located in Thiruvananthapuram, Kerala, India. The temple is built in an intricate fusion of the indigenous Kerala style and the Dravidian style of architecture", nil];
    
    NSMutableArray *KolkataPlacesInfo=[[NSMutableArray alloc]initWithObjects:
                                       @"Museum in Kolkata, India.The Victoria Memorial is a large marble building in Kolkata, West Bengal, India, which was built between 1906 and 1921.",
                                       @"Museum in Kolkata, India.The Indian Museum is the largest and oldest museum in India and has rare collections of antiques, armour and ornaments, fossils, skeletons, mummies, and Mughal paintings. It was founded by the Asiatic Society of Bengal in Kolkata, India, in 1814.",
                                       @"Hindu temple in Kolkata, India.Dakshineswar Kali Temple is a Hindu temple located in Dakshineswar near Kolkata. Situated on the eastern bank of the Hooghly River, the presiding deity of the temple is Bhavatarini, an aspect of Kali",
                                       @"Cricket stadium in Kolkata, India.Eden Gardens is a cricket ground in Kolkata, India. It is the home of the Bengal cricket team and the IPL's Kolkata Knight Riders, as well as being a venue for Test, ODI and T20I matches", nil];
    
    
    
    //------------------------------------------------------------------------------------------
    //Hotels Name Array
    NSMutableArray *MumbaiHotelsName=[[NSMutableArray alloc]initWithObjects:@"Ramada Plaza Hotel Groove",@"Hyatt Regency",@"The orchid",@"The Lalit", nil];
    
    NSMutableArray *DelhiHotelsName=[[NSMutableArray alloc]initWithObjects:@"The Park New Delhi",@"Jaypee Vasant Continental",@"The Lalit",@"Le Meredian", nil];

    NSMutableArray *GoaHotelsName=[[NSMutableArray alloc]initWithObjects:@"Nagoa Grande",@"Aromiaaa Vilas",@"Richmande Park",@"Mar beach Resort",nil];
    
    NSMutableArray *PuneHotelsName=[[NSMutableArray alloc]initWithObjects:@"Le Royale Residency",@"CItrus Hotel Pimpri",@"Spree Shivai Hotel",@"Mapple Adhwryou Pune",nil];
    
    NSMutableArray *JaipurHotelsName=[[NSMutableArray alloc]initWithObjects:@"Country Inn Suites by Carlson Jaipur , Jaipur",@"Four Points By Sheraton Jaipur , Jaipur",@"Laxmi Palace-A Heritage Home , Jaipur",@"Hotel Acacia Inn , Jaipur", nil];
    
     NSMutableArray *ManaliHotelsName=[[NSMutableArray alloc]initWithObjects:@"Snow Valley Resorts , Manali",@"Royal Park Resort , Manali",@"The Royal Grand Hotel , Manali",@"Hotel Drilbu The Mall , Manali", nil];
    
    NSMutableArray *HyderbadHotelsName=[[NSMutableArray alloc]initWithObjects:@"Katriya Hotels and Towers , Hyderabad",@"Radisson Blu Plaza Banjara Hills , Hyderabad",@"Grand Elite Hotel , Hyderabad",@"Radisson Hyderabad Hitec City , Hyderabad", nil];

    NSMutableArray *BengaluruHotelsName=[[NSMutableArray alloc]initWithObjects:@"Fortune Select JP Cosmos , Bangalore",@"Davanam Sarovar Portico Suites , Bangalore",@"Hotel Comfort , Bangalore",@"Hilton Bangalore Embassy GolfLinks , Bangalore", nil];

    NSMutableArray *KeralaHotelsName=[[NSMutableArray alloc]initWithObjects:@"Chandys Windy Woods , Munnar",@"Orchid Highlands , Munnar",@"Blu Haze Resort and Spa , Munnar",@"The Green Carpet , Munnar", nil];

    NSMutableArray *KolkataHotelsName=[[NSMutableArray alloc]initWithObjects:@"The Park Kolkata , Kolkata",@"Hotel Crestwood , Kolkata",@"Park Plaza Ballygunge , Kolkata",@"Regenta Orko's Hotel , Kolkata", nil];

    
    
    //----------------------------------------------------------------------------------------
    
    
    //Tourist Places Images Array
    
    NSMutableArray *MumbaiTourPlaceImages=[[NSMutableArray alloc]initWithObjects:@"MumPlace1.jpg",@"MumPlace2.jpg",@"MumPlace3.jpg",@"MumPlace4.jpg", nil];
    
    NSMutableArray *DelhiTourPlaceImgages=[[NSMutableArray alloc]initWithObjects:@"DelPlace1.jpg",@"DelPlace2.jpg",@"DelPlace3.jpg",@"DelPlace4.jpg", nil];
    
    NSMutableArray *GoaTourPlaceImgages=[[NSMutableArray alloc]initWithObjects:@"GoaPlace1.jpg",@"GoaPlace2.jpg",@"GoaPlace3.jpg",@"GoaPlace4.jpg", nil];
    
    NSMutableArray *PuneTourPlaceImgages=[[NSMutableArray alloc]initWithObjects:@"PunePlace1.jpg",@"PunePlace2.jpg",@"PunePlace3.jpg",@"PunePlace4.jpg", nil];
    
    
    
    NSMutableArray *JaipurTourPlaceImages=[[NSMutableArray alloc]initWithObjects:@"JaiPlace1.jpg",@"JaiPlace2.jpg",@"JaiPlace3.jpg",@"JaiPlace4.jpg", nil];
    
    NSMutableArray *ManaliTourPlaceImages=[[NSMutableArray alloc]initWithObjects:@"ManPlace1.jpg",@"ManPlace2.jpg",@"ManPlace3.jpg",@"ManPlace4.jpg", nil];
    
    NSMutableArray *HyderabadTourPlaceImages=[[NSMutableArray alloc]initWithObjects:@"HydPlace1.jpg",@"HydPlace2.jpg",@"HydPlace3.jpg",@"HydPlace4.jpg", nil];
    
    NSMutableArray *BengaluruTourPlaceImages=[[NSMutableArray alloc]initWithObjects:@"BanPlace1.jpg",@"BanPlace2.jpg",@"BanPlace3.jpg",@"BanPlace4.jpg", nil];
    
    NSMutableArray *KeralaTourPlaceImages=[[NSMutableArray alloc]initWithObjects:@"KerPlace1.jpg",@"KerPlace2.jpg",@"KerPlace3.jpg",@"KerPlace4.jpg", nil];
    
    NSMutableArray *KolkataTourPlaceImages=[[NSMutableArray alloc]initWithObjects:@"KolPlace1.jpg",@"KolPlace2.jpg",@"KolPlace3.jpg",@"KolPlace4.jpg", nil];
    
    //----------------------------------------------------------------------------------------
    //Hotels Image Array
    
    NSMutableArray *MumbaiHotelImage=[[NSMutableArray alloc]initWithObjects:@"MumHotel1.jpg",@"MumHotel2.jpg",@"MumHotel3.jpg",@"MumHotel4.jpg", nil];
    
    NSMutableArray *DelhiHotelImages=[[NSMutableArray alloc]initWithObjects:@"DelHotel1.jpg",@"DelHotel2.jpg",@"DelHotel3.jpg",@"DelHotel4.jpg", nil];
    
    NSMutableArray *GoaHotelImages=[[NSMutableArray alloc]initWithObjects:@"GoaHotel1.jpg",@"GoaHotel2.jpg",@"GoaHotel3.jpg",@"GoaHotel4.jpg", nil];
    
    NSMutableArray *PuneHotelImages=[[NSMutableArray alloc]initWithObjects:@"PuneHotel1.jpg",@"PuneHotel2.jpg",@"PuneHotel3.jpg",@"PuneHotel4.jpg", nil];
    
    NSMutableArray *JaipurHotelImages=[[NSMutableArray alloc]initWithObjects:@"JaiHotel1.jpg",@"JaiHotel2.jpg",@"JaiHotel3.jpg",@"JaiHotel4.jpg", nil];
    
    NSMutableArray *ManaliHotelImages=[[NSMutableArray alloc]initWithObjects:@"ManHotel1.jpg",@"ManHotel2.jpg",@"ManHotel3.jpg",@"ManHotel4.jpg", nil];
    
    NSMutableArray *HyderabadHotelImages=[[NSMutableArray alloc]initWithObjects:@"HydHotel1.jpg",@"ManHotel2.jpg",@"ManHotel3.jpg",@"ManHotel4.jpg", nil];
    
    NSMutableArray *BengaluruHotelImages=[[NSMutableArray alloc]initWithObjects:@"BanHotel1.jpg",@"BenHotel2.jpg",@"BenHotel3.jpg",@"BenHotel4.jpg", nil];
    
    NSMutableArray *KeralaHotelImages=[[NSMutableArray alloc]initWithObjects:@"KerHotel1.jpg",@"KerHotel2.jpg",@"KerHotel3.jpg",@"KerHotel4.jpg", nil];
    
    NSMutableArray *KolkataHotelImages=[[NSMutableArray alloc]initWithObjects:@"KolHotel1.jpg",@"KolHotel2.jpg",@"KolHotel3.jpg",@"KolHotel4.jpg", nil];
    
    //----------------------------------------------------------------------------------------
    //Maps
    
    NSMutableArray *MumbaiMaps=[[NSMutableArray alloc]initWithObjects:@"MumbaiMap.jpg", nil];
    
    NSMutableArray *DelhiMaps=[[NSMutableArray alloc]initWithObjects:@"DelhiMap.jpg", nil];
    
    NSMutableArray *GoaMaps=[[NSMutableArray alloc]initWithObjects:@"GoaMap.jpg", nil];
    
    NSMutableArray *PuneMaps=[[NSMutableArray alloc]initWithObjects:@"PuneMap.jpg", nil];
    
    NSMutableArray *JaipurMaps=[[NSMutableArray alloc]initWithObjects:@"JaipurMap.jpg", nil];
    
    NSMutableArray *ManaliMaps=[[NSMutableArray alloc]initWithObjects:@"ManaliMap.gif", nil];
    
    NSMutableArray *HyderabadMaps=[[NSMutableArray alloc]initWithObjects:@"HyderabadMap.gif", nil];
    
    NSMutableArray *BengaluruMaps=[[NSMutableArray alloc]initWithObjects:@"BengaluruMap.jpg", nil];
    
    NSMutableArray *KeralaMaps=[[NSMutableArray alloc]initWithObjects:@"KeralaMap.jpg", nil];
    
    NSMutableArray *KolkataMaps=[[NSMutableArray alloc]initWithObjects:@"KolkataMap.jpg", nil];
    
    
    //----------------------------------------------------------------------------------------

    //Mumbai Dictionary
    NSMutableDictionary *MumbaiDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:MumbaiPlacesName,@"PlacesName",MumbaiPlacesInfo,@"PlacesInfo",
         MumbaiTourPlaceImages,@"PlaceImages", MumbaiHotelsName,@"Hotel",MumbaiHotelImage,@"HotelsImage",MumbaiMaps,@"CityMap",@"Welcome To Mumbai",@"titlename" ,nil];
   
    //Delhi Dictionary
    NSMutableDictionary *DelhiDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:  DelhiPlacesName,@"PlacesName",DelhiPlacesInfo,@"PlacesInfo",  DelhiTourPlaceImgages,@"PlaceImages",
        DelhiHotelsName,@"Hotel",DelhiHotelImages,@"HotelsImage",DelhiMaps,@"CityMap",@"Welcome To Delhi",@"titlename", nil];
    
   //Goa Dictionary
    NSMutableDictionary *GoaDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:GoaPlacesName,@"PlacesName",GoaPlacesInfo,@"PlacesInfo",  GoaTourPlaceImgages,@"PlaceImages",
        GoaHotelsName ,@"Hotel",GoaHotelImages,@"HotelsImage",GoaMaps ,@"CityMap",@"Welcome To Goa",@"titlename" ,nil];
    
   //Pune Dictionary
    NSMutableDictionary *PuneDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:PunePlacesName,@"PlacesName",PunePlacesInfo,@"PlacesInfo",  PuneTourPlaceImgages,@"PlaceImages",
        PuneHotelsName,@"Hotel",PuneHotelImages,@"HotelsImage", PuneMaps,@"CityMap",@"Welcome To Pune",@"titlename" ,nil];
    
   
    //JaiPur Dictionary
    NSMutableDictionary *JaipurDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:JaipurPlacesName,@"PlacesName",JaipurPlacesInfo,@"PlacesInfo",JaipurTourPlaceImages,@"PlaceImages",JaipurHotelsName,@"Hotel",JaipurHotelImages,@"HotelsImage",JaipurMaps,@"CityMap", @"Welcome To Jaipur",@"titlename", nil];
    
   
    //Manali Dictionary
    NSMutableDictionary *ManaliDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:ManaliPlacesName,@"PlacesName",ManaliPlacesInfo,@"PlacesInfo",ManaliTourPlaceImages,@"PlaceImages",ManaliHotelsName,@"Hotel",ManaliHotelImages,@"HotelsImage",ManaliMaps,@"CityMap", @"Welcome To Manali",@"titlename", nil];
   
    //Hyderabad Dictionary
    NSMutableDictionary *HyderabadDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:HyderabadPlacesName,@"PlacesName",HyderbadPlacesInfo,@"PlacesInfo",HyderabadTourPlaceImages,@"PlaceImages",HyderbadHotelsName,@"Hotel",HyderabadHotelImages,@"HotelsImage",HyderabadMaps,@"CityMap",  @"Welcome To Hyderabad",@"", nil];
   
    //Bengaluru Dictionary
    
    NSMutableDictionary *BengaluruDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:BengaluruPlacesName, @"PlacesName",BengaluruPlacesInfo,@"PlacesInfo",BengaluruTourPlaceImages,@"PlaceImages",BengaluruHotelsName,@"Hotel",BengaluruHotelImages,@"HotelsImage",BengaluruMaps,@"CityMap",  @"Welcome To Bengaluru",@"titlename",  nil];
   
    //Kerala  Dictionary
    NSMutableDictionary *KeralaDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:KeralaPlacesName,@"PlacesName",KeralaPlacesInfo,@"PlacesInfo",KeralaTourPlaceImages,@"PlaceImages",KeralaHotelsName,@"Hotel",KeralaHotelImages,@"HotelsImage",KeralaMaps,@"CityMap",  @"Welcome To Kerala",@"titlename", nil];
   
    //Kolkata Dictionary
    NSMutableDictionary *KolkataDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:KolkataPlacesName,@"PlacesName",KolkataPlacesInfo,@"PlacesInfo",KolkataTourPlaceImages,@"PlaceImages",KolkataHotelsName,@"",KolkataHotelImages,@"HotelsImage",KolkataMaps,@"CityMap", @"Welcome To Kolkata",@"titlename",nil];
    
    
    //----------------------------------------------------------------------------------------
    
    //Final Dictionary
    NSMutableDictionary *FinalDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:MumbaiDict,@"0",DelhiDict,@"1",GoaDict,@"2",PuneDict,@"3",JaipurDict,@"4",ManaliDict,@"5",HyderabadDict,@"6",BengaluruDict,@"7",KeralaDict,@"8",KolkataDict,@"9", nil];
    //----------------------------------------------------------------------------------------
    return FinalDict;
}
@end
