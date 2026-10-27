.class final enum Lj/b$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj/b$q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lj/b$q;

.field public static final enum b:Lj/b$q;

.field public static final enum c:Lj/b$q;

.field public static final enum d:Lj/b$q;

.field private static final synthetic e:[Lj/b$q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lj/b$q;

    const-string v1, "RESTRUCTURE_BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj/b$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/b$q;->a:Lj/b$q;

    new-instance v1, Lj/b$q;

    const-string v2, "RESTRUCTURE_AFTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lj/b$q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj/b$q;->b:Lj/b$q;

    new-instance v2, Lj/b$q;

    const-string v3, "SKIP_IF_EMPTY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lj/b$q;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lj/b$q;->c:Lj/b$q;

    new-instance v3, Lj/b$q;

    const-string v4, "RESIZE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lj/b$q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj/b$q;->d:Lj/b$q;

    filled-new-array {v0, v1, v2, v3}, [Lj/b$q;

    move-result-object v0

    sput-object v0, Lj/b$q;->e:[Lj/b$q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj/b$q;
    .locals 1

    const-class v0, Lj/b$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj/b$q;

    return-object p0
.end method

.method public static values()[Lj/b$q;
    .locals 1

    sget-object v0, Lj/b$q;->e:[Lj/b$q;

    invoke-virtual {v0}, [Lj/b$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/b$q;

    return-object v0
.end method
