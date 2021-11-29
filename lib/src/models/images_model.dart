class Images {
    Images({
        this.background,
        this.coverart,
        this.coverarthq,
        this.joecolor,
    });

    String ?background;
    String ?coverart;
    String ?coverarthq;
    String ?joecolor;

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        background: json["background"],
        coverart: json["coverart"],
        coverarthq: json["coverarthq"],
        joecolor: json["joecolor"],
    );

  get first => null;

 
}