.class Lnet/oneplus/widget/appwidget/TimeReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/widget/appwidget/TimeReceiver;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Landroid/appwidget/AppWidgetManager;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lnet/oneplus/widget/appwidget/TimeReceiver;


# direct methods
.method constructor <init>(Lnet/oneplus/widget/appwidget/TimeReceiver;[ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/oneplus/widget/appwidget/TimeReceiver$a;->d:Lnet/oneplus/widget/appwidget/TimeReceiver;

    iput-object p2, p0, Lnet/oneplus/widget/appwidget/TimeReceiver$a;->a:[I

    iput-object p3, p0, Lnet/oneplus/widget/appwidget/TimeReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    iput-object p4, p0, Lnet/oneplus/widget/appwidget/TimeReceiver$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lnet/oneplus/widget/appwidget/TimeReceiver;->a()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnet/oneplus/widget/appwidget/TimeReceiver;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/oneplus/widget/appwidget/TimeReceiver;->c:I

    :cond_0
    invoke-static {}, Lnet/oneplus/widget/appwidget/TimeReceiver;->b()I

    iget-object v0, p0, Lnet/oneplus/widget/appwidget/TimeReceiver$a;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lnet/oneplus/widget/appwidget/TimeReceiver$a;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/widget/appwidget/TimeReceiver$a;->c:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lm/a;->e(Landroid/content/Context;Landroid/os/Bundle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
