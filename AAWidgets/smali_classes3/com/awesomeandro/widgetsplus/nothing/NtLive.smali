.class public Lcom/awesomeandro/widgetsplus/nothing/NtLive;
.super Landroid/app/Service;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# static fields
.field static final CH:Ljava/lang/String; = "aa_live"

.field static final STOP:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.LIVE_STOP"

.field static volatile compassLive:Z

.field static compassSince:J


# instance fields
.field h:Landroid/os/Handler;

.field haptic:Z

.field lastDeg:F

.field lastPush:J

.field rcv:Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;

.field reg:Z

.field sm:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->haptic:Z

    const/high16 v0, -0x3b860000    # -1000.0f

    iput v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->lastDeg:F

    return-void
.end method

.method static start(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtLive;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method foreground()V
    .locals 6

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v3, "aa_live"

    const-string v4, "Live widgets"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "aa_live"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/awesomeandro/widgetsplus/nothing/NtLive;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.awesomeandro.widgetsplus.nothing.LIVE_STOP"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "ic_opwidget"

    const-string v4, "mipmap"

    invoke-static {p0, v3, v4}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "AAWidgets live widget"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "Compass or Snake is running. Tap to stop."

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/high16 v4, 0xc000000

    const/16 v5, 0x28

    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    const/16 v3, 0x22

    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v2, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->startForeground(ILandroid/app/Notification;I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->h:Landroid/os/Handler;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sm:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;

    invoke-direct {v0, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;-><init>(Lcom/awesomeandro/widgetsplus/nothing/NtLive;)V

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->rcv:Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->rcv:Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->reg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->rcv:Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr p1, v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->lastPush:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_9

    iget v3, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->lastDeg:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    return-void

    :cond_2
    iput-wide v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->lastPush:J

    iput p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->lastDeg:F

    const/high16 v1, 0x43b20000    # 356.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_6

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_6

    const/high16 v1, 0x42ac0000    # 86.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x42bc0000    # 94.0f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_6

    :cond_3
    const/high16 v1, 0x43300000    # 176.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    const/high16 v1, 0x43380000    # 184.0f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_6

    :cond_4
    const/high16 v1, 0x43850000    # 266.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    const/high16 v1, 0x43890000    # 274.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->haptic:Z

    goto :goto_1

    :cond_6
    :goto_0
    iget-boolean v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->haptic:Z

    if-eqz v1, :cond_8

    iput-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->haptic:Z

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v2, 0x1e

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_7

    const/4 v1, -0x1

    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_8
    :goto_1
    sput p1, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->deg:F

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtCompass;->push(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->foreground()V

    if-eqz p1, :cond_0

    const-string p2, "com.awesomeandro.widgetsplus.nothing.LIVE_STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->screenOff()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sync()V

    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->h:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->h:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public run()V
    .locals 10

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sync()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    sget v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->tick(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->push(Landroid/content/Context;)V

    sget-wide v4, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->interval:J

    :cond_0
    :goto_0
    move v2, v8

    goto :goto_2

    :cond_1
    const/4 v9, 0x2

    if-eq v3, v9, :cond_3

    const/4 v9, 0x3

    if-ne v3, v9, :cond_2

    goto :goto_1

    :cond_2
    move-wide v4, v6

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->advance()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->push(Landroid/content/Context;)V

    goto :goto_0

    :goto_2
    sget-boolean v3, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    if-eqz v3, :cond_5

    sget-wide v6, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassSince:J

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x493e0

    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sync()V

    sget v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    if-ne v1, v8, :cond_4

    move v2, v8

    goto :goto_3

    :cond_4
    move v2, v0

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    invoke-virtual {p0, v8}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->stopSelf()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method screenOff()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->pause()V

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sync()V

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->push(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->stopSelf()V

    return-void
.end method

.method sync()V
    .locals 3

    sget-boolean v0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->reg:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sm:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sm:Landroid/hardware/SensorManager;

    const v2, 0xc350

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->reg:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassSince:J

    return-void

    :cond_0
    sput-boolean v1, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    return-void

    :cond_1
    sget-boolean v0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->compassLive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->reg:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->reg:Z

    :cond_2
    return-void
.end method
