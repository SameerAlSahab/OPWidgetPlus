.class final Lb/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:Lb/c;


# direct methods
.method constructor <init>(Lb/c;I)V
    .locals 1

    iput-object p1, p0, Lb/c$a;->e:Lb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/c$a;->d:Z

    iput p2, p0, Lb/c$a;->a:I

    invoke-virtual {p1}, Lb/c;->d()I

    move-result p1

    iput p1, p0, Lb/c$a;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lb/c$a;->c:I

    iget p0, p0, Lb/c$a;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/c$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c$a;->e:Lb/c;

    iget v1, p0, Lb/c$a;->c:I

    iget v2, p0, Lb/c$a;->a:I

    invoke-virtual {v0, v1, v2}, Lb/c;->b(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lb/c$a;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lb/c$a;->c:I

    iput-boolean v2, p0, Lb/c$a;->d:Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lb/c$a;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/c$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/c$a;->c:I

    iget v1, p0, Lb/c$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/c$a;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/c$a;->d:Z

    iget-object p0, p0, Lb/c$a;->e:Lb/c;

    invoke-virtual {p0, v0}, Lb/c;->h(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
