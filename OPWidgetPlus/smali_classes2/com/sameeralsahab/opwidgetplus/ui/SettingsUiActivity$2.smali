.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildStyle()V
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
    .line 174
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lnet/oneplus/widget/op/OpSettings;->cyberColor(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lnet/oneplus/widget/op/OpSettings;->setStyle(Landroid/content/Context;I)V

    .line 178
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$200(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    .line 179
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$300(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    .line 180
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
