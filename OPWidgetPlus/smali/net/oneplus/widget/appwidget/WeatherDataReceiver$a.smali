.class Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/appwidget/WeatherDataReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/appwidget/AppWidgetManager;

.field final synthetic c:Lnet/oneplus/widget/appwidget/WeatherDataReceiver;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/appwidget/WeatherDataReceiver;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->c:Lnet/oneplus/widget/appwidget/WeatherDataReceiver;

    iput-object p2, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lm/b;->d:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    :try_start_1
    sget-object v1, Lm/b$a;->b:Lm/b$a;

    iget v1, v1, Lm/b$a;->a:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v1, Lm/b$a;->c:Lm/b$a;

    iget v1, v1, Lm/b$a;->a:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v1, Lm/b$a;->d:Lm/b$a;

    iget v1, v1, Lm/b$a;->a:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v1, Lm/b$a;->e:Lm/b$a;

    iget v1, v1, Lm/b$a;->a:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lm/b$a;->f:Lm/b$a;

    iget v2, v2, Lm/b$a;->a:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lm/b$a;->g:Lm/b$a;

    iget v3, v3, Lm/b$a;->a:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v3, Lm/b$a;->h:Lm/b$a;

    iget v3, v3, Lm/b$a;->a:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v3, Lm/b$a;->i:Lm/b$a;

    iget v3, v3, Lm/b$a;->a:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    const-string v4, "weatherName"

    invoke-static {v3, v4, v1}, Lm/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    const-string v4, "temp"

    invoke-static {v3, v4, v2}, Lm/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/oneplus/widget/appwidget/WeatherDataReceiver;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lnet/oneplus/widget/appwidget/WeatherDataReceiver;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "weatherName is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_7

    :goto_1
    :try_start_3
    invoke-static {}, Lnet/oneplus/widget/appwidget/WeatherDataReceiver;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got unexpected weather data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    const-class v2, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    iget-object v5, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    invoke-static {v6, v5, v4}, Lm/g;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    const-class v3, Lnet/oneplus/widget/appwidget/WeatherClockWidgetProvider;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5

    aget v4, v0, v3

    iget-object v5, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    invoke-static {v6, v5, v4}, Lm/f;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    const-class v3, Lnet/oneplus/widget/appwidget/ClockWidgetProvider;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_6

    aget v3, v0, v2

    iget-object v4, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/widget/appwidget/WeatherDataReceiver$a;->a:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lm/a;->e(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :goto_7
    invoke-static {}, Lnet/oneplus/widget/appwidget/WeatherDataReceiver;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run got unexpected weather data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method
