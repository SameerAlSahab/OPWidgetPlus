.class Lj/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:[Lj/b$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj/b$j<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lj/b$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/b$j<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private e:Lj/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private f:Lj/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lj/b;


# direct methods
.method public constructor <init>(Lj/b;)V
    .locals 0

    iput-object p1, p0, Lj/b$h;->g:Lj/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lj/b$h;->c()V

    return-void
.end method

.method private a()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lj/b$h;->e:Lj/b$g;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lj/b$h;->b()V

    iget-object v0, p0, Lj/b$h;->d:Lj/b$j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lj/b$j;->get()Lj/b$g;

    move-result-object v0

    iput-object v0, p0, Lj/b$h;->e:Lj/b$g;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lj/b$h;->d:Lj/b$j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj/b$j;->b()Lj/b$j;

    move-result-object v0

    iput-object v0, p0, Lj/b$h;->d:Lj/b$j;

    :cond_0
    :goto_0
    iget-object v0, p0, Lj/b$h;->d:Lj/b$j;

    if-nez v0, :cond_2

    iget-object v0, p0, Lj/b$h;->c:[Lj/b$j;

    if-eqz v0, :cond_2

    iget v1, p0, Lj/b$h;->b:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lj/b$h;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lj/b$h;->b:I

    goto :goto_0

    :cond_1
    aget-object v0, v0, v1

    iput-object v0, p0, Lj/b$h;->d:Lj/b$j;

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj/b$h;->b:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lj/b$h;->d:Lj/b$j;

    iput-object v0, p0, Lj/b$h;->c:[Lj/b$j;

    iget v0, p0, Lj/b$h;->a:I

    iget-object v1, p0, Lj/b$h;->g:Lj/b;

    invoke-static {v1}, Lj/b;->a(Lj/b;)[Lj/b$n;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lj/b$h;->g:Lj/b;

    invoke-static {v0}, Lj/b;->a(Lj/b;)[Lj/b$n;

    move-result-object v0

    iget v1, p0, Lj/b$h;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lj/b$n;->b(Lj/b$n;)[Lj/b$j;

    move-result-object v0

    iput-object v0, p0, Lj/b$h;->c:[Lj/b$j;

    iget v0, p0, Lj/b$h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj/b$h;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public d()Lj/b$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj/b$g<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lj/b$h;->a()V

    iget-object v0, p0, Lj/b$h;->e:Lj/b$g;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lj/b$h;->f:Lj/b$g;

    const/4 v1, 0x0

    iput-object v1, p0, Lj/b$h;->e:Lj/b$g;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    invoke-direct {p0}, Lj/b$h;->a()V

    iget-object p0, p0, Lj/b$h;->e:Lj/b$g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj/b$h;->d()Lj/b$g;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lj/b$h;->f:Lj/b$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lj/a;->c(Z)V

    iget-object v0, p0, Lj/b$h;->g:Lj/b;

    iget-object p0, p0, Lj/b$h;->f:Lj/b$g;

    invoke-virtual {p0}, Lj/b$g;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
