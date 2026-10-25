.class public Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;
.super Landroid/app/Activity;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;,
        Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;
    }
.end annotation


# static fields
.field private static final FRESH_MS:J = 0x927c0L

.field private static final PREFS:Ljava/lang/String; = "op_weather_detail"


# instance fields
.field private animatedOnce:Z

.field private aurora:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

.field private content:Landroid/widget/LinearLayout;

.field private destroyed:Z

.field private is24:Z

.field private loading:Z

.field private final main:Landroid/os/Handler;

.field private refreshGlyph:Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

.field private scroll:Landroid/widget/ScrollView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->main:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->load(Z)V

    return-void
.end method

.method static synthetic access$100(FFZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->download(FFZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Z)Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->parse(Ljava/lang/String;Z)Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->loading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->refreshGlyph:Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;JZ)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->render(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->main:Landroid/os/Handler;

    return-object v0
.end method

.method private varargs addTiles([Landroid/view/View;)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    const/4 v1, 0x0

    .line 555
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    move v0, v1

    .line 556
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 557
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 558
    aget-object v4, p1, v0

    invoke-static {v1, v7, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    div-int/lit8 v6, v2, 0x2

    invoke-static {v5, v1, v1, v6, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    add-int/lit8 v4, v0, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 560
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v1, v7, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    div-int/lit8 v6, v2, 0x2

    invoke-static {v5, v6, v1, v1, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    :cond_0
    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    invoke-static {v5, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-static {v5, v1, v1, v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method

.method private buildChrome()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 105
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 106
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 107
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 110
    invoke-direct {p0, v6, v9}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->iconButton(I[Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 111
    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$1;

    invoke-direct {v3, p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$1;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->areaName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {p0, v0, v3, v8, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->titleView:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->titleView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 122
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->titleView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->titleView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-array v0, v5, [Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    .line 126
    invoke-direct {p0, v5, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->iconButton(I[Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 127
    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->refreshGlyph:Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    .line 128
    new-instance v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$2;

    invoke-direct {v0, p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$2;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const/4 v0, 0x2

    invoke-direct {p0, v0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->iconButton(I[Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 137
    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$3;

    invoke-direct {v3, p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$3;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 145
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->loading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->refreshGlyph:Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    invoke-virtual {v0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin(Z)V

    .line 149
    :cond_0
    return-void

    .line 119
    :cond_1
    const-string v0, "Weather"

    goto :goto_0
.end method

.method private card()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v4, 0x41800000    # 16.0f

    .line 429
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 430
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 431
    const/high16 v1, 0x41d00000    # 26.0f

    const v2, 0xffffff

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 432
    invoke-static {p0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 433
    return-object v0
.end method

.method private clock(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/16 v1, 0xc

    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    const-string v0, "--"

    .line 614
    :goto_0
    return-object v0

    .line 611
    :cond_1
    const/16 v0, 0xb

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 612
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 613
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->is24:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v0, v2, 0xc

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v2, v1, :cond_4

    const-string v0, " AM"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    rem-int/lit8 v0, v2, 0xc

    goto :goto_1

    :cond_4
    const-string v0, " PM"

    goto :goto_2
.end method

.method private static compass(D)Ljava/lang/String;
    .locals 4

    .prologue
    .line 630
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "N"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NNE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ENE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ESE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SSE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SSW"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "WSW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "WNW"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NW"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NNW"

    aput-object v2, v0, v1

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, 0x4036800000000000L    # 22.5

    div-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    rem-int/lit8 v2, v2, 0x10

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 619
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 620
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 621
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 622
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 623
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 625
    :goto_0
    return-object p0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deg(D)Ljava/lang/String;
    .locals 5

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static download(FFZ)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "https://api.open-meteo.com/v1/forecast?latitude=%.4f&longitude=%.4f&current=temperature_2m,apparent_temperature,relative_humidity_2m,is_day,precipitation,weather_code,surface_pressure,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,weather_code,precipitation_probability,is_day&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset,uv_index_max,precipitation_probability_max&forecast_days=7&timezone=auto%s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 240
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    if-eqz p2, :cond_0

    const-string v0, "&temperature_unit=fahrenheit&wind_speed_unit=mph"

    :goto_0
    aput-object v0, v3, v4

    .line 232
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 242
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 243
    const/16 v1, 0x2ee0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 244
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    throw v1

    .line 240
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 247
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 255
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 253
    return-object v1
.end method

.method private feelsNote(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 650
    iget-wide v0, p1, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->feels:D

    iget-wide v2, p1, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->temp:D

    sub-double v2, v0, v2

    .line 651
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-boolean v0, p1, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->fahrenheit:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :goto_0
    cmpg-double v0, v4, v0

    if-gez v0, :cond_1

    const-string v0, "Similar to actual"

    .line 652
    :goto_1
    return-object v0

    .line 651
    :cond_0
    const-wide v0, 0x3ff3333333333333L    # 1.2

    goto :goto_0

    .line 652
    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    const-string v0, "Feels warmer"

    goto :goto_1

    :cond_2
    const-string v0, "Feels cooler"

    goto :goto_1
.end method

.method private fetch(FFZLjava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->loading:Z

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 197
    :cond_0
    iput-boolean v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->loading:Z

    .line 198
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->refreshGlyph:Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    invoke-virtual {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin(Z)V

    .line 199
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;FFZLjava/lang/String;Z)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 228
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private hourLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0xc

    .line 604
    const/16 v0, 0xb

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 605
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->is24:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v0, v2, 0xc

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v2, v1, :cond_2

    const-string v0, " AM"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    rem-int/lit8 v0, v2, 0xc

    goto :goto_1

    :cond_2
    const-string v0, " PM"

    goto :goto_2
.end method

.method private static humidityNote(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    const/16 v0, 0x1e

    if-ge p0, v0, :cond_0

    const-string v0, "Dry air"

    .line 638
    :goto_0
    return-object v0

    .line 636
    :cond_0
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_1

    const-string v0, "Comfortable"

    goto :goto_0

    .line 637
    :cond_1
    const/16 v0, 0x50

    if-ge p0, v0, :cond_2

    const-string v0, "Humid"

    goto :goto_0

    .line 638
    :cond_2
    const-string v0, "Very humid"

    goto :goto_0
.end method

.method private iconButton(I[Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;)Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 152
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 153
    const/high16 v1, 0x41b00000    # 22.0f

    const v2, 0xffffff

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    invoke-direct {v1, p0, p1, v4}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;-><init>(Landroid/content/Context;II)V

    .line 155
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 156
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->setPadding(IIII)V

    .line 158
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 159
    :cond_0
    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 161
    return-object v0
.end method

.method private label(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 578
    const/high16 v0, 0x41380000    # 11.5f

    const v1, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 579
    const v1, 0x3db851ec    # 0.09f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 580
    return-object v0
.end method

.method private load(Z)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 167
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const-string v0, "Choose your city"

    const-string v1, "Pick a city in settings and your forecast will appear here."

    const-string v2, "Open settings"

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lat(Landroid/content/Context;)F

    move-result v1

    .line 174
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lon(Landroid/content/Context;)F

    move-result v2

    .line 175
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result v3

    .line 176
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.3f,%.3f,%s"

    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v5

    const/4 v10, 0x2

    if-eqz v3, :cond_4

    const-string v0, "F"

    :goto_1
    aput-object v0, v9, v10

    invoke-static {v4, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v0, "op_weather_detail"

    invoke-virtual {p0, v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    const-string v7, "ts"

    const-wide/16 v10, 0x0

    invoke-interface {v0, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 181
    const-string v7, "key"

    const-string v9, ""

    invoke-interface {v0, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 182
    const-string v7, "json"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->parse(Ljava/lang/String;Z)Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;

    move-result-object v0

    move-object v7, v0

    .line 184
    :goto_2
    if-eqz v7, :cond_5

    .line 185
    invoke-direct {p0, v7, v10, v11, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->render(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;JZ)V

    .line 189
    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x927c0

    cmp-long v0, v8, v10

    if-lez v0, :cond_6

    move v0, v5

    .line 190
    :goto_4
    if-nez p1, :cond_3

    if-eqz v7, :cond_3

    if-eqz v0, :cond_0

    .line 191
    :cond_3
    if-eqz v7, :cond_7

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->fetch(FFZLjava/lang/String;Z)V

    goto :goto_0

    .line 176
    :cond_4
    const-string v0, "C"

    goto :goto_1

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, v5, :cond_2

    .line 187
    const-string v0, "Loading forecast"

    const-string v9, "Contacting Open-Meteo\u2026"

    invoke-direct {p0, v0, v9, v8, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    move v0, v6

    .line 189
    goto :goto_4

    :cond_7
    move v5, v6

    .line 191
    goto :goto_5

    :cond_8
    move-object v7, v8

    goto :goto_2
.end method

.method private static parse(Ljava/lang/String;Z)Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;
    .locals 14

    .prologue
    .line 277
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    const-string v0, "current"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 281
    new-instance v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$1;)V

    .line 282
    iput-boolean p1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->fahrenheit:Z

    .line 283
    const-string v1, "time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->time:Ljava/lang/String;

    .line 284
    const-string v1, "temperature_2m"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->temp:D

    .line 285
    const-string v1, "apparent_temperature"

    iget-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->temp:D

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->feels:D

    .line 286
    const-string v1, "relative_humidity_2m"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->humidity:I

    .line 287
    const-string v1, "weather_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->code:I

    .line 288
    const-string v1, "is_day"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->day:Z

    .line 289
    const-string v1, "wind_speed_10m"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->wind:D

    .line 290
    const-string v1, "wind_direction_10m"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->windDir:D

    .line 291
    const-string v1, "surface_pressure"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->pressure:D

    .line 292
    const-string v1, "precipitation"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->precip:D

    .line 294
    const-string v1, "hourly"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 295
    const-string v2, "time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 297
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTime:[Ljava/lang/String;

    .line 298
    new-array v2, v5, [D

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTemp:[D

    .line 299
    new-array v2, v5, [I

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hCode:[I

    .line 300
    new-array v2, v5, [I

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hProb:[I

    .line 301
    new-array v2, v5, [Z

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hDay:[Z

    .line 302
    const-string v2, "temperature_2m"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 303
    const-string v2, "weather_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 304
    const-string v2, "precipitation_probability"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 305
    const-string v2, "is_day"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 306
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_6

    .line 307
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTime:[Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v2

    .line 308
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTemp:[D

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v2, v10, v11}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v10

    aput-wide v10, v1, v2

    .line 309
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hCode:[I

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10}, Lorg/json/JSONArray;->optInt(II)I

    move-result v10

    aput v10, v1, v2

    .line 310
    iget-object v10, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hProb:[I

    if-nez v8, :cond_4

    const/4 v1, 0x0

    :goto_3
    aput v1, v10, v2

    .line 311
    iget-object v10, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hDay:[Z

    if-eqz v9, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_5

    :cond_2
    const/4 v1, 0x1

    :goto_4
    aput-boolean v1, v10, v2

    .line 306
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 288
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 310
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    goto :goto_3

    .line 311
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 314
    :cond_6
    const-string v1, "daily"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 315
    const-string v2, "time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 316
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 317
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dDate:[Ljava/lang/String;

    .line 318
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dRise:[Ljava/lang/String;

    .line 319
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dSet:[Ljava/lang/String;

    .line 320
    new-array v2, v6, [I

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dCode:[I

    .line 321
    new-array v2, v6, [I

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dProb:[I

    .line 322
    new-array v2, v6, [D

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMax:[D

    .line 323
    new-array v2, v6, [D

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMin:[D

    .line 324
    new-array v2, v6, [D

    iput-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dUv:[D

    .line 325
    const-string v2, "weather_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 326
    const-string v2, "temperature_2m_max"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 327
    const-string v2, "temperature_2m_min"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 328
    const-string v2, "sunrise"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 329
    const-string v2, "sunset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 330
    const-string v2, "uv_index_max"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 331
    const-string v2, "precipitation_probability_max"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 332
    const/4 v1, 0x0

    move v4, v1

    :goto_5
    if-ge v4, v6, :cond_0

    .line 333
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dDate:[Ljava/lang/String;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 334
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dCode:[I

    const/4 v2, 0x0

    invoke-virtual {v7, v4, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    aput v2, v1, v4

    .line 335
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMax:[D

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 336
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMin:[D

    const-wide/16 v2, 0x0

    invoke-virtual {v9, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 337
    iget-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dRise:[Ljava/lang/String;

    if-nez v10, :cond_7

    const-string v1, ""

    :goto_6
    aput-object v1, v2, v4

    .line 338
    iget-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dSet:[Ljava/lang/String;

    if-nez v11, :cond_8

    const-string v1, ""

    :goto_7
    aput-object v1, v2, v4

    .line 339
    iget-object v1, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dUv:[D

    if-nez v12, :cond_9

    const-wide/16 v2, 0x0

    :goto_8
    aput-wide v2, v1, v4

    .line 340
    iget-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dProb:[I

    if-nez v13, :cond_a

    const/4 v1, 0x0

    :goto_9
    aput v1, v2, v4

    .line 332
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 337
    :cond_7
    const-string v1, ""

    invoke-virtual {v10, v4, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 338
    :cond_8
    const-string v1, ""

    invoke-virtual {v11, v4, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 339
    :cond_9
    const-wide/16 v2, 0x0

    invoke-virtual {v12, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    goto :goto_8

    .line 340
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v13, v4, v1}, Lorg/json/JSONArray;->optInt(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_9

    .line 343
    :catch_0
    move-exception v0

    .line 344
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private pill(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41b00000    # 22.0f

    .line 419
    const/high16 v0, 0x41700000    # 15.0f

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 420
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 421
    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 422
    if-eqz p2, :cond_0

    const v0, -0x14ffd8

    const v2, 0x404ccccd    # 3.2f

    invoke-static {p0, v3, v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    invoke-static {v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 424
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 425
    return-object v1

    .line 422
    :cond_0
    const v0, 0xffffff

    const v2, 0x3f99999a    # 1.2f

    invoke-static {p0, v3, v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private redOnes(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 594
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 595
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 597
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x14ffd8

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 595
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_1
    return-object v1
.end method

.method private render(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;JZ)V
    .locals 18

    .prologue
    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->buildChrome()V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->aurora:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->code:I

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->day:Z

    invoke-static {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->theme(IZ)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->setPalette([IZ)V

    .line 439
    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 442
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 443
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 444
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 445
    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;-><init>(Landroid/content/Context;)V

    .line 446
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->code:I

    invoke-static {v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->kindFor(I)I

    move-result v4

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->day:Z

    invoke-virtual {v3, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->set(IZ)V

    .line 447
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42e00000    # 112.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42e00000    # 112.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->temp:D

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->redOnes(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const/high16 v4, 0x42b80000    # 92.0f

    const/4 v5, -0x1

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->light(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 450
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 451
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x55000000

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 452
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v7, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->code:I

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->day:Z

    invoke-static {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->describe(IZ)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41b00000    # 22.0f

    const/4 v5, -0x1

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 455
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v7, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMax:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   L "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMin:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   \u00b7   Feels like "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->feels:D

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    const/high16 v4, 0x41600000    # 14.0f

    const v5, -0x47000001

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 459
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v7, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v9, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v4, v5, v6, v7, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 464
    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 465
    const-string v2, "HOURLY FORECAST"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v3, v4, v5, v7, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    new-instance v7, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 467
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 468
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 469
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->time:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 471
    const/4 v3, 0x0

    .line 472
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTime:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_b

    .line 473
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTime:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 478
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTime:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v4, v2, 0x18

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v5, v2

    .line 479
    :goto_2
    if-ge v5, v10, :cond_4

    .line 480
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 481
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 482
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 483
    if-ne v5, v2, :cond_1

    const-string v3, "Now"

    move-object v4, v3

    :goto_3
    const/high16 v12, 0x41480000    # 12.5f

    .line 484
    if-ne v5, v2, :cond_2

    const/4 v3, -0x1

    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 483
    move-object/from16 v0, p0

    invoke-static {v0, v4, v12, v3, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;-><init>(Landroid/content/Context;)V

    .line 486
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hCode:[I

    aget v4, v4, v5

    invoke-static {v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->kindFor(I)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hDay:[Z

    aget-boolean v12, v12, v5

    invoke-virtual {v3, v4, v12}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->set(IZ)V

    .line 487
    const/high16 v4, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v12, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v4, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/4 v12, 0x0

    const/high16 v13, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v4, v12, v13, v14, v15}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTemp:[D

    aget-wide v12, v3, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41880000    # 17.0f

    const/4 v12, -0x1

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hProb:[I

    aget v3, v3, v5

    const/16 v4, 0x14

    if-lt v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hProb:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    const/high16 v4, 0x41380000    # 11.5f

    const v12, -0x801601

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 490
    const/4 v4, -0x2

    const/4 v12, -0x2

    invoke-static {v4, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/4 v12, 0x0

    const/high16 v13, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v4, v12, v13, v14, v15}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v12, -0x2

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_2

    .line 472
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 483
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->hTime:[Ljava/lang/String;

    aget-object v3, v3, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->hourLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_3

    .line 484
    :cond_2
    const v3, -0x47000001

    goto/16 :goto_4

    .line 489
    :cond_3
    const-string v3, " "

    goto :goto_5

    .line 493
    :cond_4
    invoke-virtual {v7, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 494
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v9

    .line 499
    const-string v2, "7-DAY FORECAST"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 501
    const-wide v4, -0x10000000000001L

    .line 502
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMin:[D

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 503
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMin:[D

    aget-wide v10, v3, v2

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 504
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMax:[D

    aget-wide v10, v3, v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 506
    :cond_5
    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dDate:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 507
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 508
    const/16 v3, 0x10

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 509
    if-nez v2, :cond_6

    const-string v3, "Today"

    :goto_8
    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, -0x1

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v3, v11, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42780000    # 62.0f

    .line 510
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 509
    invoke-virtual {v10, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;-><init>(Landroid/content/Context;)V

    .line 512
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dCode:[I

    aget v11, v11, v2

    invoke-static {v11}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->kindFor(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->set(IZ)V

    .line 513
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dProb:[I

    aget v3, v3, v2

    const/16 v11, 0x14

    if-lt v3, v11, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dProb:[I

    aget v11, v11, v2

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "%"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    const/high16 v11, 0x41400000    # 12.0f

    const v12, -0x801601

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v3, v11, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 515
    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 516
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMin:[D

    aget-wide v12, v3, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v3

    const/high16 v11, 0x41700000    # 15.0f

    const v12, -0x47000001

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v3, v11, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 518
    const v11, 0x800005

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 519
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMin:[D

    aget-wide v12, v11, v2

    sub-double/2addr v12, v6

    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double v16, v4, v6

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMax:[D

    aget-wide v12, v12, v2

    sub-double/2addr v12, v6

    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double v16, v4, v6

    .line 521
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v12, v12

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11, v12}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$RangeBar;-><init>(Landroid/content/Context;FF)V

    .line 522
    const/4 v11, 0x0

    const/high16 v12, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    const/high16 v12, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    const/high16 v14, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dMax:[D

    aget-wide v12, v3, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v3

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v12, -0x1

    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v3, v11, v12, v13}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42180000    # 38.0f

    .line 524
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    invoke-virtual {v10, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 509
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dDate:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->dayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 514
    :cond_7
    const-string v3, ""

    goto/16 :goto_9

    .line 527
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->fahrenheit:Z

    if-eqz v2, :cond_a

    const-string v2, "mph"

    .line 531
    :goto_a
    const/16 v3, 0x8

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    const-string v5, "FEELS LIKE"

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->feels:D

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->deg(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->feelsNote(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "HUMIDITY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->humidity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->humidity:I

    .line 533
    invoke-static {v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->humidityNote(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "WIND"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->wind:D

    .line 534
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->windDir:D

    invoke-static {v6, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->compass(D)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const-string v4, "PRESSURE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->pressure:D

    .line 535
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hPa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Surface"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "UV INDEX"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dUv:[D

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    .line 536
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dUv:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->uvNote(D)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "PRECIPITATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->precip:D

    .line 537
    invoke-static {v6, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->trim1(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Right now"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "SUNRISE"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dRise:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 538
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->clock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Today"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "SUNSET"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;->dSet:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 539
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->clock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Today"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    .line 531
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->addTiles([Landroid/view/View;)V

    .line 542
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weather data by Open-Meteo.com  \u00b7  Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    const v4, -0x7f000001

    .line 544
    invoke-static/range {p0 .. p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 543
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 545
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->animatedOnce:Z

    if-nez v2, :cond_9

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->enter(Landroid/view/ViewGroup;)V

    .line 550
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->animatedOnce:Z

    .line 552
    :cond_9
    return-void

    .line 530
    :cond_a
    const-string v2, "km/h"

    goto/16 :goto_a

    :cond_b
    move v2, v3

    goto/16 :goto_1
.end method

.method private showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 384
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->buildChrome()V

    .line 385
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->aurora:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    const/4 v1, 0x3

    invoke-static {v1, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->theme(IZ)[I

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->setPalette([IZ)V

    .line 386
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 387
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 388
    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 389
    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;

    invoke-direct {v2, p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;-><init>(Landroid/content/Context;)V

    .line 390
    if-eqz p4, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v2, v0, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->set(IZ)V

    .line 391
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42a80000    # 84.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    const/high16 v0, 0x41b00000    # 22.0f

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->light(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, p1, v0, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 393
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 394
    invoke-static {v6, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-static {p0, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v5, v3, v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    const v0, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {p0, p2, v8, v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 396
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 397
    const/4 v2, 0x0

    const v3, 0x3f933333    # 1.15f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 398
    invoke-static {v6, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v5, v3, v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    if-eqz p3, :cond_0

    .line 400
    invoke-direct {p0, p3, v7}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 401
    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;

    invoke-direct {v2, p0, p4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v6, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v5, v3, v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-static {v2, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v5, v3, v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->enter(Landroid/view/ViewGroup;)V

    .line 415
    iput-boolean v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->animatedOnce:Z

    .line 416
    return-void

    .line 390
    :cond_1
    const/4 v0, 0x3

    goto/16 :goto_0
.end method

.method private static theme(IZ)[I
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 352
    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherIconView;->kindFor(I)I

    move-result v0

    .line 353
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 354
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 376
    :goto_0
    return-object v0

    .line 356
    :cond_0
    if-ne v0, v2, :cond_2

    .line 357
    if-eqz p1, :cond_1

    .line 358
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 359
    :cond_1
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 361
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 362
    if-eqz p1, :cond_3

    .line 363
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    goto :goto_0

    .line 364
    :cond_3
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    goto :goto_0

    .line 366
    :cond_4
    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 367
    :cond_5
    if-eqz p1, :cond_6

    .line 368
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    goto :goto_0

    .line 369
    :cond_6
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    goto :goto_0

    .line 371
    :cond_7
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 372
    :cond_8
    if-eqz p1, :cond_9

    .line 373
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    goto :goto_0

    .line 374
    :cond_9
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    goto :goto_0

    .line 376
    :cond_a
    if-eqz p1, :cond_b

    .line 377
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    goto :goto_0

    .line 378
    :cond_b
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    goto :goto_0

    .line 354
    nop

    :array_0
    .array-data 4
        -0xebe5d5
        -0xc5d2a9
        -0x7793b401    # -7.1108E-34f
        0x6636a3ff
        0x66ff4b8b
    .end array-data

    .line 358
    :array_1
    .array-data 4
        -0xcaaf96
        -0xe2d1c0
        0x6677b7ff
        0x5547c4d8
        0x445a7dff
    .end array-data

    .line 359
    :array_2
    .array-data 4
        -0xeee4d8
        -0xe2d4c1
        0x665a86ff
        0x5530a0c8
        0x443550a0
    .end array-data

    .line 363
    :array_3
    .array-data 4
        -0xa08368
        -0xd4c1ab
        0x66dff1ff
        0x55a8d4ff
        0x44ffffff    # 2047.9999f
    .end array-data

    .line 364
    :array_4
    .array-data 4
        -0xe5daca
        -0xd1bfa8
        0x669ec9ff
        0x554c86c8
        0x44b8d8ff
    .end array-data

    .line 368
    :array_5
    .array-data 4
        -0xa58e7c
        -0xd1c0b0
        0x66b6ccdc
        0x558ca7bf
        0x44ffffff    # 2047.9999f
    .end array-data

    .line 369
    :array_6
    .array-data 4
        -0xe7ddd0
        -0xd5c8b8
        0x667e96b2
        0x55546a87
        0x443f5875
    .end array-data

    .line 373
    :array_7
    .array-data 4
        -0xd08737
        -0xe7bf86
        0x77ffc66b
        0x6659b5ff
        0x554c7dff
    .end array-data

    .line 374
    :array_8
    .array-data 4
        -0xf0e7d0
        -0xe0d3a9
        0x665c74ff
        0x554f3ebf
        0x44325fa8
    .end array-data

    .line 377
    :array_9
    .array-data 4
        -0xd57918
        -0xebb364
        -0x770037a9
        0x6648b8ff
        0x555a8cff
    .end array-data

    .line 378
    :array_a
    .array-data 4
        -0xf5efd8
        -0xe4e0ae
        0x665b6cff
        0x558a4dff
        0x4430a8d8
    .end array-data
.end method

.method private tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 567
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 568
    const/high16 v1, 0x42e00000    # 112.0f

    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 569
    invoke-direct {p0, p1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    const/high16 v1, 0x41d80000    # 27.0f

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->light(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, p2, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 571
    invoke-static {v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v4, v3, v4, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    const/high16 v1, 0x41480000    # 12.5f

    const v2, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, p3, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 573
    invoke-static {v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v4, v3, v4, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    return-object v0
.end method

.method private static trim1(D)Ljava/lang/String;
    .locals 6

    .prologue
    .line 590
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static uvNote(D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "Low"

    .line 646
    :goto_0
    return-object v0

    .line 643
    :cond_0
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "Moderate"

    goto :goto_0

    .line 644
    :cond_1
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "High"

    goto :goto_0

    .line 645
    :cond_2
    const-wide/high16 v0, 0x4026000000000000L    # 11.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "Very high"

    goto :goto_0

    .line 646
    :cond_3
    const-string v0, "Extreme"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->is24:Z

    .line 68
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-direct {v1, p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->aurora:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    .line 70
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->aurora:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-static {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->theme(IZ)[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->setPalette([IZ)V

    .line 71
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->aurora:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->scroll:Landroid/widget/ScrollView;

    .line 74
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 75
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 76
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->scroll:Landroid/widget/ScrollView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 77
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    .line 78
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 81
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->scroll:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->content:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->setContentView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->scroll:Landroid/widget/ScrollView;

    invoke-static {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->edgeToEdge(Landroid/app/Activity;Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->buildChrome()V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->destroyed:Z

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->load(Z)V

    .line 93
    return-void
.end method
