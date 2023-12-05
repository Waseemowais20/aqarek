// To parse this JSON data, do
//
//     final homeComponentsModel = homeComponentsModelFromJson(jsonString);

import 'dart:convert';

HomeComponentsModel homeComponentsModelFromJson(String str) =>
    HomeComponentsModel.fromJson(json.decode(str));

String homeComponentsModelToJson(HomeComponentsModel data) =>
    json.encode(data.toJson());

class HomeComponentsModel {
  String? assistantTilte;
  String? assistantSubTilte;
  String? assistantImageUrl;
  String? fundingTilte;
  String? fundingSubTilte;
  String? fundingImageUrl;
  List<Header>? headerGallery;
  List<Header>? headerOffers;
  List<HeaderWidget>? headerWidgets;
  String? partnerssectiontilte;
  List<Partner>? partners;
  String? latestprojectssectiontilte;
  LatestProjects? latestProjects;
  String? unitssectiontilte;
  Units? units;
  List<ProjectsGroup>? projectsGroups;
  List<Lastseen>? lastseen;
  Filterdata? filterdata;
  int? showfilterdata;
  String? lastseensectiontitle;
  int? showAssistant;
  int? notificationCount;
  int? showPartners;
  int? showOffers;
  int? showUnits;
  int? showLatestProjects;
  int? showLastSeen;
  int? showFundingEligibility;
  int? showprojectsGroups;

  HomeComponentsModel({
    this.assistantTilte,
    this.assistantSubTilte,
    this.assistantImageUrl,
    this.fundingTilte,
    this.fundingSubTilte,
    this.fundingImageUrl,
    this.headerGallery,
    this.headerOffers,
    this.headerWidgets,
    this.partnerssectiontilte,
    this.partners,
    this.latestprojectssectiontilte,
    this.latestProjects,
    this.unitssectiontilte,
    this.units,
    this.projectsGroups,
    this.lastseen,
    this.filterdata,
    this.showfilterdata,
    this.lastseensectiontitle,
    this.showAssistant,
    this.notificationCount,
    this.showPartners,
    this.showOffers,
    this.showUnits,
    this.showLatestProjects,
    this.showLastSeen,
    this.showFundingEligibility,
    this.showprojectsGroups,
  });

  factory HomeComponentsModel.fromJson(Map<String, dynamic> json) =>
      HomeComponentsModel(
        assistantTilte: json["assistantTilte"],
        assistantSubTilte: json["assistantSubTilte"],
        assistantImageUrl: json["assistantImageUrl"],
        fundingTilte: json["fundingTilte"],
        fundingSubTilte: json["fundingSubTilte"],
        fundingImageUrl: json["fundingImageUrl"],
        headerGallery: json["headerGallery"] == null
            ? []
            : List<Header>.from(
                json["headerGallery"]!.map((x) => Header.fromJson(x))),
        headerOffers: json["headerOffers"] == null
            ? []
            : List<Header>.from(
                json["headerOffers"]!.map((x) => Header.fromJson(x))),
        headerWidgets: json["headerWidgets"] == null
            ? []
            : List<HeaderWidget>.from(
                json["headerWidgets"]!.map((x) => HeaderWidget.fromJson(x))),
        partnerssectiontilte: json["partnerssectiontilte"],
        partners: json["partners"] == null
            ? []
            : List<Partner>.from(
                json["partners"]!.map((x) => Partner.fromJson(x))),
        latestprojectssectiontilte: json["latestprojectssectiontilte"],
        latestProjects: json["latestProjects"] == null
            ? null
            : LatestProjects.fromJson(json["latestProjects"]),
        unitssectiontilte: json["unitssectiontilte"],
        units: json["units"] == null ? null : Units.fromJson(json["units"]),
        projectsGroups: json["projectsGroups"] == null
            ? []
            : List<ProjectsGroup>.from(
                json["projectsGroups"]!.map((x) => ProjectsGroup.fromJson(x))),
        lastseen: json["lastseen"] == null
            ? []
            : List<Lastseen>.from(
                json["lastseen"]!.map((x) => Lastseen.fromJson(x))),
        filterdata: json["filterdata"] == null
            ? null
            : Filterdata.fromJson(json["filterdata"]),
        showfilterdata: json["showfilterdata"],
        lastseensectiontitle: json["lastseensectiontitle"],
        showAssistant: json["showAssistant"],
        notificationCount: json["notificationCount"],
        showPartners: json["showPartners"],
        showOffers: json["showOffers"],
        showUnits: json["showUnits"],
        showLatestProjects: json["showLatestProjects"],
        showLastSeen: json["showLastSeen"],
        showFundingEligibility: json["showFundingEligibility"],
        showprojectsGroups: json["showprojectsGroups"],
      );

