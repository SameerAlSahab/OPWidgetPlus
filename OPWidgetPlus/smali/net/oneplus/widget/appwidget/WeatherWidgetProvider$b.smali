.class Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:I

.field final synthetic d:Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;->d:Lnet/oneplus/widget/appwidget/WeatherWidgetProvider;

    iput-object p2, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;->b:Landroid/os/Bundle;

    iput p4, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;->b:Landroid/os/Bundle;

    iget p0, p0, Lnet/oneplus/widget/appwidget/WeatherWidgetProvider$b;->c:I

    invoke-static {v0, v1, p0}, Lm/g;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    return-void
.end method
