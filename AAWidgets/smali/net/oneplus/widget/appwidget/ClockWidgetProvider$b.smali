.class Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/appwidget/ClockWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:I

.field final synthetic d:Lnet/oneplus/widget/appwidget/ClockWidgetProvider;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/appwidget/ClockWidgetProvider;Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;->d:Lnet/oneplus/widget/appwidget/ClockWidgetProvider;

    iput-object p2, p0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;->b:Landroid/os/Bundle;

    iput p4, p0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;->b:Landroid/os/Bundle;

    iget p0, p0, Lnet/oneplus/widget/appwidget/ClockWidgetProvider$b;->c:I

    invoke-static {v0, v1, p0}, Lm/a;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    return-void
.end method
