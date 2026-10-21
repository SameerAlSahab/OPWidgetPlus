.class Lnet/oneplus/widget/op/SettingsActivity$11;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/op/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/widget/op/SettingsActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/op/SettingsActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$11;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$11;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-static {v0, p2}, Lnet/oneplus/widget/op/OpSettings;->setFahrenheit(Landroid/content/Context;Z)V

    .line 280
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$11;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/oneplus/widget/op/OpWeather;->fetchIfStale(Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 281
    return-void
.end method
