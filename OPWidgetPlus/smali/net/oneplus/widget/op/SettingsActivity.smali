.class public Lnet/oneplus/widget/op/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field private areaView:Landroid/widget/TextView;

.field private preview:Landroid/widget/ImageView;

.field private results:Landroid/widget/LinearLayout;

.field private search:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/widget/op/SettingsActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/oneplus/widget/op/SettingsActivity;->apply()V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/widget/op/SettingsActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/oneplus/widget/op/SettingsActivity;->doSearch()V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/widget/op/SettingsActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lnet/oneplus/widget/op/SettingsActivity;->showResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/widget/op/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->results:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/widget/op/SettingsActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/oneplus/widget/op/SettingsActivity;->showArea()V

    return-void
.end method

.method private apply()V
    .locals 7

    .prologue
    .line 386
    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->updateAll(Landroid/content/Context;)V

    .line 388
    const/4 v1, 0x0

    const/high16 v2, 0x43820000    # 260.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Lnet/oneplus/widget/op/OpRenderer;->render(Landroid/content/Context;IFFFLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lnet/oneplus/widget/op/SettingsActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doSearch()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 357
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lnet/oneplus/widget/op/SettingsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 340
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnet/oneplus/widget/op/SettingsActivity$13;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/widget/op/SettingsActivity$13;-><init>(Lnet/oneplus/widget/op/SettingsActivity;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 356
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private dp(F)I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lnet/oneplus/widget/op/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private link(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 318
    const v1, -0xe5a030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 320
    new-instance v1, Lnet/oneplus/widget/op/SettingsActivity$12;

    invoke-direct {v1, p0, p2}, Lnet/oneplus/widget/op/SettingsActivity$12;-><init>(Lnet/oneplus/widget/op/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-object v0
.end method

.method private showArea()V
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lnet/oneplus/widget/op/SettingsActivity;->areaView:Landroid/widget/TextView;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->areaName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void

    .line 333
    :cond_0
    const-string v0, "Not set - search below"

    goto :goto_0
.end method

.method private showResults(Ljava/util/List;)V
    .locals 9
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
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x41000000    # 8.0f

    .line 360
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 361
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    :cond_0
    if-nez p1, :cond_2

    const-string v0, "No internet connection"

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    :cond_1
    return-void

    .line 362
    :cond_2
    const-string v0, "No results"

    goto :goto_0

    .line 365
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/widget/op/OpWeather$Place;

    .line 366
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 367
    iget-object v3, v0, Lnet/oneplus/widget/op/OpWeather$Place;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    invoke-direct {p0, v7}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v8}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v7}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v8}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 371
    new-instance v3, Lnet/oneplus/widget/op/SettingsActivity$14;

    invoke-direct {v3, p0, v0}, Lnet/oneplus/widget/op/SettingsActivity$14;-><init>(Lnet/oneplus/widget/op/SettingsActivity;Lnet/oneplus/widget/op/OpWeather$Place;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v11, -0x1000000

    const/high16 v10, 0x41000000    # 8.0f

    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-string v0, "OPWidget++ Settings"

    invoke-virtual {p0, v0}, Lnet/oneplus/widget/op/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {p0, v0}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v0

    .line 49
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 52
    new-instance v0, Lnet/oneplus/widget/op/SettingsActivity$1;

    invoke-direct {v0, p0}, Lnet/oneplus/widget/op/SettingsActivity$1;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 60
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v4, "OPWidget++ Settings"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    invoke-static {p0, v1}, Lnet/oneplus/widget/op/OpRenderer;->font(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v4, "Always red hour digit"

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 70
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 71
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->redHour(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0, v6}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 73
    new-instance v4, Lnet/oneplus/widget/op/SettingsActivity$2;

    invoke-direct {v4, p0}, Lnet/oneplus/widget/op/SettingsActivity$2;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 82
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    const-string v4, "Off: only a 1 is red (stock OnePlus). On: the last hour digit is always red - 01, 02, 03 ... 12."

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    const v4, -0x888889

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {p0, v4}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->preview:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->preview:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 92
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 93
    const v4, -0xe4d5bc

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 94
    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 95
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 98
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 99
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->preview:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->preview:Landroid/widget/ImageView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-direct {p0, v4}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct {p0, v6}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v4, "Widget font"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    const v4, -0xaaaaab

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v4, Landroid/widget/RadioGroup;

    invoke-direct {v4, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fontIndex(Landroid/content/Context;)I

    move-result v5

    move v0, v1

    .line 112
    :goto_0
    sget-object v6, Lnet/oneplus/widget/op/OpSettings;->NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 113
    new-instance v6, Landroid/widget/RadioButton;

    invoke-direct {v6, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 114
    add-int/lit16 v7, v0, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 115
    sget-object v7, Lnet/oneplus/widget/op/OpSettings;->NAMES:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 117
    invoke-virtual {v6, v11}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 118
    invoke-static {p0, v0}, Lnet/oneplus/widget/op/OpRenderer;->font(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-direct {p0, v8}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {p0, v9}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v9

    invoke-virtual {v6, v7, v8, v1, v9}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 120
    new-instance v7, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    if-ne v0, v5, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Lnet/oneplus/widget/op/SettingsActivity$3;

    invoke-direct {v0, p0}, Lnet/oneplus/widget/op/SettingsActivity$3;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 130
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v4, "Cyberpunk theme"

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v5, v1, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    new-instance v4, Lnet/oneplus/widget/op/SettingsActivity$5;

    invoke-direct {v4, p0}, Lnet/oneplus/widget/op/SettingsActivity$5;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    const-string v4, "Cyberpunk color"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    const v4, -0xaaaaab

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {p0, v4}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v4, Landroid/widget/RadioGroup;

    invoke-direct {v4, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->cyberColor(Landroid/content/Context;)I

    move-result v5

    const/4 v0, 0x1

    .line 140
    :goto_1
    sget-object v6, Lnet/oneplus/widget/op/OpSettings;->STYLES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_5

    .line 141
    new-instance v6, Landroid/widget/RadioButton;

    invoke-direct {v6, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 142
    add-int/lit16 v7, v0, 0x7d0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 143
    sget-object v7, Lnet/oneplus/widget/op/OpSettings;->STYLES:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 145
    invoke-virtual {v6, v11}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 146
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v7

    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v8

    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v9

    invoke-virtual {v6, v7, v8, v1, v9}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 147
    if-lez v0, :cond_4

    .line 148
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 149
    const v8, -0xeee7d9

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 150
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 151
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    sget-object v7, Lnet/oneplus/widget/op/OpSettings;->MAIN:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 153
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    const/high16 v8, 0x40800000    # 4.0f

    invoke-direct {p0, v8}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 155
    invoke-virtual {v4, v6, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :goto_2
    if-ne v0, v5, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_4
    new-instance v7, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 161
    :cond_5
    new-instance v0, Lnet/oneplus/widget/op/SettingsActivity$4;

    invoke-direct {v0, p0}, Lnet/oneplus/widget/op/SettingsActivity$4;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/16 v0, 0xbb8

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->setId(I)V

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v0

    const/4 v5, 0x0

    if-lez v0, :cond_6

    const/4 v5, 0x1

    :cond_6
    invoke-static {v4, v5}, Lnet/oneplus/widget/op/ThemeUi;->setGroupEnabled(Landroid/widget/RadioGroup;Z)V

    .line 168
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 194
    const-string v4, "Show \"Never Settle\" text"

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 196
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 197
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->showSlogan(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 198
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 199
    new-instance v4, Lnet/oneplus/widget/op/SettingsActivity$7;

    invoke-direct {v4, p0}, Lnet/oneplus/widget/op/SettingsActivity$7;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 207
    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 208
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 211
    const-string v4, "\"Never Settle\" in red"

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 213
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 214
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sloganRed(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 216
    new-instance v4, Lnet/oneplus/widget/op/SettingsActivity$8;

    invoke-direct {v4, p0}, Lnet/oneplus/widget/op/SettingsActivity$8;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 227
    const-string v4, "Weather area"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    const v4, -0xaaaaab

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {p0, v4}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 231
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->areaView:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->areaView:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 235
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->areaView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->areaView:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lnet/oneplus/widget/op/OpRenderer;->font(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->areaView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    invoke-direct {p0}, Lnet/oneplus/widget/op/SettingsActivity;->showArea()V

    .line 240
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    .line 243
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    const-string v5, "Search your city"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 245
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 246
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 247
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setTextColor(I)V

    .line 248
    iget-object v4, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 250
    const-string v5, "Search"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 251
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    new-instance v0, Lnet/oneplus/widget/op/SettingsActivity$9;

    invoke-direct {v0, p0}, Lnet/oneplus/widget/op/SettingsActivity$9;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->search:Landroid/widget/EditText;

    new-instance v4, Lnet/oneplus/widget/op/SettingsActivity$10;

    invoke-direct {v4, p0}, Lnet/oneplus/widget/op/SettingsActivity$10;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 266
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->results:Landroid/widget/LinearLayout;

    .line 267
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->results:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 268
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 271
    const-string v4, "Use \u00b0F instead of \u00b0C"

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 273
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 274
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    invoke-direct {p0, v10}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v12}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 276
    new-instance v4, Lnet/oneplus/widget/op/SettingsActivity$11;

    invoke-direct {v4, p0}, Lnet/oneplus/widget/op/SettingsActivity$11;-><init>(Lnet/oneplus/widget/op/SettingsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 283
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    const-string v0, ""

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/widget/op/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lnet/oneplus/widget/op/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_3
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    const-string v5, "About"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 294
    const v5, -0xaaaaab

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {p0, v6}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v6

    invoke-virtual {v4, v1, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 296
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPWidget++ v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\nPorted with AppsPorter by Sameer Al Sahab\nOriginal widgets \u00a9 OnePlus\nWeather data by Open-Meteo.com\nFonts: OPlus Sans, O Sans"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 304
    const v0, -0xcccccd

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p0, v0}, Lnet/oneplus/widget/op/SettingsActivity;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 306
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    const-string v0, "GitHub: github.com/SameerAlSahab/OPWidgetPlus"

    const-string v1, "https://github.com/SameerAlSahab/OPWidgetPlus"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/widget/op/SettingsActivity;->link(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    const-string v0, "Telegram: @apcports2"

    const-string v1, "https://t.me/apcports2"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/widget/op/SettingsActivity;->link(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    invoke-virtual {p0, v2}, Lnet/oneplus/widget/op/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 311
    invoke-direct {p0}, Lnet/oneplus/widget/op/SettingsActivity;->apply()V

    invoke-static {p0, p1}, Lnet/oneplus/widget/op/StarPrompt;->maybeShow(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 312
    return-void

    .line 289
    :catch_0
    move-exception v4

    goto/16 :goto_3
.end method
