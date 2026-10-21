.class Lj/b$e;
.super Lj/b$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lj/b;


# direct methods
.method varargs constructor <init>(Lj/b;[Lj/b$q;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj/b$e;->d:Lj/b;

    iput-object p3, p0, Lj/b$e;->c:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj/b$p;-><init>(Lj/b;[Lj/b$q;)V

    return-void
.end method


# virtual methods
.method protected a(Lj/b$j;Lj/b$g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b$j<",
            "TK;TV;>;",
            "Lj/b$g<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lj/b$g;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lj/b$e;->c:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lj/b$g;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
