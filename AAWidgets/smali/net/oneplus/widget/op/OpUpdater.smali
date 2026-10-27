.class public final Lnet/oneplus/widget/op/OpUpdater;
.super Ljava/lang/Object;
.source "OpUpdater.java"


# static fields
.field static final ACTION_TICK:Ljava/lang/String; = "com.awesomeandro.widgetsplus.op.TICK"

.field private static final DEF_H:[I

.field private static final DEF_W:[I

.field private static final PREFS:Ljava/lang/String; = "op_weather"

.field private static final WEATHER_PKG:Ljava/lang/String; = "net.oneplus.weather"

.field private static final WEATHER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 26
    const-string v0, "content://com.oneplus.weather.ContentProvider/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/widget/op/OpUpdater;->WEATHER_URI:Landroid/net/Uri;

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/oneplus/widget/op/OpUpdater;->DEF_W:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/oneplus/widget/op/OpUpdater;->DEF_H:[I

    return-void

    .line 30
    :array_0
    .array-data 4
        0x114
        0x114
        0x114
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0x6e
        0x6e
        0x6e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancel(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 202
    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 203
    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->tickIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static clickIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 147
    if-ne p1, v2, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    :goto_0
    if-nez v2, :cond_0

    .line 149
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.oneplus.deskclock"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "com.google.android.deskclock"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.android.deskclock"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "com.sec.android.app.clockpackage"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "com.coloros.alarmclock"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "com.oplus.alarmclock"

    aput-object v6, v4, v5

    .line 152
    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v2, v4, v1

    .line 153
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_1

    .line 157
    :cond_0
    if-nez v2, :cond_3

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 161
    :goto_2
    if-nez v1, :cond_2

    .line 166
    :goto_3
    return-object v0

    .line 152
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :cond_2
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    add-int/lit8 v2, p1, 0x64

    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 165
    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method static hasAnyWidget(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    move v1, v0

    .line 53
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    invoke-static {p0, v2, v1}, Lnet/oneplus/widget/op/OpUpdater;->ids(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static ids(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I
    .locals 2

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {p2}, Lnet/oneplus/widget/op/OpUpdater;->providerClass(I)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method private static pixelScale(Landroid/content/Context;FF)F
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 111
    mul-float v1, p1, v0

    mul-float/2addr v1, p2

    mul-float/2addr v1, v0

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const v0, 0x495bba00    # 900000.0f

    .line 113
    :goto_0
    cmpg-float v2, v1, v0

    if-gtz v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    return v0

    .line 112
    :cond_0
    const v0, 0x48260400    # 170000.0f

    goto :goto_0

    .line 113
    :cond_1
    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_1
.end method

.method static providerClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 39
    const-class v0, Lnet/oneplus/widget/op/ClockProvider;

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    const-class v0, Lnet/oneplus/widget/op/WeatherProvider;

    goto :goto_0

    .line 38
    :pswitch_1
    const-class v0, Lnet/oneplus/widget/op/WeatherClockProvider;

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static res(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static scheduleNext(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    .line 181
    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 182
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    mul-long/2addr v2, v6

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    .line 185
    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->tickIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 188
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 189
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v4

    .line 194
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    goto :goto_0

    .line 191
    :cond_1
    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private static sizeDp(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)[F
    .locals 9

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_2

    move v0, v2

    .line 120
    :goto_0
    if-eqz v0, :cond_3

    .line 121
    const-string v0, "appWidgetMaxWidth"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 122
    const-string v0, "appWidgetMinHeight"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    :goto_1
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 128
    :cond_0
    sget-object v0, Lnet/oneplus/widget/op/OpUpdater;->DEF_W:[I

    aget v1, v0, p3

    .line 129
    sget-object v0, Lnet/oneplus/widget/op/OpUpdater;->DEF_H:[I

    aget v0, v0, p3

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 132
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    .line 133
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v6, v4

    .line 134
    new-array v6, v7, [F

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v6, v3

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v6, v2

    return-object v6

    :cond_2
    move v0, v3

    .line 118
    goto :goto_0

    .line 124
    :cond_3
    const-string v0, "appWidgetMinWidth"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 125
    const-string v0, "appWidgetMaxHeight"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method private static tickIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/oneplus/widget/op/OpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.awesomeandro.widgetsplus.op.TICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnet/oneplus/widget/op/OpUpdater;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II[F)V

    .line 78
    return-void
.end method

.method public static update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II[F)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lnet/oneplus/widget/op/OpUpdater;->sizeDp(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)[F

    move-result-object v9

    .line 84
    if-eqz p3, :cond_3

    .line 85
    const-string v0, "op_weather"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    const-string v2, "weatherName"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    const-string v2, "temp"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    :goto_0
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v2, 0x1

    aget v2, v9, v2

    invoke-static {p0, v0, v2}, Lnet/oneplus/widget/op/OpUpdater;->pixelScale(Landroid/content/Context;FF)F

    move-result v0

    .line 90
    if-eqz p4, :cond_0

    const v2, 0x47fde800    # 130000.0f

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    move v8, v1

    move v4, v0

    .line 91
    :goto_1
    const/4 v0, 0x3

    if-ge v8, v0, :cond_2

    .line 92
    const/4 v0, 0x0

    aget v2, v9, v0

    const/4 v0, 0x1

    aget v3, v9, v0

    move-object v0, p0

    move v1, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lnet/oneplus/widget/op/OpRenderer;->render(Landroid/content/Context;IFFFLjava/lang/String;Ljava/lang/String;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "op_widget_layout"

    const-string v7, "layout"

    invoke-static {p0, v3, v7}, Lnet/oneplus/widget/op/OpUpdater;->res(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 94
    const-string v2, "op_image"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lnet/oneplus/widget/op/OpUpdater;->res(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 95
    invoke-static {p0, p3}, Lnet/oneplus/widget/op/OpUpdater;->clickIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    const-string v2, "op_root"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lnet/oneplus/widget/op/OpUpdater;->res(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :cond_1
    :try_start_1
    invoke-virtual {p1, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :cond_2
    :goto_2
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v0

    .line 91
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v6, v0

    move-object v5, v0

    goto/16 :goto_0
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    move v3, v1

    move v2, v1

    .line 61
    :goto_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_1

    .line 62
    invoke-static {p0, v4, v3}, Lnet/oneplus/widget/op/OpUpdater;->ids(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget v7, v5, v0

    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-static {p0, v4, v7, v3}, Lnet/oneplus/widget/op/OpUpdater;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 67
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->scheduleNext(Landroid/content/Context;)V

    .line 68
    :goto_2
    return-void

    .line 67
    :cond_2
    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->cancel(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public static updateKind(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 71
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 72
    invoke-static {p0, v1, p1}, Lnet/oneplus/widget/op/OpUpdater;->ids(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    invoke-static {p0, v1, v4, p1}, Lnet/oneplus/widget/op/OpUpdater;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->scheduleNext(Landroid/content/Context;)V

    .line 74
    return-void
.end method
