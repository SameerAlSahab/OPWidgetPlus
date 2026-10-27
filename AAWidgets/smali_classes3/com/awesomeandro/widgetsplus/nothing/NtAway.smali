.class public Lcom/awesomeandro/widgetsplus/nothing/NtAway;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# static fields
.field static final NEXT:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.AWAY_NEXT"

.field static final PREFS:Ljava/lang/String; = "nt_away"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method

.method static dayKey(J)I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static fmt(J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0xea60

    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, p0, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sample(Landroid/content/Context;)V
    .locals 13

    const-string v0, "nt_away"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "wasOn"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "lastOn"

    invoke-interface {v0, v5, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    if-eqz p0, :cond_3

    sub-long v5, v2, v5

    if-nez v4, :cond_2

    const-wide/32 v8, 0xea60

    cmp-long v4, v5, v8

    if-ltz v4, :cond_2

    invoke-static {v2, v3}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->dayKey(J)I

    move-result v4

    const-string v8, "day"

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-wide/16 v9, 0x0

    if-ne v8, v4, :cond_0

    const-string v8, "total"

    invoke-interface {v0, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v9

    :goto_0
    const-string v8, "day"

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, "longest"

    invoke-interface {v0, v1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    :cond_1
    const-string v0, "day"

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "total"

    add-long/2addr v11, v5

    invoke-interface {v0, v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "longest"

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v0, "lastOn"

    invoke-interface {v7, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string v0, "wasOn"

    invoke-interface {v7, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "nt_away"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "day"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->dayKey(J)I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    const-string v6, "mode"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-ne v6, v7, :cond_2

    if-eqz v5, :cond_1

    const-string v3, "longest"

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    :cond_1
    const-string v1, "Longest"

    goto :goto_3

    :cond_2
    if-ne v6, v10, :cond_4

    if-eqz v5, :cond_3

    const-string v3, "total"

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    :cond_3
    const-string v1, "Today"

    goto :goto_3

    :cond_4
    const-string v5, "wasOn"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, "last"

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    :goto_1
    move-wide v8, v3

    goto :goto_2

    :cond_5
    const-string v5, "lastOn"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_1

    :goto_2
    const-string v1, "Away"

    :goto_3
    invoke-static/range {p1 .. p3}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v3

    aget v4, v3, v2

    aget v5, v3, v7

    invoke-static {v0, v4, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->surface(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aget v6, v3, v2

    aget v11, v3, v7

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    const v11, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, v11

    const-string v11, "nt_ntype82.otf"

    invoke-static {v0, v11}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    const-string v12, "nt_ink"

    invoke-static {v0, v12}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-static {v0, v11, v12}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v11

    aget v12, v3, v7

    int-to-float v12, v12

    const v13, 0x3ecccccd    # 0.4f

    mul-float/2addr v12, v13

    const-string v13, "00h 00m"

    aget v14, v3, v2

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v6

    sub-float/2addr v14, v15

    aget v15, v3, v7

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    invoke-static {v11, v13, v14, v15}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->fit(Landroid/graphics/Paint;Ljava/lang/String;FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {v8, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->fmt(J)Ljava/lang/String;

    move-result-object v8

    aget v9, v3, v7

    int-to-float v9, v9

    const v12, 0x3f051eb8    # 0.52f

    mul-float/2addr v9, v12

    invoke-virtual {v5, v8, v6, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v8, "nt_lettera_mono.otf"

    invoke-static {v0, v8}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const-string v9, "nt_muted"

    invoke-static {v0, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-static {v0, v8, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v8

    aget v9, v3, v7

    int-to-float v9, v9

    const v11, 0x3e3851ec    # 0.18f

    mul-float/2addr v9, v11

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v9, v3, v7

    int-to-float v9, v9

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v11

    invoke-virtual {v5, v1, v6, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v1, "nt_muted"

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x0

    invoke-static {v0, v8, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v1

    aget v8, v3, v7

    int-to-float v8, v8

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    aget v3, v3, v2

    int-to-float v3, v3

    sub-float/2addr v3, v6

    sub-float/2addr v3, v8

    add-float/2addr v6, v8

    const v11, 0x3e051eb8    # 0.13f

    mul-float/2addr v11, v8

    invoke-virtual {v5, v3, v6, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_4
    const/16 v12, 0x8

    if-ge v2, v12, :cond_7

    int-to-double v12, v2

    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v12, v14

    move v14, v7

    :goto_5
    if-gt v14, v10, :cond_6

    move/from16 v17, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v8

    int-to-float v11, v14

    const v15, 0x3ee66666    # 0.45f

    mul-float/2addr v11, v15

    add-float/2addr v11, v9

    mul-float/2addr v10, v11

    add-float/2addr v10, v3

    move/from16 v18, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v8

    mul-float/2addr v9, v11

    add-float/2addr v9, v6

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-virtual {v5, v11, v9, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    move v11, v10

    const/4 v10, 0x2

    const v9, 0x3dcccccd    # 0.1f

    goto :goto_5

    :cond_6
    move v10, v11

    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    const v9, 0x3dcccccd    # 0.1f

    goto :goto_4

    :cond_7
    const-string v1, "nt_photo"

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    const-string v2, "nt_photo"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.awesomeandro.widgetsplus.nothing.AWAY_NEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/awesomeandro/widgetsplus/nothing/NtAway;

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nt_root"

    const-string v4, "id"

    invoke-static {v0, v3, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/high16 v4, 0xc000000

    const/4 v5, 0x5

    invoke-static {v0, v5, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v1
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->schedule(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "com.awesomeandro.widgetsplus.nothing.AWAY_NEXT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "nt_away"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode"

    const-string v3, "mode"

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtAway;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtAway;->sample(Landroid/content/Context;)V

    invoke-super {p0, p1, p2, p3}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->schedule(Landroid/content/Context;)V

    return-void
.end method
