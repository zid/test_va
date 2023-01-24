SECTIONS
{
	. = 1M;
	.text.low : { low.o (.text); }

	. = 128M;
	.text.high : { high.o (.text); }	
}
