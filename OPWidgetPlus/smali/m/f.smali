.class public Lm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field private static b:I = 0x0

.field private static c:I = 0x1

.field private static d:I = 0x2

.field private static e:I = 0x3

.field private static f:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    sget-object v0, Lm/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lm/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    sput-boolean v0, Lm/f;->a:Z

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 4

    invoke-static {p0, p2}, Lm/f;->d(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p2

    invoke-static {p0, p2}, Lm/f;->c(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget v1, Ll/b;->l:I

    const/16 v2, 0x8

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Ll/b;->i:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Ll/b;->j:I

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Ll/b;->m:I

    sget v3, Ll/e;->b:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v1, Ll/b;->n:I

    invoke-static {p0, v2}, Lm/f;->b(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    sget-object v1, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {p0, v1}, Lm/e;->a(Ljava/util/Locale;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object p0

    sget v1, Ll/b;->e:I

    const-string v2, "setFormat24Hour"

    invoke-virtual {p2, v1, v2, p0}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    sget v1, Ll/b;->e:I

    const-string v2, "setFormat12Hour"

    invoke-virtual {p2, v1, v2, p0}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 2

    const/high16 v0, 0xc000000

    const-string v1, "WeatherClockWidgetUtils"

    if-eqz p1, :cond_0

    const-string p1, "generate intent for clicking to access weather"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v1, "action_click_weather"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "generate intent for clicking to access clock"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v1, "action_click_clock"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 12

    invoke-static {p0}, Lm/e;->e(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQHDPlus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherClockWidgetUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lm/f;->b:I

    const-string v3, "com.sameeralsahab.opwidgetplus"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, v1, :cond_2

    const-string p1, "getRemoteViews weather_clock_large_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lm/f;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->q:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->r:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->F:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->K:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->R:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->z:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->z:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->z:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_1
    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->F:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->K:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->R:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->z:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->z:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->z:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_2
    sget v1, Lm/f;->c:I

    if-ne p1, v1, :cond_5

    const-string p1, "getRemoteViews weather_clock_middle_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lm/f;->a:Z

    if-eqz p1, :cond_3

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->w:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->x:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1
    if-eqz v0, :cond_4

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->G:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->L:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->S:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->A:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->A:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->A:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_4
    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->G:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->L:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->S:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->A:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->A:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->A:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_5
    sget v1, Lm/f;->e:I

    if-ne p1, v1, :cond_8

    const-string p1, "getRemoteViews weather_clock_middle01_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lm/f;->a:Z

    if-eqz p1, :cond_6

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->s:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->t:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_2
    if-eqz v0, :cond_7

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->H:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->T:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->B:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->B:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->B:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_7
    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->H:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->T:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->B:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->B:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->B:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_8
    sget v1, Lm/f;->f:I

    if-ne p1, v1, :cond_b

    const-string p1, "getRemoteViews weather_clock_middle02_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lm/f;->a:Z

    if-eqz p1, :cond_9

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->u:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->v:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_3
    if-eqz v0, :cond_a

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->J:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->O:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->V:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->D:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->D:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->D:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_a
    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->I:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->U:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->C:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->C:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->C:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_5

    :cond_b
    const-string p1, "getRemoteViews weather_clock_small_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lm/f;->a:Z

    if-eqz p1, :cond_c

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->y:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_4

    :cond_c
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->z:I

    invoke-direct {p1, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_4
    if-eqz v0, :cond_d

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->Q:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->P:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->W:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->E:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->E:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->E:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_5

    :cond_d
    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->Q:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v7, Ll/b;->e:I

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->P:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->W:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->E:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->E:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->E:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRemoteViews: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static d(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 9

    const-string v0, "appWidgetMinWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lm/b;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    const-string v1, "appWidgetMaxHeight"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0}, Lm/b;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weather_clock - getViewType, minWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherClockWidgetUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lm/e;->e(Landroid/content/Context;)Z

    move-result p0

    const/high16 v1, 0x437d0000    # 253.0f

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v3, 0x43750000    # 245.0f

    const v4, 0x44bb8000    # 1500.0f

    const/high16 v5, 0x443e0000    # 760.0f

    const v6, 0x443dc000    # 759.0f

    const/high16 v7, 0x43e40000    # 456.0f

    const/4 v8, 0x0

    if-eqz p0, :cond_7

    cmpl-float p0, v0, v6

    if-ltz p0, :cond_0

    cmpl-float p0, p1, v5

    if-ltz p0, :cond_0

    sget p0, Lm/f;->f:I

    return p0

    :cond_0
    cmpl-float p0, v0, v8

    if-eqz p0, :cond_6

    cmpl-float p0, p1, v8

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float p0, v0, v4

    if-ltz p0, :cond_2

    cmpl-float v4, p1, v7

    if-ltz v4, :cond_2

    sget p0, Lm/f;->f:I

    return p0

    :cond_2
    if-ltz p0, :cond_3

    cmpl-float p0, p1, v3

    if-ltz p0, :cond_3

    sget p0, Lm/f;->e:I

    return p0

    :cond_3
    const/high16 p0, 0x43c80000    # 400.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_4

    cmpl-float p0, p1, v7

    if-ltz p0, :cond_4

    sget p0, Lm/f;->f:I

    return p0

    :cond_4
    cmpl-float p0, v0, v2

    if-ltz p0, :cond_5

    cmpl-float p0, p1, v1

    if-ltz p0, :cond_5

    sget p0, Lm/f;->e:I

    return p0

    :cond_5
    sget p0, Lm/f;->d:I

    return p0

    :cond_6
    :goto_0
    sget p0, Lm/f;->f:I

    return p0

    :cond_7
    cmpl-float p0, v0, v6

    if-ltz p0, :cond_8

    cmpl-float p0, p1, v5

    if-ltz p0, :cond_8

    sget p0, Lm/f;->f:I

    return p0

    :cond_8
    cmpl-float p0, v0, v8

    if-eqz p0, :cond_e

    cmpl-float p0, p1, v8

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    cmpl-float p0, v0, v4

    if-ltz p0, :cond_a

    cmpl-float v4, p1, v7

    if-ltz v4, :cond_a

    sget p0, Lm/f;->f:I

    return p0

    :cond_a
    if-ltz p0, :cond_b

    cmpl-float p0, p1, v3

    if-ltz p0, :cond_b

    sget p0, Lm/f;->e:I

    return p0

    :cond_b
    const/high16 p0, 0x43d20000    # 420.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_c

    const/high16 p0, 0x43fa0000    # 500.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_c

    sget p0, Lm/f;->f:I

    return p0

    :cond_c
    cmpl-float p0, v0, v2

    if-ltz p0, :cond_d

    cmpl-float p0, p1, v1

    if-ltz p0, :cond_d

    sget p0, Lm/f;->e:I

    return p0

    :cond_d
    sget p0, Lm/f;->d:I

    return p0

    :cond_e
    :goto_1
    sget p0, Lm/f;->f:I

    return p0
.end method

.method public static e(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 5

    const-string v0, "WeatherClockWidgetUtils"

    :try_start_0
    const-string v1, "weatherName"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lm/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "temp"

    invoke-static {p0, v3, v2}, Lm/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "appWidgetMinWidth"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2, v1, v2, p1}, Lm/f;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "updateView: widget size is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p2, p1}, Lm/f;->a(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update WeatherClockWidget View error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {p0, p4}, Lm/f;->d(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p4

    invoke-static {p0, p4}, Lm/f;->c(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object p4

    invoke-static {p0}, Lm/b;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const-string v3, "\u00b0"

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    sget v1, Ll/b;->m:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget p2, Ll/b;->m:I

    sget p3, Ll/e;->b:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object p3, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {p2, p3}, Lm/e;->a(Ljava/util/Locale;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: formatter : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "WeatherClockWidgetUtils"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p3, Ll/b;->e:I

    const-string v1, "setFormat24Hour"

    invoke-virtual {p4, p3, v1, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    sget p3, Ll/b;->e:I

    const-string v1, "setFormat12Hour"

    invoke-virtual {p4, p3, v1, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    sget p2, Ll/b;->m:I

    invoke-static {p0, v2}, Lm/f;->b(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget p2, Ll/b;->e:I

    invoke-static {p0, v2}, Lm/f;->b(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget p2, Ll/b;->b:I

    const/4 p3, 0x0

    invoke-static {p0, p3}, Lm/f;->b(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :try_start_0
    invoke-virtual {v0, p1, p4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
