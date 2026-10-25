.class Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->fetch(FFZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

.field final synthetic val$f:Z

.field final synthetic val$haveData:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$lat:F

.field final synthetic val$lon:F


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;FFZLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    iput p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$lat:F

    iput p3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$lon:F

    iput-boolean p4, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$f:Z

    iput-object p5, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$key:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$haveData:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 202
    .line 204
    :try_start_0
    iget v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$lat:F

    iget v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$lon:F

    iget-boolean v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$f:Z

    invoke-static {v1, v2, v3}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$100(FFZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :goto_0
    if-nez v1, :cond_0

    .line 210
    :goto_1
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-static {v2}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$800(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;-><init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void

    .line 205
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$f:Z

    invoke-static {v1, v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$200(Ljava/lang/String;Z)Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;

    move-result-object v0

    goto :goto_1
.end method
