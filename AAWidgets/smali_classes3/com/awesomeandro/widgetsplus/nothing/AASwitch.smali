.class public Lcom/awesomeandro/widgetsplus/nothing/AASwitch;
.super Landroid/view/View;

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final OFF:I = -0xd5d2ca

.field static final ON:I = -0x17dfd6


# instance fields
.field final d:F

.field l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

.field on:Z

.field final p:Landroid/graphics/Paint;

.field pos:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    invoke-virtual {p0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static mix(IIF)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x18

    if-gt v1, v2, :cond_0

    shr-int v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    shr-int v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->on:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->on:Z

    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

    iget-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->on:Z

    invoke-interface {p1, p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAChecked;->onChecked(Landroid/view/View;Z)V

    :cond_1
    invoke-virtual {p0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v5, v1, v2

    div-float/2addr v5, v4

    iget-object v6, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    const v8, -0xd5d2ca

    const v9, -0x17dfd6

    invoke-static {v8, v9, v7}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->mix(IIF)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v0, v3

    add-float v8, v5, v2

    invoke-direct {v6, v0, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    div-float v9, v2, v4

    iget-object v10, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    const v11, -0xb5b1a6

    const v12, -0xa59e

    invoke-static {v11, v12, v10}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->mix(IIF)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v0, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v9, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v5, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    sub-float v5, v9, v5

    add-float/2addr v0, v9

    sub-float v2, v3, v2

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    const/high16 v6, 0x428c0000    # 70.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    const v6, 0xe8202a

    or-int/2addr v3, v6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    div-float v2, v1, v4

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    iget-object v6, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x55000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    div-float/2addr v1, v4

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    const/4 v4, -0x1

    const v6, -0x656258

    invoke-static {v6, v4, v3}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->mix(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const/high16 p2, 0x42600000    # 56.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->d:F

    const/high16 v0, 0x42080000    # 34.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->setMeasuredDimension(II)V

    return-void
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->on:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    sub-float v1, v2, v1

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    iget v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->invalidate()V

    invoke-virtual {p0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->on:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->pos:F

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->invalidate()V

    return-void
.end method

.method public setListener(Lcom/awesomeandro/widgetsplus/nothing/AAChecked;)V
    .locals 0

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

    return-void
.end method
