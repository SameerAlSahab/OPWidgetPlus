.class Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;
.super Ljava/lang/Object;
.source "AuroraView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->setPalette([IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;


# direct methods
.method constructor <init>(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 57
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->access$000(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)[I

    move-result-object v3

    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->access$300(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v4, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-static {v4}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->access$100(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-static {v5}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->access$200(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)[I

    move-result-object v5

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-static {v0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->access$400(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;)V

    .line 61
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$1;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-virtual {v0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->invalidate()V

    .line 62
    return-void
.end method
