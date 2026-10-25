.class Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$12;
.super Ljava/lang/Object;
.source "SettingsUiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->buildAbout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$12;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity$12;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://github.com/SameerAlSahab/OPWidgetPlus"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method
