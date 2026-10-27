.class public Lcom/awesomeandro/widgetsplus/nothing/AAShow;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

.field final l:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAShow;->a:Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

    iput-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAShow;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAShow;->a:Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAShow;->l:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/awesomeandro/widgetsplus/nothing/AAWidgetsActivity;->showResults(Ljava/util/List;)V

    return-void
.end method
