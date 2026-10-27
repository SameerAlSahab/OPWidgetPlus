.class public Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# static fields
.field static final NEXT:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.QUOTE_NEXT"

.field static final PREFS:Ljava/lang/String; = "nt_quotes"

.field static cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method

.method static declared-synchronized quotes(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->cache:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->cache:Ljava/util/List;

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v4, "nt_quotes.csv"

    invoke-virtual {p0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_4

    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v3, "\"\""

    const-string v4, "\""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "Less, but better."

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    sput-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->cache:Ljava/util/List;

    move-object p0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 23

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->quotes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const-string v2, "nt_quotes"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x16e

    add-int/2addr v4, v5

    const-string v5, "off"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p3}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v2

    aget v4, v2, v3

    aget v5, v2, v6

    invoke-static {v0, v4, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->surface(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aget v7, v2, v3

    aget v8, v2, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v15, v7

    const v7, 0x3de147ae    # 0.11f

    mul-float v14, v15, v7

    const-string v7, "nt_ndot77jp.ttf"

    invoke-static {v0, v7}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "nt_accent"

    invoke-static {v0, v8}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-static {v0, v7, v8}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v7

    const v8, 0x3e851eb8    # 0.26f

    mul-float/2addr v8, v15

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v9, "\""

    const v10, 0x3e2e147b    # 0.17f

    mul-float/2addr v10, v15

    add-float/2addr v10, v14

    invoke-virtual {v5, v9, v14, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v13, Landroid/text/TextPaint;

    const/16 v7, 0x81

    invoke-direct {v13, v7}, Landroid/text/TextPaint;-><init>(I)V

    const-string v7, "nt_ntype82.otf"

    invoke-static {v0, v7}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v7, "nt_ink"

    invoke-static {v0, v7}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/text/TextPaint;->setColor(I)V

    invoke-static {v0, v13}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->shadow(Landroid/content/Context;Landroid/graphics/Paint;)V

    aget v7, v2, v3

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v14

    sub-float/2addr v7, v9

    float-to-int v12, v7

    add-float v11, v14, v8

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float/2addr v2, v11

    sub-float/2addr v2, v14

    const v6, 0x3e051eb8    # 0.13f

    mul-float/2addr v6, v15

    :goto_0
    invoke-virtual {v13, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v10, Landroid/text/StaticLayout;

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x3f866666    # 1.05f

    move-object v7, v10

    move-object v8, v1

    move-object v9, v13

    move-object v3, v10

    move v10, v12

    move/from16 v20, v11

    move-object/from16 v11, v16

    move/from16 v21, v12

    move/from16 v12, v19

    move-object/from16 v16, v13

    move/from16 v13, v17

    move-object/from16 v22, v1

    move v1, v14

    move/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v7, v2

    if-lez v7, :cond_1

    const v7, 0x3d3851ec    # 0.045f

    mul-float/2addr v7, v15

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_0

    goto :goto_1

    :cond_0
    const v3, 0x3f70a3d7    # 0.94f

    mul-float/2addr v6, v3

    move v14, v1

    const/4 v3, 0x0

    move-object/from16 v13, v16

    move-object/from16 v1, v22

    move/from16 v12, v21

    move/from16 v11, v20

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move/from16 v6, v20

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v1, v21

    int-to-float v1, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    const-string v1, "nt_photo"

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    const-string v2, "nt_photo"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.awesomeandro.widgetsplus.nothing.QUOTE_NEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nt_root"

    const-string v4, "id"

    invoke-static {v0, v3, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/high16 v4, 0xc000000

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "com.awesomeandro.widgetsplus.nothing.QUOTE_NEXT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "nt_quotes"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "off"

    const-string v3, "off"

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    add-int/2addr p2, v0

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
