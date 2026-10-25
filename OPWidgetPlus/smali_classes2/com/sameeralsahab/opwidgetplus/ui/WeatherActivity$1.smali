.class Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$1;
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
    .line 111
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;

    invoke-virtual {v0}, Lcom/sameeralsahab/opwidgetplus/ui/WeatherActivity;->finish()V

    .line 115
    return-void
.end method
