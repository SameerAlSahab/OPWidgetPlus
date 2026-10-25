.class Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$3;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->buildChrome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$3;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    const-class v3, Lcom/sameeralsahab/opwidgetplus/ui/SettingsUiActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method
