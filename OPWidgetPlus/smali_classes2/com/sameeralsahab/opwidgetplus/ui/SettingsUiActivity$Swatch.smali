.class final Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;
.super Landroid/view/View;
.source "SettingsUiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Swatch"
.end annotation


# instance fields
.field private final c1:I

.field private final c2:I

.field private final p:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/RectF;

.field private selected:Z


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 615
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 610
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    .line 611
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->r:Landroid/graphics/RectF;

    .line 616
    iput p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->c1:I

    .line 617
    iput p3, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->c2:I

    .line 618
    invoke-virtual {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->setClickable(Z)V

    .line 619
    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 620
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v12, 0x40000000    # 2.0f

    .line 630
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v12

    .line 631
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v12

    .line 632
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 633
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v9, v0

    .line 634
    sub-float v0, v8, v9

    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 635
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 636
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->r:Landroid/graphics/RectF;

    sub-float v2, v6, v0

    sub-float v5, v7, v0

    add-float v10, v6, v0

    add-float v11, v7, v0

    invoke-virtual {v1, v2, v5, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 637
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->c1:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->c2:I

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x43070000    # 135.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 640
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->c2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->r:Landroid/graphics/RectF;

    const v2, 0x439d8000    # 315.0f

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 646
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 647
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->selected:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 648
    div-float v0, v9, v12

    sub-float v0, v8, v0

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 649
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 647
    :cond_1
    const v0, 0x33ffffff

    goto :goto_1
.end method

.method setState(ZZ)V
    .locals 1

    .prologue
    .line 623
    iput-boolean p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->selected:Z

    .line 624
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->setAlpha(F)V

    .line 625
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->invalidate()V

    .line 626
    return-void

    .line 624
    :cond_0
    const v0, 0x3eb33333    # 0.35f

    goto :goto_0
.end method
