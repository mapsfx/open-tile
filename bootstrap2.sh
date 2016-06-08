#for i in `cat package_list.txt`; do apt-get install -y $i; done

cd /opt
git clone https://github.com/MapFig/opentileserver.git
chmod 755 /opt/opentileserver/*.sh
sed -i "s/wget -P/wget --no-check-certificate -P/g" /opt/opentileserver/opentileserver.sh
sed -i "s/C_MEM=/C_MEM='2048'; #/g" /opt/opentileserver/opentileserver.sh
cd /opt/opentileserver
#./opentileserver.sh web bright http://download.geofabrik.de/north-america/us-west-latest.osm.pbf
./opentileserver.sh web carto http://download.geofabrik.de/north-america/us/california-latest.osm.pbf 
#./opentileserver.sh web bright http://beast/california-latest.osm.pbf 
