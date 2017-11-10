//
//  WeatherApi.swift
//  WeatherAppMCS
//
//  Created by MCS on 11/8/17.
//  Copyright © 2017 Zach Chandler. All rights reserved.
//

import Foundation
struct Symbols {
    static let weatherHead = "http://api.openweathermap.org/data/2.5/weather?q="
    static let key = "&APPID=d9b7879aecc85ccc289dfa69197fad86"
    static let forcastHead = "http://api.openweathermap.org/data/2.5/forecast?q="

    
}
/*
JSON: {
    city =     {
        coord =         {
            lat = "33.749";
            lon = "-84.38800000000001";
        };
        country = US;
        id = 4180439;
        name = Atlanta;
    };
    cnt = 40;
    cod = 200;
    list =     (
        {
            clouds =             {
                all = 88;
            };
            dt = 1510250400;
            "dt_txt" = "2017-11-09 18:00:00";
            main =             {
                "grnd_level" = "999.71";
                humidity = 100;
                pressure = "999.71";
                "sea_level" = "1033.3";
                temp = "285.26";
                "temp_kf" = "0.07000000000000001";
                "temp_max" = "285.26";
                "temp_min" = "285.188";
            };
            rain =             {
                3h = "0.595";
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10d;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "45.5005";
                speed = "1.81";
            };
    },
        {
            clouds =             {
                all = 68;
            };
            dt = 1510261200;
            "dt_txt" = "2017-11-09 21:00:00";
            main =             {
                "grnd_level" = "999.17";
                humidity = 97;
                pressure = "999.17";
                "sea_level" = "1032.79";
                temp = "286.43";
                "temp_kf" = "0.05";
                "temp_max" = "286.43";
                "temp_min" = "286.379";
            };
            rain =             {
                3h = "0.18";
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10d;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "329.5";
                speed = "2.07";
            };
    },
        {
            clouds =             {
                all = 92;
            };
            dt = 1510272000;
            "dt_txt" = "2017-11-10 00:00:00";
            main =             {
                "grnd_level" = "1000.52";
                humidity = 92;
                pressure = "1000.52";
                "sea_level" = "1034.24";
                temp = "285.61";
                "temp_kf" = "0.03";
                "temp_max" = "285.61";
                "temp_min" = "285.572";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "overcast clouds";
                    icon = 04n;
                    id = 804;
                    main = Clouds;
                }
            );
            wind =             {
                deg = "335.002";
                speed = "3.26";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510282800;
            "dt_txt" = "2017-11-10 03:00:00";
            main =             {
                "grnd_level" = "1001.43";
                humidity = 92;
                pressure = "1001.43";
                "sea_level" = "1035.37";
                temp = "283.33";
                "temp_kf" = "0.02";
                "temp_max" = "283.33";
                "temp_min" = "283.316";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "349.501";
                speed = "3.57";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510293600;
            "dt_txt" = "2017-11-10 06:00:00";
            main =             {
                "grnd_level" = "1001.45";
                humidity = 90;
                pressure = "1001.45";
                "sea_level" = "1035.65";
                temp = "281.523";
                "temp_kf" = 0;
                "temp_max" = "281.523";
                "temp_min" = "281.523";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = 349;
                speed = "3.71";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510304400;
            "dt_txt" = "2017-11-10 09:00:00";
            main =             {
                "grnd_level" = "1001.87";
                humidity = 86;
                pressure = "1001.87";
                "sea_level" = "1036.19";
                temp = "279.349";
                "temp_kf" = 0;
                "temp_max" = "279.349";
                "temp_min" = "279.349";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "348.002";
                speed = "3.67";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510315200;
            "dt_txt" = "2017-11-10 12:00:00";
            main =             {
                "grnd_level" = "1003.24";
                humidity = 88;
                pressure = "1003.24";
                "sea_level" = "1037.8";
                temp = "278.152";
                "temp_kf" = 0;
                "temp_max" = "278.152";
                "temp_min" = "278.152";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = 346;
                speed = "3.71";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510326000;
            "dt_txt" = "2017-11-10 15:00:00";
            main =             {
                "grnd_level" = "1004.9";
                humidity = 86;
                pressure = "1004.9";
                "sea_level" = "1039.16";
                temp = "283.063";
                "temp_kf" = 0;
                "temp_max" = "283.063";
                "temp_min" = "283.063";
            };
            rain =             {
                3h = "0.0050000000000008";
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10d;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "348.5";
                speed = "2.86";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510336800;
            "dt_txt" = "2017-11-10 18:00:00";
            main =             {
                "grnd_level" = "1004.06";
                humidity = 73;
                pressure = "1004.06";
                "sea_level" = "1037.89";
                temp = "287.68";
                "temp_kf" = 0;
                "temp_max" = "287.68";
                "temp_min" = "287.68";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "345.508";
                speed = "2.29";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510347600;
            "dt_txt" = "2017-11-10 21:00:00";
            main =             {
                "grnd_level" = "1003.57";
                humidity = 63;
                pressure = "1003.57";
                "sea_level" = "1037.21";
                temp = "287.981";
                "temp_kf" = 0;
                "temp_max" = "287.981";
                "temp_min" = "287.981";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "346.503";
                speed = "2.46";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510358400;
            "dt_txt" = "2017-11-11 00:00:00";
            main =             {
                "grnd_level" = "1004.79";
                humidity = 64;
                pressure = "1004.79";
                "sea_level" = "1038.86";
                temp = "282.175";
                "temp_kf" = 0;
                "temp_max" = "282.175";
                "temp_min" = "282.175";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "337.507";
                speed = "2.76";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510369200;
            "dt_txt" = "2017-11-11 03:00:00";
            main =             {
                "grnd_level" = "1005.91";
                humidity = 67;
                pressure = "1005.91";
                "sea_level" = "1040.42";
                temp = "278.5";
                "temp_kf" = 0;
                "temp_max" = "278.5";
                "temp_min" = "278.5";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "352.002";
                speed = "1.96";
            };
    },
        {
            clouds =             {
                all = 12;
            };
            dt = 1510380000;
            "dt_txt" = "2017-11-11 06:00:00";
            main =             {
                "grnd_level" = "1006.4";
                humidity = 81;
                pressure = "1006.4";
                "sea_level" = "1041.12";
                temp = "276.445";
                "temp_kf" = 0;
                "temp_max" = "276.445";
                "temp_min" = "276.445";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "few clouds";
                    icon = 02n;
                    id = 801;
                    main = Clouds;
                }
            );
            wind =             {
                deg = "79.5077";
                speed = "1.56";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510390800;
            "dt_txt" = "2017-11-11 09:00:00";
            main =             {
                "grnd_level" = "1007.42";
                humidity = 95;
                pressure = "1007.42";
                "sea_level" = "1042.35";
                temp = "278.509";
                "temp_kf" = 0;
                "temp_max" = "278.509";
                "temp_min" = "278.509";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "86.5021";
                speed = "3.66";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510401600;
            "dt_txt" = "2017-11-11 12:00:00";
            main =             {
                "grnd_level" = "1008.71";
                humidity = 69;
                pressure = "1008.71";
                "sea_level" = "1043.91";
                temp = "276.409";
                "temp_kf" = 0;
                "temp_max" = "276.409";
                "temp_min" = "276.409";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "78.5005";
                speed = "4.51";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510412400;
            "dt_txt" = "2017-11-11 15:00:00";
            main =             {
                "grnd_level" = "1009.79";
                humidity = 69;
                pressure = "1009.79";
                "sea_level" = "1044.6";
                temp = "278.709";
                "temp_kf" = 0;
                "temp_max" = "278.709";
                "temp_min" = "278.709";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "83.00109999999999";
                speed = "5.06";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510423200;
            "dt_txt" = "2017-11-11 18:00:00";
            main =             {
                "grnd_level" = "1008.3";
                humidity = 66;
                pressure = "1008.3";
                "sea_level" = "1042.44";
                temp = "282.475";
                "temp_kf" = 0;
                "temp_max" = "282.475";
                "temp_min" = "282.475";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "89.5039";
                speed = "4.22";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510434000;
            "dt_txt" = "2017-11-11 21:00:00";
            main =             {
                "grnd_level" = "1006.75";
                humidity = 58;
                pressure = "1006.75";
                "sea_level" = "1040.67";
                temp = "283.72";
                "temp_kf" = 0;
                "temp_max" = "283.72";
                "temp_min" = "283.72";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "89.5035";
                speed = "3.51";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510444800;
            "dt_txt" = "2017-11-12 00:00:00";
            main =             {
                "grnd_level" = "1006.82";
                humidity = 58;
                pressure = "1006.82";
                "sea_level" = "1041.26";
                temp = "279.577";
                "temp_kf" = 0;
                "temp_max" = "279.577";
                "temp_min" = "279.577";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "85.50149999999999";
                speed = "3.26";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510455600;
            "dt_txt" = "2017-11-12 03:00:00";
            main =             {
                "grnd_level" = "1007.38";
                humidity = 62;
                pressure = "1007.38";
                "sea_level" = "1042.13";
                temp = "277.451";
                "temp_kf" = 0;
                "temp_max" = "277.451";
                "temp_min" = "277.451";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "89.5";
                speed = "3.51";
            };
    },
        {
            clouds =             {
                all = 76;
            };
            dt = 1510466400;
            "dt_txt" = "2017-11-12 06:00:00";
            main =             {
                "grnd_level" = "1007.14";
                humidity = 64;
                pressure = "1007.14";
                "sea_level" = "1041.94";
                temp = "276.457";
                "temp_kf" = 0;
                "temp_max" = "276.457";
                "temp_min" = "276.457";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "broken clouds";
                    icon = 04n;
                    id = 803;
                    main = Clouds;
                }
            );
            wind =             {
                deg = "89.00700000000001";
                speed = "3.36";
            };
    },
        {
            clouds =             {
                all = 64;
            };
            dt = 1510477200;
            "dt_txt" = "2017-11-12 09:00:00";
            main =             {
                "grnd_level" = "1006.94";
                humidity = 64;
                pressure = "1006.94";
                "sea_level" = "1041.83";
                temp = "276.457";
                "temp_kf" = 0;
                "temp_max" = "276.457";
                "temp_min" = "276.457";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "broken clouds";
                    icon = 04n;
                    id = 803;
                    main = Clouds;
                }
            );
            wind =             {
                deg = "77.50069999999999";
                speed = "3.09";
            };
    },
        {
            clouds =             {
                all = 80;
            };
            dt = 1510488000;
            "dt_txt" = "2017-11-12 12:00:00";
            main =             {
                "grnd_level" = "1006.99";
                humidity = 63;
                pressure = "1006.99";
                "sea_level" = "1041.95";
                temp = "277.183";
                "temp_kf" = 0;
                "temp_max" = "277.183";
                "temp_min" = "277.183";
            };
            rain =             {
                3h = "0.039999999999999";
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10n;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "82.5017";
                speed = "2.86";
            };
    },
        {
            clouds =             {
                all = 92;
            };
            dt = 1510498800;
            "dt_txt" = "2017-11-12 15:00:00";
            main =             {
                "grnd_level" = "1007.81";
                humidity = 68;
                pressure = "1007.81";
                "sea_level" = "1042.36";
                temp = "278.662";
                "temp_kf" = 0;
                "temp_max" = "278.662";
                "temp_min" = "278.662";
            };
            rain =             {
                3h = "0.1";
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10d;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "73.00060000000001";
                speed = "2.47";
            };
    },
        {
            clouds =             {
                all = 64;
            };
            dt = 1510509600;
            "dt_txt" = "2017-11-12 18:00:00";
            main =             {
                "grnd_level" = "1006.33";
                humidity = 71;
                pressure = "1006.33";
                "sea_level" = "1040.26";
                temp = "282.235";
                "temp_kf" = 0;
                "temp_max" = "282.235";
                "temp_min" = "282.235";
            };
            rain =             {
                3h = "0.02";
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10d;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "75.50369999999999";
                speed = "1.94";
            };
    },
        {
            clouds =             {
                all = 36;
            };
            dt = 1510520400;
            "dt_txt" = "2017-11-12 21:00:00";
            main =             {
                "grnd_level" = "1004.73";
                humidity = 67;
                pressure = "1004.73";
                "sea_level" = "1038.51";
                temp = "284.376";
                "temp_kf" = 0;
                "temp_max" = "284.376";
                "temp_min" = "284.376";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "scattered clouds";
                    icon = 03d;
                    id = 802;
                    main = Clouds;
                }
            );
            wind =             {
                deg = "80.00060000000001";
                speed = "1.77";
            };
    },
        {
            clouds =             {
                all = 68;
            };
            dt = 1510531200;
            "dt_txt" = "2017-11-13 00:00:00";
            main =             {
                "grnd_level" = "1004.99";
                humidity = 81;
                pressure = "1004.99";
                "sea_level" = "1039.07";
                temp = "280.998";
                "temp_kf" = 0;
                "temp_max" = "280.998";
                "temp_min" = "280.998";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "broken clouds";
                    icon = 04n;
                    id = 803;
                    main = Clouds;
                }
            );
            wind =             {
                deg = "60.502";
                speed = "1.21";
            };
    },
        {
            clouds =             {
                all = 76;
            };
            dt = 1510542000;
            "dt_txt" = "2017-11-13 03:00:00";
            main =             {
                "grnd_level" = "1005.41";
                humidity = 92;
                pressure = "1005.41";
                "sea_level" = "1039.79";
                temp = "279.013";
                "temp_kf" = 0;
                "temp_max" = "279.013";
                "temp_min" = "279.013";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "broken clouds";
                    icon = 04n;
                    id = 803;
                    main = Clouds;
                }
            );
            wind =             {
                deg = "38.5036";
                speed = "1.3";
            };
    },
        {
            clouds =             {
                all = 80;
            };
            dt = 1510552800;
            "dt_txt" = "2017-11-13 06:00:00";
            main =             {
                "grnd_level" = "1005.09";
                humidity = 88;
                pressure = "1005.09";
                "sea_level" = "1039.58";
                temp = "279.609";
                "temp_kf" = 0;
                "temp_max" = "279.609";
                "temp_min" = "279.609";
            };
            rain =             {
                3h = "0.02";
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10n;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "339.001";
                speed = "1.21";
            };
    },
        {
            clouds =             {
                all = 36;
            };
            dt = 1510563600;
            "dt_txt" = "2017-11-13 09:00:00";
            main =             {
                "grnd_level" = "1004.61";
                humidity = 93;
                pressure = "1004.61";
                "sea_level" = "1039.12";
                temp = "278.769";
                "temp_kf" = 0;
                "temp_max" = "278.769";
                "temp_min" = "278.769";
            };
            rain =             {
                3h = "0.029999999999999";
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "light rain";
                    icon = 10n;
                    id = 500;
                    main = Rain;
                }
            );
            wind =             {
                deg = "311.001";
                speed = "1.21";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510574400;
            "dt_txt" = "2017-11-13 12:00:00";
            main =             {
                "grnd_level" = "1004.82";
                humidity = 93;
                pressure = "1004.82";
                "sea_level" = "1039.39";
                temp = "277.953";
                "temp_kf" = 0;
                "temp_max" = "277.953";
                "temp_min" = "277.953";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "333.501";
                speed = "3.21";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510585200;
            "dt_txt" = "2017-11-13 15:00:00";
            main =             {
                "grnd_level" = "1005.74";
                humidity = 69;
                pressure = "1005.74";
                "sea_level" = "1039.9";
                temp = "283.935";
                "temp_kf" = 0;
                "temp_max" = "283.935";
                "temp_min" = "283.935";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "352.506";
                speed = "3.67";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510596000;
            "dt_txt" = "2017-11-13 18:00:00";
            main =             {
                "grnd_level" = "1004.39";
                humidity = 65;
                pressure = "1004.39";
                "sea_level" = "1037.92";
                temp = "288.333";
                "temp_kf" = 0;
                "temp_max" = "288.333";
                "temp_min" = "288.333";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "353.501";
                speed = "3.06";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510606800;
            "dt_txt" = "2017-11-13 21:00:00";
            main =             {
                "grnd_level" = 1003;
                humidity = 57;
                pressure = 1003;
                "sea_level" = "1036.41";
                temp = "288.559";
                "temp_kf" = 0;
                "temp_max" = "288.559";
                "temp_min" = "288.559";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = 347;
                speed = "3.08";
            };
    },
        {
            clouds =             {
                all = 8;
            };
            dt = 1510617600;
            "dt_txt" = "2017-11-14 00:00:00";
            main =             {
                "grnd_level" = "1003.67";
                humidity = 70;
                pressure = "1003.67";
                "sea_level" = "1037.67";
                temp = "283.464";
                "temp_kf" = 0;
                "temp_max" = "283.464";
                "temp_min" = "283.464";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 02n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                
                deg = "332.501";
                speed = "3.06";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510628400;
            "dt_txt" = "2017-11-14 03:00:00";
            main =             {
                "grnd_level" = "1004.09";
                humidity = 85;
                pressure = "1004.09";
                "sea_level" = "1038.43";
                temp = "280.319";
                "temp_kf" = 0;
                "temp_max" = "280.319";
                "temp_min" = "280.319";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "339.001";
                speed = "3.01";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510639200;
            "dt_txt" = "2017-11-14 06:00:00";
            main =             {
                "grnd_level" = "1003.89";
                humidity = 95;
                pressure = "1003.89";
                "sea_level" = "1038.43";
                temp = "277.652";
                "temp_kf" = 0;
                "temp_max" = "277.652";
                "temp_min" = "277.652";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "332.002";
                speed = "2.41";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510650000;
            "dt_txt" = "2017-11-14 09:00:00";
            main =             {
                "grnd_level" = "1003.62";
                humidity = 93;
                pressure = "1003.62";
                "sea_level" = "1038.44";
                temp = "275.132";
                "temp_kf" = 0;
                "temp_max" = "275.132";
                "temp_min" = "275.132";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = 341;
                speed = "1.33";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510660800;
            "dt_txt" = "2017-11-14 12:00:00";
            main =             {
                "grnd_level" = "1004.15";
                humidity = 88;
                pressure = "1004.15";
                "sea_level" = "1039.12";
                temp = "273.413";
                "temp_kf" = 0;
                "temp_max" = "273.413";
                "temp_min" = "273.413";
            };
            rain =             {
            };
            sys =             {
                pod = n;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01n;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "355.5";
                speed = "1.21";
            };
    },
        {
            clouds =             {
                all = 0;
            };
            dt = 1510671600;
            "dt_txt" = "2017-11-14 15:00:00";
            main =             {
                "grnd_level" = "1005.09";
                humidity = 74;
                pressure = "1005.09";
                "sea_level" = "1039.29";
                temp = "282.507";
                "temp_kf" = 0;
                "temp_max" = "282.507";
                "temp_min" = "282.507";
            };
            rain =             {
            };
            sys =             {
                pod = d;
            };
            weather =             (
                {
                    description = "clear sky";
                    icon = 01d;
                    id = 800;
                    main = Clear;
                }
            );
            wind =             {
                deg = "27.0021";
                speed = "1.76";
            };
    }
    );
    message = "0.174";
}
 */
