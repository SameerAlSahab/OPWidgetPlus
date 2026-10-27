.class final Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;
.super Landroid/view/View;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeBar"
.end annotation


# instance fields
.field private final hi:F

.field private final lo:F

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;FF)V
    .locals 2

    .prologue
    .line 665
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 661
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->paint:Landroid/graphics/Paint;

    .line 662
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->rect:Landroid/graphics/RectF;

    .line 666
    iput p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->lo:F

    .line 667
    iput p3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->hi:F

    .line 668
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 673
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->getHeight()I

    move-result v1

    int-to-float v8, v1

    .line 674
    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v8, v1

    .line 675
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 676
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->paint:Landroid/graphics/Paint;

    const v3, 0x33ffffff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v2, v0, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 678
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 679
    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->lo:F

    sub-float v3, v0, v8

    mul-float/2addr v1, v3

    .line 680
    add-float v3, v1, v8

    iget v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->hi:F

    sub-float/2addr v0, v8

    mul-float/2addr v0, v4

    add-float/2addr v0, v8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 681
    iget-object v10, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const v5, -0x9c2901

    const/16 v6, -0x47b3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 682
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 683
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 684
    return-void
.end method
