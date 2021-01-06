import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';

class KnowEQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbAppBar("Know EQ"),
      drawer: MBDrawer(),
      body: knowEQText(),
    );
  }
}

knowEQText() {
  return Padding(
    padding: EdgeInsets.only(top: 20, left: 20.0, right: 20.0, bottom: 20.0),
    child: ListView(
      children: <Widget>[
        ExpansionTile(
          title: Text(
            "Earthquake?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Earthquake is a natural disaster which can cause lot of damage to the livelihood and also destroys assets too.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "Measure earthquake",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Richter ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Mercalli ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                      text:
                          " scales are used to measure earthquake. But popularly many of us heard only Richter scale.",
                      style: mbTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "Two types of Earthquakes",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Volcanic ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Tectonic ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                        text:
                            " are two types of earthquakes which generally occur on our planet.",
                        style: mbTextStyle()),
                  ],
                ),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "Richter Scale",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Richter scale is used to measure the total energy released during the earthquake.",
                style: mbTextStyle(),
              ),
            ),
            ListTile(
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "C.F. Richter",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                      text: " invented this instrument.",
                      style: mbTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "How many earthquakes occur annually worldwide?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Very strong earthquakes with magnitudes of 8 and higher occur once a year on a global average. On average, 15 quakes ranging in magnitude between 7 and 8 strike on an annual basis. Quakes with magnitudes greater than 7 can have devastating effects on people and the environment. Up to 1,300 moderate quakes on a scale of 5 to 6 take place worldwide every year, smaller quakes with magnitudes of 3 to 4 occur, roughly speaking, 130,000 times a year. Magnitude 3 earthquakes are usually still noticed by people if they are in the vicinity of the epicentre, but in most cases they do not cause any damage.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "Where do earthquakes occur most frequently?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Very strong earthquakes with magnitudes of 8 and higher occur once a year on a global average. On average, 15 quakes ranging in magnitude between 7 and 8 strike on an annual basis. Quakes with magnitudes greater than 7 can have devastating effects on people and the environment. Up to 1,300 moderate quakes on a scale of 5 to 6 take place worldwide every year, smaller quakes with magnitudes of 3 to 4 occur, roughly speaking, 130,000 times a year. Magnitude 3 earthquakes are usually still noticed by people if they are in the vicinity of the epicentre, but in most cases they do not cause any damage.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "Is it possible to predict earthquakes?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "No, the precise date, place and magnitude of an earthquake cannot be predicted. However, seismologists nowadays develop seismic hazard maps in which the probability of the occurrence of strong ground tremors due to tectonic quakes can be indicated for a specific period.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "What is 'earthquake magnitude' ?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Magnitude is the logarithmic measure of the seismic energy released by an earthquake at its hypocentre. To determine the magnitude, the ground movements must be recorded as seismograms using seismometers. An increase in magnitude of one unit corresponds to an increase in ground movement by a factor of 10 and increase in energy roughly to the power of thirty. Whereas the magnitude is a measure of the energy released in the earthquake's hypocentre, the intensity classifies the vibrations at any given location on the Earth's surface",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "What was the strongest earthquake ever recorded?' ?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "The Shaanxi earthquake in China in 1556 is considered the most devastating quake in human history, with a death toll of approximately 830,000 and an estimated magnitude of 8. The strongest quake in the last hundred years took place in Chile on 22 May 1960 with a (moment) magnitude of 9.5. On 28 March 1964, a magnitude 9.1 quake shook the Prince William Sound in Alaska. Further strong quakes occurred on 26 December 2004 off the north-eastern coast of Indonesia in the Indian Ocean with a magnitude of 9.2, and on 11 March 2010 in the Pacific Ocean off the east coast of Japan with a magnitude of 9.0. All four events took place below the sea and triggered devastating tsunamis.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "What causes earthquakes?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Earhquakes are caused by a sudden displacement along a fracture face in the Earth's crust and by the resulting release of accumulated elastic energy. These fault zones are predominantly located along plate boundaries. However, there are other reasons than tectonics for the occurrence of earthquakes.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "How can I protect myself during an earthquake when I'm indoor?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Seek immediate protection beneath a heavy, sturdy piece of furniture (for example a table) and hold on tight to something as long as the tremors persist, even if the furniture moves. If this is not possible, take refuge under a sturdy door frame or lie down on the floor near to a load-bearing interior wall away from windows and protect your head and face with crossed arms. Stay in the building as long as the earthquake tremors persist! The most dangerous thing you can do is to try and leave the building during the quake. You can be injured by falling objects or broken glass. Exception: When the earthquake begins, you are on the ground floor and near to an exit door that leads directly to the outside (garden or open square, not a narrow street). Do not use the stairs! Do not use the elevator!",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "How can I protect myself during an earthquake when I'm outdoor?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Go as quickly as possible to an open area, far away from buildings, street lamps and utility lines. Stay there until the tremors have stopped. If you are in a car, drive immediately to the side of the road, away from buildings, trees, flyovers and utility lines. Stay in the car as long as the earthquake tremors persist! Turn on the radio. Do not drive over bridges, cross-roads or below flyovers! When the quake has subsided, continue to drive with the utmost caution (avoid bridges and ramps that could have been damaged by the event) or leave the car parked where it is. If you are at the foot of a steep slope when the tremors begin, move immediately away from it (risk of landslides or falling rocks!). If you feel earth­quake tremors along a flat coastline, run as fast as you can inland to the highest point possi­ble. An earthquake can trigger extreme (up to 30 m high) ocean waves (tsunami). These waves sometimes hit the shoreline long after the quake tremors have subsided. A second wave can also follow a lot later. For this reason, do not leave your elevated place of refuge until the official tsunami all-clear has been given.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "How much energy is released by an earthquake?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "A magnitude 3 earthquake, which people can feel under favourable conditions, releases a seismic energy of approximately two billion joules, which corresponds to 555.6 kilowatt hours (kWh). With every added increment of magnitude, the energy increases by a factor of 30. In 2010, the average energy consumption of a private household was 66 GJ, which corresponds to 18,335 MWh and an earthquake magnitude of 4. A highly destructive magnitude 7 quake releases an energy volume of 450 gigawatt hours, which is ten per cent of the annual electrical energy volume provided by the block of a modern coal-fired power plant. In 2011, the total consumption of all private households in Germany added together came to 2194 PJ (source: Arbeitsgemeinschaft Energiebilanzen [Working Group on Energy Balances] 10/2012), which corresponds roughly to a magnitude 9 earthquake.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "More questions are yet to come to give you some more light on this topic",
            style: mbTextStyle(),
          ),
        ),
      ],
    ),
  );
}
