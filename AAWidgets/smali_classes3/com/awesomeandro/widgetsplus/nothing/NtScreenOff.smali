.class public Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final s:Lcom/awesomeandro/widgetsplus/nothing/NtLive;


# direct methods
.method constructor <init>(Lcom/awesomeandro/widgetsplus/nothing/NtLive;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;->s:Lcom/awesomeandro/widgetsplus/nothing/NtLive;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtScreenOff;->s:Lcom/awesomeandro/widgetsplus/nothing/NtLive;

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->screenOff()V

    return-void
.end method
