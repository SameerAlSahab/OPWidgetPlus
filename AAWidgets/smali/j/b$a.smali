.class Lj/b$a;
.super Lj/b$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b;->j(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj/b<",
        "TK;TV;>.p<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Z

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lj/b;


# direct methods
.method varargs constructor <init>(Lj/b;[Lj/b$q;ZLjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj/b$a;->e:Lj/b;

    iput-boolean p3, p0, Lj/b$a;->c:Z

    iput-object p4, p0, Lj/b$a;->d:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj/b$p;-><init>(Lj/b;[Lj/b$q;)V

    return-void
.end method


# virtual methods
.method protected b(Lj/b$j;Lj/b$g;Lj/b$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b$j<",
            "TK;TV;>;",
            "Lj/b$g<",
            "TK;TV;>;",
            "Lj/b<",
            "TK;TV;>.f;)TV;"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lj/b$g;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p3, p0, Lj/b$a;->c:Z

    if-eqz p3, :cond_0

    iget-object p0, p0, Lj/b$a;->d:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lj/b$g;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1

    :cond_1
    iget-object p0, p0, Lj/b$a;->d:Ljava/lang/Object;

    invoke-virtual {p3, p0}, Lj/b$f;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
