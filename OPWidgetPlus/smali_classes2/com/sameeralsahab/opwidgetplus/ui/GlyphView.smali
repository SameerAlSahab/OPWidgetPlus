.class final Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;
.super Landroid/view/View;
.source "GlyphView.java"


# static fields
.field static final BACK:I = 0x0

.field static final CHEVRON:I = 0x5

.field static final PIN:I = 0x4

.field static final REFRESH:I = 0x1

.field static final SEARCH:I = 0x3

.field static final SLIDERS:I = 0x2


# instance fields
.field private final oval:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private spin:Landroid/animation/ObjectAnimator;

.field private final type:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->oval:Landroid/graphics/RectF;

    .line 29
    iput p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->type:I

    .line 30
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 33
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin(Z)V

    .line 54
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 55
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const v10, 0x4059999a    # 3.4f

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v11, 0x41980000    # 19.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v9, 0x41400000    # 12.0f

    .line 59
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v0, v2

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 66
    iget v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->type:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0, v5, v5, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    const/high16 v2, -0x3de00000    # -40.0f

    .line 82
    const/high16 v3, 0x43910000    # 290.0f

    .line 83
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->oval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 84
    add-float v0, v2, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 85
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v9

    .line 86
    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v9

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v4, v4

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 89
    neg-float v1, v0

    .line 91
    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const v6, 0x40866666    # 4.2f

    mul-float/2addr v6, v4

    sub-float v6, v2, v6

    mul-float v7, v1, v10

    add-float/2addr v6, v7

    const v7, 0x40866666    # 4.2f

    mul-float/2addr v7, v0

    sub-float v7, v3, v7

    mul-float v8, v4, v10

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 92
    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v4

    add-float/2addr v6, v2

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const v6, 0x40866666    # 4.2f

    mul-float/2addr v6, v4

    sub-float/2addr v2, v6

    mul-float/2addr v1, v10

    sub-float v1, v2, v1

    const v2, 0x40866666    # 4.2f

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    mul-float v2, v4, v10

    sub-float/2addr v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 98
    :pswitch_3
    const/4 v0, 0x3

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    .line 99
    const/4 v0, 0x3

    new-array v8, v0, [F

    fill-array-data v8, :array_1

    .line 100
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_1

    .line 101
    const/high16 v1, 0x40800000    # 4.0f

    aget v2, v7, v6

    const/high16 v3, 0x41a00000    # 20.0f

    aget v4, v7, v6

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 105
    aget v1, v8, v0

    aget v2, v7, v0

    const v3, 0x40266666    # 2.6f

    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    :pswitch_4
    const/high16 v0, 0x41280000    # 10.5f

    const/high16 v2, 0x41280000    # 10.5f

    const/high16 v3, 0x40c00000    # 6.0f

    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41a00000    # 20.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 114
    :pswitch_5
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 115
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v6, 0x41480000    # 12.5f

    const/high16 v8, 0x41200000    # 10.0f

    move v4, v1

    move v7, v5

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 116
    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const v6, 0x40cccccd    # 6.4f

    const v7, 0x41033333    # 8.2f

    const/high16 v8, 0x40600000    # 3.5f

    const/high16 v10, 0x40600000    # 3.5f

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 117
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const v3, 0x417ccccd    # 15.8f

    const/high16 v4, 0x40600000    # 3.5f

    const v6, 0x40cccccd    # 6.4f

    const/high16 v8, 0x41200000    # 10.0f

    move v5, v11

    move v7, v11

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 118
    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    const/high16 v6, 0x41480000    # 12.5f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v10, 0x41a80000    # 21.0f

    move v5, v11

    move v8, v1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 119
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x4019999a    # 2.4f

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 98
    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x41900000    # 18.0f
    .end array-data

    .line 99
    :array_1
    .array-data 4
        0x41700000    # 15.0f
        0x41000000    # 8.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method spin(Z)V
    .locals 4

    .prologue
    .line 37
    if-eqz p1, :cond_2

    .line 38
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    .line 40
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 42
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin:Landroid/animation/ObjectAnimator;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->setRotation(F)V

    goto :goto_0

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
