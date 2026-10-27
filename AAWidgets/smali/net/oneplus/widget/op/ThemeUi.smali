.class public final Lnet/oneplus/widget/op/ThemeUi;
.super Ljava/lang/Object;
.source "ThemeUi.java"


# direct methods
.method public static setGroupEnabled(Landroid/widget/RadioGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v2, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->setAlpha(F)V

    return-void
.end method
