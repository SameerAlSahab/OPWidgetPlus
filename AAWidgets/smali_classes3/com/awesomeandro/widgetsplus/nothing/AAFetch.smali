.class public Lcom/awesomeandro/widgetsplus/nothing/AAFetch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;->c:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/widget/op/OpWeather;->fetch(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->fetch(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->refreshAll(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAFetch;->c:Landroid/content/Context;

    invoke-static {p0}, Lnet/oneplus/widget/op/OpUpdater;->updateAll(Landroid/content/Context;)V

    return-void
.end method
