ogr2ogr \
  -f GeoJSON \
  -where "ADM0_A3 IN ('DEU','NLD','BEL','ITA','FRA','DNK','FIN','ESP','GBR','CHE','CZE','SWE','POL','IRL')" \
  eu_subunits.json \
  ne_10m_admin_0_map_subunits.shp


  


ogr2ogr \
  -f GeoJSON \
  -where "ISO_A2 IN ('DE','NL','BE','IT','FR','DK','FI','ES','GB','CH','CZ','SE','PL','IE') AND SCALERANK < 5" \
  eu_places.json \
  ne_10m_populated_places.shp


  topojson \
  -o map.json \
  --id-property SU_A3 \
  --properties name=NAME \
  -- \
  eu_subunits.json \
  eu_places.json