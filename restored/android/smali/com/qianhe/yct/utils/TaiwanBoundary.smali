.class public abstract Lcom/qianhe/yct/utils/TaiwanBoundary;
.super Ljava/lang/Object;
.source "TaiwanBoundary.java"


# static fields
.field private static final LAT:[D

.field private static final LNG:[D

.field private static final RING_COUNT:[I

.field private static final RING_OFFSET:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 12
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/qianhe/yct/utils/TaiwanBoundary;->RING_OFFSET:[I

    .line 16
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qianhe/yct/utils/TaiwanBoundary;->RING_COUNT:[I

    const/16 v0, 0xa9

    .line 20
    new-array v1, v0, [D

    fill-array-data v1, :array_2

    sput-object v1, Lcom/qianhe/yct/utils/TaiwanBoundary;->LNG:[D

    .line 45
    new-array v0, v0, [D

    fill-array-data v0, :array_3

    sput-object v0, Lcom/qianhe/yct/utils/TaiwanBoundary;->LAT:[D

    return-void

    :array_0
    .array-data 4
        0x0
        0x67
        0x73
        0x7d
        0x81
        0x9d
        0xa1
    .end array-data

    :array_1
    .array-data 4
        0x67
        0xc
        0xa
        0x4
        0x1c
        0x4
        0x8
    .end array-data

    :array_2
    .array-data 8
        0x405e1c634117f844L    # 120.443558
        0x405e212018a43bb4L    # 120.517584
        0x405e24794a6eb91bL    # 120.569903
        0x405e28fe08aefb2bL    # 120.640505
        0x405e2a307af20ea6L    # 120.659209
        0x405e2a5e39713ad6L    # 120.662001
        0x405e29b1960fa15eL    # 120.651464
        0x405e2abb73083559L    # 120.667691
        0x405e2ce685db76b4L    # 120.70157
        0x405e2f9157abb880L    # 120.743246
        0x405e3204ea4a8c15L    # 120.78155
        0x405e36b313be22e6L    # 120.85468
        0x405e37ddc1e7967dL    # 120.87291
        0x405e377470eb24a7L    # 120.866482
        0x405e3a1172ef0ae5L    # 120.907315
        0x405e39dda8bd230cL    # 120.904154
        0x405e3a8e9f6a93f3L    # 120.914955
        0x405e3ed37c1376d5L    # 120.981658
        0x405e40f5e84f0953L    # 121.015009
        0x405e422174c4cdfbL    # 121.033292
        0x405e45061c79b34aL    # 121.078498
        0x405e4aea3161a1dcL    # 121.170544
        0x405e4d78854cdb7bL    # 121.210481
        0x405e4f3a42f1ed18L    # 121.237931
        0x405e54c804102ff9L    # 121.324708
        0x405e56b3311a543fL    # 121.354687
        0x405e57b46fdeb52dL    # 121.370388
        0x405e5a35d249e450L    # 121.409535
        0x405e5b89efd86a90L    # 121.430294
        0x405e5a8f9b13165dL    # 121.415015
        0x405e5c2ed352220cL    # 121.440358
        0x405e5eb11409a240L    # 121.479558
        0x405e5fdbc23315d7L    # 121.497788
        0x405e616034f3fd93L    # 121.521497
        0x405e617a1c25d074L    # 121.523078
        0x405e659e279dd3bbL    # 121.587778
        0x405e67c85c24c405L    # 121.621604
        0x405e6a334c5da6a4L    # 121.659381
        0x405e68f5a1016ce8L    # 121.639992
        0x405e6934a44c7b03L    # 121.643838
        0x405e6b65bea0ba1fL    # 121.678085
        0x405e6c194c016052L    # 121.689044
        0x405e73c9795b35b1L    # 121.809172
        0x405e74e8ee6b8306L    # 121.826717
        0x405e77851654d61bL    # 121.867498
        0x405e78ab71327243L    # 121.885464
        0x405e791f1cfbb949L    # 121.892524
        0x405e7734ce3de615L    # 121.862598
        0x405e75a1ad6451b9L    # 121.837993
        0x405e7615592d98bfL    # 121.845053
        0x405e7bb45ae5ffa4L    # 121.932883
        0x405e80c7863beec4L    # 122.012178
        0x405e7ec508b32ce9L    # 121.980776
        0x405e7ca29c779a6bL    # 121.947425
        0x405e7ab163baba7cL    # 121.917077
        0x405e75e5de15ca6dL    # 121.842155
        0x405e7212f4cf4a56L    # 121.782407
        0x405e7008b32ce896L    # 121.750531
        0x405e6d44d87724fbL    # 121.707327
        0x405e6cd206c8711dL    # 121.700319
        0x405e69f0d413122bL    # 121.655324
        0x405e67dfa871a3b1L    # 121.623026
        0x405e6570691ea78bL    # 121.584986
        0x405e623e10060781L    # 121.535038
        0x405e5c714b9cb685L    # 121.444415
        0x405e5a76922d948eL    # 121.413487
        0x405e57cc9ea9a3d3L    # 121.371864
        0x405e546f19934efdL    # 121.319281
        0x405e4d65881a1555L    # 121.209322
        0x405e488548a9bcfdL    # 121.133135
        0x405e4688d6d3b6ccL    # 121.102102
        0x405e4194c0160525L    # 121.024704
        0x405e409eba6aca79L    # 121.009688
        0x405e3d7f5e84f095L    # 120.960899
        0x405e3a2474538ef3L    # 120.908475
        0x405e391b6d43d039L    # 120.892299
        0x405e34b85e80bed7L    # 120.823753
        0x405e30caafbc1aceL    # 120.762371
        0x405e2c13059641f6L    # 120.688661
        0x405e292324c83665L    # 120.64277
        0x405e25b53d640e9dL    # 120.589187
        0x405e22f69014b59aL    # 120.546299
        0x405e21583621fafdL    # 120.521009
        0x405e1e1d3aa369fdL    # 120.470534
        0x405e1ce4bcad9ad8L    # 120.451461
        0x405e191700cd8559L    # 120.392029
        0x405e143beec3979aL    # 120.316158
        0x405e11cf4623d0c0L    # 120.278276
        0x405e0fbaa9b499d0L    # 120.245768
        0x405e0b396073de1eL    # 120.175377
        0x405e0693d5347a5bL    # 120.102773
        0x405e06117b5286b6L    # 120.094817
        0x405e07ca9ac36545L    # 120.121741
        0x405e06e6b3fe9faeL    # 120.107831
        0x405e053636f3b214L    # 120.081434
        0x405e01366d7a56deL    # 120.018947
        0x405e01e3ef284168L    # 120.029537
        0x405e0868900c521eL    # 120.131382
        0x405e098b7a1c25d0L    # 120.149138
        0x405e0cd3671ac14cL    # 120.200403
        0x405e118dac258d58L    # 120.274272
        0x405e13052d666a98L    # 120.297191
        0x405e1c634117f844L    # 120.443558
        0x405f22c03ff69015L    # 124.542984
        0x405f2586b15f88fdL    # 124.586346
        0x405f24a8d64d7f0fL    # 124.572805
        0x405f22ad42c3c9efL    # 124.541825
        0x405f22c03ff69015L    # 124.542984
        0x405edc7f90d9d777L    # 123.445286
        0x405ede36f3b213e4L    # 123.472104
        0x405ee0925bb7b6bbL    # 123.508933
        0x405ee0f30a4e379bL    # 123.514834
        0x405edeea8112ba17L    # 123.483063
        0x405edc729f59ccfbL    # 123.444496
        0x405edc7f90d9d777L    # 123.445286
        0x405de957928e0c9eL    # 119.64597
        0x405decde82d7b635L    # 119.701081
        0x405deb65492ff4baL    # 119.678057
        0x405de70bb2bba98fL    # 119.610089
        0x405de60a73f748a1L    # 119.594388
        0x405de43e5b8561d4L    # 119.566306
        0x405de40110a137f4L    # 119.562565
        0x405de4b8f14db595L    # 119.573788
        0x405de6fc2a8869c6L    # 119.609141
        0x405de957928e0c9eL    # 119.64597
        0x405eeab384fd2a63L    # 123.667207
        0x405eed40fecdd0d9L    # 123.707092
        0x405eeb647baa9b4aL    # 123.678008
        0x405eeab384fd2a63L    # 123.667207
        0x405de062cfd8f0c7L    # 119.506031
        0x405de055de58e64bL    # 119.505241
        0x405dde3c105186dbL    # 119.472416
        0x405de17c39368273L    # 119.523207
        0x405de1a311e85fd0L    # 119.525578
        0x405de062cfd8f0c7L    # 119.506031
        0x405ddfd53cddd6e0L    # 119.49739
        0x405ddfb020c49ba6L    # 119.495125
        0x405de114a4d2b2c0L    # 119.516885
        0x405ddfd53cddd6e0L    # 119.49739
        0x405de3ad538ac190L    # 119.557454
        0x405de6a94bbe4474L    # 119.604083
        0x405de7649d388a8bL    # 119.615516
        0x405de588f861a60dL    # 119.586485
        0x405de3ad538ac190L    # 119.557454
        0x405e5df77af64064L    # 121.46823
        0x405e5e7f023e9ea1L    # 121.476502
        0x405e60dddb1209eeL    # 121.513541
        0x405e60f0d844d014L    # 121.5147
        0x405e5df77af64064L    # 121.46823
        0x405e60aca7935760L    # 121.510538
        0x405e607e0ac7da1fL    # 121.507693
        0x405e622e83a109d0L    # 121.534089
        0x405e660ca600b029L    # 121.594522
        0x405e66b1897a67a5L    # 121.604586
        0x405e64cd423d9232L    # 121.575028
        0x405e64d6bebe1651L    # 121.575607
        0x405e60aca7935760L    # 121.510538
        0x405e863dfb0d51f8L    # 122.097533
        0x405e85fd3b29a1baL    # 122.093581
        0x405e87fd21ff2e49L    # 122.124825
        0x405e863dfb0d51f8L    # 122.097533
        0x405ddaf950b955f8L    # 119.421467
        0x405ddaf6ba0620abL    # 119.421309
        0x405ddd0470a808c8L    # 119.453396
        0x405ddaf950b955f8L    # 119.421467
        0x405e16b90214ad36L    # 120.355042
        0x405e194f1e4b44a2L    # 120.395454
        0x405e1884406c00daL    # 120.383072
        0x405e16b90214ad36L    # 120.355042
    .end array-data

    :array_3
    .array-data 8
        0x403670f56eac8605L    # 22.441245
        0x40366895d0b73d19L    # 22.408536
        0x40365c9a34ca0c28L    # 22.361728
        0x40363dc8eabffcdbL    # 22.241347
        0x4036278183f91e64L    # 22.15432
        0x40361125cc426352L    # 22.066983
        0x4036087d805e5f31L    # 22.033165
        0x4035fbb0e5e67946L    # 21.983168
        0x4035ed5421c04428L    # 21.927065
        0x4035ea62bae03b3fL    # 21.915569
        0x4035ec887229e908L    # 21.923957
        0x4035e2221c8a7a42L    # 21.883333
        0x4035e5bb2788db05L    # 21.897387
        0x4035fbff04577d95L    # 21.98436
        0x4036088051c9f72fL    # 22.033208
        0x40361ea8650e7792L    # 22.119757
        0x40364d7eed45e918L    # 22.302718
        0x4036873eff195033L    # 22.528305
        0x4036958c08b75ea6L    # 22.584168
        0x4036a695e9e1b08aL    # 22.650725
        0x4036ab6e935b91f7L    # 22.669656
        0x4036b91f3e89a88bL    # 22.723133
        0x4036c54a4d2b2bfeL    # 22.770665
        0x4036d61986b9c305L    # 22.836327
        0x4036f2172abef06bL    # 22.945666
        0x403702934acaff6dL    # 23.01006
        0x40371597c3d68406L    # 23.084347
        0x40371a4883fd5022L    # 23.102669
        0x4037231f46ed245bL    # 23.137196
        0x4037322b4959e625L    # 23.195973
        0x403745a8155d5f57L    # 23.272096
        0x4037528240b78034L    # 23.3223
        0x40376b774aba3876L    # 23.419789
        0x40377bb2dd377e1cL    # 23.483198
        0x403789e8c47a17f4L    # 23.538708
        0x4037c2d234eb9a17L    # 23.76102
        0x4037ebb645a1cac1L    # 23.92075
        0x403801c3bd599243L    # 24.006893
        0x403810746455eaeeL    # 24.064276
        0x40381903b81b64e0L    # 24.097713
        0x40382247a9e2bcf9L    # 24.133906
        0x40382ca58b3f63c3L    # 24.174401
        0x403856cc4ef88b97L    # 24.339055
        0x40386c6fac6045bbL    # 24.423579
        0x40387a9e4d5d80e5L    # 24.478978
        0x40388798e9707182L    # 24.529677
        0x40389e2f7b17ce53L    # 24.617912
        0x4038abe86833c600L    # 24.671515
        0x4038c29930be0dedL    # 24.76015
        0x4038d615b9a5a89cL    # 24.836269
        0x4038f04b09e98dceL    # 24.938645
        0x4039006045baf534L    # 25.001469
        0x403907e1da7b0b39L    # 25.03079
        0x4039082e33eff195L    # 25.031955
        0x4039234df04ddb55L    # 25.137908
        0x403922a51e321a2eL    # 25.135332
        0x403929119ce075f7L    # 25.160425
        0x40392924af0bf1a6L    # 25.160716
        0x40393105af6c69b6L    # 25.191493
        0x40393a16f86a0989L    # 25.226913
        0x40393dea78af3e47L    # 25.241859
        0x40394b7110e453d2L    # 25.294694
        0x40394f15c63ae254L    # 25.308926
        0x40394eb94d940789L    # 25.307515
        0x403945479d4d8341L    # 25.270624
        0x40393d29563a9f38L    # 25.238912
        0x403928ee392e1ef7L    # 25.159885
        0x40392404534bd76fL    # 25.140691
        0x40392089e34330d7L    # 25.127104
        0x4039142784a9478dL    # 25.078728
        0x4039133d3a1d3240L    # 25.075153
        0x40390a5cd4ed2cbfL    # 25.040479
        0x4038fe5fc7e6b3ffL    # 24.993649
        0x4038f0b2b777d0f2L    # 24.940227
        0x4038da1d755bccafL    # 24.852012
        0x4038c47c957cd467L    # 24.767526
        0x4038b035ce182667L    # 24.688321
        0x4038a888a47ecfeaL    # 24.658335
        0x403899c6088d6d3bL    # 24.600678
        0x40387d7be9856a38L    # 24.490172
        0x40386eaec0724b77L    # 24.432354
        0x40385ed362e90364L    # 24.370413
        0x40384fe1b8ed1bf8L    # 24.312038
        0x40383e1a60d4562eL    # 24.24259
        0x40382ec4d65e4606L    # 24.182691
        0x40381e44fa05143cL    # 24.11824
        0x4037fc21294573a8L    # 23.984881
        0x4037ed842b734b51L    # 23.927798
        0x4037d72e7b3d8e00L    # 23.840553
        0x4037ceb0c88a47edL    # 23.807385
        0x4037b3737da61e0cL    # 23.700981
        0x403796642bf9830eL    # 23.587466
        0x40378131a8ef77f2L    # 23.504664
        0x4037575d13d74d59L    # 23.341264
        0x40374aba9d1f6018L    # 23.29191
        0x403712b7aa25d8d8L    # 23.073115
        0x40370c728e92d55aL    # 23.048623
        0x4037008ace24bba1L    # 23.002118
        0x4036e58f1d3ed528L    # 22.896715
        0x4036b89a133c1ce7L    # 22.721101
        0x40368f6805a2d730L    # 22.560181
        0x403688044284dfceL    # 22.531315
        0x403670f56eac8605L    # 22.441245
        0x4039e766b6177ea2L    # 25.903911
        0x4039e9ed4a1ad645L    # 25.913777
        0x4039f092ccf6be38L    # 25.93974
        0x4039ee580c308febL    # 25.931031
        0x4039e766b6177ea2L    # 25.903911
        0x4039b9d8e8640208L    # 25.725966
        0x4039b688bda9435bL    # 25.713024
        0x4039b9260f5e41d5L    # 25.723237
        0x4039c05058dde7a7L    # 25.751226
        0x4039c4c21e1d2179L    # 25.768587
        0x4039bf1b8aa00193L    # 25.746514
        0x4039b9d8e8640208L    # 25.725966
        0x40378d0870110a13L    # 23.55091
        0x40378cf7db6e5040L    # 23.550657
        0x4037999c49774257L    # 23.600041
        0x40379a9ca9ef5233L    # 23.603953
        0x403793c6540cc78fL    # 23.577245
        0x403795b0ff10ecb7L    # 23.584732
        0x403787c6c97d8cf4L    # 23.530377
        0x40378181adea8976L    # 23.505885
        0x403780fd3b29a1baL    # 23.503864
        0x40378d0870110a13L    # 23.55091
        0x4039ea003ab862b2L    # 25.914066
        0x4039eab8305d95ddL    # 25.916873
        0x4039f04c7b02d59dL    # 25.938667
        0x4039ea003ab862b2L    # 25.914066
        0x4037a02528ae74f3L    # 23.625567
        0x403793688bda9436L    # 23.575814
        0x40378ea077036c9cL    # 23.557136
        0x4037904e93e1c9b4L    # 23.563699
        0x40379ff91e646f15L    # 23.624895
        0x4037a02528ae74f3L    # 23.625567
        0x403762fda836eb4fL    # 23.386683
        0x403759a3d2d87f88L    # 23.350156
        0x403759933e35c5b5L    # 23.349903
        0x403762fda836eb4fL    # 23.386683
        0x4037aa9e0a41a262L    # 23.666474
        0x40379df2fdb8fde3L    # 23.616989
        0x4037a932617c1bdaL    # 23.660925
        0x4037ad0ca1cef241L    # 23.675974
        0x4037aa9e0a41a262L    # 23.666474
        0x4036ad388a8b08ddL    # 22.676644
        0x4036a443d46b26c0L    # 22.64166
        0x4036a1bfceb78898L    # 22.631833
        0x4036ad27e5215769L    # 22.67639
        0x4036ad388a8b08ddL    # 22.676644
        0x40361651c193b3a7L    # 22.087185
        0x40360c6c00da1a93L    # 22.048523
        0x403605ab5c39bcbaL    # 22.022146
        0x4035fed15ad106eeL    # 21.995382
        0x403605cf9a06a6e3L    # 22.022699
        0x40360980d3cff64dL    # 22.037122
        0x4036159c9d5a187aL    # 22.084421
        0x40361651c193b3a7L    # 22.087185
        0x4039800b02928177L    # 25.500168
        0x403978c9d9d3458dL    # 25.47183
        0x403979d6adf71eb0L    # 25.475932
        0x4039800b02928177L    # 25.500168
        0x403737789a459104L    # 23.216684
        0x403730793dd97f63L    # 23.18935
        0x403737bafd976ff4L    # 23.217697
        0x403737789a459104L    # 23.216684
        0x403653c73eee5259L    # 22.327259
        0x403657a01eeed890L    # 22.342287
        0x40365b06d5065732L    # 22.355573
        0x403653c73eee5259L    # 22.327259
    .end array-data
.end method

.method public static contains(DD)Z
    .locals 3

    .line 79
    invoke-static {p2, p3, p0, p1}, Lcom/qianhe/yct/utils/TaiwanBoundary;->isInBoundingBox(DD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 83
    invoke-static {v0, p0, p1, p2, p3}, Lcom/qianhe/yct/utils/TaiwanBoundary;->containsRing(IDD)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static containsRing(IDD)Z
    .locals 17

    .line 91
    sget-object v0, Lcom/qianhe/yct/utils/TaiwanBoundary;->RING_OFFSET:[I

    aget v0, v0, p0

    .line 92
    sget-object v1, Lcom/qianhe/yct/utils/TaiwanBoundary;->RING_COUNT:[I

    aget v1, v1, p0

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 95
    sget-object v6, Lcom/qianhe/yct/utils/TaiwanBoundary;->LAT:[D

    add-int v7, v0, v2

    aget-wide v8, v6, v7

    add-int/2addr v4, v0

    .line 96
    aget-wide v10, v6, v4

    const/4 v6, 0x1

    cmpl-double v12, v8, p3

    if-lez v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    cmpl-double v13, v10, p3

    if-lez v13, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eq v12, v6, :cond_2

    .line 98
    sget-object v6, Lcom/qianhe/yct/utils/TaiwanBoundary;->LNG:[D

    aget-wide v12, v6, v7

    .line 99
    aget-wide v14, v6, v4

    sub-double/2addr v14, v12

    sub-double v6, p3, v8

    mul-double v14, v14, v6

    sub-double/2addr v10, v8

    div-double/2addr v14, v10

    add-double/2addr v14, v12

    cmpg-double v4, p1, v14

    if-gez v4, :cond_2

    xor-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static isInBoundingBox(DD)Z
    .locals 3

    .line 0
    const-wide v0, 0x4035e2221c8a7a42L    # 21.883333

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x4039f092ccf6be38L    # 25.93974

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const-wide p0, 0x405ddaf6ba0620abL    # 119.421309

    cmpl-double v0, p2, p0

    if-ltz v0, :cond_0

    const-wide p0, 0x405f2586b15f88fdL    # 124.586346

    cmpg-double v0, p2, p0

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
