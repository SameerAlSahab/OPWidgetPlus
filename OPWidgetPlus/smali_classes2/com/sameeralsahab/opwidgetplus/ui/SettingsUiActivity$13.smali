.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->runSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 479
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iput-object p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;->val$q:Ljava/lang/String;

    invoke-static {v1}, Lnet/oneplus/widget/op/OpWeather;->search(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$800(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;

    invoke-direct {v2, p0, v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void

    .line 485
    :catch_0
    move-exception v1

    goto :goto_0
.end method
