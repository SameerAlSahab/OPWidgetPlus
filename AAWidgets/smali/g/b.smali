.class public Lg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lg/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Lf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lg/b$a;
    .locals 1

    invoke-static {}, Lg/b;->c()Lg/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/b;->b()Lg/b$a;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lg/b;
    .locals 3

    sget-object v0, Lg/b;->b:Lg/b;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROJECT_NAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lg/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpCustomizeSettings"

    invoke-static {v2, v0}, Lg/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "16859"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "17801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "15801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "15811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lg/d;

    invoke-direct {v0}, Lg/d;-><init>()V

    sput-object v0, Lg/b;->b:Lg/b;

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Lg/b;

    invoke-direct {v0}, Lg/b;-><init>()V

    sput-object v0, Lg/b;->b:Lg/b;

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    sput-object v0, Lg/b;->b:Lg/b;

    :cond_4
    :goto_2
    sget-object v0, Lg/b;->b:Lg/b;

    return-object v0
.end method


# virtual methods
.method protected b()Lg/b$a;
    .locals 0

    sget-object p0, Lg/b$a;->a:Lg/b$a;

    return-object p0
.end method
