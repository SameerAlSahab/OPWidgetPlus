.class final Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;
.super Ljava/lang/Object;


# instance fields
.field aqi:I

.field code:I

.field dCode:[I

.field dHi:[D

.field dName:[Ljava/lang/String;

.field day:Z

.field days:I

.field fahrenheit:Z

.field feels:D

.field hi:D

.field lo:D

.field nowMin:I

.field ok:Z

.field pop:I

.field riseMin:I

.field setMin:I

.field temp:D


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->day:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->aqi:I

    const/4 v0, 0x7

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dCode:[I

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dHi:[D

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWxModel;->dName:[Ljava/lang/String;

    return-void
.end method
