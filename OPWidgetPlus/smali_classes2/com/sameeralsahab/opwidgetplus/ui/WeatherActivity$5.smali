.class Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

.field final synthetic val$openSettings:Z


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 401
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    iput-boolean p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;->val$openSettings:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;->val$openSettings:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    const-class v3, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$5;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$000(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Z)V

    goto :goto_0
.end method
