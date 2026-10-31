package com.qianhe.yct.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ViewPagerAdapter extends FragmentStateAdapter {
    private final List<Fragment> fragments;
    private final List<String> titles;

    public ViewPagerAdapter(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.fragments = new ArrayList();
        this.titles = new ArrayList();
    }

    public void addFragment(Fragment fragment, String str) {
        if (this.fragments.contains(fragment)) {
            return;
        }
        this.fragments.add(fragment);
        this.titles.add(str);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i) {
        return this.fragments.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.fragments.size();
    }

    public String getTitle(int i) {
        return this.titles.get(i);
    }

    public Fragment getFragment(int i) {
        if (i < 0 || i >= this.fragments.size()) {
            return null;
        }
        return this.fragments.get(i);
    }
}
