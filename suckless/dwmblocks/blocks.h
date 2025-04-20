static const Block blocks[] = {
	/* Format */
    /* { Icon    Command    Update Interval    Update Signal } */
	
    {" ",    "~/arch-dots/scripts/memory_block.sh",        30,   0 },
	{"",     "~/arch-dots/scripts/temparature_block.sh",   30,   0 },
	{"",     "~/arch-dots/scripts/volume_block.sh",         0,  10 },
	{"",     "~/arch-dots/scripts/datetime_block.sh",      60,   0 },
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
