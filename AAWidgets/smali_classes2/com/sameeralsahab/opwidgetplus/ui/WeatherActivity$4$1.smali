.class Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$wx:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iput-object p2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->val$wx:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;

    iput-object p3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-object v0, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-static {v0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$302(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Z)Z

    .line 214
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-object v0, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$400(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-object v0, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$500(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;)Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sameeralsahab/opwidgetplus/ui/GlyphView;->spin(Z)V

    .line 216
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->val$wx:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;

    if-eqz v0, :cond_2

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-object v2, v2, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    const-string v3, "op_weather_detail"

    invoke-virtual {v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "json"

    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->val$body:Ljava/lang/String;

    .line 219
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key"

    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-object v4, v4, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$key:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ts"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-object v2, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-object v2, v2, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    iget-object v3, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->val$wx:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v1, v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$600(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$Wx;JZ)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-boolean v0, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->val$haveData:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4$1;->this$1:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;

    iget-object v0, v0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$4;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    const-string v1, "Couldn\'t load weather"

    const-string v2, "Check your connection and try again."

    const-string v3, "Try again"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->access$700(Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
