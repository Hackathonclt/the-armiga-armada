<html>
  <head>
    <title>The-Amiga-Armada</title>
    <style type="text/css">
      html, body, #basicMap {
          width: 100%;
          height: 100%;
          margin: 0;
      }
    </style>

    <script src="OpenLayers/OpenLayers.js"></script>
    <script>
      function init() {
        map = new OpenLayers.Map("basicMap");
        var mapnik         = new OpenLayers.Layer.OSM();
        var fromProjection = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
        var toProjection   = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection
        var position       = new OpenLayers.LonLat(-80.84,35.23).transform( fromProjection, toProjection);
        var zoom           = 15; 


        
        
        map.addLayer(mapnik);
        map.setCenter(position, zoom );
      }
    </script>
  </head>
  <body onload="init();">
    <div id="basicMap" style="width: 98%; height: 98%"></div>
  </body>
</html>

