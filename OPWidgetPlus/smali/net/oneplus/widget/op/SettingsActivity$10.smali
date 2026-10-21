.class Lnet/oneplus/widget/op/SettingsActivity$10;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 259
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$10;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$10;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    invoke-static {v0}, Lnet/oneplus/widget/op/SettingsActivity;->access$100(Lnet/oneplus/widget/op/SettingsActivity;)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method