  Map<String, dynamic> toJson() => {
        "assistantTilte": assistantTilte,
        "assistantSubTilte": assistantSubTilte,
        "assistantImageUrl": assistantImageUrl,
        "fundingTilte": fundingTilte,
        "fundingSubTilte": fundingSubTilte,
        "fundingImageUrl": fundingImageUrl,
        "headerGallery": headerGallery == null
            ? []
            : List<dynamic>.from(headerGallery!.map((x) => x.toJson())),
        "headerOffers": headerOffers == null
            ? []
            : List<dynamic>.from(headerOffers!.map((x) => x.toJson())),
        "headerWidgets": headerWidgets == null
            ? []
            : List<dynamic>.from(headerWidgets!.map((x) => x.toJson())),
        "partnerssectiontilte": partnerssectiontilte,
        "partners": partners == null
            ? []
            : List<dynamic>.from(partners!.map((x) => x.toJson())),
        "latestprojectssectiontilte": latestprojectssectiontilte,
        "latestProjects": latestProjects?.toJson(),
        "unitssectiontilte": unitssectiontilte,
        "units": units?.toJson(),
        "projectsGroups": projectsGroups == null
            ? []
            : List<dynamic>.from(projectsGroups!.map((x) => x.toJson())),
        "lastseen": lastseen == null
            ? []
            : List<dynamic>.from(lastseen!.map((x) => x.toJson())),
        "filterdata": filterdata?.toJson(),
        "showfilterdata": showfilterdata,
        "lastseensectiontitle": lastseensectiontitle,
        "showAssistant": showAssistant,
        "notificationCount": notificationCount,
        "showPartners": showPartners,
        "showOffers": showOffers,
        "showUnits": showUnits,
        "showLatestProjects": showLatestProjects,
        "showLastSeen": showLastSeen,
        "showFundingEligibility": showFundingEligibility,
        "showprojectsGroups": showprojectsGroups,
      };
}

class Filterdata {
  List<Category>? categories;
  List<City>? cities;
  List<Project>? projects;

  Filterdata({
    this.categories,
    this.cities,
    this.projects,
  });

