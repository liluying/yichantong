package com.qianhe.yct.bean;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CoordSystemEntity implements Serializable {
    public double a;
    public double az;

    @SerializedName("c")
    public String country;
    public double fe;
    public double fn;
    public double invf;

    @SerializedName("iso")
    public String iso;
    public double k0;
    public double lat0;
    public double latc;
    public double lon0;
    public double lonc;
    public double lps;

    @SerializedName("n")
    public String name;

    @SerializedName("p")
    public String projection;
    public double s1;
    public double s2;

    public String displayName() {
        String str = this.name;
        if (str == null || str.isEmpty()) {
            String str2 = this.country;
            return str2 != null ? str2 : "";
        }
        String str3 = this.country;
        if (str3 != null && !str3.isEmpty() && !this.name.contains(this.country)) {
            return this.country + " / " + this.name;
        }
        return this.name;
    }

    public double flattening() {
        double d = this.invf;
        if (d != 0.0d) {
            return 1.0d / d;
        }
        return 0.0d;
    }

    public double centralMeridian() {
        double d = this.lon0;
        return d != 0.0d ? d : this.lonc;
    }

    public int zoneWidthDegrees() {
        String str = this.name;
        String lowerCase = str != null ? str.toLowerCase() : "";
        if (lowerCase.contains("utm") || lowerCase.contains("6-degree") || lowerCase.contains("6 degree") || lowerCase.contains("6°")) {
            return 6;
        }
        return (lowerCase.contains("3-degree") || lowerCase.contains("3 degree") || lowerCase.contains("3°") || Math.abs(this.k0 - 0.9996d) >= 1.0E-6d) ? 3 : 6;
    }
}
