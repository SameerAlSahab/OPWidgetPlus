.class public Lnet/oneplus/widget/appwidget/TimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static c:I = -0x1

.field private static d:I

.field private static e:Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/widget/appwidget/TimeReceiver;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/widget/appwidget/TimeReceiver;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lnet/oneplus/widget/appwidget/TimeReceiver;->d:I

    return v0
.end method

.method static synthetic b()I
    .locals 2

    sget v0, Lnet/oneplus/widget/appwidget/TimeReceiver;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lnet/oneplus/widget/appwidget/TimeReceiver;->d:I

    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    sget-object p0, Lnet/oneplus/widget/BaseApplication;->c:Landroid/os/Handler;

    sget-object v0, Lnet/oneplus/widget/appwidget/TimeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, -0x1

    sput p0, Lnet/oneplus/widget/appwidget/TimeReceiver;->c:I

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lnet/oneplus/widget/appwidget/ClockWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lm/a;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d()I
    .locals 1

    sget v0, Lnet/oneplus/widget/appwidget/TimeReceiver;->c:I

    return v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lnet/oneplus/widget/BaseApplication;->c:Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/widget/appwidget/TimeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lnet/oneplus/widget/appwidget/ClockWidgetProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const/4 v2, 0x0

    sput v2, Lnet/oneplus/widget/appwidget/TimeReceiver;->c:I

    sput v2, Lnet/oneplus/widget/appwidget/TimeReceiver;->d:I

    sget-object v3, Lnet/oneplus/widget/appwidget/TimeReceiver;->e:Ljava/lang/Runnable;

    if-nez v3, :cond_0

    new-instance v3, Lnet/oneplus/widget/appwidget/TimeReceiver$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lnet/oneplus/widget/appwidget/TimeReceiver$a;-><init>(Lnet/oneplus/widget/appwidget/TimeReceiver;[ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;)V

    sput-object v3, Lnet/oneplus/widget/appwidget/TimeReceiver;->e:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    sget-object p1, Lm/a;->f:[I

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    if-ge v2, p1, :cond_1

    sget-object p1, Lm/a;->g:[I

    aget p1, p1, v2

    iput p1, p0, Lnet/oneplus/widget/appwidget/TimeReceiver;->a:I

    sget-object v0, Lnet/oneplus/widget/BaseApplication;->c:Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/widget/appwidget/TimeReceiver;->e:Ljava/lang/Runnable;

    iget-object v3, p0, Lnet/oneplus/widget/appwidget/TimeReceiver;->b:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "onReceive"

    const-string v1, "TimeReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    sput v0, Lnet/oneplus/widget/appwidget/TimeReceiver;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/widget/appwidget/TimeReceiver;->a:I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "net.oneplus.launcher.TIMES_UP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "receive times up "

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lnet/oneplus/widget/appwidget/TimeReceiver;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v2, "net.oneplus.launcher.ACTION_CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lnet/oneplus/widget/appwidget/TimeReceiver;->c(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
