# Modelling-and-Simulation-of-Surface-Runoff-Patterns-in-Hydrological-Cycle---DA-IICT

Our endeavours in brief: -

1)	The first task was to procure the data of rainfall at DA-IICT. Since, we can’t directly do that, we obtained the daily rainfall amounts from different measuring stations, which are placed at different directions to DA-IICT. The objective was to use these various data points and apply geostatic analysis techniques to measure rainfall at different locations within the campus.

2)	The daily data of rainfall amounts was obtained from these stations:
a.	Sanand
b.	Ahmedabad
c.	Khedbrahma

3)	For each measuring station, we plotted the recorded amounts of daily rainfall for 4 months – June, July, August and September from 2009-2018. Thus, we have 122 x 10 = 1220 data points for each station. We aimed to find the envelope of the curve for this data set (daily rainfall amount vs. time) and applying time-scale prediction techniques (LSTM), predict the daily rainfall for DA-IICT, accounting for both temporal and spatial variations. This was done for all the stations and we took the appropriate contributions from each. By this, we were able to predict how much rainfall would be expected on which day and thereby, correctly estimate runoff from different locations at different times.

4)	Having done the rainfall estimations at different locations with time, we also realized that since the terrain of DA-IICT, broadly varies from Lawns, to shrubbery, to impervious spots and also roads and pavements, we needed to find out the run-offs from all these spots individually, taking into account the differing Curve numbers of these regions. This is because, only then could we actually estimate the locations from where the runoff would be highest. Note that, here we made an experimental assumption that the initial abstraction of water by the plants, is 0.2S, which has been found to hold good in multiple practical scenarios.

5)	We got a satellite view of DA-IICT Campus from google earth. We measured the areas of these components, using the given map-scale:
a.	Open Lawn
b.	Cafeteria (Outer, since inner is impervious)
c.	Shrubbery (majority portion)
d.	Roads and pavements
e.	Impervious areas
For each of the above areas, we estimated the corresponding Hydrologic Soil Group, the pattern of Land-use, the kind of vegetation, and thereby, obtained the CN values for each zone.

6)	We calculated the areas in the form of percentage of total area. We found out the CN values for each of the areas, and formulated a weighted CN for the entire campus. This weightage gives us an approximation, of the kind of terrain we have at DA-IICT. This parameter would give us, for an average rainfall over the campus, the average run-off per day. 

7)	Having obtained the CN values, using the predicted values of rainfall for different regions on campus, we calculated the expected runoff from different locations, with time, for the monsoon season 2019.

8)	Having obtained the runoff depth, we obtained the volume of water runoff from each sector. Now, the water that falls, doesn’t run away uniformly, rather there is a formation of network of streams, which transports the water. Various runoff regions, lead to formation of higher order streams and there is an outflow point where the water concentrates. We found out the network of streams and direction of flow, using the elevation profile of the campus, obtained from Google Earth, using Surfer software.

9)	Thus, eventually, we obtained the expected runoff volume and the point where this water exits, so that preventive measures can be exercised here.
