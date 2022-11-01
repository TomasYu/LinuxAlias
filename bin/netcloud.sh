mkdir /tmp/netease-install -p && cd /tmp/netease-install
# 1. download neccesary debs.
export source_url=http://kr.archive.ubuntu.com/ubuntu/pool
wget ${source_url}/main/g/glib2.0/libglib2.0-0_2.68.4-1ubuntu1_amd64.deb
wget ${source_url}/main/p/pango1.0/libpangocairo-1.0-0_1.48.10+ds1-1_amd64.deb
wget ${source_url}/universe/a/android-platform-external-libselinux/android-libselinux_10.0.0+r36-1_amd64.deb
# 2. extract debs.
dpkg -x libglib2.0-0_2.68.4-1ubuntu1_amd64.deb ./
dpkg -x libpangocairo-1.0-0_1.48.10+ds1-1_amd64.deb ./
dpkg -x android-libselinux_10.0.0+r36-1_amd64.deb ./
# 3. copy files
export source_dir=/tmp/netease-install/usr/lib/x86_64-linux-gnu
export dest_dir=/opt/netease/netease-cloud-music/libs/
sudo cp ${source_dir}/libgio-2.0.so.0 ${dest_dir}
sudo cp ${source_dir}/libpangocairo* ${dest_dir}
sudo cp ${source_dir}/android/libselinux.so.0 ${dest_dir}
# 4. clean up
cd ~
rm -rf /tmp/netease-install

