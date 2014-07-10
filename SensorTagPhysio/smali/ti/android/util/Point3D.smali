.class public Lti/android/util/Point3D;
.super Ljava/lang/Object;
.source "Point3D.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lti/android/util/Point3D;->x:D

    .line 45
    iput-wide p3, p0, Lti/android/util/Point3D;->y:D

    .line 46
    iput-wide p5, p0, Lti/android/util/Point3D;->z:D

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 70
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lti/android/util/Point3D;

    .line 72
    .local v0, other:Lti/android/util/Point3D;
    iget-wide v3, p0, Lti/android/util/Point3D;->x:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v0, Lti/android/util/Point3D;->x:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-wide v3, p0, Lti/android/util/Point3D;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v0, Lti/android/util/Point3D;->y:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iget-wide v3, p0, Lti/android/util/Point3D;->z:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v0, Lti/android/util/Point3D;->z:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, prime:I
    const/4 v1, 0x1

    .line 54
    .local v1, result:I
    iget-wide v4, p0, Lti/android/util/Point3D;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 55
    .local v2, temp:J
    ushr-long v4, v2, v7

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 56
    iget-wide v4, p0, Lti/android/util/Point3D;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 57
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v5, v2, v7

    xor-long/2addr v5, v2

    long-to-int v5, v5

    add-int v1, v4, v5

    .line 58
    iget-wide v4, p0, Lti/android/util/Point3D;->z:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 59
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v5, v2, v7

    xor-long/2addr v5, v2

    long-to-int v5, v5

    add-int v1, v4, v5

    .line 60
    return v1
.end method
