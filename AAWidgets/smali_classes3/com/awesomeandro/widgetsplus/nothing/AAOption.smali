.class public Lcom/awesomeandro/widgetsplus/nothing/AAOption;
.super Landroid/view/View;

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final d:F

.field dot:F

.field l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

.field label:Ljava/lang/String;

.field final p:Landroid/graphics/Paint;

.field sel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->label:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    iget-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    const-string v0, "nt_inter.ttf"

    invoke-static {p1, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->sel:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->setSelectedOption(Z)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

    invoke-interface {v0, p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/AAChecked;->onChecked(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v4, 0x41300000    # 11.0f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    iget v5, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    mul-float/2addr v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    iget v4, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    const v5, -0xa5a195

    const v6, -0x17dfd6

    invoke-static {v5, v6, v4}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->mix(IIF)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    iget v4, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xe8202a

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    iget-object v4, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->sel:Z

    const v3, -0x36342a

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->label:Ljava/lang/String;

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v4, 0x40b00000    # 5.5f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->d:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->setMeasuredDimension(II)V

    return-void
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->sel:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    sub-float v1, v2, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    iget v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->invalidate()V

    invoke-virtual {p0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListener(Lcom/awesomeandro/widgetsplus/nothing/AAChecked;)V
    .locals 0

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->l:Lcom/awesomeandro/widgetsplus/nothing/AAChecked;

    return-void
.end method

.method public setSelectedOption(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->sel:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->sel:Z

    invoke-virtual {p0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
