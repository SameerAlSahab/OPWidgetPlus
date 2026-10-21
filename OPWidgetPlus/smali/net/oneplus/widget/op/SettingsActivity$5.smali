.class Lnet/oneplus/widget/op/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lnet/oneplus/widget/op/SettingsActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/op/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$5;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$5;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    if-eqz p2, :cond_0

    invoke-static {v0}, Lnet/oneplus/widget/op/OpSettings;->cyberColor(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lnet/oneplus/widget/op/OpSettings;->setStyle(Landroid/content/Context;I)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lnet/oneplus/widget/op/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-static {v1, p2}, Lnet/oneplus/widget/op/ThemeUi;->setGroupEnabled(Landroid/widget/RadioGroup;Z)V

    :cond_1
    invoke-static {v0}, Lnet/oneplus/widget/op/SettingsActivity;->access$000(Lnet/oneplus/widget/op/SettingsActivity;)V

    return-void
.end method
