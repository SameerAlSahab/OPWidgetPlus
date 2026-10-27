.class public final enum Lm/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lm/b$a;

.field public static final enum c:Lm/b$a;

.field public static final enum d:Lm/b$a;

.field public static final enum e:Lm/b$a;

.field public static final enum f:Lm/b$a;

.field public static final enum g:Lm/b$a;

.field public static final enum h:Lm/b$a;

.field public static final enum i:Lm/b$a;

.field private static final synthetic j:[Lm/b$a;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lm/b$a;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->b:Lm/b$a;

    new-instance v0, Lm/b$a;

    const-string v1, "CITY_NAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->c:Lm/b$a;

    new-instance v0, Lm/b$a;

    const-string v1, "WEATHER_CODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->d:Lm/b$a;

    new-instance v0, Lm/b$a;

    const-string v1, "WEATHER_NAME"

    const/4 v2, 0x3

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->e:Lm/b$a;

    new-instance v0, Lm/b$a;

    const-string v1, "TEMP"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->f:Lm/b$a;

    new-instance v0, Lm/b$a;

    const-string v1, "TEMP_HIGH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->g:Lm/b$a;

    new-instance v0, Lm/b$a;

    const-string v1, "TEMP_LOW"

    invoke-direct {v0, v1, v3, v2}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->h:Lm/b$a;

    new-instance v0, Lm/b$a;

    const-string v1, "TEMP_UNIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lm/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm/b$a;->i:Lm/b$a;

    invoke-static {}, Lm/b$a;->a()[Lm/b$a;

    move-result-object v0

    sput-object v0, Lm/b$a;->j:[Lm/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lm/b$a;->a:I

    return-void
.end method

.method private static synthetic a()[Lm/b$a;
    .locals 8

    sget-object v0, Lm/b$a;->b:Lm/b$a;

    sget-object v1, Lm/b$a;->c:Lm/b$a;

    sget-object v2, Lm/b$a;->d:Lm/b$a;

    sget-object v3, Lm/b$a;->e:Lm/b$a;

    sget-object v4, Lm/b$a;->f:Lm/b$a;

    sget-object v5, Lm/b$a;->g:Lm/b$a;

    sget-object v6, Lm/b$a;->h:Lm/b$a;

    sget-object v7, Lm/b$a;->i:Lm/b$a;

    filled-new-array/range {v0 .. v7}, [Lm/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lm/b$a;
    .locals 1

    const-class v0, Lm/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/b$a;

    return-object p0
.end method

.method public static values()[Lm/b$a;
    .locals 1

    sget-object v0, Lm/b$a;->j:[Lm/b$a;

    invoke-virtual {v0}, [Lm/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/b$a;

    return-object v0
.end method
