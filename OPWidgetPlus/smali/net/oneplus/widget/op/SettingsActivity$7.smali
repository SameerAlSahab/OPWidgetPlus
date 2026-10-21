.class Lnet/oneplus/widget/op/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 199
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$7;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$7;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-static {v0, p2}, Lnet/oneplus/widget/op/OpSettings;->setShowSlogan(Landroid/content/Context;Z)V

    .line 203
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$7;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-static {v0}, Lnet/oneplus/widget/op/SettingsActivity;->access$000(Lnet/oneplus/widget/op/SettingsActivity;)V

    .line 204
    return-void
.end method
