.class public Lnet/oneplus/widget/op/OpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 11
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/oneplus/widget/op/OpReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/oneplus/widget/op/OpWeather;->fetchIfStale(Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 19
    invoke-static {p1}, Lnet/oneplus/widget/op/OpUpdater;->updateAll(Landroid/content/Context;)V

    goto :goto_0
.end method
