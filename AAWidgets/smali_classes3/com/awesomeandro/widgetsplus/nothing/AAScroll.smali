.class public Lcom/awesomeandro/widgetsplus/nothing/AAScroll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final sv:Landroid/widget/ScrollView;

.field final target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/AAScroll;->sv:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/awesomeandro/widgetsplus/nothing/AAScroll;->target:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAScroll;->sv:Landroid/widget/ScrollView;

    iget-object p0, p0, Lcom/awesomeandro/widgetsplus/nothing/AAScroll;->target:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    add-int/lit8 p0, p0, -0x18

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method
