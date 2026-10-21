.class La/b$b;
.super La/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:La/b;


# direct methods
.method constructor <init>(La/b;)V
    .locals 0

    iput-object p1, p0, La/b$b;->a:La/b;

    invoke-direct {p0}, La/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, La/b$b;->a:La/b;

    iget-object v0, p0, La/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, La/b$c;

    invoke-direct {v1, p0, p1, p2}, La/b$c;-><init>(La/b;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, La/b;->a(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
