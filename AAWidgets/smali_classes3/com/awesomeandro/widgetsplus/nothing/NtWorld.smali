.class public Lcom/awesomeandro/widgetsplus/nothing/NtWorld;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# static fields
.field static final PREFS:Ljava/lang/String; = "nt_world"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 19

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p3}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-static {v0, v3, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->surface(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v6, "nt_world"

    invoke-virtual {v0, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "London|Europe/London"

    const-string v8, "Tokyo|Asia/Tokyo"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "nt_ndot77jp.ttf"

    invoke-static {v0, v8}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const-string v9, "nt_ndot55.otf"

    invoke-static {v0, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    aget v11, v1, v2

    aget v12, v1, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3df5c28f    # 0.12f

    mul-float/2addr v11, v12

    aget v12, v1, v4

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, v11, v13

    sub-float/2addr v12, v14

    div-float/2addr v12, v13

    const-string v13, "nt_ink"

    invoke-static {v0, v13}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-static {v0, v8, v13}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v8

    const-string v13, "00:00"

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v14, v12

    invoke-static {v8, v13, v1, v14}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->fit(Landroid/graphics/Paint;Ljava/lang/String;FF)F

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "nt_muted"

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v1

    const v9, 0x3e6147ae    # 0.22f

    mul-float/2addr v9, v12

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move v9, v2

    :goto_0
    const/4 v13, 0x2

    if-ge v9, v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v14, p3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget-object v15, v7, v9

    invoke-interface {v6, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "\\|"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v15, v13, v4

    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v15

    const/16 v16, 0xb

    if-eqz v10, :cond_0

    move/from16 v2, v16

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    :goto_1
    invoke-virtual {v15, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    if-nez v10, :cond_1

    if-nez v2, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    const/16 v6, 0xa

    if-ge v2, v6, :cond_2

    const-string v16, "0"

    :goto_2
    move-object/from16 v6, v16

    goto :goto_3

    :cond_2
    const-string v16, ""

    goto :goto_2

    :goto_3
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    if-ge v4, v2, :cond_3

    const-string v2, "0"

    goto :goto_4

    :cond_3
    const-string v2, ""

    :goto_4
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v4, v9

    mul-float/2addr v4, v12

    add-float/2addr v4, v11

    const/4 v6, 0x0

    aget-object v13, v13, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const v15, 0x3e851eb8    # 0.26f

    mul-float/2addr v15, v12

    add-float/2addr v15, v4

    invoke-virtual {v5, v13, v11, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v13, 0x3f6147ae    # 0.88f

    mul-float/2addr v13, v12

    add-float/2addr v4, v13

    invoke-virtual {v5, v2, v11, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    move v2, v6

    const/4 v4, 0x1

    move-object/from16 v6, v17

    goto/16 :goto_0

    :cond_4
    const-string v1, "nt_photo"

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    const-string v2, "nt_photo"

    const-string v4, "id"

    invoke-static {v0, v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;->openClockOnTap(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-object v1
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    const-string p0, "nt_world"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->schedule(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->schedule(Landroid/content/Context;)V

    return-void
.end method
