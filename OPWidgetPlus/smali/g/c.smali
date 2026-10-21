.class public Lg/c;
.super Lg/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Lg/b$a;
    .locals 2

    sget-object p0, Lg/b$a;->a:Lg/b$a;

    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lg/b$a;->c:Lg/b$a;

    goto :goto_0

    :cond_1
    sget-object p0, Lg/b$a;->b:Lg/b$a;

    :goto_0
    return-object p0
.end method
