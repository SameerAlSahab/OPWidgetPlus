.class public Lg/d;
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

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lg/b$a;->h:Lg/b$a;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lg/b$a;->g:Lg/b$a;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lg/b$a;->f:Lg/b$a;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lg/b$a;->e:Lg/b$a;

    goto :goto_0

    :cond_0
    sget-object p0, Lg/b$a;->d:Lg/b$a;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
