.class Lnet/oneplus/widget/op/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 161
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$4;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$4;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    add-int/lit16 v1, p2, -0x7d0

    invoke-static {v0, v1}, Lnet/oneplus/widget/op/OpSettings;->setCyberColor(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lnet/oneplus/widget/op/OpSettings;->setStyle(Landroid/content/Context;I)V

    .line 165
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$4;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-static {v0}, Lnet/oneplus/widget/op/SettingsActivity;->access$000(Lnet/oneplus/widget/op/SettingsActivity;)V

    .line 166
    return-void
.end method
