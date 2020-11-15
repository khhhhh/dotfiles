#    i3-simple-weather  Copyright (C) 2020  BrutalWizard (https://github.com/bru74lw1z4rd).
#    This program comes with ABSOLUTELY NO WARRANTY; 
#    This is free software, and you are welcome to redistribute it
#    under certain conditions;

# More info about wether at - https://openweathermap.org/weather-conditions
# To show icons from this script you will need to buy "Font Awesome Pro" font - https://fontawesome.com/
# Also you can change icon in arrays to yours icons

import requests
import json

# Settings 
city = "765876" # Your town 
api_key = "b49ae0e2d8b4d5bd0b4114ddd1431d5f" # Your openweather api key
units = "metric" # Unit system {imperial or metric}
temperature_unit = "C" # Units of measurement. That will be showed in UI. Does not affect on API.


icons_list = {
    "01d": "1", # Clear sky day.
    "01n": "6", # Clear sky night.
    "02d": "2", # Few clouds day.
    "02n": "a", # Few clouds night.
    "03d": "2", # Scattered clouds day.
    "03n": "a", # Scattered clouds night.
    "04d": "2", # Broken clouds day.
    "04n": "a", # Broken clouds night.
    "09d": "J", # Shower rain day.
    "09n": "k", # Shower rain night.
    "10d": "L", # Rain day.
    "10n": "m", # Rain night
    "11d": "R", # Thunderstorm day.
    "11n": "s", # Thunderstorm night
    "13d": "H", # Snow day. Snowflake alternative: 
    "13n": "i", # Snow night. Snowflake alternative: 
    "50d": "z", # Mist day.
    "50n": "c", # Mist night.
}

atmophere_icons_list = {
    701: "Z", # Mist
    711: "C", # Smoke
    721: "C", # Haze
    731: "a", # Dust (Sand / dust whirls)
    741: "a", # Fog
    751: "a", # Sand
    761: "a", # Dust
    762: "a", # Ash
    771: "3", # Squalls
    781: ":"  # Tornado
}


def main():
    try:
        # Get data from openweather
        url = ('http://api.openweathermap.org/data/2.5/weather?id={}&units={}&appid={}').format(city, units, api_key)
        result = requests.get(url)

        # If result was received
        if(result.status_code == requests.codes['ok']):        
                # Read json
                weather = result.json()

                # Get info from array 
                id = int(weather['weather'][0]['id'])
                group = weather['weather'][0]['main'].capitalize()
                icon = weather['weather'][0]['icon'].capitalize() 
                temp = int(float(weather['main']['temp']))

                # Load another icons for Atmosphere group
                if(group == "Atmosphere"):
                    return '%{T5}' +  atmophere_icons_list[id] + '%{T-}' + ' {}°{}'.format(temp, temperature_unit)

                return '%{T5}' + icons_list[icon] + '%{T-}' +' {}°{}'.format(temp, temperature_unit)
        else:
            return "" # Return reload icon
    except:
        return "" # Return reload icon

if __name__ == "__main__":
	print(main())
