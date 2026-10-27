.class public abstract Lcom/awesomeandro/widgetsplus/nothing/NtWx;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# static fields
.field static final NEXT:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.WX_NEXT"

.field static final REFRESH:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.WX_REFRESH"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 10

    invoke-static {p1, p2, p3}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x44020000    # 520.0f

    div-float v1, v3, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aget v3, p2, v0

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    aget p2, p2, v2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    const-string p2, "nt_weather"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pg_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->pages()I

    move-result v0

    rem-int v9, p2, v0

    const-string p2, "nt_photo"

    invoke-static {p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p2

    const-string v0, "nt_photo"

    const-string v1, "id"

    invoke-static {p1, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->kind()I

    move-result v5

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->model(Landroid/content/Context;)Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;

    move-result-object v8

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/awesomeandro/widgetsplus/nothing/NtWxDraw;->render(Landroid/content/Context;IIILcom/awesomeandro/widgetsplus/nothing/NtWxModel;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {p1}, Lnet/oneplus/widget/op/OpSettings;->hasArea(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0xc000000

    if-nez v0, :cond_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/content/ComponentName;

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p3, 0x10000000

    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/16 p3, 0x3c

    invoke-static {p1, p3, p0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->pages()I

    move-result v3

    if-le v3, v2, :cond_1

    const-string v2, "com.awesomeandro.widgetsplus.nothing.WX_NEXT"

    goto :goto_0

    :cond_1
    const-string v2, "com.awesomeandro.widgetsplus.nothing.WX_REFRESH"

    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p1, p3, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_1
    const-string p3, "nt_root"

    const-string v0, "id"

    invoke-static {p1, p3, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p2
.end method

.method abstract kind()I
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.awesomeandro.widgetsplus.nothing.WX_NEXT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "nt_weather"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pg_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pg_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->pages()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :cond_0
    const-string v1, "com.awesomeandro.widgetsplus.nothing.WX_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->stale(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWx;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method pages()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
