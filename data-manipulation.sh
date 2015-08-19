ogr2ogr \
  -f GeoJSON \
  -where "ADM0_A3 IN ('USA','DEU','NLD','BEL','ITA','FRA','CAN','DNK','FIN','ESP','GBR','CHE','CZE','HUN','LUX','SWE','POL','AUT','IRL','AUS','NZL')" \
  eu_subunits.json \
  ne_10m_admin_0_map_subunits.shp


  


ogr2ogr \
  -f GeoJSON \
  -where "ISO_A2 IN ('US','DE','NL','BE','IT','FR','CA','DK','FI','ES','GB','CH','CZ','HU','LU','SE','PL','AT','IE','AU','NZ') AND SCALERANK < 5" \
  eu_places.json \
  ne_10m_populated_places.shp


  topojson \
  -o map.json \
  --id-property SU_A3 \
  --properties name=NAME \
  -- \
  eu_subunits.json \
  eu_places.json