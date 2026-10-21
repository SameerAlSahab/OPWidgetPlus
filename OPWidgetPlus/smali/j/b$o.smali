.class final Lj/b$o;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lj/b$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "Lj/b$g<",
        "TK;TV;>;>;",
        "Lj/b$j<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lj/b$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/b$j<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/b$g;ILj/b$j;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b$g<",
            "TK;TV;>;I",
            "Lj/b$j<",
            "TK;TV;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lj/b$g<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Lj/b$o;->a:I

    iput-object p3, p0, Lj/b$o;->b:Lj/b$j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->enqueue()Z

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public b()Lj/b$j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj/b$j<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lj/b$o;->b:Lj/b$j;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lj/b$o;->a:I

    return p0
.end method

.method public bridge synthetic get()Lj/b$g;
    .locals 0

    invoke-super {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/b$g;

    return-object p0
.end method
