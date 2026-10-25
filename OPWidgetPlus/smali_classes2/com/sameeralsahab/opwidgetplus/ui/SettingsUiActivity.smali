.class public Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;
.super Landroid/app/Activity;
.source "SettingsUiActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;
    }
.end annotation


# static fields
.field private static final REPO:Ljava/lang/String; = "https://github.com/SameerAlSahab/OPWidgetPlus"


# instance fields
.field private areaText:Landroid/widget/TextView;

.field private col:Landroid/widget/LinearLayout;

.field private destroyed:Z

.field private final fontChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final kindChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final main:Landroid/os/Handler;

.field private preview:Landroid/widget/ImageView;

.field private previewKind:I

.field private query:Landroid/widget/EditText;

.field private results:Landroid/widget/LinearLayout;

.field private styleName:Landroid/widget/TextView;

.field private swatchRow:Landroid/widget/LinearLayout;

.field private final swatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->main:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->kindChips:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatches:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->fontChips:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->previewKind:I

    return p1
.end method

.method static synthetic access$100(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->refreshPreview()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Lnet/oneplus/widget/op/OpWeather$Place;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->choose(Lnet/oneplus/widget/op/OpWeather$Place;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->bindSwatches()V

    return-void
.end method

.method static synthetic access$300(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->apply()V

    return-void
.end method

.method static synthetic access$400(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->bindFonts()V

    return-void
.end method

.method static synthetic access$500(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->openWeather()V

    return-void
.end method

.method static synthetic access$600(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->runSearch()V

    return-void
.end method

.method static synthetic access$700(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->showResults(Ljava/util/List;)V

    return-void
.end method

.method private addCard(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->col:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v3, v3, v3, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    return-void
.end method

.method private apply()V
    .locals 1

    .prologue
    .line 407
    :try_start_0
    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->updateAll(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->refreshPreview()V

    .line 412
    return-void

    .line 408
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bindFonts()V
    .locals 6

    .prologue
    const/high16 v5, 0x41900000    # 18.0f

    .line 447
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fontIndex(Landroid/content/Context;)I

    move-result v3

    .line 448
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->fontChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->fontChips:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v1, v3, :cond_0

    .line 450
    const v2, -0x14ffd8

    const v4, 0x404ccccd    # 3.2f

    invoke-static {p0, v5, v2, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v2

    .line 449
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 450
    :cond_0
    const v2, 0xffffff

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v5, v2, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v2

    goto :goto_1

    .line 452
    :cond_1
    return-void
.end method

.method private bindSwatches()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 435
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 436
    :goto_0
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->cyberColor(Landroid/content/Context;)I

    move-result v6

    move v4, v3

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatches:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;

    .line 439
    if-eqz v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    if-ne v6, v5, :cond_1

    move v5, v2

    :goto_2
    invoke-virtual {v0, v5, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->setState(ZZ)V

    .line 437
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    move v1, v3

    .line 435
    goto :goto_0

    :cond_1
    move v5, v3

    .line 439
    goto :goto_2

    .line 441
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v3

    .line 442
    :cond_3
    sget-object v0, Lnet/oneplus/widget/op/OpSettings;->STYLES:[Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->styleName:Landroid/widget/TextView;

    if-ltz v3, :cond_4

    array-length v2, v0

    if-ge v3, v2, :cond_4

    aget-object v0, v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void

    .line 443
    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method private buildAbout()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 370
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 371
    const-string v0, "ABOUT"

    invoke-direct {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    const-string v0, ""

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPWidget++  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, v0, v2, v7, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 379
    invoke-static {v6, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v5, v3, v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const-string v0, "OnePlus clock and weather widgets for every Android launcher. Weather data by Open-Meteo.com."

    const/high16 v2, 0x41500000    # 13.0f

    const v3, -0x47000001

    .line 381
    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 380
    invoke-static {p0, v0, v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 382
    const/4 v2, 0x0

    const v3, 0x3f933333    # 1.15f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 383
    invoke-static {v6, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v2, v5, v3, v5, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    const-string v0, "View source on GitHub"

    const/high16 v2, 0x41680000    # 14.5f

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, v0, v2, v7, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 385
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 386
    const/high16 v2, 0x41a00000    # 20.0f

    const v3, 0xffffff

    const v4, 0x3f8ccccd    # 1.1f

    invoke-static {p0, v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 388
    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 389
    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$12;

    invoke-direct {v2, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$12;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-direct {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->addCard(Landroid/view/View;)V

    .line 401
    return-void

    .line 375
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private buildDetails()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 245
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 246
    const-string v0, "DETAILS"

    invoke-direct {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    const-string v1, "Always red hour digit"

    const-string v2, "Off: only a 1 is red, like stock OnePlus"

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->redHour(Landroid/content/Context;)Z

    move-result v4

    new-instance v5, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$5;

    invoke-direct {v5, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$5;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    move-object v0, p0

    .line 247
    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/Switch;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;

    move-result-object v0

    .line 255
    invoke-static {v8, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v9, v2, v9, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 247
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->divider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    const-string v1, "Show \u201cNever Settle\u201d"

    const-string v2, "Shown when there is no weather line"

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->showSlogan(Landroid/content/Context;)Z

    move-result v4

    new-instance v5, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$6;

    invoke-direct {v5, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$6;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    move-object v0, p0

    .line 257
    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/Switch;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;

    move-result-object v0

    .line 265
    invoke-static {v8, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 257
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->divider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    const-string v1, "\u201cNever Settle\u201d in red"

    const-string v2, "Off follows the style colour"

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sloganRed(Landroid/content/Context;)Z

    move-result v4

    new-instance v5, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$7;

    invoke-direct {v5, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$7;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    move-object v0, p0

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/Switch;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;

    move-result-object v0

    .line 275
    invoke-static {v8, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 267
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-direct {p0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->addCard(Landroid/view/View;)V

    .line 277
    return-void
.end method

.method private buildFont()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v9, -0x2

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 213
    const-string v0, "FONT"

    invoke-direct {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 215
    :goto_0
    sget-object v2, Lnet/oneplus/widget/op/OpSettings;->NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 217
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    const/16 v2, 0x11

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 220
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v10}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v1, v2, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 221
    const-string v2, "10:47"

    const/high16 v6, 0x41d00000    # 26.0f

    sget-object v7, Lnet/oneplus/widget/op/OpSettings;->FILES:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-static {p0, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-static {p0, v2, v6, v11, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 222
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    sget-object v2, Lnet/oneplus/widget/op/OpSettings;->NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/high16 v6, 0x41380000    # 11.5f

    const v7, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {p0, v2, v6, v7, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 224
    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 225
    invoke-static {v9, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v6, v1, v7, v1, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 227
    invoke-static {v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 228
    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$4;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;I)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->fontChips:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v9, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    if-nez v0, :cond_0

    move v2, v1

    :goto_1
    invoke-static {v6, v2, v1, v1, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_1

    .line 239
    :cond_1
    invoke-static {v11, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-static {p0, v10}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v1, v2, v1, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->bindFonts()V

    .line 241
    invoke-direct {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->addCard(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method private buildHeader()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 117
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "OPWidget++"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x14ffd8

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x8

    const/16 v4, 0xa

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 121
    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->black(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, v1, v2, v8, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    const-string v1, "OnePlus clock & weather, on any launcher"

    const/high16 v2, 0x41680000    # 14.5f

    const v3, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 124
    invoke-static {v7, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v2, v3, v4, v6, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->col:Landroid/widget/LinearLayout;

    invoke-static {v8, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v2, v6, v3, v6, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method private buildPreview()V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 130
    const-string v0, "LIVE PREVIEW"

    invoke-direct {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 135
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->preview:Landroid/widget/ImageView;

    .line 138
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->preview:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 140
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 141
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 142
    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 144
    const/high16 v2, 0x43280000    # 168.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v8, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-static {p0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v2, v1, v4, v1, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    new-array v5, v7, [Ljava/lang/String;

    const-string v0, "Clock"

    aput-object v0, v5, v1

    const-string v0, "Weather"

    aput-object v0, v5, v9

    const/4 v0, 0x2

    const-string v2, "Both"

    aput-object v2, v5, v0

    move v0, v1

    .line 148
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_1

    .line 150
    aget-object v2, v5, v0

    const/high16 v6, 0x41680000    # 14.5f

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-static {p0, v2, v6, v8, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    .line 151
    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 153
    invoke-static {v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 154
    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;I)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->kindChips:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    if-nez v0, :cond_0

    move v2, v1

    :goto_1
    invoke-static {v7, v2, v1, v1, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-direct {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->addCard(Landroid/view/View;)V

    .line 166
    return-void

    .line 133
    nop

    :array_0
    .array-data 4
        -0xe4c5ae
        -0xc5deae
        -0xa5d4d8    # -2.8999578E38f
    .end array-data
.end method

.method private buildStyle()V
    .locals 12

    .prologue
    const/high16 v11, 0x42380000    # 46.0f

    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 169
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 170
    const-string v0, "STYLE"

    invoke-direct {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 173
    const-string v1, "Neon glow"

    const-string v2, "Glowing colour styles for the widget text"

    .line 174
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    move v4, v6

    :goto_0
    new-instance v5, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;

    invoke-direct {v5, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    move-object v0, p0

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/Switch;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;

    move-result-object v0

    .line 182
    const/4 v1, -0x1

    invoke-static {v1, v10}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v7, v2, v7, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatchRow:Landroid/widget/LinearLayout;

    .line 185
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatchRow:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    aput-object v0, v1, v7

    new-array v0, v9, [I

    fill-array-data v0, :array_1

    aput-object v0, v1, v6

    new-array v0, v9, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v9

    const/4 v0, 0x3

    new-array v2, v9, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v0

    move v0, v7

    .line 187
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 188
    add-int/lit8 v2, v0, 0x1

    .line 189
    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;

    aget-object v4, v1, v0

    aget v4, v4, v7

    aget-object v5, v1, v0

    aget v5, v5, v6

    invoke-direct {v3, p0, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;-><init>(Landroid/content/Context;II)V

    .line 190
    new-instance v4, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;I)V

    invoke-virtual {v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$Swatch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatches:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatchRow:Landroid/widget/LinearLayout;

    invoke-static {p0, v11}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v11}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v4, v7, v7, v5, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v4, v7

    .line 174
    goto/16 :goto_0

    .line 203
    :cond_1
    const-string v0, ""

    const/high16 v1, 0x41580000    # 13.5f

    const v2, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->styleName:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->styleName:Landroid/widget/TextView;

    const v1, 0x800015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatchRow:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->styleName:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->swatchRow:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-static {v1, v10}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v7, v2, v7, v7}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->bindSwatches()V

    .line 208
    invoke-direct {p0, v8}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->addCard(Landroid/view/View;)V

    .line 209
    return-void

    .line 186
    :array_0
    .array-data 4
        -0x1a00
        -0xff1a01
    .end array-data

    :array_1
    .array-data 4
        -0xff1a01
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x388201
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0xc600ec
        0x0
    .end array-data
.end method

.method private buildWeather()V
    .locals 11

    .prologue
    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 280
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 281
    const-string v0, "WEATHER"

    invoke-direct {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 284
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 285
    const/high16 v1, 0x41900000    # 18.0f

    const v2, 0xffffff

    const v3, 0x3f666666    # 0.9f

    invoke-static {p0, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 287
    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v7}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;-><init>(Landroid/content/Context;II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    const-string v1, ""

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p0, v1, v2, v7, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    .line 289
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 290
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 291
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    const/4 v2, -0x2

    invoke-static {v5, v2, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-static {p0, v10}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v2, v3, v5, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const-string v1, "Forecast"

    const/high16 v2, 0x41580000    # 13.5f

    const v3, -0x801601

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    const/4 v2, 0x5

    const v3, -0x801601

    invoke-direct {v1, p0, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;-><init>(Landroid/content/Context;II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 296
    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 297
    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$8;

    invoke-direct {v1, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$8;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v7, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-static {p0, v10}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v1, v5, v2, v5, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 306
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 307
    const/high16 v1, 0x41900000    # 18.0f

    const v2, 0xffffff

    const v3, 0x3f19999a    # 0.6f

    invoke-static {p0, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 309
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    .line 310
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    const-string v2, "Search for your city"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    const v2, -0x7f000001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 312
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 313
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 314
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 316
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 318
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 319
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$9;

    invoke-direct {v2, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$9;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 330
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 332
    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, v7}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;-><init>(Landroid/content/Context;II)V

    .line 333
    invoke-static {p0, v10}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 334
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->setPadding(IIII)V

    .line 336
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 337
    invoke-static {v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 338
    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$10;

    invoke-direct {v2, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$10;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    .line 348
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 349
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    invoke-static {v7, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v5, v2, v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->divider()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v7, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v5, v2, v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    const-string v1, "Use Fahrenheit"

    const-string v2, "Switch the temperature unit from \u00b0C to \u00b0F"

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result v4

    new-instance v5, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$11;

    invoke-direct {v5, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$11;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    move-object v0, p0

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/Switch;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    .line 365
    invoke-static {v7, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 352
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-direct {p0, v6}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->addCard(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method private card()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v4, 0x41800000    # 16.0f

    .line 545
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 546
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 547
    const/high16 v1, 0x41e00000    # 28.0f

    const v2, 0xffffff

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 548
    invoke-static {p0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 549
    return-object v0
.end method

.method private choose(Lnet/oneplus/widget/op/OpWeather$Place;)V
    .locals 4

    .prologue
    .line 528
    iget-object v0, p1, Lnet/oneplus/widget/op/OpWeather$Place;->label:Ljava/lang/String;

    iget v1, p1, Lnet/oneplus/widget/op/OpWeather$Place;->lat:F

    iget v2, p1, Lnet/oneplus/widget/op/OpWeather$Place;->lon:F

    invoke-static {p0, v0, v1, v2}, Lnet/oneplus/widget/op/OpSettings;->setArea(Landroid/content/Context;Ljava/lang/String;FF)V

    .line 529
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnet/oneplus/widget/op/OpWeather;->fetchIfStale(Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 530
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 531
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->refreshArea()V

    .line 533
    const-string v0, "Area saved"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$15;

    invoke-direct {v1, p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$15;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    return-void
.end method

.method private divider()Landroid/view/View;
    .locals 4

    .prologue
    .line 569
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 570
    const v1, 0x1affffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 571
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    return-object v0
.end method

.method private label(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 557
    const/high16 v0, 0x41380000    # 11.5f

    const v1, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 558
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 559
    return-object v0
.end method

.method private note(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    .prologue
    .line 563
    const/high16 v0, 0x41580000    # 13.5f

    const v1, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 564
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 565
    return-object v0
.end method

.method private openWeather()V
    .locals 2

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method private refreshArea()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->areaName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    const-string v1, "No city selected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->areaText:Landroid/widget/TextView;

    const v1, -0x47000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private refreshPreview()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    .line 415
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->kindChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->kindChips:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->previewKind:I

    if-ne v1, v3, :cond_0

    .line 417
    const v3, -0x14ffd8

    const v4, 0x404ccccd    # 3.2f

    invoke-static {p0, v5, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v3

    .line 416
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 415
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 417
    :cond_0
    const v3, 0xffffff

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v5, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->glass(Landroid/content/Context;FIF)Lcom/sameeralsahab/opwidgetplus/ui/GlassDrawable;

    move-result-object v3

    goto :goto_1

    .line 419
    :cond_1
    const-string v0, "op_weather"

    invoke-virtual {p0, v0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    const-string v1, "weatherName"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    const-string v1, "temp"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    iget v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->previewKind:I

    if-eqz v0, :cond_3

    .line 423
    if-nez v5, :cond_2

    const-string v5, "Sunny"

    .line 424
    :cond_2
    if-nez v6, :cond_3

    const-string v6, "28"

    .line 427
    :cond_3
    :try_start_0
    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->previewKind:I

    const/high16 v2, 0x43820000    # 260.0f

    const/high16 v3, 0x42dc0000    # 110.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lnet/oneplus/widget/op/OpRenderer;->render(Landroid/content/Context;IFFFLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_2
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private runSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 470
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 471
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 472
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->query:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 473
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 474
    const-string v0, "Type at least 2 letters"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 497
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 478
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    const-string v2, "Searching\u2026"

    invoke-direct {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->note(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;

    invoke-direct {v2, p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private showResults(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/widget/op/OpWeather$Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/high16 v9, 0x41900000    # 18.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v2, 0x0

    .line 500
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 501
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    const-string v1, "No matching cities. Check the spelling or your connection."

    invoke-direct {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->note(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 505
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 506
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/widget/op/OpWeather$Place;

    .line 507
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 508
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 509
    invoke-static {p0, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 510
    iget-object v4, v0, Lnet/oneplus/widget/op/OpWeather$Place;->label:Ljava/lang/String;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-static {p0, v4, v5, v10, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    .line 511
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 512
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 513
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    new-instance v4, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    const/4 v5, 0x5

    const v6, -0x47000001

    invoke-direct {v4, p0, v5, v6}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;-><init>(Landroid/content/Context;II)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 516
    invoke-static {v3}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->pressable(Landroid/view/View;)V

    .line 517
    new-instance v4, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$14;

    invoke-direct {v4, p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$14;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Lnet/oneplus/widget/op/OpWeather$Place;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->results:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private switchRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/Switch;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;
    .locals 10

    .prologue
    const/high16 v9, 0x41000000    # 8.0f

    const/4 v8, 0x2

    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 577
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 578
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 579
    const/high16 v1, 0x42780000    # 62.0f

    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 580
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 581
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 582
    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {p0, p1, v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    const/high16 v2, 0x41480000    # 12.5f

    const v3, -0x47000001

    invoke-static {p0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {p0, p2, v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 584
    const/4 v3, 0x0

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 585
    invoke-static {v5, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v3, v6, v4, v6, v6}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v6, v5, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-static {p0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v2, v6, v3, v4, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->margins(Landroid/widget/LinearLayout$LayoutParams;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    new-array v1, v8, [[I

    new-array v2, v7, [I

    const v3, 0x10100a0

    aput v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v6, [I

    aput-object v2, v1, v7

    .line 589
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p3, v2}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 590
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v8, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p3, v2}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 591
    invoke-virtual {p3, p4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 592
    invoke-virtual {p3, p5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 593
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 595
    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$16;

    invoke-direct {v1, p0, p3}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$16;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    return-object v0

    .line 589
    nop

    :array_0
    .array-data 4
        -0x1
        -0x272720
    .end array-data

    .line 590
    :array_1
    .array-data 4
        -0x14ffd8
        0x40ffffff    # 7.9999995f
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v1, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-direct {v1, p0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->setPalette([IZ)V

    .line 72
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 76
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 77
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 78
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 79
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->col:Landroid/widget/LinearLayout;

    .line 80
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 82
    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->col:Landroid/widget/LinearLayout;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {p0, v5}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 83
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->col:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->setContentView(Landroid/view/View;)V

    .line 86
    invoke-static {p0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->edgeToEdge(Landroid/app/Activity;Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildHeader()V

    .line 89
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildPreview()V

    .line 90
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildStyle()V

    .line 91
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildFont()V

    .line 92
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildDetails()V

    .line 93
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildWeather()V

    .line 94
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildAbout()V

    .line 95
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->col:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/Ui;->enter(Landroid/view/ViewGroup;)V

    .line 97
    invoke-static {p0, p1}, Lnet/oneplus/widget/op/StarPrompt;->maybeShow(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 98
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        -0xf5f4eb
        -0xe8efde
        -0x6614ffd8
        0x5500d8ff
        0x558a4dff
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->destroyed:Z

    .line 110
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->refreshArea()V

    .line 104
    invoke-direct {p0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->refreshPreview()V

    .line 105
    return-void
.end method
