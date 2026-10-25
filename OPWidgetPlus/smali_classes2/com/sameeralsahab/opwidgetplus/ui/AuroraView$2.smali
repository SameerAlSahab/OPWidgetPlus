.class Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$2;
.super Ljava/lang/Object;
.source "AuroraView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->onAttachedToWindow()V
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
    .line 92
    iput-object p1, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->access$502(Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;F)F

    .line 96
    iget-object v0, p0, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView$2;->this$0:Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;

    invoke-virtual {v0}, Lcom/sameeralsahab/opwidgetplus/ui/AuroraView;->invalidate()V

    .line 97
    return-void
.end method
