.class public Lj/b$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "k"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lj/b$g<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lj/b;


# direct methods
.method protected constructor <init>(Lj/b;)V
    .locals 0

    iput-object p1, p0, Lj/b$k;->b:Lj/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lj/b$k;->a:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public a(Lj/b$g;ILj/b$j;)Lj/b$j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b$g<",
            "TK;TV;>;I",
            "Lj/b$j<",
            "TK;TV;>;)",
            "Lj/b$j<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lj/b$k;->b:Lj/b;

    invoke-static {v0}, Lj/b;->b(Lj/b;)Lj/b$l;

    move-result-object v0

    sget-object v1, Lj/b$l;->b:Lj/b$l;

    if-ne v0, v1, :cond_0

    new-instance v0, Lj/b$r;

    iget-object p0, p0, Lj/b$k;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, p0}, Lj/b$r;-><init>(Lj/b$g;ILj/b$j;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    :cond_0
    new-instance v0, Lj/b$o;

    iget-object p0, p0, Lj/b$k;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, p0}, Lj/b$o;-><init>(Lj/b$g;ILj/b$j;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
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

    iget-object p0, p0, Lj/b$k;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p0

    check-cast p0, Lj/b$j;

    return-object p0
.end method
