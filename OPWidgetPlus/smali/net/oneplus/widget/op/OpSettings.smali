.class public final Lnet/oneplus/widget/op/OpSettings;
.super Ljava/lang/Object;
.source "OpSettings.java"


# static fields
.field public static final FILES:[Ljava/lang/String;

.field public static final MAIN:[I

.field public static final NAMES:[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "op_settings"

.field public static final STYLES:[Ljava/lang/String;

.field public static final SUB:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "OPlusSans-Black.ttf"

    aput-object v1, v0, v2

    const-string v1, "OPlusSans-Light.ttf"

    aput-object v1, v0, v3

    const-string v1, "OSans-Regular.ttf"

    aput-object v1, v0, v4

    sput-object v0, Lnet/oneplus/widget/op/OpSettings;->FILES:[Ljava/lang/String;

    .line 8
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "OPlus Sans Black"

    aput-object v1, v0, v2

    const-string v1, "OPlus Sans Light"

    aput-object v1, v0, v3

    const-string v1, "O Sans Regular"

    aput-object v1, v0, v4

    sput-object v0, Lnet/oneplus/widget/op/OpSettings;->NAMES:[Ljava/lang/String;

    .line 9
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Classic (white)"

    aput-object v1, v0, v2

    const-string v1, "Yellow + Cyan"

    aput-object v1, v0, v3

    const-string v1, "Neon Cyan"

    aput-object v1, v0, v4

    const-string v1, "Neon Purple"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Neon Green"

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/widget/op/OpSettings;->STYLES:[Ljava/lang/String;

    .line 12
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/oneplus/widget/op/OpSettings;->MAIN:[I

    .line 13
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/oneplus/widget/op/OpSettings;->SUB:[I

    return-void

    .line 12
    nop

    :array_0
    .array-data 4
        -0x1
        -0x311f6
        -0xff0f01
        -0x4fb401
        -0xe2127d
    .end array-data

    .line 13
    :array_1
    .array-data 4
        -0x1
        -0xff0f01
        -0xff0f01
        -0x4fb401
        -0xe2127d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areaName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "area"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cyberColor(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cyberColor"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static fahrenheit(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 66
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fahrenheit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static fontIndex(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "font"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 33
    if-ltz v0, :cond_0

    sget-object v2, Lnet/oneplus/widget/op/OpSettings;->FILES:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static hasArea(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 49
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lat"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lon"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lat(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 56
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static lon(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 58
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static redHour(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 79
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp2(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "redHour"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setArea(Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 2

    .prologue
    .line 61
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "area"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lat"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lon"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    const-string v0, "op_weather"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    return-void
.end method

.method public static setCyberColor(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cyberColor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFahrenheit(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 70
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fahrenheit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    const-string v0, "op_weather"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public static setFontIndex(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "font"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method

.method public static setRedHour(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp2(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "redHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setShowSlogan(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 45
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "slogan"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method

.method public static setSloganRed(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 85
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp2(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sloganRed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStyle(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 22
    const-string v0, "op_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "style"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    return-void
.end method

.method public static showSlogan(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 41
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "slogan"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sloganRed(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 83
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->sp2(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sloganRed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static sp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 28
    const-string v0, "op_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static sp2(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 75
    const-string v0, "op_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static style(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "op_settings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "style"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 18
    if-ltz v0, :cond_0

    sget-object v2, Lnet/oneplus/widget/op/OpSettings;->STYLES:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
