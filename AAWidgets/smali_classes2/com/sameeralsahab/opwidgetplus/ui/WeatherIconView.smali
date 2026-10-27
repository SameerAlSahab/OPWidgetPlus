.class final Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;
.super Landroid/view/View;
.source "WeatherIconView.java"


# static fields
.field private static final BOLT:I = -0x1fb6

.field static final CLEAR:I = 0x0

.field static final CLOUD:I = 0x3

.field private static final CLOUD_BACK:I = -0x4b3d31

.field private static final CLOUD_DARK:I = -0x786b5a

.field private static final CLOUD_FRONT:I = -0x80604

.field private static final DROP:I = -0x8b2f01

.field static final FOG:I = 0x4

.field private static final MOON:I = -0xb0e24

.field static final MOSTLY:I = 0x1

.field static final PARTLY:I = 0x2

.field static final RAIN:I = 0x5

.field static final SNOW:I = 0x6

.field static final STORM:I = 0x7

.field private static final SUN:I = -0x37c3

.field private static final SUN_GLOW:I = 0x66ffc83d


# instance fields
.field private day:Z

.field private kind:I

.field private final other:Landroid/graphics/Path;

.field private final p:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->other:Landroid/graphics/Path;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->rect:Landroid/graphics/RectF;

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->kind:I

    .line 37
    iput-boolean v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->day:Z

    .line 41
    return-void
.end method

.method private body(Landroid/graphics/Canvas;FFF)V
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->day:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->sun(Landroid/graphics/Canvas;FFF)V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->moon(Landroid/graphics/Canvas;FFF)V

    goto :goto_0
.end method

.method private cloud(Landroid/graphics/Canvas;FFFI)V
    .locals 7

    .prologue
    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v5, 0x41300000    # 11.0f

    .line 185
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 186
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->rect:Landroid/graphics/RectF;

    mul-float v1, v3, p4

    sub-float v1, p2, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p4

    sub-float v2, p3, v2

    mul-float/2addr v3, p4

    add-float/2addr v3, p2

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v4, p4

    add-float/2addr v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->rect:Landroid/graphics/RectF;

    mul-float v1, v5, p4

    mul-float v2, v5, p4

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 190
    mul-float v0, v6, p4

    sub-float v0, p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p4

    sub-float v1, p3, v1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, p4

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p4

    add-float/2addr v0, p2

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p4

    sub-float v1, p3, v1

    const/high16 v2, 0x41980000    # 19.0f

    mul-float/2addr v2, p4

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    const/high16 v0, 0x41a80000    # 21.0f

    mul-float/2addr v0, p4

    add-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, p4

    add-float/2addr v1, p3

    mul-float v2, v6, p4

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    return-void
.end method

