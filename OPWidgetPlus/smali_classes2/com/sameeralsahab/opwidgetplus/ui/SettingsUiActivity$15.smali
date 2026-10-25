.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$15;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->choose(Lnet/oneplus/widget/op/OpWeather$Place;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$15;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$15;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$700(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$15;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$300(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    .line 538
    :cond_0
    return-void
.end method
