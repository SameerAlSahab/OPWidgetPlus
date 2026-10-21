.class Lnet/oneplus/widget/op/SettingsActivity$13$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/op/SettingsActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/widget/op/SettingsActivity$13;

.field final synthetic val$fl:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/op/SettingsActivity$13;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 349
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$13$1;->this$1:Lnet/oneplus/widget/op/SettingsActivity$13;

    iput-object p2, p0, Lnet/oneplus/widget/op/SettingsActivity$13$1;->val$fl:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lnet/oneplus/widget/op/SettingsActivity$13$1;->this$1:Lnet/oneplus/widget/op/SettingsActivity$13;

    iget-object v0, v0, Lnet/oneplus/widget/op/SettingsActivity$13;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    iget-object v1, p0, Lnet/oneplus/widget/op/SettingsActivity$13$1;->val$fl:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/oneplus/widget/op/SettingsActivity;->access$200(Lnet/oneplus/widget/op/SettingsActivity;Ljava/util/List;)V

    .line 353
    return-void
.end method
