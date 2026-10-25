.class final Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlassDrawable.java"


# instance fields
.field private alpha:I

.field private final bloom:Landroid/graphics/Paint;

.field private final body:Landroid/graphics/RectF;

.field private final clip:Landroid/graphics/Path;

.field private final edge:Landroid/graphics/RectF;

.field private final fill:Landroid/graphics/Paint;

.field private final radius:F

.field private final rim:Landroid/graphics/Paint;

.field private final strength:F

.field private final stroke:F

.field private final tint:I


# direct methods
.method constructor <init>(FFIF)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->fill:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->rim:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->bloom:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->body:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->edge:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->clip:Landroid/graphics/Path;

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->alpha:I

    .line 38
    iput p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->radius:F

    .line 39
    iput p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->stroke:F

    .line 40
    iput p3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->tint:I

    .line 41
    iput p4, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->strength:F

    .line 42
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->rim:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->rim:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    return-void
.end method

.method private static a(IF)I
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 48
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 72
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->body:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->fill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->rim:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->bloom:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->body:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->radius:F

    iget v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->radius:F

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->clip:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 79
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->body:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->bloom:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 81
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->edge:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->radius:F

    iget v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->stroke:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->radius:F

    iget v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->stroke:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->rim:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const v10, 0xffffff

    .line 53
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->body:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 54
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->edge:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->stroke:F

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->stroke:F

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->stroke:F

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->stroke:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->clip:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 56
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->clip:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->body:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->radius:F

    iget v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 58
    iget-object v8, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->tint:I

    const/high16 v5, 0x42680000    # 58.0f

    iget v6, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->strength:F

    mul-float/2addr v5, v6

    .line 59
    invoke-static {v3, v5}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->a(IF)I

    move-result v5

    iget v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->tint:I

    const/high16 v6, 0x41b00000    # 22.0f

    iget v7, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->strength:F

    mul-float/2addr v6, v7

    invoke-static {v3, v6}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->a(IF)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 58
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 61
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->rim:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    new-array v7, v11, [I

    const/4 v8, 0x0

    const/high16 v9, 0x433e0000    # 190.0f

    .line 62
    invoke-static {v10, v9}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->a(IF)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x41d00000    # 26.0f

    invoke-static {v10, v9}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->a(IF)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x2

    const/high16 v9, 0x42c00000    # 96.0f

    invoke-static {v10, v9}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->a(IF)I

    move-result v9

    aput v9, v7, v8

    new-array v8, v11, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 66
    iget-object v7, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->bloom:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v5

    add-float v8, v2, v4

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/high16 v4, 0x42580000    # 54.0f

    iget v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->strength:F

    const v6, 0x3fcccccd    # 1.6f

    .line 67
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v10, v4}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->a(IF)I

    move-result v4

    invoke-static {v10, v1}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->a(IF)I

    move-result v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, v8

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 66
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 68
    return-void

    .line 62
    :array_0
    .array-data 4
        0x0
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->alpha:I

    .line 87
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->invalidateSelf()V

    .line 88
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->rim:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;->bloom:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    return-void
.end method
