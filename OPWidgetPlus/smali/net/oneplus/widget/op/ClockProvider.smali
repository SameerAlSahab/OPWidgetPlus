.class public Lnet/oneplus/widget/op/ClockProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ClockProvider.java"


# static fields
.field private static final KIND:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lnet/oneplus/widget/op/OpUpdater;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    .line 20
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lnet/oneplus/widget/op/OpUpdater;->hasAnyWidget(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/oneplus/widget/op/OpUpdater;->cancel(Landroid/content/Context;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p1}, Lnet/oneplus/widget/op/OpUpdater;->scheduleNext(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13
    array-length v2, p3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p3, v0

    invoke-static {p1, p2, v3, v1}, Lnet/oneplus/widget/op/OpUpdater;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lnet/oneplus/widget/op/OpUpdater;->scheduleNext(Landroid/content/Context;)V

    .line 15
    return-void
.end method
