.class Lj/b$b;
.super Lj/b$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic c:Lj/b;


# direct methods
.method varargs constructor <init>(Lj/b;[Lj/b$q;)V
    .locals 0

    iput-object p1, p0, Lj/b$b;->c:Lj/b;

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

    invoke-interface {p1}, Lj/b$j;->a()V

    invoke-static {p2}, Lj/b$g;->a(Lj/b$g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
