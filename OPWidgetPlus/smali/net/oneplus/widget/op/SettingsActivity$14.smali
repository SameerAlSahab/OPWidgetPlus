.class Lnet/oneplus/widget/op/SettingsActivity$14;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/op/SettingsActivity;->showResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/widget/op/SettingsActivity;

.field final synthetic val$p:Lnet/oneplus/widget/op/OpWeather$Place;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/op/SettingsActivity;Lnet/oneplus/widget/op/OpWeather$Place;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 371
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    iput-object p2, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->val$p:Lnet/oneplus/widget/op/OpWeather$Place;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    iget-object v1, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->val$p:Lnet/oneplus/widget/op/OpWeather$Place;

    iget-object v1, v1, Lnet/oneplus/widget/op/OpWeather$Place;->label:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->val$p:Lnet/oneplus/widget/op/OpWeather$Place;

    iget v2, v2, Lnet/oneplus/widget/op/OpWeather$Place;->lat:F

    iget-object v3, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->val$p:Lnet/oneplus/widget/op/OpWeather$Place;

    iget v3, v3, Lnet/oneplus/widget/op/OpWeather$Place;->lon:F

    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/widget/op/OpSettings;->setArea(Landroid/content/Context;Ljava/lang/String;FF)V

    .line 375
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-static {v0}, Lnet/oneplus/widget/op/SettingsActivity;->access$300(Lnet/oneplus/widget/op/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 376
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-static {v0}, Lnet/oneplus/widget/op/SettingsActivity;->access$400(Lnet/oneplus/widget/op/SettingsActivity;)V

    .line 377
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/oneplus/widget/op/OpWeather;->fetchIfStale(Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 378
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$14;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    const-string v1, "Area saved"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    return-void
.end method
