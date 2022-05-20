<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="initial-scale=1,user-scalable=no,maximum-scale=1,width=device-width">
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link rel="stylesheet" href="css/leaflet.css">
        <link rel="stylesheet" href="css/qgis2web.css"><link rel="stylesheet" href="css/fontawesome-all.min.css">
        <link rel="stylesheet" href="css/leaflet-control-geocoder.Geocoder.css">
        <link rel="stylesheet" href="css/leaflet-measure.css">
        <style>
        #map {
            width: 774px;
            height: 545px;
        }
        </style>
        <title></title>
    </head>
    <body>
        <div id="map">
        </div>
        <script src="js/qgis2web_expressions.js"></script>
        <script src="js/leaflet.js"></script>
        <script src="js/leaflet.rotatedMarker.js"></script>
        <script src="js/leaflet.pattern.js"></script>
        <script src="js/leaflet-hash.js"></script>
        <script src="js/Autolinker.min.js"></script>
        <script src="js/rbush.min.js"></script>
        <script src="js/labelgun.min.js"></script>
        <script src="js/labels.js"></script>
        <script src="js/leaflet-control-geocoder.Geocoder.js"></script>
        <script src="js/leaflet-measure.js"></script>
        <script src="data/geo_export_753b1694d3ed46778a070f95e34b93ac_1.js"></script>
        <script src="data/MTA_NYCT_Bus_Routes_Extracted_2.js"></script>
        <script src="data/BX29_Bus_Stops_3.js"></script>
        <script src="data/Bx13_Bus_Stops_4.js"></script>
        <script src="data/Bx_22_Bus_Stops_5.js"></script>
        <script src="data/Redesign_Bx13_BusStops_6.js"></script>
        <script src="data/Redesign_Bx22_BusStops_7.js"></script>
        <script src="data/Redesign_Bx29_BusStops_8.js"></script>
        <script>
        var highlightLayer;
        function highlightFeature(e) {
            highlightLayer = e.target;

            if (e.target.feature.geometry.type === 'LineString') {
              highlightLayer.setStyle({
                color: '#ffff00',
              });
            } else {
              highlightLayer.setStyle({
                fillColor: '#ffff00',
                fillOpacity: 1
              });
            }
            highlightLayer.openPopup();
        }
        var map = L.map('map', {
            zoomControl:true, maxZoom:28, minZoom:1
        }).fitBounds([[40.790478347193925,-73.95572719688528],[40.91667994641841,-73.7763024554464]]);
        var hash = new L.Hash(map);
        map.attributionControl.setPrefix('<a href="https://github.com/tomchadwin/qgis2web" target="_blank">qgis2web</a> &middot; <a href="https://leafletjs.com" title="A JS library for interactive maps">Leaflet</a> &middot; <a href="https://qgis.org">QGIS</a>');
        var autolinker = new Autolinker({truncate: {length: 30, location: 'smart'}});
        var measureControl = new L.Control.Measure({
            position: 'topleft',
            primaryLengthUnit: 'meters',
            secondaryLengthUnit: 'kilometers',
            primaryAreaUnit: 'sqmeters',
            secondaryAreaUnit: 'hectares'
        });
        measureControl.addTo(map);
        document.getElementsByClassName('leaflet-control-measure-toggle')[0]
        .innerHTML = '';
        document.getElementsByClassName('leaflet-control-measure-toggle')[0]
        .className += ' fas fa-ruler';
        var bounds_group = new L.featureGroup([]);
        function setBounds() {
        }
        map.createPane('pane_OpenStreetMap_0');
        map.getPane('pane_OpenStreetMap_0').style.zIndex = 400;
        var layer_OpenStreetMap_0 = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            pane: 'pane_OpenStreetMap_0',
            opacity: 1.0,
            attribution: '',
            minZoom: 1,
            maxZoom: 28,
            minNativeZoom: 0,
            maxNativeZoom: 19
        });
        layer_OpenStreetMap_0;
        map.addLayer(layer_OpenStreetMap_0);
        function pop_geo_export_753b1694d3ed46778a070f95e34b93ac_1(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['borough'] !== null ? autolinker.link(feature.properties['borough'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['developmen'] !== null ? autolinker.link(feature.properties['developmen'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['tds_num'] !== null ? autolinker.link(feature.properties['tds_num'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_geo_export_753b1694d3ed46778a070f95e34b93ac_1_0() {
            return {
                pane: 'pane_geo_export_753b1694d3ed46778a070f95e34b93ac_1',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(225,89,137,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_geo_export_753b1694d3ed46778a070f95e34b93ac_1');
        map.getPane('pane_geo_export_753b1694d3ed46778a070f95e34b93ac_1').style.zIndex = 401;
        map.getPane('pane_geo_export_753b1694d3ed46778a070f95e34b93ac_1').style['mix-blend-mode'] = 'normal';
        var layer_geo_export_753b1694d3ed46778a070f95e34b93ac_1 = new L.geoJson(json_geo_export_753b1694d3ed46778a070f95e34b93ac_1, {
            attribution: '',
            interactive: true,
            dataVar: 'json_geo_export_753b1694d3ed46778a070f95e34b93ac_1',
            layerName: 'layer_geo_export_753b1694d3ed46778a070f95e34b93ac_1',
            pane: 'pane_geo_export_753b1694d3ed46778a070f95e34b93ac_1',
            onEachFeature: pop_geo_export_753b1694d3ed46778a070f95e34b93ac_1,
            style: style_geo_export_753b1694d3ed46778a070f95e34b93ac_1_0,
        });
        bounds_group.addLayer(layer_geo_export_753b1694d3ed46778a070f95e34b93ac_1);
        map.addLayer(layer_geo_export_753b1694d3ed46778a070f95e34b93ac_1);
        function pop_MTA_NYCT_Bus_Routes_Extracted_2(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID'] !== null ? autolinker.link(feature.properties['OBJECTID'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Id'] !== null ? autolinker.link(feature.properties['Id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <th scope="row">RtShpName</th>\
                        <td>' + (feature.properties['RtShpName'] !== null ? autolinker.link(feature.properties['RtShpName'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['shape_id'] !== null ? autolinker.link(feature.properties['shape_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>route_id</strong><br />' + (feature.properties['route_id'] !== null ? autolinker.link(feature.properties['route_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['agency_id'] !== null ? autolinker.link(feature.properties['agency_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['rt_shrt_nm'] !== null ? autolinker.link(feature.properties['rt_shrt_nm'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['rt_long_nm'] !== null ? autolinker.link(feature.properties['rt_long_nm'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['route_desc'] !== null ? autolinker.link(feature.properties['route_desc'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['route_type'] !== null ? autolinker.link(feature.properties['route_type'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['rt_typ_txt'] !== null ? autolinker.link(feature.properties['rt_typ_txt'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['route_url'] !== null ? autolinker.link(feature.properties['route_url'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['rt_color'] !== null ? autolinker.link(feature.properties['rt_color'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['rt_col_RGB'] !== null ? autolinker.link(feature.properties['rt_col_RGB'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['rt_txt_col'] !== null ? autolinker.link(feature.properties['rt_txt_col'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['rt_txt_RGB'] !== null ? autolinker.link(feature.properties['rt_txt_RGB'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shape_Leng'] !== null ? autolinker.link(feature.properties['Shape_Leng'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shapefile'] !== null ? autolinker.link(feature.properties['Shapefile'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shape_Length'] !== null ? autolinker.link(feature.properties['Shape_Length'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_MTA_NYCT_Bus_Routes_Extracted_2_0() {
            return {
                pane: 'pane_MTA_NYCT_Bus_Routes_Extracted_2',
                opacity: 1,
                color: 'rgba(183,72,75,1.0)',
                dashArray: '',
                lineCap: 'square',
                lineJoin: 'bevel',
                weight: 1.0,
                fillOpacity: 0,
                interactive: true,
            }
        }
        map.createPane('pane_MTA_NYCT_Bus_Routes_Extracted_2');
        map.getPane('pane_MTA_NYCT_Bus_Routes_Extracted_2').style.zIndex = 402;
        map.getPane('pane_MTA_NYCT_Bus_Routes_Extracted_2').style['mix-blend-mode'] = 'normal';
        var layer_MTA_NYCT_Bus_Routes_Extracted_2 = new L.geoJson(json_MTA_NYCT_Bus_Routes_Extracted_2, {
            attribution: '',
            interactive: true,
            dataVar: 'json_MTA_NYCT_Bus_Routes_Extracted_2',
            layerName: 'layer_MTA_NYCT_Bus_Routes_Extracted_2',
            pane: 'pane_MTA_NYCT_Bus_Routes_Extracted_2',
            onEachFeature: pop_MTA_NYCT_Bus_Routes_Extracted_2,
            style: style_MTA_NYCT_Bus_Routes_Extracted_2_0,
        });
        bounds_group.addLayer(layer_MTA_NYCT_Bus_Routes_Extracted_2);
        map.addLayer(layer_MTA_NYCT_Bus_Routes_Extracted_2);
        function pop_BX29_Bus_Stops_3(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID_1'] !== null ? autolinker.link(feature.properties['OBJECTID_1'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_id'] !== null ? autolinker.link(feature.properties['stop_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>stop_name</strong><br />' + (feature.properties['stop_name'] !== null ? autolinker.link(feature.properties['stop_name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_desc'] !== null ? autolinker.link(feature.properties['stop_desc'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lat'] !== null ? autolinker.link(feature.properties['stop_lat'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lon'] !== null ? autolinker.link(feature.properties['stop_lon'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>route</strong><br />' + (feature.properties['route'] !== null ? autolinker.link(feature.properties['route'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shapefile'] !== null ? autolinker.link(feature.properties['Shapefile'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID'] !== null ? autolinker.link(feature.properties['OBJECTID'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['zone_id'] !== null ? autolinker.link(feature.properties['zone_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_url'] !== null ? autolinker.link(feature.properties['stop_url'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['location_t'] !== null ? autolinker.link(feature.properties['location_t'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['parent_sta'] !== null ? autolinker.link(feature.properties['parent_sta'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_BX29_Bus_Stops_3_0() {
            return {
                pane: 'pane_BX29_Bus_Stops_3',
                radius: 4.0,
                opacity: 1,
                color: 'rgba(128,17,25,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 2.0,
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(219,30,42,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_BX29_Bus_Stops_3');
        map.getPane('pane_BX29_Bus_Stops_3').style.zIndex = 403;
        map.getPane('pane_BX29_Bus_Stops_3').style['mix-blend-mode'] = 'normal';
        var layer_BX29_Bus_Stops_3 = new L.geoJson(json_BX29_Bus_Stops_3, {
            attribution: '',
            interactive: true,
            dataVar: 'json_BX29_Bus_Stops_3',
            layerName: 'layer_BX29_Bus_Stops_3',
            pane: 'pane_BX29_Bus_Stops_3',
            onEachFeature: pop_BX29_Bus_Stops_3,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.circleMarker(latlng, style_BX29_Bus_Stops_3_0(feature));
            },
        });
        bounds_group.addLayer(layer_BX29_Bus_Stops_3);
        map.addLayer(layer_BX29_Bus_Stops_3);
        function pop_Bx13_Bus_Stops_4(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID_1'] !== null ? autolinker.link(feature.properties['OBJECTID_1'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_id'] !== null ? autolinker.link(feature.properties['stop_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>stop_name</strong><br />' + (feature.properties['stop_name'] !== null ? autolinker.link(feature.properties['stop_name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_desc'] !== null ? autolinker.link(feature.properties['stop_desc'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lat'] !== null ? autolinker.link(feature.properties['stop_lat'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lon'] !== null ? autolinker.link(feature.properties['stop_lon'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>route</strong><br />' + (feature.properties['route'] !== null ? autolinker.link(feature.properties['route'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shapefile'] !== null ? autolinker.link(feature.properties['Shapefile'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID'] !== null ? autolinker.link(feature.properties['OBJECTID'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['zone_id'] !== null ? autolinker.link(feature.properties['zone_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_url'] !== null ? autolinker.link(feature.properties['stop_url'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['location_t'] !== null ? autolinker.link(feature.properties['location_t'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['parent_sta'] !== null ? autolinker.link(feature.properties['parent_sta'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_Bx13_Bus_Stops_4_0() {
            return {
                pane: 'pane_Bx13_Bus_Stops_4',
                radius: 4.0,
                opacity: 1,
                color: 'rgba(128,17,25,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 2.0,
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(219,30,42,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_Bx13_Bus_Stops_4');
        map.getPane('pane_Bx13_Bus_Stops_4').style.zIndex = 404;
        map.getPane('pane_Bx13_Bus_Stops_4').style['mix-blend-mode'] = 'normal';
        var layer_Bx13_Bus_Stops_4 = new L.geoJson(json_Bx13_Bus_Stops_4, {
            attribution: '',
            interactive: true,
            dataVar: 'json_Bx13_Bus_Stops_4',
            layerName: 'layer_Bx13_Bus_Stops_4',
            pane: 'pane_Bx13_Bus_Stops_4',
            onEachFeature: pop_Bx13_Bus_Stops_4,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.circleMarker(latlng, style_Bx13_Bus_Stops_4_0(feature));
            },
        });
        bounds_group.addLayer(layer_Bx13_Bus_Stops_4);
        map.addLayer(layer_Bx13_Bus_Stops_4);
        function pop_Bx_22_Bus_Stops_5(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID_1'] !== null ? autolinker.link(feature.properties['OBJECTID_1'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_id'] !== null ? autolinker.link(feature.properties['stop_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>stop_name</strong><br />' + (feature.properties['stop_name'] !== null ? autolinker.link(feature.properties['stop_name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_desc'] !== null ? autolinker.link(feature.properties['stop_desc'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lat'] !== null ? autolinker.link(feature.properties['stop_lat'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lon'] !== null ? autolinker.link(feature.properties['stop_lon'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>route</strong><br />' + (feature.properties['route'] !== null ? autolinker.link(feature.properties['route'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shapefile'] !== null ? autolinker.link(feature.properties['Shapefile'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID'] !== null ? autolinker.link(feature.properties['OBJECTID'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['zone_id'] !== null ? autolinker.link(feature.properties['zone_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_url'] !== null ? autolinker.link(feature.properties['stop_url'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['location_t'] !== null ? autolinker.link(feature.properties['location_t'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['parent_sta'] !== null ? autolinker.link(feature.properties['parent_sta'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_Bx_22_Bus_Stops_5_0() {
            return {
                pane: 'pane_Bx_22_Bus_Stops_5',
                radius: 4.0,
                opacity: 1,
                color: 'rgba(128,17,25,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 2.0,
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(219,30,42,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_Bx_22_Bus_Stops_5');
        map.getPane('pane_Bx_22_Bus_Stops_5').style.zIndex = 405;
        map.getPane('pane_Bx_22_Bus_Stops_5').style['mix-blend-mode'] = 'normal';
        var layer_Bx_22_Bus_Stops_5 = new L.geoJson(json_Bx_22_Bus_Stops_5, {
            attribution: '',
            interactive: true,
            dataVar: 'json_Bx_22_Bus_Stops_5',
            layerName: 'layer_Bx_22_Bus_Stops_5',
            pane: 'pane_Bx_22_Bus_Stops_5',
            onEachFeature: pop_Bx_22_Bus_Stops_5,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.circleMarker(latlng, style_Bx_22_Bus_Stops_5_0(feature));
            },
        });
        bounds_group.addLayer(layer_Bx_22_Bus_Stops_5);
        map.addLayer(layer_Bx_22_Bus_Stops_5);
        function pop_Redesign_Bx13_BusStops_6(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID_1'] !== null ? autolinker.link(feature.properties['OBJECTID_1'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_id'] !== null ? autolinker.link(feature.properties['stop_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>stop_name</strong><br />' + (feature.properties['stop_name'] !== null ? autolinker.link(feature.properties['stop_name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_desc'] !== null ? autolinker.link(feature.properties['stop_desc'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <th scope="row">stop_lat</th>\
                        <td>' + (feature.properties['stop_lat'] !== null ? autolinker.link(feature.properties['stop_lat'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lon'] !== null ? autolinker.link(feature.properties['stop_lon'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>route</strong><br />' + (feature.properties['route'] !== null ? autolinker.link(feature.properties['route'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shapefile'] !== null ? autolinker.link(feature.properties['Shapefile'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID'] !== null ? autolinker.link(feature.properties['OBJECTID'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['zone_id'] !== null ? autolinker.link(feature.properties['zone_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_url'] !== null ? autolinker.link(feature.properties['stop_url'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['location_t'] !== null ? autolinker.link(feature.properties['location_t'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['parent_sta'] !== null ? autolinker.link(feature.properties['parent_sta'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_Redesign_Bx13_BusStops_6_0() {
            return {
                pane: 'pane_Redesign_Bx13_BusStops_6',
                radius: 4.0,
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1,
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(231,113,72,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_Redesign_Bx13_BusStops_6');
        map.getPane('pane_Redesign_Bx13_BusStops_6').style.zIndex = 406;
        map.getPane('pane_Redesign_Bx13_BusStops_6').style['mix-blend-mode'] = 'normal';
        var layer_Redesign_Bx13_BusStops_6 = new L.geoJson(json_Redesign_Bx13_BusStops_6, {
            attribution: '',
            interactive: true,
            dataVar: 'json_Redesign_Bx13_BusStops_6',
            layerName: 'layer_Redesign_Bx13_BusStops_6',
            pane: 'pane_Redesign_Bx13_BusStops_6',
            onEachFeature: pop_Redesign_Bx13_BusStops_6,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.circleMarker(latlng, style_Redesign_Bx13_BusStops_6_0(feature));
            },
        });
        bounds_group.addLayer(layer_Redesign_Bx13_BusStops_6);
        map.addLayer(layer_Redesign_Bx13_BusStops_6);
        function pop_Redesign_Bx22_BusStops_7(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID_1'] !== null ? autolinker.link(feature.properties['OBJECTID_1'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_id'] !== null ? autolinker.link(feature.properties['stop_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>stop_name</strong><br />' + (feature.properties['stop_name'] !== null ? autolinker.link(feature.properties['stop_name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_desc'] !== null ? autolinker.link(feature.properties['stop_desc'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lat'] !== null ? autolinker.link(feature.properties['stop_lat'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lon'] !== null ? autolinker.link(feature.properties['stop_lon'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>route</strong><br />' + (feature.properties['route'] !== null ? autolinker.link(feature.properties['route'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shapefile'] !== null ? autolinker.link(feature.properties['Shapefile'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID'] !== null ? autolinker.link(feature.properties['OBJECTID'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['zone_id'] !== null ? autolinker.link(feature.properties['zone_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_url'] !== null ? autolinker.link(feature.properties['stop_url'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['location_t'] !== null ? autolinker.link(feature.properties['location_t'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['parent_sta'] !== null ? autolinker.link(feature.properties['parent_sta'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_Redesign_Bx22_BusStops_7_0() {
            return {
                pane: 'pane_Redesign_Bx22_BusStops_7',
                radius: 4.0,
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1,
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(152,125,183,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_Redesign_Bx22_BusStops_7');
        map.getPane('pane_Redesign_Bx22_BusStops_7').style.zIndex = 407;
        map.getPane('pane_Redesign_Bx22_BusStops_7').style['mix-blend-mode'] = 'normal';
        var layer_Redesign_Bx22_BusStops_7 = new L.geoJson(json_Redesign_Bx22_BusStops_7, {
            attribution: '',
            interactive: true,
            dataVar: 'json_Redesign_Bx22_BusStops_7',
            layerName: 'layer_Redesign_Bx22_BusStops_7',
            pane: 'pane_Redesign_Bx22_BusStops_7',
            onEachFeature: pop_Redesign_Bx22_BusStops_7,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.circleMarker(latlng, style_Redesign_Bx22_BusStops_7_0(feature));
            },
        });
        bounds_group.addLayer(layer_Redesign_Bx22_BusStops_7);
        map.addLayer(layer_Redesign_Bx22_BusStops_7);
        function pop_Redesign_Bx29_BusStops_8(feature, layer) {
            layer.on({
                mouseout: function(e) {
                    for (i in e.target._eventParents) {
                        e.target._eventParents[i].resetStyle(e.target);
                    }
                    if (typeof layer.closePopup == 'function') {
                        layer.closePopup();
                    } else {
                        layer.eachLayer(function(feature){
                            feature.closePopup()
                        });
                    }
                },
                mouseover: highlightFeature,
            });
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID_1'] !== null ? autolinker.link(feature.properties['OBJECTID_1'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_id'] !== null ? autolinker.link(feature.properties['stop_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>stop_name</strong><br />' + (feature.properties['stop_name'] !== null ? autolinker.link(feature.properties['stop_name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_desc'] !== null ? autolinker.link(feature.properties['stop_desc'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lat'] !== null ? autolinker.link(feature.properties['stop_lat'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_lon'] !== null ? autolinker.link(feature.properties['stop_lon'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2"><strong>route</strong><br />' + (feature.properties['route'] !== null ? autolinker.link(feature.properties['route'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['Shapefile'] !== null ? autolinker.link(feature.properties['Shapefile'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['OBJECTID'] !== null ? autolinker.link(feature.properties['OBJECTID'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['zone_id'] !== null ? autolinker.link(feature.properties['zone_id'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['stop_url'] !== null ? autolinker.link(feature.properties['stop_url'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['location_t'] !== null ? autolinker.link(feature.properties['location_t'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['parent_sta'] !== null ? autolinker.link(feature.properties['parent_sta'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, {maxHeight: 400});
        }

        function style_Redesign_Bx29_BusStops_8_0() {
            return {
                pane: 'pane_Redesign_Bx29_BusStops_8',
                radius: 4.0,
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1,
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(190,207,80,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_Redesign_Bx29_BusStops_8');
        map.getPane('pane_Redesign_Bx29_BusStops_8').style.zIndex = 408;
        map.getPane('pane_Redesign_Bx29_BusStops_8').style['mix-blend-mode'] = 'normal';
        var layer_Redesign_Bx29_BusStops_8 = new L.geoJson(json_Redesign_Bx29_BusStops_8, {
            attribution: '',
            interactive: true,
            dataVar: 'json_Redesign_Bx29_BusStops_8',
            layerName: 'layer_Redesign_Bx29_BusStops_8',
            pane: 'pane_Redesign_Bx29_BusStops_8',
            onEachFeature: pop_Redesign_Bx29_BusStops_8,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.circleMarker(latlng, style_Redesign_Bx29_BusStops_8_0(feature));
            },
        });
        bounds_group.addLayer(layer_Redesign_Bx29_BusStops_8);
        map.addLayer(layer_Redesign_Bx29_BusStops_8);
        var osmGeocoder = new L.Control.Geocoder({
            collapsed: true,
            position: 'topleft',
            text: 'Search',
            title: 'Testing'
        }).addTo(map);
        document.getElementsByClassName('leaflet-control-geocoder-icon')[0]
        .className += ' fa fa-search';
        document.getElementsByClassName('leaflet-control-geocoder-icon')[0]
        .title += 'Search for a place';
        setBounds();
        </script>
    </body>
</html>
