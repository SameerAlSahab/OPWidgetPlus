.class public Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method

.method static file(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntphoto_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static isCircle(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NtPhotoCircle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p2, p1

    :cond_0
    return p2
.end method

.method static make(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)Landroid/widget/RemoteViews;
    .locals 3

    const-string v0, "nt_photo"

    invoke-static {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    const-string v1, "nt_photo"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p1, p2, p3}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->render(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/content/ComponentName;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtPhotoConfigActivity;

    invoke-direct {p3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "appWidgetId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "nt_root"

    const-string v1, "id"

    invoke-static {p0, p3, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/high16 v1, 0xc000000

    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method static render(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const-string v5, "appWidgetMinWidth"

    const/16 v6, 0x6e

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/4 v7, 0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-string v8, "appWidgetMinHeight"

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz p3, :cond_0

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    :cond_0
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x44200000    # 640.0f

    div-float v4, v6, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v4, "nt_bg"

    invoke-static {v0, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v6, "nt_muted"

    invoke-static {v0, v6}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v14, Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-direct {v14, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3d23d70a    # 0.04f

    mul-float/2addr v9, v10

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v11

    new-instance v11, Landroid/graphics/RectF;

    int-to-float v12, v5

    int-to-float v13, v3

    const/4 v7, 0x0

    invoke-direct {v11, v7, v7, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v16, v8

    sub-float v8, v12, v9

    move/from16 v17, v3

    sub-float v3, v13, v9

    invoke-direct {v7, v9, v9, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_1

    invoke-virtual {v15, v11, v14}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v15, v11, v10, v10, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->file(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->file(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    if-nez v4, :cond_3

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    div-float v1, v12, v0

    div-float v0, v13, v0

    move/from16 v2, v17

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v3

    sub-float v10, v1, v2

    add-float v12, v1, v2

    move-object v9, v15

    move v11, v0

    move v13, v0

    move-object v3, v14

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v11, v0, v2

    add-float v13, v0, v2

    move v10, v1

    move v12, v1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-object v16

    :cond_3
    move-object v3, v14

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v1, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v5, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v8, v1

    float-to-int v11, v5

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v14, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float v0, v1, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v0, v0, v17

    move-object/from16 v18, v12

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v6, v12

    sub-float v6, v5, v6

    div-float v6, v6, v17

    invoke-virtual {v14, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v13, v4, v14, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p3, :cond_4

    invoke-virtual {v4, v11, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    sub-float v1, v10, v9

    invoke-virtual {v4, v11, v1, v1, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v8}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v2, v18

    invoke-virtual {v15, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v16
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 0

    instance-of p0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtPhotoCircle;

    invoke-static {p1, p2, p3, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->make(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p2, v0

    invoke-static {p1, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtPhoto;->file(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
