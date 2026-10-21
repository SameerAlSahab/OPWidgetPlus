.class abstract Lj/b$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lj/b$q;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lj/b;


# direct methods
.method public varargs constructor <init>(Lj/b;[Lj/b$q;)V
    .locals 0

    iput-object p1, p0, Lj/b$p;->b:Lj/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p2

    if-nez p1, :cond_0

    const-class p1, Lj/b$q;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lj/b$p;->a:Ljava/util/EnumSet;

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
            "TK;TV;>;)TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

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
            "TK;TV;>.f;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lj/b$p;->a(Lj/b$j;Lj/b$g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Lj/b$q;)Z
    .locals 0

    iget-object p0, p0, Lj/b$p;->a:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
