.class final Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;
.super Landroid/view/View;
.source "AuroraView.java"


# static fields
.field private static final ORBS:[[F


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;

.field private final cur:[I

.field private drift:Landroid/animation/ValueAnimator;

.field private final eval:Landroid/animation/ArgbEvaluator;

.field private fade:Landroid/animation/ValueAnimator;

.field private final from:[I

.field private final orbPaint:Landroid/graphics/Paint;

.field private final orbShaders:[Landroid/graphics/RadialGradient;

.field private phase:F

.field private final to:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->ORBS:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3f59999a    # 0.85f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3eeb851f    # 0.46f
        0x3f333333    # 0.7f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_2
    .array-data 4
        0x3e19999a    # 0.15f
        0x3f6b851f    # 0.92f
        0x3f4ccccd    # 0.8f
        0x3d4ccccd    # 0.05f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->bgPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->orbPaint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->eval:Landroid/animation/ArgbEvaluator;

    .line 26
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->from:[I

    .line 27
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->to:[I

    .line 28
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->cur:[I

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RadialGradient;

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->orbShaders:[Landroid/graphics/RadialGradient;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->setWillNotDraw(Z)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)[I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->cur:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)[I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->from:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)[I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->to:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)Landroid/animation/ArgbEvaluator;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->eval:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->rebuild()V

    return-void
.end method

.method static synthetic access$502(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;F)F
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->phase:F

    return p1
.end method

.method private rebuild()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->getWidth()I

    move-result v9

    .line 69
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->getHeight()I

    move-result v2

    .line 70
    if-eqz v9, :cond_0

    if-nez v2, :cond_1

    .line 77
    :cond_0
    return-void

    .line 71
    :cond_1
    iget-object v10, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->bgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, v9

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    int-to-float v4, v2

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->cur:[I

    aget v5, v2, v8

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->cur:[I

    const/4 v6, 0x1

    aget v6, v2, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move v7, v8

    .line 72
    :goto_0
    const/4 v0, 0x3

    if-ge v7, v0, :cond_0

    .line 73
    sget-object v0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->ORBS:[[F

    aget-object v0, v0, v7

    const/4 v2, 0x2

    aget v0, v0, v2

    int-to-float v2, v9

    mul-float v3, v0, v2

    .line 74
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->cur:[I

    add-int/lit8 v2, v7, 0x2

    aget v4, v0, v2

    .line 75
    iget-object v8, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->orbShaders:[Landroid/graphics/RadialGradient;

    new-instance v0, Landroid/graphics/RadialGradient;

    const v2, 0xffffff

    and-int v5, v4, v2

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    aput-object v0, v8, v7

    .line 72
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    .line 89
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x55f0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 91
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$2;

    invoke-direct {v1, p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$2;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    return-void

    .line 88
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->drift:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 106
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->getWidth()I

    move-result v6

    .line 112
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->getHeight()I

    move-result v7

    .line 113
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 116
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->orbShaders:[Landroid/graphics/RadialGradient;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 116
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->phase:F

    float-to-double v4, v1

    mul-double/2addr v4, v2

    int-to-double v8, v0

    const-wide v10, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    sget-object v4, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->ORBS:[[F

    aget-object v4, v4, v0

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v1, v4

    int-to-float v4, v6

    mul-float/2addr v1, v4

    .line 119
    iget v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->phase:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    int-to-double v8, v0

    const-wide v10, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    sget-object v5, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->ORBS:[[F

    aget-object v5, v5, v0

    const/4 v8, 0x3

    aget v5, v5, v8

    mul-float/2addr v4, v5

    int-to-float v5, v6

    mul-float/2addr v4, v5

    .line 120
    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->orbPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->orbShaders:[Landroid/graphics/RadialGradient;

    aget-object v8, v8, v0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    sget-object v5, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->ORBS:[[F

    aget-object v5, v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-float v8, v6

    mul-float/2addr v5, v8

    add-float/2addr v1, v5

    sget-object v5, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->ORBS:[[F

    aget-object v5, v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-float v8, v7

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->ORBS:[[F

    aget-object v5, v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-float v8, v6

    mul-float/2addr v5, v8

    iget-object v8, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->orbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 82
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->rebuild()V

    .line 83
    return-void
.end method

.method setPalette([IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 41
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->cur:[I

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->to:[I

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->rebuild()V

    .line 45
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->invalidate()V

    .line 65
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->cur:[I

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->from:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->to:[I

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 51
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    .line 52
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;

    invoke-direct {v1, p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->fade:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 51
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
