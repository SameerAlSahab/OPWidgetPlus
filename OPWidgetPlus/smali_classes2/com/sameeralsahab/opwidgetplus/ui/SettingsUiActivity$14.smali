.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$14;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->showResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

.field final synthetic val$p:Lnet/oneplus/widget/op/OpWeather$Place;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Lnet/oneplus/widget/op/OpWeather$Place;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$14;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iput-object p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$14;->val$p:Lnet/oneplus/widget/op/OpWeather$Place;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$14;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$14;->val$p:Lnet/oneplus/widget/op/OpWeather$Place;

    invoke-static {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->access$1000(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;Lnet/oneplus/widget/op/OpWeather$Place;)V

    .line 521
    return-void
.end method
