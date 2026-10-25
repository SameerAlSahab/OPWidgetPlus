.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

.field final synthetic val$kind:I


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iput p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;->val$kind:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;->val$kind:I

    invoke-static {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$002(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;I)I

    .line 158
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$100(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V

    .line 159
    return-void
.end method
