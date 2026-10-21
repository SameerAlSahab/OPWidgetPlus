.class Lnet/oneplus/widget/op/SettingsActivity$12;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/op/SettingsActivity;->link(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/widget/op/SettingsActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/op/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 320
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$12;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    iput-object p2, p0, Lnet/oneplus/widget/op/SettingsActivity$12;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$12;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lnet/oneplus/widget/op/SettingsActivity$12;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/widget/op/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    goto :goto_0
.end method
