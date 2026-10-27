.class final Lcom/sameeralsahab/opwidgetplus/ui/Ui;
.super Ljava/lang/Object;
.source "Ui.java"


# static fields
.field static final CYAN:I = -0x801601

.field static final DIM:I = -0x47000001

.field static final FAINT:I = -0x7f000001

.field private static final FONTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static final RED:I = -0x14ffd8

.field static final TEXT:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->FONTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alpha(II)I
    .locals 2

    .prologue
    .line 148
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static black(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 52
    const-string v0, "OPlusSans-Black.ttf"

    invoke-static {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static dp(Landroid/content/Context;F)I
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static edgeToEdge(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 117
    invoke-virtual {v0, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 123
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 124
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 126
    :cond_0
    new-instance v0, Lcom/sameeralsahab/opwidgetplus/ui/Ui$2;

    invoke-direct {v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui$2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 145
    return-void

    .line 119
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method static enter(Landroid/view/ViewGroup;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 100
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v0, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 102
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    .line 105
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 106
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x28

    const-wide/16 v6, 0x37

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1cc

    .line 107
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method static declared-synchronized font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 38
    const-class v1, Lcom/sameeralsahab/opwidgetplus/ui/Ui;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->FONTS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez v0, :cond_0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 45
    :goto_0
    :try_start_2
    sget-object v2, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->FONTS:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :cond_0
    monitor-exit v1

    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    :try_start_3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    new-instance v0, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    invoke-static {p0, p1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;-><init>(FFIF)V

    return-object v0
.end method

.method static light(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 50
    const-string v0, "OPlusSans-Light.ttf"

    invoke-static {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static lp(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static lp(IIF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method static margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    return-object p0
.end method

.method static pressable(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/sameeralsahab/opwidgetplus/ui/Ui$1;

    invoke-direct {v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    return-void
.end method

.method static regular(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 51
    const-string v0, "OSans-Regular.ttf"

    invoke-static {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 58
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 61
    return-object v0
.end method
