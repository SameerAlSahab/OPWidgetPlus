.class final Lnet/oneplus/widget/op/OpRenderer$Line;
.super Ljava/lang/Object;
.source "OpRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/widget/op/OpRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Line"
.end annotation


# instance fields
.field final pitch:F

.field final red:Z

.field final redUntil:I

.field final size:F

.field slogan:Z

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;FFZI)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lnet/oneplus/widget/op/OpRenderer$Line;->text:Ljava/lang/String;

    .line 67
    iput p2, p0, Lnet/oneplus/widget/op/OpRenderer$Line;->size:F

    .line 68
    iput p3, p0, Lnet/oneplus/widget/op/OpRenderer$Line;->pitch:F

    .line 69
    iput-boolean p4, p0, Lnet/oneplus/widget/op/OpRenderer$Line;->red:Z

    .line 70
    iput p5, p0, Lnet/oneplus/widget/op/OpRenderer$Line;->redUntil:I

    .line 71
    return-void
.end method


# virtual methods
.method s()Lnet/oneplus/widget/op/OpRenderer$Line;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/widget/op/OpRenderer$Line;->slogan:Z

    return-object p0
.end method
