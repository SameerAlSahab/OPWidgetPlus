.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;

.field final synthetic val$out:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 489
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;

    iput-object p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;->val$out:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;

    iget-object v0, v0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$700(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;

    iget-object v0, v0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$13$1;->val$out:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$900(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Ljava/util/List;)V

    .line 493
    :cond_0
    return-void
.end method
