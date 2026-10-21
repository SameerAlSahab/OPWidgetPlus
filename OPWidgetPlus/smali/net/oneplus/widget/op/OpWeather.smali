.class public final Lnet/oneplus/widget/op/OpWeather;
.super Ljava/lang/Object;
.source "OpWeather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/widget/op/OpWeather$Place;
    }
.end annotation


# static fields
.field private static final STALE_MS:J = 0x1b7740L

.field private static volatile busy:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lnet/oneplus/widget/op/OpWeather;->busy:Z

    return p0
.end method

.method private static describe(IZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "Sunny"

    .line 123
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v0, "Clear"

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "Mostly sunny"

    goto :goto_0

    :cond_2
    const-string v0, "Mostly clear"

    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const-string v0, "Partly cloudy"

    goto :goto_0

    .line 115
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const-string v0, "Overcast"

    goto :goto_0

    .line 116
    :cond_5
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_6

    const/16 v0, 0x30

    if-ne p0, v0, :cond_7

    :cond_6
    const-string v0, "Fog"

    goto :goto_0

    .line 117
    :cond_7
    const/16 v0, 0x33

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-gt p0, v0, :cond_8

    const-string v0, "Drizzle"

    goto :goto_0

    .line 118
    :cond_8
    const/16 v0, 0x3d

    if-lt p0, v0, :cond_9

    const/16 v0, 0x43

    if-gt p0, v0, :cond_9

    const-string v0, "Rain"

    goto :goto_0

    .line 119
    :cond_9
    const/16 v0, 0x47

    if-lt p0, v0, :cond_a

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_a

    const-string v0, "Snow"

    goto :goto_0

    .line 120
    :cond_a
    const/16 v0, 0x50

    if-lt p0, v0, :cond_b

    const/16 v0, 0x52

    if-gt p0, v0, :cond_b

    const-string v0, "Showers"

    goto :goto_0

    .line 121
    :cond_b
    const/16 v0, 0x55

    if-eq p0, v0, :cond_c

    const/16 v0, 0x56

    if-ne p0, v0, :cond_d

    :cond_c
    const-string v0, "Snow showers"

    goto :goto_0

    .line 122
    :cond_d
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_e

    const-string v0, "Thunderstorm"

    goto :goto_0

    .line 123
    :cond_e
    const-string v0, "Cloudy"

    goto :goto_0
.end method

.method public static fetch(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    :goto_0
    return v0

    .line 70
    :cond_0
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "https://api.open-meteo.com/v1/forecast?latitude=%.3f&longitude=%.3f&current=temperature_2m,weather_code,is_day&timezone=auto%s"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 73
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lat(Landroid/content/Context;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lon(Landroid/content/Context;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    .line 74
    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "&temperature_unit=fahrenheit"

    :goto_1
    aput-object v2, v5, v6

    .line 70
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lnet/oneplus/widget/op/OpWeather;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "current"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 76
    const-string v3, "temperature_2m"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 77
    const-string v3, "weather_code"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "is_day"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    :goto_2
    invoke-static {v3, v2}, Lnet/oneplus/widget/op/OpWeather;->describe(IZ)Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v3, "op_weather"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "weatherName"

    .line 79
    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "temp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ts"

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v1

    .line 81
    goto/16 :goto_0

    .line 74
    :cond_1
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move v2, v0

    .line 77
    goto :goto_2

    .line 82
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static fetchIfStale(Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 90
    const-string v3, "op_weather"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 91
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "ts"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    :cond_0
    move v0, v1

    .line 92
    :cond_1
    invoke-static {v2}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v0, Lnet/oneplus/widget/op/OpWeather;->busy:Z

    if-eqz v0, :cond_4

    .line 93
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 109
    :cond_3
    :goto_0
    return-void

    .line 96
    :cond_4
    sput-boolean v1, Lnet/oneplus/widget/op/OpWeather;->busy:Z

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/oneplus/widget/op/OpWeather$1;

    invoke-direct {v1, v2, p2}, Lnet/oneplus/widget/op/OpWeather$1;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0x1f40

    .line 32
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 33
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 40
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static search(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/widget/op/OpWeather$Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://geocoding-api.open-meteo.com/v1/search?count=6&language=en&format=json&name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lnet/oneplus/widget/op/OpWeather;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "results"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 52
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    new-instance v4, Lnet/oneplus/widget/op/OpWeather$Place;

    invoke-direct {v4}, Lnet/oneplus/widget/op/OpWeather$Place;-><init>()V

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v6, "admin1"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "country"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lnet/oneplus/widget/op/OpWeather$Place;->label:Ljava/lang/String;

    .line 59
    const-string v5, "latitude"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v4, Lnet/oneplus/widget/op/OpWeather$Place;->lat:F

    .line 60
    const-string v5, "longitude"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v3, v6

    iput v3, v4, Lnet/oneplus/widget/op/OpWeather$Place;->lon:F

    .line 61
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 63
    goto :goto_0
.end method
