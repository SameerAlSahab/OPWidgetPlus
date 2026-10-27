.class public Lcom/awesomeandro/widgetsplus/nothing/NtDate;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 12

    invoke-static {p1, p2, p3}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object p0

    const/4 p2, 0x0

    aget p3, p0, p2

    const/4 v0, 0x1

    aget v1, p0, v0

    invoke-static {p1, p3, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->surface(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p3

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtStyle;->dateFont(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "nt_lettera_mono.otf"

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    const-string v1, "nt_ntype82.otf"

    goto :goto_0

    :goto_1
    aget v1, p0, p2

    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v10, v1, v2

    invoke-static {p1, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v2, "nt_ink"

    invoke-static {p1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v2

    const-string v1, "00"

    aget v4, p0, p2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v10, v5

    sub-float/2addr v4, v6

    aget v6, p0, v0

    int-to-float v6, v6

    const v11, 0x3f1eb852    # 0.62f

    mul-float/2addr v6, v11

    invoke-static {v2, v1, v4, v6}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->fit(Landroid/graphics/Paint;Ljava/lang/String;FF)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v4, "00"

    aget v1, p0, p2

    int-to-float v1, v1

    div-float v5, v1, v5

    aget v1, p0, v0

    int-to-float v1, v1

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v1

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;FF)V

    invoke-static {p1, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v2, "nt_accent"

    invoke-static {p1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v1

    aget v2, p0, p2

    aget v0, p0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p0, v10

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p2, v0

    add-float/2addr p2, v10

    invoke-virtual {v7, v8, p0, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string p0, "nt_photo"

    invoke-static {p1, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtDate;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p0

    const-string p2, "nt_photo"

    const-string v0, "id"

    invoke-static {p1, p2, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtDate;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const-string p2, "android.intent.action.MAIN"

    const-string p3, "android.intent.category.APP_CALENDAR"

    invoke-static {p2, p3}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "nt_root"

    const-string v0, "id"

    invoke-static {p1, p3, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtDate;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/high16 v0, 0xc000000

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p0
.end method
