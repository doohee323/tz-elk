#         "format": "date_hour_minute_second_millis",

#curl -XGET -u 'elastic:passwd323' 'localhost:9200/nginx*?pretty'
#curl -XDELETE -u 'elastic:passwd323' 'localhost:9200/nginx*?pretty'

curl -XDELETE -u 'elastic:passwd323' 'http://localhost:9200/nginx';

curl -XPUT -u 'elastic:passwd323' 'http://localhost:9200/nginx' -d \
'
{
  "settings": {},
  "mappings": {
   "nginx": {
    "properties": {
      "request": {
        "type": "string"
      },
      "agent": {
        "type": "string"
      },
      "request_action": {
        "type": "string"
      },
      "geoip": {
        "properties": {
          "timezone": {
            "type": "string"
          },
          "area_code": {
            "type": "long"
          },
          "ip": {
            "type": "string"
          },
          "latitude": {
            "type": "double"
          },
          "coordinates": {
            "type": "geo_point"
          },
          "continent_code": {
            "type": "string"
          },
          "city_name": {
            "type": "string"
          },
          "country_code2": {
            "type": "string"
          },
          "country_name": {
            "type": "string"
          },
          "dma_code": {
            "type": "long"
          },
          "country_code3": {
            "type": "string"
          },
          "location": {
            "type": "geo_point"
          },
          "region_name": {
            "type": "string"
          },
          "real_region_name": {
            "type": "string"
          },
          "postal_code": {
            "type": "string"
          },
          "longitude": {
            "type": "double"
          }
        }
      },
      "user_name": {
        "type": "string"
      },
      "http_version": {
        "type": "string"
      },
      "message": {
        "type": "string"
      },
      "type": {
        "type": "string"
      },
      "tags": {
        "type": "string"
      },
      "path": {
        "type": "string"
      },
      "referrer": {
        "type": "string"
      },
      "@timestamp": {
        "format": "strict_date_optional_time||epoch_millis",
        "type": "date"
      },
      "remote_ip": {
        "type": "string"
      },
      "bytes": {
        "type": "string"
      },
      "response": {
        "type": "string"
      },
      "@version": {
        "type": "string"
      },
      "host": {
        "type": "string"
      },
      "time": {
        "type": "string"
      },
      "user_agent": {
        "properties": {
          "os": {
            "type": "string"
          },
          "name": {
            "type": "string"
          },
          "device": {
            "type": "string"
          }
        }
      }
    }
  }    
  }
}';

curl -XDELETE -u 'elastic:passwd323' 'http://localhost:9200/stats';

curl -XPUT -u 'elastic:passwd323' 'http://localhost:9200/stats' -d \
'
{
  "settings": {},
  "mappings": {
    "stats": {
      "properties": {
        "@timestamp": {
          "format": "strict_date_optional_time||epoch_millis",
          "type": "date"
        },
        "geoip": {
          "properties": {
            "timezone": {
              "type": "string"
            },
            "area_code": {
              "type": "long"
            },
            "ip": {
              "type": "string"
            },
            "latitude": {
              "type": "double"
            },
            "coordinates": {
              "type": "geo_point"
            },
            "continent_code": {
              "type": "string"
            },
            "city_name": {
              "type": "string"
            },
            "country_code2": {
              "type": "string"
            },
            "country_name": {
              "type": "string"
            },
            "dma_code": {
              "type": "long"
            },
            "country_code3": {
              "type": "string"
            },
            "location": {
              "type": "double"
            },
            "region_name": {
              "type": "string"
            },
            "real_region_name": {
              "type": "string"
            },
            "postal_code": {
              "type": "string"
            },
            "longitude": {
              "type": "double"
            }
          }
        },
        "date": {
          "type": "string"
        },
        "path": {
          "type": "string"
        },
        "ip": {
          "type": "string"
        },
        "@version": {
          "type": "string"
        },
        "host": {
          "type": "string"
        },
        "action": {
          "type": "string"
        },
        "message": {
          "type": "string"
        },
        "type": {
          "type": "string"
        },
        "tags": {
          "type": "string"
        },
        "username": {
          "type": "string"
        }
      }
    }
  }
}
}}';