  factory Filterdata.fromJson(Map<String, dynamic> json) => Filterdata(
        categories: json["categories"] == null
            ? []
            : List<Category>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
        cities: json["cities"] == null
            ? []
            : List<City>.from(json["cities"]!.map((x) => City.fromJson(x))),
        projects: json["projects"] == null
            ? []
            : List<Project>.from(
                json["projects"]!.map((x) => Project.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "cities": cities == null
            ? []
            : List<dynamic>.from(cities!.map((x) => x.toJson())),
        "projects": projects == null
            ? []
            : List<dynamic>.from(projects!.map((x) => x.toJson())),
      };
}

class Category {
  int? categoryid;
  String? categoryname;
  dynamic imageurl;
  int? showcounterroom;

  Category({
    this.categoryid,
    this.categoryname,
    this.imageurl,
    this.showcounterroom,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryid: json["categoryid"],
        categoryname: json["categoryname"],
        imageurl: json["imageurl"],
        showcounterroom: json["showcounterroom"],
      );

  Map<String, dynamic> toJson() => {
        "categoryid": categoryid,
        "categoryname": categoryname,
        "imageurl": imageurl,
        "showcounterroom": showcounterroom,
      };
}

class City {
  int? cityid;
  String? cityname;
  String? imageurl;
  int? categoryid;

  City({
    this.cityid,
    this.cityname,
    this.imageurl,
    this.categoryid,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        cityid: json["cityid"],
        cityname: json["cityname"],
        imageurl: json["imageurl"],
        categoryid: json["categoryid"],
      );

  Map<String, dynamic> toJson() => {
        "cityid": cityid,
        "cityname": cityname,
        "imageurl": imageurl,
        "categoryid": categoryid,
      };
}

class Project {
  int? projectid;
  String? projectname;
  dynamic imageurl;
  int? categoryid;
  int? cityid;
  double? maxprice;
  double? minprice;
  double? maxspace;
  double? minspace;
  dynamic maxbedroom;
  dynamic minbedroom;
  dynamic maxbathroom;
  dynamic minbathroom;

  Project({
    this.projectid,
    this.projectname,
    this.imageurl,
    this.categoryid,
    this.cityid,
    this.maxprice,
    this.minprice,
    this.maxspace,
    this.minspace,
    this.maxbedroom,
    this.minbedroom,
    this.maxbathroom,
    this.minbathroom,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        projectid: json["projectid"],
        projectname: json["projectname"],
        imageurl: json["imageurl"],
        categoryid: json["categoryid"],
        cityid: json["cityid"],
        maxprice: json["maxprice"]?.toDouble(),
        minprice: json["minprice"]?.toDouble(),
        maxspace: json["maxspace"]?.toDouble(),
        minspace: json["minspace"]?.toDouble(),
        maxbedroom: json["maxbedroom"],
        minbedroom: json["minbedroom"],
        maxbathroom: json["maxbathroom"],
        minbathroom: json["minbathroom"],
      );

  Map<String, dynamic> toJson() => {
        "projectid": projectid,
        "projectname": projectname,
        "imageurl": imageurl,
        "categoryid": categoryid,
        "cityid": cityid,
        "maxprice": maxprice,
        "minprice": minprice,
        "maxspace": maxspace,
        "minspace": minspace,
        "maxbedroom": maxbedroom,
        "minbedroom": minbedroom,
        "maxbathroom": maxbathroom,
        "minbathroom": minbathroom,
      };
}

class Header {
  int? isvideo;
  dynamic title;
  String? image;
  dynamic screenname;
  dynamic id;
  int? isLink;
  String? linktext;

  Header({
    this.isvideo,
    this.title,
    this.image,
    this.screenname,
    this.id,
    this.isLink,
    this.linktext,
  });

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        isvideo: json["isvideo"],
        title: json["title"],
        image: json["image"],
        screenname: json["screenname"] != null
            ? screenNameEnumValues.map[json["screenname"]] ??
                ScreenNameEnum.someDefaultValue
            : ScreenNameEnum.someDefaultValue,
        id: json["id"],
        isLink: json["isLink"],
        linktext: json["linktext"],
      );

  Map<String, dynamic> toJson() => {
        "isvideo": isvideo,
        "title": title,
        "image": image,
        "screenname": screenNameEnumValues.reverse[screenname],
        "id": id,
        "isLink": isLink,
        "linktext": linktext,
      };
}

enum ScreenNameEnum { APARTMENT_DETAILS_SCREEN, someDefaultValue }

final screenNameEnumValues = EnumValues(
    {"apartment_details_screen": ScreenNameEnum.APARTMENT_DETAILS_SCREEN});

class HeaderWidget {
  String? screenname;
  String? title;
  String? imageurl;
  String? iconurl;

  HeaderWidget({
    this.screenname,
    this.title,
    this.imageurl,
    this.iconurl,
  });

  factory HeaderWidget.fromJson(Map<String, dynamic> json) => HeaderWidget(
        screenname: json["screenname"],
        title: json["title"],
        imageurl: json["imageurl"],
        iconurl: json["iconurl"],
      );

  Map<String, dynamic> toJson() => {
        "screenname": screenname,
        "title": title,
        "imageurl": imageurl,
        "iconurl": iconurl,
      };
}

class Lastseen {
  List<Housingunit>? layouts;
  List<Housingunit>? housingunits;

  Lastseen({
    this.layouts,
    this.housingunits,
  });

  factory Lastseen.fromJson(Map<String, dynamic> json) => Lastseen(
        layouts: json["layouts"] == null
            ? []
            : List<Housingunit>.from(
                json["layouts"]!.map((x) => Housingunit.fromJson(x))),
        housingunits: json["housingunits"] == null
            ? []
            : List<Housingunit>.from(
                json["housingunits"]!.map((x) => Housingunit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "layouts": layouts == null
            ? []
            : List<dynamic>.from(layouts!.map((x) => x.toJson())),
        "housingunits": housingunits == null
            ? []
            : List<dynamic>.from(housingunits!.map((x) => x.toJson())),
      };
}

class Housingunit {
  ScreenNameEnum? screenName;
  int? id;
  String? name;
  dynamic companylogo;
  Companyname? companyname;
  dynamic image;
  PurpleScreenname? screenname;

  Housingunit({
    this.screenName,
    this.id,
    this.name,
    this.companylogo,
    this.companyname,
    this.image,
    this.screenname,
  });

  factory Housingunit.fromJson(Map<String, dynamic> json) => Housingunit(
        screenName: json["screenname"] != null
            ? screenNameEnumValues.map[json["screenname"]] ??
                ScreenNameEnum.someDefaultValue
            : ScreenNameEnum.someDefaultValue,
        id: json["id"],
        name: json["name"],
        companylogo: json["companylogo"],
        companyname: json["companyname"] != null
            ? companynameValues.map[json["companyname"]] ??
                Companyname.someDefaultValue
            : Companyname.someDefaultValue,
        image: json["image"],
        screenname: json["screenname"] != null
            ? purpleScreennameValues.map[json["screenname"]] ??
                PurpleScreenname.someDefaultValue
            : PurpleScreenname.someDefaultValue,
      );

  Map<String, dynamic> toJson() => {
        "screenName": screenNameEnumValues.reverse[screenName],
        "id": id,
        "name": name,
        "companylogo": companylogo,
        "companyname": companynameValues.reverse[companyname],
        "image": image,
        "screenname": purpleScreennameValues.reverse[screenname],
      };
}

enum Companyname {
  COMPANYNAME,
  EMPTY,
  FLUFFY,
  PURPLE,
  STICKY,
  TENTACLED,
  someDefaultValue
}

final companynameValues = EnumValues({
  "عمار للاستثمار القابضة": Companyname.COMPANYNAME,
  "شركة صفا للاستثمار\u200e": Companyname.EMPTY,
  "شركة جواهر الوسطى العقارية شركة ذات مسؤولية محدودة": Companyname.FLUFFY,
  "شركة زود الرائدة": Companyname.PURPLE,
  "مجد للاستثمار \u200eشركة": Companyname.STICKY,
  "شركة والى للإستثمار العقاري": Companyname.TENTACLED
});

enum PurpleScreenname { LAND_DETAILS_SCREEN, someDefaultValue }

final purpleScreennameValues =
    EnumValues({"land_details_screen": PurpleScreenname.LAND_DETAILS_SCREEN});

class LatestProjects {
  String? description;
  List<LatestProjectsItem>? items;

  LatestProjects({
    this.description,
    this.items,
  });

  factory LatestProjects.fromJson(Map<String, dynamic> json) => LatestProjects(
        description: json["description"],
        items: json["items"] == null
            ? []
            : List<LatestProjectsItem>.from(
                json["items"]!.map((x) => LatestProjectsItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class LatestProjectsItem {
  String? screenname;
  int? id;
  String? title;
  dynamic image;
  String? cityname;
  String? icon;

  LatestProjectsItem({
    this.screenname,
    this.id,
    this.title,
    this.image,
    this.cityname,
    this.icon,
  });

  factory LatestProjectsItem.fromJson(Map<String, dynamic> json) =>
      LatestProjectsItem(
        screenname: json["screenname"],
        id: json["id"],
        title: json["title"],
        image: json["image"],
        cityname: json["cityname"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "screenname": screenname,
        "id": id,
        "title": title,
        "image": image,
        "cityname": cityname,
        "icon": icon,
      };
}

class Partner {
  String? screenname;
  int? id;
  String? title;
  String? image;

  Partner({
    this.screenname,
    this.id,
    this.title,
    this.image,
  });

  factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        screenname: json["screenname"],
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "screenname": screenname,
        "id": id,
        "title": title,
        "image": image,
      };
}

class ProjectsGroup {
  int? groupid;
  String? title;
  String? subtitle;
  String? imageurl;
  String? bgimageurl;
  String? overlaycolor;
  int? totalunits;
  int? availableunits;

  ProjectsGroup({
    this.groupid,
    this.title,
    this.subtitle,
    this.imageurl,
    this.bgimageurl,
    this.overlaycolor,
    this.totalunits,
    this.availableunits,
  });

  factory ProjectsGroup.fromJson(Map<String, dynamic> json) => ProjectsGroup(
        groupid: json["groupid"],
        title: json["title"],
        subtitle: json["subtitle"],
        imageurl: json["imageurl"],
        bgimageurl: json["bgimageurl"],
        overlaycolor: json["overlaycolor"],
        totalunits: json["totalunits"],
        availableunits: json["availableunits"],
      );

  Map<String, dynamic> toJson() => {
        "groupid": groupid,
        "title": title,
        "subtitle": subtitle,
        "imageurl": imageurl,
        "bgimageurl": bgimageurl,
        "overlaycolor": overlaycolor,
        "totalunits": totalunits,
        "availableunits": availableunits,
      };
}

class Units {
  List<UnitsItem>? items;

  Units({
    this.items,
  });

  factory Units.fromJson(Map<String, dynamic> json) => Units(
        items: json["items"] == null
            ? []
            : List<UnitsItem>.from(
                json["items"]!.map((x) => UnitsItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class UnitsItem {
  ScreenNameEnum? screenname;
  String? photourl;
  String? title;
  String? text;
  String? totalprice;
  String? pricetext;

  UnitsItem({
    this.screenname,
    this.photourl,
    this.title,
    this.text,
    this.totalprice,
    this.pricetext,
  });

  factory UnitsItem.fromJson(Map<String, dynamic> json) => UnitsItem(
        screenname: screenNameEnumValues.map[json["screenname"]]!,
        photourl: json["photourl"],
        title: json["title"],
        text: json["text"],
        totalprice: json["totalprice"],
        pricetext: json["pricetext"],
      );

  Map<String, dynamic> toJson() => {
        "screenname": screenNameEnumValues.reverse[screenname],
        "photourl": photourl,
        "title": title,
        "text": text,
        "totalprice": totalprice,
        "pricetext": pricetext,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
