/*********************************************
 * OPL 12.8.0.0 Model
 * Author: steve
 * Creation Date: 9 d�c. 2019 at 10:23:52
 *********************************************/

 int DAYS_PER_WEEK = 7;
 range WEEKDAYS = 1..DAYS_PER_WEEK;
 int WEEKS_PER_CYCLE = 2;
 range CYCLEDAYS= 1..DAYS_PER_WEEK*WEEKS_PER_CYCLE;
 
 int n = ...; 					// number of agents
 range AGENTS = 1..n;
 
 int c = ...; 					// number of work cycles
 range CYCLES = 1..c;
 
 int w = WEEKS_PER_CYCLE * c;	// number of weeks of the work period
 range WEEKS = 1..w;
 
 int d = DAYS_PER_WEEK * w;		// number of days of the work period
 range DAYS = 1..d;
 
 string morning = ...;
 string evening = ...;
 string day = ...;
 string to_define = ...;
 
 {string} SHIFTS = {evening, morning, day};
 
 int demands[SHIFTS][DAYS] = ...;
 
 string timetable[AGENTS][DAYS] = ...;
 
 
 int fixedWork[i in AGENTS][j in DAYS] = timetable[i][j] == to_define || timetable[i][j] == morning || timetable[i][j] == day || timetable[i][j] == evening || timetable[i][j] == "FO";
 int fixedBreak[i in AGENTS][j in DAYS] = timetable[i][j] == "CA" || timetable[i][j] == "RH" || timetable[i][j] == "RTT" || timetable[i][j] == "RC" || timetable[i][j] == "RH" || timetable[i][j] == "MPR" || timetable[i][j] == "JF";
 int fixedShift[i in AGENTS][j in DAYS] = timetable[i][j] == evening || timetable[i][j] == day || timetable[i][j] == morning;
 