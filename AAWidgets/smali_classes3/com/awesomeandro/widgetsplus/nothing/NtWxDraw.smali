.class final Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;
.super Ljava/lang/Object;


# static fields
.field static LIGHT:Landroid/graphics/Typeface;

.field static NUM:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alpha(II)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static arrowTemp(Landroid/content/Context;Landroid/graphics/Canvas;ZLjava/lang/String;FFFI)V
    .locals 12

    move/from16 v4, p6

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, v4

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, v4

    move-object v2, p3

    invoke-static {v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->tempW(Ljava/lang/String;F)F

    move-result v3

    add-float v5, v0, v1

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float v3, p4, v3

    if-eqz p2, :cond_0

    const-string v6, "temp_arrow_up"

    :goto_0
    move-object v7, v6

    goto :goto_1

    :cond_0
    const-string v6, "temp_arrow_down"

    goto :goto_0

    :goto_1
    div-float v5, v0, v5

    add-float v8, v3, v5

    move-object v5, p0

    move-object v6, p1

    move/from16 v9, p5

    move v10, v0

    move/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    add-float/2addr v0, v3

    add-float v3, v0, v1

    const v0, 0x3eb851ec    # 0.36f

    mul-float/2addr v0, v4

    add-float v5, p5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v0, p1

    move-object v1, v2

    move v2, v3

    move v3, v5

    move-object v5, v6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->temp(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint$Align;I)V

    return-void
.end method

.method static desc(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Clear"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Mostly clear"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "Partly cloudy"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "Cloudy"

    return-object p0

    :cond_3
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_c

    const/16 v0, 0x30

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x33

    if-lt p0, v0, :cond_5

    const/16 v0, 0x39

    if-gt p0, v0, :cond_5

    const-string p0, "Drizzle"

    return-object p0

    :cond_5
    const/16 v0, 0x3d

    if-lt p0, v0, :cond_6

    const/16 v0, 0x43

    if-gt p0, v0, :cond_6

    const-string p0, "Rain"

    return-object p0

    :cond_6
    const/16 v0, 0x47

    if-lt p0, v0, :cond_7

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_7

    const-string p0, "Snow"

    return-object p0

    :cond_7
    const/16 v0, 0x50

    if-lt p0, v0, :cond_8

    const/16 v0, 0x52

    if-gt p0, v0, :cond_8

    const-string p0, "Showers"

    return-object p0

    :cond_8
    const/16 v0, 0x55

    if-eq p0, v0, :cond_b

    const/16 v0, 0x56

    if-ne p0, v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_a

    const-string p0, "Thunderstorm"

    return-object p0

    :cond_a
    const-string p0, "Weather"

    return-object p0

    :cond_b
    :goto_0
    const-string p0, "Snow showers"

    return-object p0

    :cond_c
    :goto_1
    const-string p0, "Fog"

    return-object p0
.end method

.method static ellipsize(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static fit(Landroid/graphics/Typeface;Ljava/lang/String;FF)F
    .locals 3

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p0, v1, v2, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    mul-float p1, v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float p0, p1, p0

    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static fitTemp(Ljava/lang/String;FF)F
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->NUM:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x42100000    # 36.0f

    add-float/2addr p0, v0

    div-float p0, p1, p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt_wx_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "drawable"

    invoke-static {p0, p2, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p5, p2

    sub-float p5, p3, p2

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    sub-float p6, p4, p2

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, p5, p6, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static iconName(IZ)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "sunny"

    return-object p0

    :cond_0
    const-string p0, "clear_night"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "cloudy"

    return-object p0

    :cond_3
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_9

    const/16 v0, 0x30

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0x5f

    if-lt p0, p1, :cond_5

    const-string p0, "thunderstorms"

    return-object p0

    :cond_5
    const/16 p1, 0x47

    if-lt p0, p1, :cond_6

    const/16 p1, 0x4d

    if-le p0, p1, :cond_8

    :cond_6
    const/16 p1, 0x55

    if-eq p0, p1, :cond_8

    const/16 p1, 0x56

    if-ne p0, p1, :cond_7

    goto :goto_0

    :cond_7
    const-string p0, "rainy"

    return-object p0

    :cond_8
    :goto_0
    const-string p0, "snow"

    return-object p0

    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    const-string p0, "fog"

    return-object p0

    :cond_a
    const-string p0, "hazy_night"

    return-object p0

    :cond_b
    :goto_2
    if-eqz p1, :cond_c

    const-string p0, "partly_sunny"

    return-object p0

    :cond_c
    const-string p0, "cloudy_night"

    return-object p0
.end method

.method static p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-object v0
.end method

.method static render(Landroid/content/Context;IIILcom/awesomeandro/widgetsplus/nothing/NtWxModel;I)Landroid/graphics/Bitmap;
    .locals 44

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v1, p5

    invoke-static/range {p0 .. p0}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->light(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    const-string v2, "nt_ndot55.otf"

    invoke-static {v8, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->NUM:Landroid/graphics/Typeface;

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "nt_bg"

    invoke-static {v8, v6}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const-string v13, "nt_ink"

    invoke-static {v8, v13}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    const-string v14, "nt_muted"

    invoke-static {v8, v14}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    const-string v14, "nt_accent"

    invoke-static {v8, v14}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v17, 0x40000000    # 2.0f

    if-nez v5, :cond_6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_6

    new-instance v5, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v0, :cond_5

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    mul-float v3, v4, v16

    goto :goto_3

    :cond_4
    :goto_2
    int-to-float v3, v10

    div-float v3, v3, v17

    :goto_3
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v30, v2

    int-to-float v2, v9

    move/from16 v31, v14

    int-to-float v14, v10

    move/from16 v32, v6

    const/4 v6, 0x0

    invoke-direct {v7, v6, v6, v2, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v12, v7, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v32, v6

    move/from16 v31, v14

    move-object/from16 v30, v2

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v9

    sub-float v6, v3, v4

    div-float v6, v6, v17

    int-to-float v7, v10

    sub-float v14, v7, v4

    div-float v14, v14, v17

    add-float/2addr v3, v4

    div-float v3, v3, v17

    add-float/2addr v7, v4

    div-float v7, v7, v17

    invoke-direct {v2, v6, v14, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v12, v2, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    move/from16 v32, v6

    move/from16 v31, v14

    move-object/from16 v30, v2

    :goto_5
    iget-boolean v2, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->ok:Z

    const v7, 0x3df5c28f    # 0.12f

    const v33, 0x3de147ae    # 0.11f

    if-nez v2, :cond_8

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    mul-float v1, v4, v33

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-static {v0, v15, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Loading\u2026"

    goto :goto_6

    :cond_7
    const-string v1, "Set your city"

    :goto_6
    int-to-float v2, v9

    div-float v2, v2, v17

    int-to-float v3, v10

    div-float v3, v3, v17

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v5, v4

    sub-float v5, v3, v5

    invoke-virtual {v12, v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "in AAWidgets"

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v12, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v30

    :cond_8
    iget v2, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->code:I

    iget-boolean v3, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->day:Z

    invoke-static {v2, v3}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->iconName(IZ)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v14, v4, v3

    const v3, 0x3e428f5c    # 0.19f

    const v5, 0x3e051eb8    # 0.13f

    const v6, 0x3eb33333    # 0.35f

    const v18, 0x3ecccccd    # 0.4f

    const v19, 0x3f1eb852    # 0.62f

    const v20, 0x3eeb851f    # 0.46f

    if-nez v0, :cond_b

    if-nez v1, :cond_9

    int-to-float v0, v9

    div-float v3, v0, v17

    int-to-float v0, v10

    div-float v5, v0, v17

    mul-float v6, v4, v20

    move-object v0, v8

    move-object v1, v12

    :goto_7
    move v4, v5

    move v5, v6

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    return-object v30

    :cond_9
    const/4 v0, 0x1

    if-ne v1, v0, :cond_a

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->temp:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v15

    mul-float v0, v4, v19

    mul-float v1, v4, v18

    invoke-static {v15, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->fitTemp(Ljava/lang/String;FF)F

    move-result v18

    int-to-float v0, v9

    div-float v16, v0, v17

    int-to-float v0, v10

    div-float v0, v0, v17

    mul-float v1, v18, v6

    :goto_8
    add-float v17, v0, v1

    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v14, v12

    :goto_9
    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->temp(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint$Align;I)V

    return-object v30

    :cond_a
    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->hi:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v6

    int-to-float v0, v9

    div-float v9, v0, v17

    int-to-float v0, v10

    div-float v10, v0, v17

    mul-float v14, v4, v5

    sub-float v5, v10, v14

    mul-float v15, v4, v3

    const/4 v2, 0x1

    move-object v0, v8

    move-object v1, v12

    move-object v3, v6

    move v4, v9

    move v6, v15

    move v7, v13

    invoke-static/range {v0 .. v7}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->arrowTemp(Landroid/content/Context;Landroid/graphics/Canvas;ZLjava/lang/String;FFFI)V

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->lo:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v3

    add-float v5, v10, v14

    :goto_a
    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, v12

    invoke-static/range {v0 .. v7}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->arrowTemp(Landroid/content/Context;Landroid/graphics/Canvas;ZLjava/lang/String;FFFI)V

    return-object v30

    :cond_b
    const v28, 0x3e0f5c29    # 0.14f

    const/high16 v34, 0x3e800000    # 0.25f

    const v35, 0x3d8f5c29    # 0.07f

    const v22, 0x3d99999a    # 0.075f

    const/4 v6, 0x1

    if-ne v0, v6, :cond_d

    if-nez v1, :cond_c

    mul-float v0, v4, v33

    add-float v5, v14, v0

    mul-float v6, v4, v16

    move-object v0, v8

    move-object v1, v12

    move v3, v5

    move/from16 v36, v4

    move v4, v5

    move v5, v6

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    mul-float v1, v36, v22

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-static {v0, v15, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->areaName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    int-to-float v2, v9

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v3, v2

    invoke-static {v0, v1, v3}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->ellipsize(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    sub-float/2addr v2, v14

    mul-float v3, v36, v35

    add-float/2addr v3, v14

    invoke-virtual {v12, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->temp:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v15

    int-to-float v0, v10

    sub-float v17, v0, v14

    const v0, 0x3eae147b    # 0.34f

    mul-float v18, v36, v0

    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move v7, v14

    move-object v14, v12

    move/from16 v16, v7

    goto/16 :goto_9

    :cond_c
    move/from16 v36, v4

    move v7, v14

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->hi:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v4

    mul-float v0, v36, v34

    add-float v14, v7, v0

    mul-float v0, v36, v28

    add-float v5, v7, v0

    mul-float v16, v36, v3

    const/4 v2, 0x1

    move-object v0, v8

    move-object v1, v12

    move-object v3, v4

    move v4, v14

    move/from16 v6, v16

    move v10, v7

    move v7, v13

    invoke-static/range {v0 .. v7}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->arrowTemp(Landroid/content/Context;Landroid/graphics/Canvas;ZLjava/lang/String;FFFI)V

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->lo:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v3

    mul-float v0, v36, v18

    add-float v5, v10, v0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, v12

    invoke-static/range {v0 .. v7}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->arrowTemp(Landroid/content/Context;Landroid/graphics/Canvas;ZLjava/lang/String;FFFI)V

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    const v1, 0x3db851ec    # 0.09f

    mul-float v1, v1, v36

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-static {v0, v15, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->code:I

    invoke-static {v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->desc(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v9

    mul-float v3, v10, v17

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->ellipsize(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    move/from16 v3, p3

    int-to-float v2, v3

    sub-float/2addr v2, v10

    invoke-virtual {v12, v1, v10, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v30

    :cond_d
    move v3, v10

    move/from16 v36, v4

    move v10, v14

    const v37, 0x3f4ccccd    # 0.8f

    const v38, 0x3e851eb8    # 0.26f

    const/high16 v39, 0x3f000000    # 0.5f

    const/high16 v40, 0x40800000    # 4.0f

    const/16 v14, 0x28

    const v41, 0x3eb851ec    # 0.36f

    const v23, 0x3f28f5c3    # 0.66f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    int-to-float v7, v9

    const v0, 0x3ec28f5c    # 0.38f

    mul-float v9, v7, v0

    int-to-float v6, v3

    mul-float v0, v6, v33

    add-float v4, v10, v0

    mul-float v21, v6, v16

    move-object v0, v8

    move-object v1, v12

    move v3, v4

    move/from16 v5, v21

    move/from16 v29, v6

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->temp:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v0

    mul-float v17, v29, v23

    mul-float v18, v29, v41

    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move v4, v14

    move-object v14, v12

    move v6, v15

    move-object v15, v0

    move/from16 v16, v10

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->temp(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint$Align;I)V

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    mul-float v1, v29, v22

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-static {v0, v6, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->areaName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sub-float v2, v9, v10

    invoke-static {v0, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->ellipsize(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v10, v2

    sub-float v3, v29, v3

    invoke-virtual {v12, v1, v10, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v13, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3c03126f    # 0.008f

    mul-float v1, v1, v29

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v26, v29, v10

    move-object/from16 v22, v12

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v9

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->days:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-float v0, v7, v9

    sub-float/2addr v0, v10

    div-float v7, v0, v40

    const/4 v10, 0x1

    :goto_b
    if-gt v10, v15, :cond_21

    int-to-float v0, v10

    sub-float v0, v0, v39

    mul-float/2addr v0, v7

    add-float v14, v9, v0

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    const v1, 0x3dae147b    # 0.085f

    mul-float v1, v1, v29

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-static {v0, v6, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dName:[Ljava/lang/String;

    aget-object v1, v1, v10

    mul-float v2, v29, v38

    invoke-virtual {v12, v1, v14, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dCode:[I

    aget v0, v0, v10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->iconName(IZ)Ljava/lang/String;

    move-result-object v2

    mul-float v4, v29, v39

    move-object v0, v8

    move-object v1, v12

    move v3, v14

    move/from16 v5, v21

    move/from16 v42, v6

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    iget-object v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dHi:[D

    aget-wide v0, v0, v10

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v0

    mul-float v17, v29, v37

    mul-float v18, v29, v28

    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move v1, v14

    move-object v14, v12

    move v2, v15

    move-object v15, v0

    move/from16 v16, v1

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->temp(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint$Align;I)V

    add-int/lit8 v10, v10, 0x1

    move v15, v2

    move/from16 v6, v42

    goto :goto_b

    :cond_e
    move/from16 v42, v15

    move v4, v14

    const v14, 0x3e2e147b    # 0.17f

    const/4 v6, 0x3

    if-ne v0, v6, :cond_10

    move/from16 v15, v32

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_f

    goto :goto_c

    :cond_f
    invoke-static {v13, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->alpha(II)I

    move-result v6

    move v15, v6

    :goto_c
    const v0, 0x3cf5c28f    # 0.03f

    mul-float v0, v0, v36

    mul-float v1, v36, v5

    int-to-float v9, v9

    int-to-float v6, v3

    div-float v3, v6, v17

    sub-float v27, v3, v0

    const/16 v25, 0x0

    move-object/from16 v22, v12

    move/from16 v23, v15

    move/from16 v24, v25

    move/from16 v26, v9

    move/from16 v28, v1

    invoke-static/range {v22 .. v28}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->tile(Landroid/graphics/Canvas;IFFFFF)V

    add-float/2addr v3, v0

    div-float v19, v9, v17

    sub-float v26, v19, v0

    const/16 v24, 0x0

    move/from16 v25, v3

    move/from16 v27, v6

    invoke-static/range {v22 .. v28}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->tile(Landroid/graphics/Canvas;IFFFFF)V

    add-float v24, v19, v0

    move/from16 v26, v9

    invoke-static/range {v22 .. v28}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->tile(Landroid/graphics/Canvas;IFFFFF)V

    mul-float v3, v36, v14

    mul-float v1, v6, v34

    div-float v21, v0, v17

    sub-float v14, v1, v21

    mul-float v5, v36, v16

    move-object v0, v8

    move-object v1, v12

    move v4, v14

    move v15, v6

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-static {v0, v13, v10, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->code:I

    invoke-static {v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->desc(I)Ljava/lang/String;

    move-result-object v1

    mul-float v2, v36, v18

    sub-float v2, v9, v2

    invoke-static {v0, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->ellipsize(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float v2, v2, v36

    const v3, 0x3d0f5c29    # 0.035f

    mul-float v3, v3, v36

    add-float/2addr v3, v14

    invoke-virtual {v12, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->temp:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v36

    sub-float v1, v19, v1

    mul-float v2, v36, v38

    invoke-static {v0, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->fitTemp(Ljava/lang/String;FF)F

    move-result v18

    div-float v1, v9, v40

    sub-float v16, v1, v21

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v10, v15, v1

    add-float v2, v10, v21

    mul-float v3, v18, v41

    add-float v17, v2, v3

    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v14, v12

    move-object v15, v0

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->temp(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint$Align;I)V

    iget-wide v2, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->hi:D

    invoke-static {v2, v3}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v3

    mul-float v0, v9, v1

    add-float v9, v0, v21

    mul-float v0, v36, v35

    sub-float v5, v10, v0

    mul-float v14, v36, v7

    const/4 v2, 0x1

    move-object v0, v8

    move-object v1, v12

    move v4, v9

    move v6, v14

    move v7, v13

    invoke-static/range {v0 .. v7}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->arrowTemp(Landroid/content/Context;Landroid/graphics/Canvas;ZLjava/lang/String;FFFI)V

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->lo:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v3

    mul-float v0, v36, v33

    add-float v5, v10, v0

    goto/16 :goto_a

    :cond_10
    const v10, 0x3e99999a    # 0.3f

    const/4 v15, 0x4

    if-ne v0, v15, :cond_14

    const-string v0, "nt_lettera_mono.otf"

    invoke-static {v8, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    int-to-float v2, v3

    mul-float v3, v2, v14

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-static {v0, v13, v3, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v3, "%02d:%02d"

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->riseMin:I

    const/16 v8, 0x3c

    div-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v5, v14

    iget v6, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->riseMin:I

    rem-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x1

    aput-object v6, v5, v14

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    mul-float v5, v2, v10

    mul-float v6, v2, v41

    invoke-virtual {v12, v3, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v3, "%02d:%02d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v10, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->setMin:I

    div-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v1, v16

    iget v10, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->setMin:I

    rem-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x1

    aput-object v10, v1, v14

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v3, v9

    sub-float/2addr v3, v5

    invoke-virtual {v12, v1, v3, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-float v0, v2, v23

    const v1, 0x3e75c28f    # 0.24f

    mul-float/2addr v1, v2

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v14}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v9, 0x6e

    invoke-static {v13, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->alpha(II)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    move v9, v5

    :goto_d
    cmpg-float v10, v9, v3

    if-gtz v10, :cond_11

    const v10, 0x3c449ba6    # 0.012f

    mul-float/2addr v10, v2

    invoke-virtual {v12, v9, v0, v10, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float v10, v2, v22

    add-float/2addr v9, v10

    goto :goto_d

    :cond_11
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move/from16 v9, v16

    :goto_e
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    const v10, 0x3e8f5c29    # 0.28f

    const v16, 0x3fc7ae14    # 1.56f

    const v4, -0x4170a3d7    # -0.28f

    if-gt v9, v8, :cond_13

    int-to-float v8, v9

    mul-float v8, v8, v16

    const/high16 v17, 0x42700000    # 60.0f

    div-float v8, v8, v17

    add-float/2addr v4, v8

    sub-float v8, v3, v5

    add-float/2addr v10, v4

    mul-float/2addr v8, v10

    div-float v8, v8, v16

    add-float/2addr v8, v5

    move/from16 v43, v8

    float-to-double v7, v4

    mul-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v4, v1

    sub-float v4, v0, v4

    if-nez v9, :cond_12

    move/from16 v7, v43

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_f

    :cond_12
    move/from16 v7, v43

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_f
    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x3c

    goto :goto_e

    :cond_13
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v8, 0x3c75c28f    # 0.015f

    mul-float/2addr v8, v2

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v8, 0x96

    invoke-static {v13, v8}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->alpha(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v12, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v6, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->nowMin:I

    iget v7, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->riseMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->setMin:I

    iget v8, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->riseMin:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3fa3d70a    # 1.28f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    move/from16 v7, v31

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sub-float/2addr v3, v5

    add-float v7, v4, v10

    mul-float/2addr v3, v7

    div-float v3, v3, v16

    add-float/2addr v3, v5

    float-to-double v4, v4

    mul-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    const v1, 0x3d6147ae    # 0.055f

    mul-float/2addr v1, v2

    invoke-virtual {v12, v3, v0, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v30

    :cond_14
    const/16 v16, 0x0

    move/from16 v7, v31

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1e

    iget v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->aqi:I

    if-gez v0, :cond_15

    move/from16 v1, v16

    goto :goto_10

    :cond_15
    const/16 v2, 0x32

    if-gt v0, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_10

    :cond_16
    const/16 v2, 0x64

    if-gt v0, v2, :cond_17

    goto :goto_10

    :cond_17
    const/16 v1, 0x96

    if-gt v0, v1, :cond_18

    move v1, v6

    goto :goto_10

    :cond_18
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_19

    move v1, v15

    goto :goto_10

    :cond_19
    const/16 v1, 0x12c

    if-gt v0, v1, :cond_1a

    move v1, v4

    goto :goto_10

    :cond_1a
    const/4 v1, 0x6

    :goto_10
    const-string v22, "--"

    const-string v23, "Good"

    const-string v24, "Moderate"

    const-string v25, "Sensitive"

    const-string v26, "Unhealthy"

    const-string v27, "Very unhealthy"

    const-string v28, "Hazardous"

    filled-new-array/range {v22 .. v28}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "nt_lettera_mono.otf"

    invoke-static {v8, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    int-to-float v3, v3

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v6, v3

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move/from16 v11, v42

    invoke-static {v4, v11, v6, v8}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v4

    const-string v8, "AQI"

    mul-float/2addr v10, v3

    mul-float v11, v3, v41

    invoke-virtual {v12, v8, v10, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v4, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->NUM:Landroid/graphics/Typeface;

    mul-float v8, v3, v18

    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-static {v4, v13, v8, v14}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v4

    if-gez v0, :cond_1b

    const-string v0, "--"

    goto :goto_11

    :cond_1b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    mul-float v8, v3, v37

    invoke-virtual {v12, v0, v10, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v0, v9

    sub-float v4, v0, v10

    sget-object v8, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->LIGHT:Landroid/graphics/Typeface;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-static {v8, v13, v6, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v6

    aget-object v2, v2, v1

    const v8, 0x3ed70a3d    # 0.42f

    mul-float/2addr v0, v8

    invoke-static {v6, v2, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->ellipsize(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v4, v11, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    const v6, 0x3d3851ec    # 0.045f

    mul-float/2addr v6, v3

    mul-float/2addr v5, v3

    :goto_12
    const/4 v8, 0x6

    if-gt v2, v8, :cond_21

    if-ne v2, v1, :cond_1c

    move v14, v7

    goto :goto_13

    :cond_1c
    const/16 v9, 0x5a

    invoke-static {v13, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->alpha(II)I

    move-result v14

    :goto_13
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v9, v8, v2

    int-to-float v8, v9

    mul-float/2addr v8, v5

    sub-float v8, v4, v8

    sub-float/2addr v8, v6

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v9, v3

    if-ne v2, v1, :cond_1d

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v11, v6, v10

    goto :goto_14

    :cond_1d
    const/high16 v10, 0x3fc00000    # 1.5f

    move v11, v6

    :goto_14
    invoke-virtual {v12, v8, v9, v11, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1f

    iget-wide v0, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->temp:D

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->t(D)Ljava/lang/String;

    move-result-object v15

    mul-float v0, v36, v19

    mul-float v1, v36, v18

    invoke-static {v15, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->fitTemp(Ljava/lang/String;FF)F

    move-result v18

    int-to-float v0, v9

    div-float v16, v0, v17

    int-to-float v0, v3

    div-float v0, v0, v17

    const v1, 0x3eb33333    # 0.35f

    mul-float v1, v1, v18

    goto/16 :goto_8

    :cond_1f
    const/4 v1, 0x7

    if-ne v0, v1, :cond_20

    int-to-float v0, v9

    div-float v4, v0, v17

    int-to-float v0, v3

    div-float v5, v0, v17

    mul-float v6, v36, v39

    move-object v0, v8

    move-object v1, v12

    move v3, v4

    goto/16 :goto_7

    :cond_20
    const-string v2, "rainy"

    int-to-float v0, v9

    div-float v7, v0, v17

    int-to-float v9, v3

    mul-float v4, v9, v18

    mul-float v5, v36, v20

    move-object v0, v8

    move-object v1, v12

    move v3, v7

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->icon(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->NUM:Landroid/graphics/Typeface;

    mul-float v1, v36, v14

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-static {v0, v13, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v11, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->pop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-float v2, v9, v37

    invoke-virtual {v12, v1, v7, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_21
    return-object v30
.end method

.method static t(D)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static temp(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint$Align;I)V
    .locals 4

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->NUM:Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-static {v0, p6, p4, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p5, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne p5, v3, :cond_1

    const/high16 p5, 0x40000000    # 2.0f

    div-float p5, v2, p5

    sub-float/2addr p2, p5

    goto :goto_0

    :cond_1
    sub-float/2addr p2, v2

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p5, 0x1

    invoke-direct {p1, p5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setColor(I)V

    const p5, 0x3df5c28f    # 0.12f

    mul-float/2addr p5, p4

    add-float/2addr p2, v1

    const p6, 0x3e3851ec    # 0.18f

    mul-float/2addr p6, p4

    add-float/2addr p2, p6

    const p6, 0x3f147ae1    # 0.58f

    mul-float/2addr p6, p4

    sub-float/2addr p3, p6

    const/4 p6, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge p6, v0, :cond_2

    int-to-double v0, p6

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p5

    add-float/2addr v2, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p5

    add-float/2addr v0, p3

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, p4

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static tempW(Ljava/lang/String;F)F
    .locals 3

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->NUM:Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->p(Landroid/graphics/Typeface;IFLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    const v0, 0x3eb851ec    # 0.36f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    return p0
.end method

.method static tile(Landroid/graphics/Canvas;IFFFFF)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p6, p6, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