.method static describe(IZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "Sunny"

    .line 76
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v0, "Clear"

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "Mostly sunny"

    goto :goto_0

    :cond_2
    const-string v0, "Mostly clear"

    goto :goto_0

    .line 67
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const-string v0, "Partly cloudy"

    goto :goto_0

    .line 68
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const-string v0, "Overcast"

    goto :goto_0

    .line 69
    :cond_5
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_6

    const/16 v0, 0x30

    if-ne p0, v0, :cond_7

    :cond_6
    const-string v0, "Fog"

    goto :goto_0

    .line 70
    :cond_7
    const/16 v0, 0x33

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-gt p0, v0, :cond_8

    const-string v0, "Drizzle"

    goto :goto_0

    .line 71
    :cond_8
    const/16 v0, 0x3d

    if-lt p0, v0, :cond_9

    const/16 v0, 0x43

    if-gt p0, v0, :cond_9

    const-string v0, "Rain"

    goto :goto_0

    .line 72
    :cond_9
    const/16 v0, 0x47

    if-lt p0, v0, :cond_a

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_a

    const-string v0, "Snow"

    goto :goto_0

    .line 73
    :cond_a
    const/16 v0, 0x50

    if-lt p0, v0, :cond_b

    const/16 v0, 0x52

    if-gt p0, v0, :cond_b

    const-string v0, "Showers"

    goto :goto_0

    .line 74
    :cond_b
    const/16 v0, 0x55

    if-eq p0, v0, :cond_c

    const/16 v0, 0x56

    if-ne p0, v0, :cond_d

    :cond_c
    const-string v0, "Snow showers"

    goto :goto_0

    .line 75
    :cond_d
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_e

    const-string v0, "Thunderstorm"

    goto :goto_0

    .line 76
    :cond_e
    const-string v0, "Cloudy"

    goto :goto_0
.end method

.method private drops(Landroid/graphics/Canvas;F)V
    .locals 8

    .prologue
    const/high16 v7, 0x42be0000    # 95.0f

    const/high16 v6, 0x42a80000    # 84.0f

    const/high16 v4, 0x42a40000    # 82.0f

    const/high16 v2, 0x428c0000    # 70.0f

    .line 196
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 197
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 199
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const v1, -0x8b2f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    const/high16 v1, 0x42040000    # 33.0f

    const/high16 v3, 0x41e00000    # 28.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v3, 0x42340000    # 45.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 203
    const/high16 v1, 0x42860000    # 67.0f

    const/high16 v3, 0x42780000    # 62.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    const/high16 v1, 0x42240000    # 41.0f

    const/high16 v3, 0x42100000    # 36.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    const/high16 v1, 0x42680000    # 58.0f

    const/high16 v3, 0x42540000    # 53.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    return-void
.end method

.method static kindFor(I)I
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 51
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    if-eq p0, v0, :cond_0

    .line 53
    if-ne p0, v1, :cond_2

    move v0, v1

    goto :goto_0

    .line 54
    :cond_2
    if-ne p0, v2, :cond_3

    move v0, v2

    goto :goto_0

    .line 55
    :cond_3
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x30

    if-ne p0, v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 56
    :cond_5
    const/16 v0, 0x33

    if-lt p0, v0, :cond_6

    const/16 v0, 0x43

    if-gt p0, v0, :cond_6

    move v0, v3

    goto :goto_0

    .line 57
    :cond_6
    const/16 v0, 0x47

    if-lt p0, v0, :cond_7

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_7

    move v0, v4

    goto :goto_0

    .line 58
    :cond_7
    const/16 v0, 0x50

    if-lt p0, v0, :cond_8

    const/16 v0, 0x52

    if-gt p0, v0, :cond_8

    move v0, v3

    goto :goto_0

    .line 59
    :cond_8
    const/16 v0, 0x55

    if-eq p0, v0, :cond_9

    const/16 v0, 0x56

    if-ne p0, v0, :cond_a

    :cond_9
    move v0, v4

    goto :goto_0

    .line 60
    :cond_a
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_b

    const/4 v0, 0x7

    goto :goto_0

    :cond_b
    move v0, v2

    .line 61
    goto :goto_0
.end method

.method private moon(Landroid/graphics/Canvas;FFF)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 171
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 172
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 173
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->other:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 174
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->other:Landroid/graphics/Path;

    const v1, 0x3f051eb8    # 0.52f

    mul-float/2addr v1, p4

    add-float/2addr v1, p2

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, p4

    sub-float v2, p3, v2

    const v3, 0x3f5c28f6    # 0.86f

    mul-float/2addr v3, p4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 175
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->other:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 176
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v7, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    mul-float v3, p4, v8

    const v4, 0x33f4f1dc

    const v5, 0xf4f1dc

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 178
    mul-float v0, p4, v8

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const v1, -0xb0e24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method private sun(Landroid/graphics/Canvas;FFF)V
    .locals 11

    .prologue
    const v10, 0x40066666    # 2.1f

    const v9, 0x3fcf5c29    # 1.62f

    const v8, 0x3fa3d70a    # 1.28f

    .line 153
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v7, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    mul-float v3, p4, v10

    const v4, 0x66ffc83d

    const v5, 0xffc83d

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    mul-float v0, p4, v10

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/16 v1, -0x37c3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 161
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const v1, 0x3e2e147b    # 0.17f

    mul-float/2addr v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_0

    .line 163
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v2, v6

    mul-double/2addr v0, v2

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v3, v2

    .line 165
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 166
    mul-float v1, v3, p4

    mul-float/2addr v1, v8

    add-float/2addr v1, p2

    mul-float v2, v0, p4

    mul-float/2addr v2, v8

    add-float/2addr v2, p3

    mul-float/2addr v3, p4

    mul-float/2addr v3, v9

    add-float/2addr v3, p2

    mul-float/2addr v0, p4

    mul-float/2addr v0, v9

    add-float v4, p3, v0

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    const v4, 0x3f666666    # 0.9f

    const v5, -0x80604

    const/high16 v3, 0x42840000    # 66.0f

    const/high16 v8, 0x42480000    # 50.0f

    .line 81
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v0

    sub-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 85
    iget v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->kind:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    return-void

    .line 87
    :pswitch_0
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-direct {p0, p1, v8, v8, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->body(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    .line 90
    :pswitch_1
    const/high16 v0, 0x42300000    # 44.0f

    const/high16 v1, 0x42280000    # 42.0f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->body(Landroid/graphics/Canvas;FFF)V

    .line 91
    const/high16 v2, 0x42700000    # 60.0f

    const v4, 0x3f0ccccd    # 0.55f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    goto :goto_0

    .line 94
    :pswitch_2
    const/high16 v0, 0x42180000    # 38.0f

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->body(Landroid/graphics/Canvas;FFF)V

    .line 95
    const/high16 v2, 0x42600000    # 56.0f

    const/high16 v3, 0x42780000    # 62.0f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    goto :goto_0

    .line 98
    :pswitch_3
    const/high16 v9, 0x42200000    # 40.0f

    const v10, 0x3f1eb852    # 0.62f

    const v11, -0x4b3d31

    move-object v6, p0

    move-object v7, p1

    move v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    .line 99
    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v3, 0x42680000    # 58.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    goto :goto_0

    .line 102
    :pswitch_4
    const/high16 v9, 0x42180000    # 38.0f

    const v10, 0x3f4ccccd    # 0.8f

    move-object v6, p0

    move-object v7, p1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    .line 103
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v4, 0x429c0000    # 78.0f

    iget-object v6, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x429a0000    # 77.0f

    const/high16 v3, 0x42ac0000    # 86.0f

    const/high16 v4, 0x429a0000    # 77.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v2, 0x42b00000    # 88.0f

    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v4, 0x42b00000    # 88.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 113
    :pswitch_5
    const/high16 v3, 0x42180000    # 38.0f

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    .line 114
    invoke-direct {p0, p1, v12}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->drops(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0

    .line 117
    :pswitch_6
    const/high16 v9, 0x42180000    # 38.0f

    move-object v6, p0

    move-object v7, p1

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    .line 118
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    const/high16 v0, 0x42000000    # 32.0f

    const/high16 v1, 0x42940000    # 74.0f

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    const/high16 v0, 0x42ac0000    # 86.0f

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v12, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    const/high16 v0, 0x42880000    # 68.0f

    const/high16 v1, 0x42940000    # 74.0f

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    const/high16 v0, 0x40400000    # 3.0f

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 127
    :pswitch_7
    const/high16 v9, 0x42100000    # 36.0f

    const v11, -0x786b5a

    move-object v6, p0

    move-object v7, p1

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->cloud(Landroid/graphics/Canvas;FFFI)V

    .line 128
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    const/16 v1, -0x1fb6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 132
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v2, 0x42680000    # 58.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 133
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x429e0000    # 79.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x424c0000    # 51.0f

    const/high16 v2, 0x429e0000    # 79.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 136
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x428e0000    # 71.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v2, 0x428e0000    # 71.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x42680000    # 58.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 140
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method set(IZ)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->kind:I

    .line 45
    iput-boolean p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->day:Z

    .line 46
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->invalidate()V

    .line 47
    return-void
.end method
