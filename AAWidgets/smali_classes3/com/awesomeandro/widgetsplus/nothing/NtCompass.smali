.class public Lcom/awesomeandro/widgetsplus/nothing/NtCompass;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# static fields
.field static final TOGGLE:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.COMPASS_TOGGLE"

.field static volatile deg:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method

.method static dr(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt_cp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "btc"

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtStyle;->style(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "drawable"

    invoke-static {p0, p1, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static push(Landroid/content/Context;)V
    .locals 11

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {p0, v0, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v6

    const-string v7, "nt_photo"

    invoke-static {p0, v7}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v7

    const-string v8, "nt_photo"

    const-string v9, "id"

    invoke-static {p0, v8, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    aget v9, v6, v3

    const/4 v10, 0x1

    aget v6, v6, v10

    sget v10, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->deg:F

    invoke-static {p0, v9, v6, v10}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->render(Landroid/content/Context;IIF)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5, v7}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static render(Landroid/content/Context;IIF)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const-string v3, "nt_bg"

    invoke-static {p0, v3}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    cmpg-float v1, p3, v4

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr p3, v1

    :cond_0
    const-string v1, "direction_all"

    const/high16 v3, 0x43b20000    # 356.0f

    cmpl-float v3, p3, v3

    const/high16 v4, 0x42ac0000    # 86.0f

    const/4 v5, 0x0

    if-gtz v3, :cond_5

    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float v2, p3, v4

    if-lez v2, :cond_3

    const/high16 v2, 0x42bc0000    # 94.0f

    cmpg-float v2, p3, v2

    if-gez v2, :cond_3

    const-string v1, "direction_east"

    :cond_2
    :goto_0
    move v2, v5

    goto :goto_2

    :cond_3
    const/high16 v2, 0x43300000    # 176.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    const/high16 v2, 0x43380000    # 184.0f

    cmpg-float v2, p3, v2

    if-gez v2, :cond_4

    const-string v1, "direction_south"

    goto :goto_0

    :cond_4
    const/high16 v2, 0x43850000    # 266.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x43890000    # 274.0f

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    const-string v1, "direction_west"

    goto :goto_0

    :cond_5
    :goto_1
    const-string v1, "direction_north"

    :goto_2
    const/high16 v3, 0x432c0000    # 172.0f

    div-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    neg-float p1, p3

    invoke-virtual {v0, p1, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-static {p0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->dr(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p3, 0xac

    invoke-virtual {p1, v5, v5, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    if-eqz v2, :cond_6

    const-string p1, "arrow_red"

    goto :goto_3

    :cond_6
    const-string p1, "arrow"

    :goto_3
    invoke-static {p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->dr(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0x72

    const/16 p3, 0x6a

    const/16 v1, 0x3a

    const/16 v2, 0x42

    invoke-virtual {p0, v2, v1, p3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-object p2
.end method

.method static size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p2, p0, p1

    const/4 v0, 0x1

    aget v1, p0, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x43d20000    # 420.0f

    div-float p2, v1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    aget v2, p0, p1

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, p1

    aget p0, p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, v1, v0

    return-object v1
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object p0

    const-string p2, "nt_photo"

    invoke-static {p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p2

    const-string p3, "nt_photo"

    const-string v0, "id"

    invoke-static {p1, p3, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    sget v1, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->deg:F

    invoke-static {p1, v0, p0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->render(Landroid/content/Context;IIF)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    new-instance p0, Landroid/content/Intent;

    const-string p3, "com.awesomeandro.widgetsplus.nothing.COMPASS_TOGGLE"

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p3, Landroid/content/ComponentName;

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;

    invoke-direct {p3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const-string p3, "nt_root"

    const-string v0, "id"

    invoke-static {p1, p3, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x1e

    const/high16 v1, 0xc000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.awesomeandro.widgetsplus.nothing.COMPASS_TOGGLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    sput-boolean v0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->start(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
