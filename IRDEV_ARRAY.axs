﻿MODULE_NAME='IRDEV_ARRAY' (DEV IRPort, DEV MVP[], INTEGER BUTTONS[], INTEGER OFFSET, INTEGER PULSE_TIME)

DEFINE_EVENT


BUTTON_EVENT[MVP,BUTTONS] 
{
	PUSH:{  SET_PULSE_TIME(PULSE_TIME)  PULSE[IRPort, OFFSET+GET_LAST(BUTTONS)]}
	HOLD [2,REPEAT]: {PULSE[IRPort, OFFSET+GET_LAST(BUTTONS)]}
}