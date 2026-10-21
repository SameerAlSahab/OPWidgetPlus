.class public final Lnet/oneplus/widget/op/OpWeather$Place;
.super Ljava/lang/Object;
.source "OpWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/widget/op/OpWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Place"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public lat:F

.field public lon:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
