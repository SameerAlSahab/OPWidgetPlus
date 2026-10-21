.class public Lnet/oneplus/widget/ConfigurationChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "ConfigurationChangeReceiver"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    iput-object v0, p0, Lnet/oneplus/widget/ConfigurationChangeReceiver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lnet/oneplus/widget/ConfigurationChangeReceiver;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConfigurationChangeReceiver.onReceive - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lm/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lnet/oneplus/widget/BaseApplication;->b()Lnet/oneplus/widget/BaseApplication;

    move-result-object p0

    invoke-virtual {p0}, Lnet/oneplus/widget/BaseApplication;->c()V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-gt p0, p2, :cond_0

    const-string p0, "ignoring updates for R build"

    const-string p1, "ignoring build for R"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    invoke-virtual {p0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lm/a;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    array-length v0, p2

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    invoke-virtual {p0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lm/g;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lnet/oneplus/widget/appwidget/WeatherClockWidgetProvider;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    array-length v0, p2

    :goto_2
    if-ge v1, v0, :cond_3

    aget v2, p2, v1

    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lm/f;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
