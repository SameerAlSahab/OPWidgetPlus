.class Lnet/oneplus/widget/op/OpWeather$1;
.super Ljava/lang/Object;
.source "OpWeather.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/op/OpWeather;->fetchIfStale(Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$pr:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$pr:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/widget/op/OpWeather;->fetch(Landroid/content/Context;)Z

    .line 102
    iget-object v0, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/widget/op/OpUpdater;->updateAll(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v1}, Lnet/oneplus/widget/op/OpWeather;->access$002(Z)Z

    .line 105
    iget-object v0, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$pr:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$pr:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 107
    :cond_0
    return-void

    .line 104
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lnet/oneplus/widget/op/OpWeather;->access$002(Z)Z

    .line 105
    iget-object v1, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$pr:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/widget/op/OpWeather$1;->val$pr:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 106
    :cond_1
    throw v0
.end method
