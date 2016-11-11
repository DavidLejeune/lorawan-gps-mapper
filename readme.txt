
 #############################################################
 #       _           _____    __          __     _   _       #
 #      | |         |  __ \   \ \        / /\   | \ | |      #
 #      | |     ___ | |__) |__ \ \  /\  / /  \  |  \| |      #
 #      | |    / _ \|  _  // _` \ \/  \/ / /\ \ | . ` |      #
 #      | |___| (_) | | \ \ (_| |\  /\  / ____ \| |\  |      #
 #      |______\___/|_|  \_\__,_| \/  \/_/    \_\_| \_|      #
 #                                                           #
 #   __ _ _ __  ___   _ __ ___   __ _ _ __  _ __   ___ _ __  #
 #  / _` | '_ \/ __| | '_ ` _ \ / _` | '_ \| '_ \ / _ \ '__| #
 #  | (_| | |_) \__ \ | | | | | | (_| | |_) | |_) |  __/ |   #
 #  \__, | .__/|___/ |_| |_| |_|\__,_| .__/| .__/ \___|_|    #
 #   __/ | |                         | |   | |               #
 #  |___/|_|                         |_|   |_|               #
 #                                                           #
 #############################################################

  +-+-+ +-+-+-+-+-+-+-+-+-+-+-+
  |1|.| |D|e|s|c|r|i|p|t|i|o|n|
  +-+-+ +-+-+-+-+-+-+-+-+-+-+-+

    An application that allows multiple users to log locations coming from
    different types of gps modules to a website.

    The data sent from the gps-modules are longitude, latitude , height and
    accuracy . This could later be extended to include speed and direction.
    This data will be consultable both in table form and on a map.

  +-+-+ +-+-+-+-+-+-+-+-+-+-+
  |2|.| |T|e|c|h|n|o|l|o|g|y|
  +-+-+ +-+-+-+-+-+-+-+-+-+-+

    Data will be sent by LoRaWAN sensors. These sensors are coupled to the network
    of The Things Network ( http://www.thethingsnetwork.com )

    Data can be queried via the MQTT protocol ( http://mqtt.org )

    MQTT is a publish/subscribe protocol. Meaning he application will have to
    subscribe to the data. When a sensor has a new measurement is will publish
    this new value to it's subscribers. These data values will be stored in a
    database coupled to the application.

  +-+-+ +-+-+-+-+-+-+-+-+
  |3|.| |F|e|a|t|u|r|e|s|
  +-+-+ +-+-+-+-+-+-+-+-+

    AUTHENTICATION
    --------------
    The system should allow multiple users to independently use the website.
    Users should have to register to be able to use the website.
    This registration will allow them to add their own gps module and also see
    their individual data.

    HISTORY AND STATISTICS
    ----------------------
    Logged in user should be able to retrieve their own data.
    This data should be represented both graphically (map) and also in raw data.
    Various quantifications should be implemented on this data (averages, maximum,
    ...,filtering by time slots)

    LIVE UPDATES
    ------------
    New data publish to the database should display on the open webpage.
    This can be realized using a websocket. Polling or AJAX request should not
    be used as these are not the most efficient solutions.
    Rails 5 supports websocket via ActionCable
    (http://edgeguides.rubyonrails.org/action_cable_overview.html).

    EXTRA
    -----
        NoSQL Database
        --------------
        Instead of MySQL or other relational database we could implement a
        non-relational database (NoSQL).
        Each of these databases can be built around it's own rules and query style.
        Examples :
                  MongoDB - https://www.mongodb.com/
                  RethinkDB - https://rethinkdb.com/
                  InfluxDB - https://www.influxdata.com/

        Normal operation with standard sqlite or MySQL must be ensured (in case
        of NoSQL failure)

        JSON API
        --------
        All data and statics should be made available through a JSON API.
        This so other applications can retrieve the data (e.g. Windows Universal
        App, Android,... )

  +-+-+ +-+-+-+-+-+-+-+
  |4|.| |C|r|e|d|i|t|s|
  +-+-+ +-+-+-+-+-+-+-+

  **  Group project  **

  School : Vives Oostende
  Course : WebApplications
  Class  : Bachelor Electronics - Information Communication Technology
           Year 3
           2016-2017
  Group  : the best one (and the most modest)
