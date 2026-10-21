.class Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:[I

.field final synthetic c:Landroid/appwidget/AppWidgetManager;

.field final synthetic d:Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->d:Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;

    iput-object p2, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->b:[I

    iput-object p4, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->c:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "temp"

    const-string v1, "weatherName"

    const-string v2, "WeatherWidgetProvider"

    :try_start_0
    iget-object v3, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lm/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->a:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lm/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->a:Landroid/content/Context;

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lm/b;->d:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    :try_start_1
    sget-object v4, Lm/b$a;->b:Lm/b$a;

    iget v4, v4, Lm/b$a;->a:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v4, Lm/b$a;->c:Lm/b$a;

    iget v4, v4, Lm/b$a;->a:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v4, Lm/b$a;->d:Lm/b$a;

    iget v4, v4, Lm/b$a;->a:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v4, Lm/b$a;->e:Lm/b$a;

    iget v4, v4, Lm/b$a;->a:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lm/b$a;->f:Lm/b$a;

    iget v5, v5, Lm/b$a;->a:I

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lm/b$a;->g:Lm/b$a;

    iget v6, v6, Lm/b$a;->a:I

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v6, Lm/b$a;->h:Lm/b$a;

    iget v6, v6, Lm/b$a;->a:I

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    sget-object v6, Lm/b$a;->i:Lm/b$a;

    iget v6, v6, Lm/b$a;->a:I

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->a:Landroid/content/Context;

    invoke-static {v6, v1, v4}, Lm/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->a:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lm/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weatherName is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got unexpected weather data: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->b:[I

    array-length v1, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_5

    aget v4, v0, v3

    iget-object v5, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->c:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$a;->a:Landroid/content/Context;

    invoke-static {v6, v5, v4}, Lm/g;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    const-string v4, "idw"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run got unexpected error data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
