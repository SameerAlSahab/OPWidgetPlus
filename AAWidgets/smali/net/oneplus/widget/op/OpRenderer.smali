.class public final Lnet/oneplus/widget/op/OpRenderer;
.super Ljava/lang/Object;
.source "OpRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/widget/op/OpRenderer$Line;
    }
.end annotation


# static fields
.field private static final CAP:F = 0.72f

.field private static final DESC:F = 0.2f

.field public static final KIND_CLOCK:I = 0x0

.field public static final KIND_WEATHER:I = 0x1

.field public static final KIND_WEATHER_CLOCK:I = 0x2

.field private static final RED:I = -0x10000

.field private static final SHADOW:I = 0x40000000

.field private static final WHITE:I = -0x1

.field private static final sFonts:[Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lnet/oneplus/widget/op/OpSettings;->FILES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Typeface;

    sput-object v0, Lnet/oneplus/widget/op/OpRenderer;->sFonts:[Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawLine(Landroid/graphics/Paint;Landroid/graphics/Canvas;Lnet/oneplus/widget/op/OpRenderer$Line;FFFFIZZ[F)V
    .locals 17

    .prologue
    const/16 p10, 0x0

    .line 225
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->red:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->redUntil:I

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    move v11, v3

    .line 226
    :goto_0
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->red:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v12, v3

    .line 227
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    .line 228
    const/4 v13, 0x0

    .line 229
    if-eqz p10, :cond_4

    const/4 v3, 0x1

    aget v3, p10, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 230
    const/4 v4, 0x5

    .line 231
    new-array v8, v4, [I

    .line 232
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    .line 233
    const/4 v5, 0x0

    aget v5, p10, v5

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v5, v6

    int-to-float v6, v3

    const/high16 v7, 0x428c0000    # 70.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    add-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    .line 234
    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v5, 0x1

    const v7, 0x3f59999a    # 0.85f

    aput v7, v6, v5

    const/4 v5, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v5

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/4 v6, 0x1

    aget v6, p10, v6

    move/from16 v0, p7

    invoke-static {v0, v5, v6}, Lnet/oneplus/widget/op/OpRenderer;->lerp(IIF)I

    move-result v5

    aput v5, v8, v3

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 225
    :cond_0
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    .line 226
    :cond_1
    move-object/from16 v0, p2

    iget v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->redUntil:I

    if-gez v3, :cond_2

    move-object/from16 v0, p2

    iget-object v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v12, v3

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    iget v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->redUntil:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v12, v3

    goto :goto_1

    .line 236
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget-object v4, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 237
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    add-float v6, p3, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v4, p3

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v13, v3

    .line 239
    :cond_4
    if-eqz p8, :cond_8

    const/4 v3, 0x3

    move v10, v3

    .line 240
    :goto_3
    const/4 v3, 0x0

    move v15, v3

    :goto_4
    if-ge v15, v10, :cond_14

    .line 241
    add-int/lit8 v3, v10, -0x1

    if-ne v15, v3, :cond_9

    const/4 v3, 0x1

    move v14, v3

    .line 242
    :goto_5
    if-nez v14, :cond_b

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 244
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v15, :cond_a

    const v3, 0x3e23d70a    # 0.16f

    :goto_6
    mul-float v3, v3, v16

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v3, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 250
    :goto_7
    if-eqz p8, :cond_7

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v14, :cond_5

    const v3, 0x3c75c28f    # 0.015f

    mul-float v3, v3, v16

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_9

    :cond_5
    if-nez v15, :cond_6

    const v3, 0x3da3d70a    # 0.08f

    goto :goto_8

    :cond_6
    const v3, 0x3d0f5c29    # 0.035f

    :goto_8
    mul-float v3, v3, v16

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_a

    :cond_7
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_a
    const/4 v5, 0x0

    :goto_b
    move-object/from16 v0, p2

    iget-object v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v5, v3, :cond_13

    .line 251
    move-object/from16 v0, p2

    iget-object v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 252
    move-object/from16 v0, p2

    iget-object v4, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    add-float v7, p3, v4

    .line 253
    if-eqz v11, :cond_e

    if-eqz p9, :cond_e

    move-object/from16 v0, p2

    iget v3, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->redUntil:I

    add-int/lit8 v3, v3, -0x1

    if-ne v5, v3, :cond_d

    const/4 v3, 0x1

    move v6, v3

    .line 254
    :goto_c
    if-eqz v6, :cond_10

    const/high16 v3, -0x10000

    .line 255
    :goto_d
    if-nez v14, :cond_15

    const v4, 0xffffff

    and-int/2addr v4, v3

    if-nez v15, :cond_11

    const/high16 v3, -0x50000000

    :goto_e
    or-int/2addr v3, v4

    move v4, v3

    .line 256
    :goto_f
    if-eqz v6, :cond_12

    const/4 v3, 0x0

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    move-object/from16 v0, p2

    iget-object v4, v0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-object/from16 v9, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 239
    :cond_8
    const/4 v3, 0x1

    move v10, v3

    goto/16 :goto_3

    .line 241
    :cond_9
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_5

    .line 244
    :cond_a
    const v3, 0x3d75c28f    # 0.06f

    goto/16 :goto_6

    .line 247
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 248
    if-eqz p8, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto/16 :goto_7

    :cond_c
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_7

    .line 253
    :cond_d
    const/4 v3, 0x0

    move v6, v3

    goto :goto_c

    :cond_e
    const/16 v4, 0x31

    if-ne v3, v4, :cond_f

    if-ge v5, v12, :cond_f

    const/4 v3, 0x1

    move v6, v3

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    move v6, v3

    goto :goto_c

    :cond_10
    move/from16 v3, p7

    .line 254
    goto :goto_d

    .line 255
    :cond_11
    const/high16 v3, -0x40000000    # -2.0f

    goto :goto_e

    :cond_12
    move-object v3, v13

    .line 256
    goto :goto_10

    .line 240
    :cond_13
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_4

    .line 261
    :cond_14
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 262
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 263
    return-void

    :cond_15
    move v4, v3

    goto :goto_f
.end method

.method private static fmt(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    :try_start_0
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string v0, "EEEE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EEEE, MMMM d"

    goto :goto_0

    :cond_0
    const-string v0, "MMMM d"

    goto :goto_0
.end method

.method public static declared-synchronized font(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lnet/oneplus/widget/op/OpRenderer;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fontIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lnet/oneplus/widget/op/OpRenderer;->font(Landroid/content/Context;I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized font(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 5

    .prologue
    .line 44
    const-class v1, Lnet/oneplus/widget/op/OpRenderer;

    monitor-enter v1

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lnet/oneplus/widget/op/OpRenderer;->sFonts:[Landroid/graphics/Typeface;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 45
    :cond_1
    sget-object v0, Lnet/oneplus/widget/op/OpRenderer;->sFonts:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 47
    :try_start_1
    sget-object v0, Lnet/oneplus/widget/op/OpRenderer;->sFonts:[Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/oneplus/widget/op/OpSettings;->FILES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_2
    :goto_0
    :try_start_2
    sget-object v0, Lnet/oneplus/widget/op/OpRenderer;->sFonts:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_3
    sget-object v0, Lnet/oneplus/widget/op/OpRenderer;->sFonts:[Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v2, v0, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static lerp(IIF)I
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 217
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    sub-float v1, v3, p2

    mul-float/2addr v0, v1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 218
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    sub-float v2, v3, p2

    mul-float/2addr v1, v2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 219
    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    and-int/lit16 v3, p1, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 220
    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private static notEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 276
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static render(Landroid/content/Context;IFFFLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 84
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lnet/oneplus/widget/op/OpRenderer;->render(Landroid/content/Context;IFFFLjava/lang/String;Ljava/lang/String;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static render(Landroid/content/Context;IFFFLjava/lang/String;Ljava/lang/String;[F)Landroid/graphics/Bitmap;
    .locals 21

    .prologue
    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 91
    mul-float v11, v1, p4

    .line 92
    const/16 v1, 0x8

    mul-float v2, p2, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 93
    const/16 v1, 0x8

    mul-float v2, p3, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v12, v1

    .line 97
    :goto_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 99
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 100
    new-instance v2, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    const-string v1, "HH"

    :goto_1
    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 101
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "mm"

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 103
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 104
    const-string v1, "MMMMd"

    invoke-static {v3, v1, v5}, Lnet/oneplus/widget/op/OpRenderer;->fmt(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v1, "EEEEMMMMd"

    invoke-static {v3, v1, v5}, Lnet/oneplus/widget/op/OpRenderer;->fmt(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 151
    const/high16 v9, 0x42200000    # 40.0f

    .line 152
    const/4 v1, 0x3

    new-array v10, v1, [Lnet/oneplus/widget/op/OpRenderer$Line;

    const/4 v1, 0x0

    new-instance v3, Lnet/oneplus/widget/op/OpRenderer$Line;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v3, v10, v1

    const/4 v1, 0x1

    new-instance v3, Lnet/oneplus/widget/op/OpRenderer$Line;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f6b851f    # 0.92f

    const/4 v7, 0x1

    .line 154
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    move-object v4, v14

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v3, v10, v1

    const/4 v7, 0x2

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const v3, 0x3e8f5c29    # 0.28f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v10, v7

    move v2, v9

    move-object v13, v10

    .line 161
    :goto_2
    new-instance v1, Landroid/graphics/Paint;

    const/16 v3, 0xc1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 162
    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpRenderer;->font(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 164
    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_a

    const/high16 v3, 0x41100000    # 9.0f

    :goto_3
    mul-float v17, v3, v11

    .line 165
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 169
    const/4 v4, 0x0

    .line 170
    array-length v6, v13

    const/4 v3, 0x0

    move v5, v4

    :goto_4
    if-ge v3, v6, :cond_b

    aget-object v4, v13, v3

    .line 171
    const/high16 v7, 0x42c80000    # 100.0f

    iget v8, v4, Lnet/oneplus/widget/op/OpRenderer$Line;->size:F

    mul-float/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v7, v4, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v4, v4, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v1, v7, v8, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 173
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 170
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_4

    .line 96
    :cond_0
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_0

    .line 100
    :cond_1
    const-string v1, "h"

    goto/16 :goto_1

    .line 111
    :pswitch_0
    const/high16 v8, 0x42500000    # 52.0f

    .line 112
    invoke-static/range {p5 .. p5}, Lnet/oneplus/widget/op/OpRenderer;->notEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static/range {p6 .. p6}, Lnet/oneplus/widget/op/OpRenderer;->notEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 113
    :goto_5
    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->showSlogan(Landroid/content/Context;)Z

    move-result v2

    .line 114
    if-eqz v1, :cond_4

    .line 115
    if-eqz v12, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    :goto_6
    const/4 v1, 0x3

    new-array v7, v1, [Lnet/oneplus/widget/op/OpRenderer$Line;

    const/4 v10, 0x0

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v10

    const/4 v10, 0x1

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const v3, 0x3e75c28f    # 0.24f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, p5

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v10

    const/4 v10, 0x2

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const v3, 0x3e75c28f    # 0.24f

    const v4, 0x3e9eb852    # 0.31f

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v9

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v10

    move v2, v8

    move-object v13, v7

    .line 121
    goto/16 :goto_2

    .line 112
    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    .line 115
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 122
    :cond_4
    if-eqz v2, :cond_5

    const/4 v1, 0x3

    new-array v7, v1, [Lnet/oneplus/widget/op/OpRenderer$Line;

    const/4 v10, 0x0

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const-string v2, "Never"

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    .line 123
    invoke-virtual {v1}, Lnet/oneplus/widget/op/OpRenderer$Line;->s()Lnet/oneplus/widget/op/OpRenderer$Line;

    move-result-object v1

    aput-object v1, v7, v10

    const/4 v10, 0x1

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const-string v2, "Settle"

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f147ae1    # 0.58f

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    .line 124
    invoke-virtual {v1}, Lnet/oneplus/widget/op/OpRenderer$Line;->s()Lnet/oneplus/widget/op/OpRenderer$Line;

    move-result-object v1

    aput-object v1, v7, v10

    const/4 v10, 0x2

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const v3, 0x3e75c28f    # 0.24f

    const v4, 0x3eb851ec    # 0.36f

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v9

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v10

    move-object v1, v7

    :goto_7
    move v2, v8

    move-object v13, v1

    .line 130
    goto/16 :goto_2

    .line 126
    :cond_5
    const/4 v1, 0x1

    new-array v7, v1, [Lnet/oneplus/widget/op/OpRenderer$Line;

    const/4 v10, 0x0

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v9

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v10

    move-object v1, v7

    goto :goto_7

    .line 133
    :pswitch_1
    const/high16 v8, 0x42200000    # 40.0f

    .line 135
    invoke-static/range {p5 .. p5}, Lnet/oneplus/widget/op/OpRenderer;->notEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {p6 .. p6}, Lnet/oneplus/widget/op/OpRenderer;->notEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v12, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00b0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 140
    :goto_9
    if-eqz v9, :cond_9

    const/4 v1, 0x3

    new-array v7, v1, [Lnet/oneplus/widget/op/OpRenderer$Line;

    const/4 v10, 0x0

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const v3, 0x3ed70a3d    # 0.42f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v10

    const/4 v10, 0x1

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f147ae1    # 0.58f

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v9

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    .line 142
    invoke-virtual {v1}, Lnet/oneplus/widget/op/OpRenderer$Line;->s()Lnet/oneplus/widget/op/OpRenderer$Line;

    move-result-object v1

    aput-object v1, v7, v10

    const/4 v9, 0x2

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f7ae148    # 0.98f

    const/4 v5, 0x1

    .line 143
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    move-object v2, v14

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v9

    move-object v1, v7

    :goto_a
    move v2, v8

    move-object v13, v1

    .line 148
    goto/16 :goto_2

    .line 136
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u00b0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 138
    :cond_7
    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->showSlogan(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Never Settle"

    :goto_b
    move-object v9, v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    .line 144
    :cond_9
    const/4 v1, 0x2

    new-array v7, v1, [Lnet/oneplus/widget/op/OpRenderer$Line;

    const/4 v9, 0x0

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const v3, 0x3ed70a3d    # 0.42f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v9

    const/4 v9, 0x1

    new-instance v1, Lnet/oneplus/widget/op/OpRenderer$Line;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f7ae148    # 0.98f

    const/4 v5, 0x1

    .line 146
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    move-object v2, v14

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/widget/op/OpRenderer$Line;-><init>(Ljava/lang/String;FFZI)V

    aput-object v1, v7, v9

    move-object v1, v7

    goto :goto_a

    .line 164
    :cond_a
    const/high16 v3, 0x40800000    # 4.0f

    goto/16 :goto_3

    .line 175
    :cond_b
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    aget-object v4, v13, v4

    iget v4, v4, Lnet/oneplus/widget/op/OpRenderer$Line;->size:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget-object v3, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    aget-object v6, v13, v6

    iget-object v6, v6, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v1, v3, v4, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 177
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v4, v3

    .line 178
    array-length v3, v13

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v13, v3

    .line 179
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->size:F

    mul-float/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    iget-object v6, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v3, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v1, v6, v7, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 181
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 183
    const/4 v3, 0x1

    :goto_c
    array-length v7, v13

    if-ge v3, v7, :cond_c

    const/high16 v7, 0x42c80000    # 100.0f

    aget-object v8, v13, v3

    iget v8, v8, Lnet/oneplus/widget/op/OpRenderer$Line;->pitch:F

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 184
    :cond_c
    add-float v3, v4, v6

    .line 186
    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v11

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 187
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v11

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 188
    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v8, v8, v17

    sub-float/2addr v4, v8

    sub-float/2addr v4, v6

    const/high16 v8, 0x40800000    # 4.0f

    sub-float/2addr v4, v8

    .line 189
    int-to-float v8, v15

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v9, v9, v17

    sub-float/2addr v8, v9

    sub-float/2addr v8, v6

    .line 190
    const/high16 v9, 0x438a0000    # 276.0f

    div-float v9, p2, v9

    const/high16 v10, 0x42dc0000    # 110.0f

    div-float v10, p3, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v2, v9

    mul-float/2addr v2, v11

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    div-float v3, v8, v3

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 191
    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_15

    const/high16 v2, 0x40800000    # 4.0f

    move v14, v2

    .line 193
    :goto_d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v15, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 194
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget v3, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->size:F

    mul-float/2addr v3, v14

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget-object v3, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v13, v5

    iget-object v5, v5, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 198
    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->redHour(Landroid/content/Context;)Z

    move-result v10

    .line 199
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v5, v17, v3

    .line 200
    const/4 v3, 0x0

    move v15, v3

    :goto_e
    array-length v3, v13

    if-ge v15, v3, :cond_14

    .line 201
    aget-object v3, v13, v15

    .line 202
    if-lez v15, :cond_d

    iget v4, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->pitch:F

    mul-float/2addr v4, v14

    add-float/2addr v5, v4

    .line 203
    :cond_d
    iget v4, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->size:F

    mul-float/2addr v4, v14

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    iget-object v4, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v18

    invoke-virtual {v1, v4, v8, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 206
    if-eqz v12, :cond_e

    move/from16 v0, v16

    int-to-float v4, v0

    sub-float v4, v4, v17

    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    sub-float/2addr v4, v8

    .line 207
    :goto_f
    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v20

    .line 208
    iget-boolean v8, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->slogan:Z

    if-eqz v8, :cond_f

    invoke-static/range {p0 .. p0}, Lnet/oneplus/widget/op/OpSettings;->sloganRed(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    move v9, v8

    .line 209
    :goto_10
    if-eqz v9, :cond_10

    const/high16 v8, -0x10000

    .line 210
    :goto_11
    if-eqz p7, :cond_12

    if-lez v20, :cond_12

    if-nez v9, :cond_12

    move-object/from16 v11, p7

    .line 211
    :goto_12
    if-lez v20, :cond_13

    const/4 v9, 0x1

    :goto_13
    invoke-static/range {v1 .. v11}, Lnet/oneplus/widget/op/OpRenderer;->drawLine(Landroid/graphics/Paint;Landroid/graphics/Canvas;Lnet/oneplus/widget/op/OpRenderer$Line;FFFFIZZ[F)V

    .line 200
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_e

    .line 206
    :cond_e
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, v17, v4

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v4, v8

    goto :goto_f

    .line 208
    :cond_f
    const/4 v8, 0x0

    move v9, v8

    goto :goto_10

    .line 209
    :cond_10
    iget v8, v3, Lnet/oneplus/widget/op/OpRenderer$Line;->size:F

    const v11, 0x3f0ccccd    # 0.55f

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_11

    sget-object v8, Lnet/oneplus/widget/op/OpSettings;->MAIN:[I

    aget v8, v8, v20

    goto :goto_11

    :cond_11
    sget-object v8, Lnet/oneplus/widget/op/OpSettings;->SUB:[I

    aget v8, v8, v20

    goto :goto_11

    .line 210
    :cond_12
    const/4 v11, 0x0

    goto :goto_12

    .line 211
    :cond_13
    const/4 v9, 0x0

    goto :goto_13

    .line 213
    :cond_14
    return-object v19

    :cond_15
    move v14, v2

    goto/16 :goto_d

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
