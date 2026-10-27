.class public Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/awesomeandro/widgetsplus/nothing/AAChecked;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field static final BG:I = -0xf4f2ee

.field static final INK:I = -0x16150e

.field static final MUTED:I = -0x838076

.field static final NT_FONTS:[Ljava/lang/String;

.field static final NT_STYLES:[Ljava/lang/String;

.field static final RED:I = -0x17dfd6


# instance fields
.field area:Landroid/widget/TextView;

.field groups:[[Lcom/awesomeandro/widgetsplus/nothing/AAOption;

.field results:Landroid/widget/LinearLayout;

.field root:Landroid/widget/LinearLayout;

.field search:Landroid/widget/EditText;

.field status:Landroid/widget/TextView;

.field sv:Landroid/widget/ScrollView;

.field swatches:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Black"

    const-string v1, "Translucent"

    const-string v2, "Transparent"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->NT_STYLES:[Ljava/lang/String;

    const-string v0, "NType 82"

    const-string v1, "Lettera Mono"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->NT_FONTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->groups:[[Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    return-void
.end method


# virtual methods
.method applyOp()V
    .locals 0

    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->updateAll(Landroid/content/Context;)V

    return-void
.end method

.method button(Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, "nt_inter.ttf"

    invoke-static {p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, -0x16150e

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v1

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p2, :cond_1

    const p2, -0x17dfd6

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result p2

    const v1, -0xb5b1a6

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method choices([Ljava/lang/String;II)V
    .locals 6

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->groups:[[Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    array-length v1, p1

    new-array v1, v1, [Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    aput-object v1, v0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    new-instance v2, Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int v4, p3, v3

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->setListener(Lcom/awesomeandro/widgetsplus/nothing/AAChecked;)V

    if-ne v1, p2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    iput-boolean v3, v2, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->sel:Z

    iget-boolean v3, v2, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->sel:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v5, v4

    :goto_2
    iput v5, v2, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->dot:F

    iget-object v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->groups:[[Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    aget-object v3, v3, p3

    aput-object v2, v3, v1

    iget-object v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dp(I)I
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method finishWelcome()V
    .locals 3

    const-string v0, "aa_main"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onboarded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->settings()V

    return-void
.end method

.method header(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    const-string v3, "nt_lettera_mono.otf"

    const/16 v4, 0xc

    const v5, -0x17dfd6

    const/16 v6, 0x1c

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method link(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    const-string v2, "nt_inter.ttf"

    const/16 v3, 0xe

    const v4, -0x16150e

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method note(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    const-string v3, "nt_inter.ttf"

    const/16 v4, 0xc

    const v5, -0x838076

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onChecked(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p2, p1, 0x64

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    rem-int/lit8 p1, p1, 0x64

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->groups:[[Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    aget-object v3, v3, p2

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-eq v2, p1, :cond_0

    iget-object v3, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->groups:[[Lcom/awesomeandro/widgetsplus/nothing/AAOption;

    aget-object v3, v3, p2

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAOption;->setSelectedOption(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "nt_settings"

    invoke-virtual {p0, v2, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-nez p2, :cond_2

    const-string p2, "style"

    :goto_1
    invoke-interface {v2, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->refreshAll(Landroid/content/Context;)V

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    const-string p2, "date_font"

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    invoke-static {p0, p1}, Lnet/oneplus/widget/op/OpSettings;->setFontIndex(Landroid/content/Context;I)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->applyOp()V

    return-void

    :cond_5
    invoke-static {p0, p1}, Lnet/oneplus/widget/op/OpSettings;->setStyle(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->swatches:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    if-lez p1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_7
    check-cast p1, Ljava/lang/String;

    const-string v0, "red"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0, p2}, Lnet/oneplus/widget/op/OpSettings;->setRedHour(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_8
    const-string v0, "slogan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p2}, Lnet/oneplus/widget/op/OpSettings;->setShowSlogan(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_9
    const-string v0, "slogan_red"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p2}, Lnet/oneplus/widget/op/OpSettings;->setSloganRed(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_a
    const-string v0, "f"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0, p2}, Lnet/oneplus/widget/op/OpSettings;->setFahrenheit(Landroid/content/Context;Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;

    invoke-direct {p2, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->reveal()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_9

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lnet/oneplus/widget/op/OpSettings;->setCyberColor(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->applyOp()V

    return-void

    :cond_1
    instance-of v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0, v0, v2, v1}, Lnet/oneplus/widget/op/OpSettings;->setArea(Landroid/content/Context;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->area:Landroid/widget/TextView;

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->status:Landroid/widget/TextView;

    const-string v0, "Area saved"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;

    invoke-direct {v0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/String;

    const-string v0, "url:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string v0, "welcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->welcome(I)V

    return-void

    :cond_4
    const-string v0, "ob_star"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->repo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    const-string v0, "ob_skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ob_next2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "ob_next0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->welcome(I)V

    return-void

    :cond_7
    const-string v0, "ob_next1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->welcome(I)V

    return-void

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->finishWelcome()V

    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "aa_main"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "onboarded"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->welcome(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->settings()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->status:Landroid/widget/TextView;

    const-string p1, "Type at least 2 letters"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->status:Landroid/widget/TextView;

    const-string p3, "Searching\u2026"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/awesomeandro/widgetsplus/nothing/AASearch;

    invoke-direct {p3, p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/AASearch;-><init>(Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->reveal()V

    :cond_0
    return-void
.end method

.method repo()Ljava/lang/String;
    .locals 2

    const-string v0, "nt_repo_url"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method reveal()V
    .locals 4

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->sv:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->sv:Landroid/widget/ScrollView;

    new-instance v1, Lcom/awesomeandro/widgetsplus/nothing/AAScroll;

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->sv:Landroid/widget/ScrollView;

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->area:Landroid/widget/TextView;

    invoke-direct {v1, v2, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAScroll;-><init>(Landroid/widget/ScrollView;Landroid/view/View;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method settings()V
    .locals 12

    const-string v0, "nt_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v6

    invoke-virtual {p0, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v4

    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v7

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    const-string v5, "AAWidgets"

    const-string v6, "nt_ndot77jp.ttf"

    const/16 v7, 0x1c

    const v8, -0x16150e

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "AwesomeAndroWidgets+ : Nothing and OnePlus widgets for any launcher."

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->note(Ljava/lang/String;)V

    const-string v2, "NOTHING WIDGETS: STYLE"

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->header(Ljava/lang/String;)V

    sget-object v2, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->NT_STYLES:[Ljava/lang/String;

    const-string v4, "style"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v2, v4, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->choices([Ljava/lang/String;II)V

    const-string v2, "Translucent is a see-through white card. Transparent has no background and white text."

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->note(Ljava/lang/String;)V

    const-string v2, "NOTHING WIDGETS: DATE FONT"

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->header(Ljava/lang/String;)V

    sget-object v2, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->NT_FONTS:[Ljava/lang/String;

    const-string v4, "date_font"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v2, v0, v3}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->choices([Ljava/lang/String;II)V

    const-string v0, "ONEPLUS WIDGETS: FONT"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->header(Ljava/lang/String;)V

    sget-object v0, Lnet/oneplus/widget/op/OpSettings;->NAMES:[Ljava/lang/String;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fontIndex(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->choices([Ljava/lang/String;II)V

    const-string v0, "ONEPLUS WIDGETS: STYLE"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->header(Ljava/lang/String;)V

    sget-object v0, Lnet/oneplus/widget/op/OpSettings;->STYLES:[Ljava/lang/String;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v2, v5}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->choices([Ljava/lang/String;II)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->swatches:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->swatches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->swatches:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v6

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v7

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v1, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v0, v3

    :goto_0
    sget-object v6, Lnet/oneplus/widget/op/OpSettings;->MAIN:[I

    array-length v6, v6

    if-ge v0, v6, :cond_0

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v9

    invoke-virtual {p0, v8}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget-object v8, Lnet/oneplus/widget/op/OpSettings;->MAIN:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v8

    const v9, 0x66ffffff

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lnet/oneplus/widget/op/OpSettings;->MAIN:[I

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->swatches:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->swatches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->swatches:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "ONEPLUS WIDGETS: DETAILS"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->header(Ljava/lang/String;)V

    const-string v0, "Always red hour digit"

    const-string v1, "Off: only a 1 is red, like stock OnePlus"

    const-string v2, "red"

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->redHour(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Show \u201cNever Settle\u201d"

    const-string v1, "Shown when there is no weather line"

    const-string v2, "slogan"

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->showSlogan(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "\u201cNever Settle\u201d in red"

    const-string v1, "Off follows the style colour"

    const-string v2, "slogan_red"

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sloganRed(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "WEATHER (ONEPLUS AND NOTHING WIDGETS)"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->header(Ljava/lang/String;)V

    const-string v0, "Use Fahrenheit"

    const-string v1, "Switch the temperature unit from \u00b0C to \u00b0F"

    const-string v2, "f"

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->areaName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_2
    const-string v0, "No city selected"

    goto :goto_2

    :goto_3
    const-string v8, "nt_ndot55.otf"

    const v10, -0x16150e

    const/16 v11, 0xe

    const/16 v9, 0x10

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->area:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->area:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    const-string v1, "Search for your city"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    const v1, -0x838076

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    const v1, -0x16150e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    const-string v1, "nt_inter.ttf"

    invoke-static {p0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->search:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v7, "Type at least 2 letters"

    const-string v8, "nt_inter.ttf"

    const/16 v9, 0xc

    const v10, -0x838076

    const/4 v11, 0x4

    invoke-virtual/range {v6 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->results:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "ABOUT"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->header(Ljava/lang/String;)V

    const-string v0, "Nothing widgets: designs, icons, fonts (NDot, NType, Lettera Mono), quotes and games by Nothing Technology Limited. Unofficial port, not affiliated with Nothing."

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->note(Ljava/lang/String;)V

    const-string v0, "OnePlus widgets: OPWidget++ by SameerAlSahab (this project). Weather data by Open-Meteo.com."

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->note(Ljava/lang/String;)V

    const-string v0, "\u2605  Star AAWidgets on GitHub"

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->repo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->link(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    const-string v7, "Show the welcome again"

    const-string v8, "nt_inter.ttf"

    const v10, -0x16150e

    const/16 v11, 0xa

    const/16 v9, 0xe

    invoke-virtual/range {v6 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "welcome"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->sv:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->sv:Landroid/widget/ScrollView;

    const v1, -0xf4f2ee

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->sv:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->sv:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method showResults(Ljava/util/List;)V
    .locals 11

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->reveal()V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->status:Landroid/widget/TextView;

    const-string v1, "Tap a city to use it"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "lat"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "lon"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    const-string v6, "nt_inter.ttf"

    const/16 v9, 0xa

    const v8, -0x16150e

    const/16 v7, 0xf

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    const/4 v3, 0x1

    aput-object v10, v5, v3

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->status:Landroid/widget/TextView;

    const-string p1, "No matching cities. Check the spelling or your connection."

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p1, p3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, p5}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result p1

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, p2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v7, "nt_inter.ttf"

    const v9, -0x16150e

    const/16 v8, 0x10

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    const-string v6, "nt_inter.ttf"

    const/4 v9, 0x0

    const v8, -0x838076

    const/16 v7, 0xc

    move-object v4, p0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    invoke-direct {p1, v1, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;

    invoke-direct {p1, p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p4}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->setChecked(Z)V

    invoke-virtual {p1, p3}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/awesomeandro/widgetsplus/nothing/AASwitch;->setListener(Lcom/awesomeandro/widgetsplus/nothing/AAChecked;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method welcome(I)V
    .locals 13

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, -0xf4f2ee

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x48

    invoke-virtual {p0, v4}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v2

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v7, "AA"

    const-string v8, "nt_ndot77jp.ttf"

    const/16 v9, 0x40

    const v2, -0x17dfd6

    const/4 v11, 0x0

    move-object v6, p0

    move v10, v2

    invoke-virtual/range {v6 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "Welcome to AAWidgets"

    const-string v4, "Add your widgets"

    const-string v5, "Enjoying it? Star the repo"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Nothing and OnePlus widgets that work in any launcher. No Nothing phone needed."

    const-string v5, "Long-press your home screen, tap Widgets and look for AAWidgets. Nothing widgets follow the style you pick here. For weather, choose your city in this app."

    const-string v6, "AAWidgets is free and open source. A star on GitHub is the easiest way to say thanks and helps others find it."

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    aget-object v6, v3, p1

    const-string v7, "nt_ndot55.otf"

    const/16 v8, 0x1a

    const v9, -0x16150e

    const/16 v10, 0x1c

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    aget-object v6, v4, p1

    const-string v7, "nt_inter.ttf"

    const v9, -0x838076

    const/4 v10, 0x6

    const/16 v8, 0x10

    invoke-virtual/range {v5 .. v10}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->text(Ljava/lang/String;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const-string v4, "\u2605  Star on GitHub"

    const-string v7, "ob_star"

    invoke-virtual {p0, v4, v1, v7}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->button(Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v7, 0xe

    invoke-virtual {p0, v7}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v7

    invoke-virtual {v4, v5, v7, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move v8, v5

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v11, -0xd5d2ca

    if-ne v8, p1, :cond_1

    move v11, v2

    :cond_1
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v12

    invoke-virtual {p0, v11}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v11

    invoke-direct {v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v2, v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ge p1, v3, :cond_3

    const-string v2, "Skip"

    const-string v6, "ob_skip"

    invoke-virtual {p0, v2, v5, v6}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->button(Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    if-ge p1, v3, :cond_4

    const-string v2, "Next"

    goto :goto_1

    :cond_4
    const-string v2, "Get started"

    :goto_1
    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ob_next"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v5, p1}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->button(Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
