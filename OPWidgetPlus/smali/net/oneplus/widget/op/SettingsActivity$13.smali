.class Lnet/oneplus/widget/op/SettingsActivity$13;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/op/SettingsActivity;->doSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/widget/op/SettingsActivity;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/op/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lnet/oneplus/widget/op/SettingsActivity$13;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    iput-object p2, p0, Lnet/oneplus/widget/op/SettingsActivity$13;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/widget/op/SettingsActivity$13;->val$q:Ljava/lang/String;

    invoke-static {v1}, Lnet/oneplus/widget/op/OpWeather;->search(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    iget-object v1, p0, Lnet/oneplus/widget/op/SettingsActivity$13;->this$0:Lnet/oneplus/widget/op/SettingsActivity;

    new-instance v2, Lnet/oneplus/widget/op/SettingsActivity$13$1;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/widget/op/SettingsActivity$13$1;-><init>(Lnet/oneplus/widget/op/SettingsActivity$13;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/widget/op/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void

    .line 346
    :catch_0
    move-exception v1

    goto :goto_0
.end method
