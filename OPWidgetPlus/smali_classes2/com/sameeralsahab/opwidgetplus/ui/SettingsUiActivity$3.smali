.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iput p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lnet/oneplus/widget/op/OpSettings;->style(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->val$value:I

    invoke-static {v0, v1}, Lnet/oneplus/widget/op/OpSettings;->setCyberColor(Landroid/content/Context;I)V

    .line 195
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->val$value:I

    invoke-static {v0, v1}, Lnet/oneplus/widget/op/OpSettings;->setStyle(Landroid/content/Context;I)V

    .line 196
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$200(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    .line 197
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$300(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    goto :goto_0
.end method
