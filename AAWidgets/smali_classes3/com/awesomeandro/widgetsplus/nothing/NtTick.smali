.class final Lcom/awesomeandro/widgetsplus/nothing/NtTick;
.super Ljava/lang/Object;


# static fields
.field static final ACTION:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.TICK"

.field static final ALL:[Ljava/lang/Class;

.field static final TIMED:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtAnalogBold;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtAnalogScale;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtDigital;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtPhotoCircle;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtPhotoRect;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtQuotes;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtDate;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtAway;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxCircle;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxSquare;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxRect;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxCombo;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxSunset;

    const/16 v7, 0xf

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxAir;

    const/16 v7, 0x10

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxW1temp;

    const/16 v7, 0x11

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxW1status;

    const/16 v7, 0x12

    aput-object v1, v0, v7

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWxW1rain;

    const/16 v7, 0x13

    aput-object v1, v0, v7

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->ALL:[Ljava/lang/Class;

    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtDigital;

    aput-object v1, v0, v2

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;

    aput-object v1, v0, v3

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtDate;

    aput-object v1, v0, v4

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtAway;

    aput-object v1, v0, v5

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->TIMED:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static refresh(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->TIMED:[Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->update(Landroid/content/Context;[Ljava/lang/Class;)V

    return-void
.end method

.method static refreshAll(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->ALL:[Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtTick;->update(Landroid/content/Context;[Ljava/lang/Class;)V

    return-void
.end method

.method static schedule(Landroid/content/Context;)V
    .locals 7

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    mul-long/2addr v1, v3

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/awesomeandro/widgetsplus/nothing/NtTickReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.awesomeandro.widgetsplus.nothing.TICK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x7

    const/high16 v5, 0xc000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static update(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 6

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;

    invoke-virtual {v3, p0, v0, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method
