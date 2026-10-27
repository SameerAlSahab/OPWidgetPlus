.class public Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final c:Landroid/content/Context;

.field final pr:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;->pr:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->fetch(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWxData;->refreshAll(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;->pr:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxFetch;->pr:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_0
    return-void
.end method
