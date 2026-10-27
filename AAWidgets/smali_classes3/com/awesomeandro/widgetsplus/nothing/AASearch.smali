.class public Lcom/awesomeandro/widgetsplus/nothing/AASearch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

.field final q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASearch;->a:Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

    iput-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AASearch;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASearch;->q:Ljava/lang/String;

    invoke-static {v1}, Lnet/oneplus/widget/op/OpWeather;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/AASearch;->a:Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

    new-instance v2, Lcom/awesomeandro/widgetsplus/nothing/AAShow;

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AASearch;->a:Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

    invoke-direct {v2, p0, v0}, Lcom/awesomeandro/widgetsplus/nothing/AAShow;-><init>(Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
