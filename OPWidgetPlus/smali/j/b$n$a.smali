.class Lj/b$n$a;
.super Lj/b$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b$n;->f(ILjava/lang/Object;Lj/b$p;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj/b<",
        "TK;TV;>.f;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Lj/b$j;

.field final synthetic e:I

.field final synthetic f:Lj/b$n;


# direct methods
.method constructor <init>(Lj/b$n;Ljava/lang/Object;ILj/b$j;I)V
    .locals 0

    iput-object p1, p0, Lj/b$n$a;->f:Lj/b$n;

    iput-object p2, p0, Lj/b$n$a;->b:Ljava/lang/Object;

    iput p3, p0, Lj/b$n$a;->c:I

    iput-object p4, p0, Lj/b$n$a;->d:Lj/b$j;

    iput p5, p0, Lj/b$n$a;->e:I

    iget-object p1, p1, Lj/b$n;->f:Lj/b;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lj/b$f;-><init>(Lj/b;Lj/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lj/b$n$a;->f:Lj/b$n;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Lj/b$g;

    iget-object v1, p0, Lj/b$n$a;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lj/b$g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lj/b$n$a;->f:Lj/b$n;

    invoke-static {p1}, Lj/b$n;->a(Lj/b$n;)Lj/b$k;

    move-result-object p1

    iget v1, p0, Lj/b$n$a;->c:I

    iget-object v2, p0, Lj/b$n$a;->d:Lj/b$j;

    invoke-virtual {p1, v0, v1, v2}, Lj/b$k;->a(Lj/b$g;ILj/b$j;)Lj/b$j;

    move-result-object p1

    iget-object v0, p0, Lj/b$n$a;->f:Lj/b$n;

    invoke-static {v0}, Lj/b$n;->b(Lj/b$n;)[Lj/b$j;

    move-result-object v0

    iget v1, p0, Lj/b$n$a;->e:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lj/b$n$a;->f:Lj/b$n;

    invoke-static {p1}, Lj/b$n;->c(Lj/b$n;)I

    iget-object p0, p0, Lj/b$n$a;->f:Lj/b$n;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
