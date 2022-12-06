# sleep_rater
R Script that combines Garmin Connect sleep and stress data obtained via https://github.com/tcgoetz/GarminDB tool
with self-reported variables.

Added variables:
- day: Waking up date in YYYY-MM-DD format
- caff_mor_dos: Previous day caffeine morning (awakening until 12 PM) dosage in mg
- caff_aft_dos: Previous day caffeine afternoon (12 PM until bedtime) dosage in mg
- alcohol_con: Alcohol intake 8 hours prior to sleep (Dichotomous 0 = No, 1 = Yes)
- sugar_con_dinn: Sugar intake during dinner (Dichotomous 0 = No, 1 = Yes)
- heavy_dinn: Self reported having had a heavy dinner (Dichotomous 0 = No, 1 = Yes)
- rumination: Self reported rumination during bedtime (Dichotomous 0 = No, 1 = Yes)
- thermal_comf: Self reported thermal comfort during sleep (Nominal: good, cold, hot)
- rating: 0-10 likert scale about overall sleep quality
