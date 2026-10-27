.class Lj/b$d;
.super Lj/b$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj/b<",
        "TK;TV;>.p<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lj/b;


# direct methods
.method varargs constructor <init>(Lj/b;[Lj/b$q;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj/b$d;->e:Lj/b;

    iput-object p3, p0, Lj/b$d;->c:Ljava/lang/Object;

    iput-object p4, p0, Lj/b$d;->d:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj/b$p;-><init>(Lj/b;[Lj/b$q;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lj/b$j;Lj/b$g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj/b$d;->d(Lj/b$j;Lj/b$g;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected d(Lj/b$j;Lj/b$g;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b$j<",
            "TK;TV;>;",
            "Lj/b$g<",
            "TK;TV;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lj/b$g;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj/b$d;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lj/d;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lj/b$d;->d:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lj/b$g;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
