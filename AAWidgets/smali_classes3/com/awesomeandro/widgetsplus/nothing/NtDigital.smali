.class public Lcom/awesomeandro/widgetsplus/nothing/NtDigital;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 18

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p3}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-static {v0, v3, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->surface(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    const/16 v7, 0xa

    const/16 v8, 0xb

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xc

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    move v8, v9

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v8, v7, :cond_2

    const-string v10, "0"

    goto :goto_1

    :cond_2
    const-string v10, ""

    :goto_1
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v5, v7, :cond_3

    const-string v7, "0"

    goto :goto_2

    :cond_3
    const-string v7, ""

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v5, "nt_ndot77jp.ttf"

    invoke-static {v0, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    const-string v6, "nt_ink"

    invoke-static {v0, v6}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v13

    aget v5, v1, v4

    int-to-float v5, v5

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v5, v14

    const-string v5, "00"

    aget v6, v1, v2

    int-to-float v6, v6

    const v7, 0x3f428f5c    # 0.76f

    mul-float/2addr v6, v7

    const v7, 0x3f3d70a4    # 0.74f

    mul-float/2addr v7, v15

    invoke-static {v13, v5, v6, v7}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->fit(Landroid/graphics/Paint;Ljava/lang/String;FF)F

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v9, "00"

    aget v5, v1, v2

    int-to-float v5, v5

    div-float v10, v5, v14

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v15

    aget v6, v1, v4

    int-to-float v6, v6

    const v16, 0x3ca3d70a    # 0.02f

    mul-float v6, v6, v16

    add-float v17, v5, v6

    move-object v5, v11

    move-object v6, v13

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move/from16 v10, v17

    invoke-static/range {v5 .. v10}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;FF)V

    const-string v8, "00"

    aget v2, v1, v2

    int-to-float v2, v2

    div-float v9, v2, v14

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v15

    aget v1, v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v16

    sub-float v10, v2, v1

    move-object v7, v12

    invoke-static/range {v5 .. v10}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;FF)V

    const-string v1, "nt_photo"

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDigital;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    const-string v2, "nt_photo"

    const-string v4, "id"

    invoke-static {v0, v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtDigital;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDigital;->openClockOnTap(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-object v1
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
