//This file was generated from (Academic) UPPAAL 4.1.24 (rev. 29A3ECA4E5FB0808), November 2019

/*
For every path, the battery will range between 100 to 0
*/
A<> (Robot1.battery <= 100 or Robot1.battery >=0)

/*
If the mission is completed, then the robot has begun the mission at least 30 seconds ago
*/
A<>(missionComplete == 1 imply (Robot1.t >= 30))

/*
Eventually the robot's battery will deplete
*/
E<> Robot1.battery == 0\


/*
If the distance is 1, means that the battery will deplete 10 units
*/
A<> (distance == 1 imply Robot1.battery <= 90)

/*
If the distance is 2, means that the battery will deplete 20 units
*/
A<> (distance == 2 imply Robot1.battery <= 80)

/*
If the distance is 3, means that the battery will deplete 30 units
*/
A<> (distance == 3 imply Robot1.battery <= 70)

/*
If the distance is 4, means that the battery will deplete 40 units
*/
A<> (distance == 4 imply Robot1.battery <= 60)

/*
If the distance is 5, means that the battery will deplete 50 units
*/
A<> (distance == 5 imply Robot1.battery <= 50)

/*
Eventually, for all possible paths, if the robot is at the location grab_resources, then the resources will be picked up
*/
E[] Robot1.grab_resources imply Robot1.has_resources == 1

/*
If the robot is in the moving state, then the time will range between 0 and 40
*/
A<> (Robot1.moving imply (Robot1.t >=0 or Robot1.t < 40))

/*
For all paths, if the robot's battery is less than 10, it implies that Robot1 will have to recharge in the future
*/
A<> (Robot1.battery < 10 imply Robot1.recharge_battery)

/*
It is possible that a robot may never accomplish any mission.
*/
E<> (Robot1.successfulMissions <= 0)

/*

*/
//NO_QUERY

/*

*/
//NO_QUERY
