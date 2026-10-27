.class final Lcom/awesomeandro/widgetsplus/nothing/NtWxData;
.super Ljava/lang/Object;


# static fields
.field static final PREFS:Ljava/lang/String; = "nt_weather"

.field static final WX:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxCircle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxSquare;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxRect;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxCombo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxSunset;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxAir;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxW1temp;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxW1status;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxW1rain;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->WX:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetch(Landroid/content/Context;)Z
    .locals 7

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitude="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lat(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "&longitude="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lon(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "&temperature_unit=fahrenheit"

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://api.open-meteo.com/v1/forecast?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&current=temperature_2m,apparent_temperature,weather_code,is_day&hourly=precipitation_probability&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://air-quality-api.open-meteo.com/v1/air-quality?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&current=us_aqi"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    :catch_0
    :try_start_2
    const-string v0, "nt_weather"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "json"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "aq"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "loc"

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->loc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v1

    :catch_1
    return v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static loc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lat(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->lon(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static minutes(Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method static model(Landroid/content/Context;)Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;
    .locals 14

    new-instance v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;

    invoke-direct {v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "nt_weather"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "json"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "current"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "daily"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->fahrenheit(Landroid/content/Context;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->fahrenheit:Z

    const-string p0, "temperature_2m"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->temp:D

    const-string p0, "apparent_temperature"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->feels:D

    const-string p0, "weather_code"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->code:I

    const-string p0, "is_day"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v6, 0x1

    if-ne p0, v6, :cond_1

    move p0, v6

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    iput-boolean p0, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->day:Z

    const-string p0, "time"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->minutes(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->nowMin:I

    const-string v3, "temperature_2m_max"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v7, "temperature_2m_min"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "weather_code"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "time"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->hi:D

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->lo:D

    const-string v7, "sunrise"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->minutes(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->riseMin:I

    const-string v7, "sunset"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->minutes(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->setMin:I

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v7, 0x7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->days:I

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move v10, v1

    :goto_1
    iget v11, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->days:I

    if-ge v10, v11, :cond_2

    iget-object v11, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dCode:[I

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    aput v12, v11, v10

    iget-object v11, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dHi:[D

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    aput-wide v12, v11, v10

    iget-object v11, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dName:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "hourly"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "precipitation_probability"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/16 v5, 0xd

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v5, v1

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result p0

    iput p0, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->pop:I

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const-string p0, "aq"

    const-string v3, ""

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "us_aqi"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p0, v2

    iput p0, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->aqi:I

    :cond_5
    iput-boolean v6, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->ok:Z

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v1, v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->ok:Z

    :cond_6
    return-object v0
.end method

.method static refreshAll(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->WX:[Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->update(Landroid/content/Context;[Ljava/lang/Class;)V

    return-void
.end method

.method static stale(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "nt_weather"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "ts"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->loc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "loc"

    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method
