.class public Lj/b;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/b$r;,
        Lj/b$o;,
        Lj/b$k;,
        Lj/b$m;,
        Lj/b$h;,
        Lj/b$i;,
        Lj/b$f;,
        Lj/b$q;,
        Lj/b$p;,
        Lj/b$g;,
        Lj/b$j;,
        Lj/b$n;,
        Lj/b$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final f:Lj/b$l;


# instance fields
.field private final a:[Lj/b$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj/b<",
            "TK;TV;>.n;"
        }
    .end annotation
.end field

.field private final b:F

.field private final c:Lj/b$l;

.field private final d:I

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj/b$l;->a:Lj/b$l;

    sput-object v0, Lj/b;->f:Lj/b$l;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/16 v0, 0x10

    sget-object v1, Lj/b;->f:Lj/b$l;

    const/high16 v2, 0x3f400000    # 0.75f

    .line 1
    invoke-direct {p0, p1, v2, v0, v1}, Lj/b;-><init>(IFILj/b$l;)V

    return-void
.end method

.method public constructor <init>(IFILj/b$l;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Initial capacity must not be negative"

    .line 3
    invoke-static {v2, v3}, Lj/a;->a(ZLjava/lang/String;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Load factor must be positive"

    .line 4
    invoke-static {v2, v3}, Lj/a;->a(ZLjava/lang/String;)V

    if-lez p3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const-string v3, "Concurrency level must be positive"

    .line 5
    invoke-static {v2, v3}, Lj/a;->a(ZLjava/lang/String;)V

    const-string v2, "Reference type must not be null"

    .line 6
    invoke-static {p4, v2}, Lj/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lj/b;->b:F

    const/high16 p2, 0x10000

    .line 7
    invoke-static {p3, p2}, Lj/b;->c(II)I

    move-result p2

    iput p2, p0, Lj/b;->d:I

    shl-int p2, v1, p2

    iput-object p4, p0, Lj/b;->c:Lj/b$l;

    add-int/2addr p1, p2

    int-to-long p3, p1

    const-wide/16 v1, 0x1

    sub-long/2addr p3, v1

    int-to-long v1, p2

    .line 8
    div-long/2addr p3, v1

    long-to-int p1, p3

    const-class p3, Lj/b$n;

    .line 9
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lj/b$n;

    iput-object p2, p0, Lj/b;->a:[Lj/b$n;

    :goto_3
    iget-object p2, p0, Lj/b;->a:[Lj/b$n;

    .line 10
    array-length p3, p2

    if-ge v0, p3, :cond_3

    .line 11
    new-instance p3, Lj/b$n;

    invoke-direct {p3, p0, p1}, Lj/b$n;-><init>(Lj/b;I)V

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic a(Lj/b;)[Lj/b$n;
    .locals 0

    iget-object p0, p0, Lj/b;->a:[Lj/b$n;

    return-object p0
.end method

.method static synthetic b(Lj/b;)Lj/b$l;
    .locals 0

    iget-object p0, p0, Lj/b;->c:Lj/b$l;

    return-object p0
.end method

.method protected static c(II)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_0

    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private e(Ljava/lang/Object;Lj/b$p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lj/b<",
            "TK;TV;>.p<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lj/b;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lj/b;->i(I)Lj/b$n;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lj/b$n;->f(ILjava/lang/Object;Lj/b$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private i(I)Lj/b$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lj/b<",
            "TK;TV;>.n;"
        }
    .end annotation

    iget-object v0, p0, Lj/b;->a:[Lj/b$n;

    iget p0, p0, Lj/b;->d:I

    rsub-int/lit8 p0, p0, 0x20

    ushr-int p0, p1, p0

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method private j(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    new-instance v0, Lj/b$a;

    sget-object v1, Lj/b$q;->a:Lj/b$q;

    sget-object v2, Lj/b$q;->d:Lj/b$q;

    filled-new-array {v1, v2}, [Lj/b$q;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3, p2}, Lj/b$a;-><init>(Lj/b;[Lj/b$q;ZLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj/b;->e(Ljava/lang/Object;Lj/b$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object p0, p0, Lj/b;->a:[Lj/b$n;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lj/b$n;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lj/b$m;->a:Lj/b$m;

    invoke-virtual {p0, p1, v0}, Lj/b;->h(Ljava/lang/Object;Lj/b$m;)Lj/b$j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj/b$j;->get()Lj/b$g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj/b$g;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lj/d;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected d()Lj/b$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj/b<",
            "TK;TV;>.k;"
        }
    .end annotation

    new-instance v0, Lj/b$k;

    invoke-direct {v0, p0}, Lj/b$k;-><init>(Lj/b;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lj/b;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lj/b$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj/b$i;-><init>(Lj/b;Lj/b$a;)V

    iput-object v0, p0, Lj/b;->e:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lj/b;->e:Ljava/util/Set;

    return-object p0
.end method

.method protected f(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    shl-int/lit8 p1, p0, 0xf

    xor-int/lit16 p1, p1, -0x3283

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x3

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    shl-int/lit8 v0, p0, 0xe

    add-int/2addr p1, v0

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method protected final g()F
    .locals 0

    iget p0, p0, Lj/b;->b:F

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    sget-object v0, Lj/b$m;->a:Lj/b$m;

    invoke-virtual {p0, p1, v0}, Lj/b;->h(Ljava/lang/Object;Lj/b$m;)Lj/b$j;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj/b$j;->get()Lj/b$g;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj/b$g;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected final h(Ljava/lang/Object;Lj/b$m;)Lj/b$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lj/b$m;",
            ")",
            "Lj/b$j<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lj/b;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lj/b;->i(I)Lj/b$n;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lj/b$n;->j(Ljava/lang/Object;ILj/b$m;)Lj/b$j;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lj/b;->j(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj/b;->j(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj/b$b;

    sget-object v1, Lj/b$q;->b:Lj/b$q;

    sget-object v2, Lj/b$q;->c:Lj/b$q;

    filled-new-array {v1, v2}, [Lj/b$q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lj/b$b;-><init>(Lj/b;[Lj/b$q;)V

    invoke-direct {p0, p1, v0}, Lj/b;->e(Ljava/lang/Object;Lj/b$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 2
    new-instance v0, Lj/b$c;

    sget-object v1, Lj/b$q;->b:Lj/b$q;

    sget-object v2, Lj/b$q;->c:Lj/b$q;

    filled-new-array {v1, v2}, [Lj/b$q;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lj/b$c;-><init>(Lj/b;[Lj/b$q;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj/b;->e(Ljava/lang/Object;Lj/b$p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2
    new-instance v0, Lj/b$e;

    sget-object v1, Lj/b$q;->a:Lj/b$q;

    sget-object v2, Lj/b$q;->c:Lj/b$q;

    filled-new-array {v1, v2}, [Lj/b$q;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lj/b$e;-><init>(Lj/b;[Lj/b$q;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj/b;->e(Ljava/lang/Object;Lj/b$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lj/b$d;

    sget-object v1, Lj/b$q;->a:Lj/b$q;

    sget-object v2, Lj/b$q;->c:Lj/b$q;

    filled-new-array {v1, v2}, [Lj/b$q;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lj/b$d;-><init>(Lj/b;[Lj/b$q;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj/b;->e(Ljava/lang/Object;Lj/b$p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 4

    iget-object p0, p0, Lj/b;->a:[Lj/b$n;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lj/b$n;->h()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
