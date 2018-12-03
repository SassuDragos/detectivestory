

if (variable_global_exists("organigram"))
   {
		room_goto(organigram_room);
   }else if (variable_global_exists("deliveryLedger"))
		{
		room_goto(deliveryLedger_room);
		}else if(variable_global_exists("safePaper"))
		{
			room_goto(SafePaper_room);
		}else if(variable_global_exists("safePaperBurnt"))
		{
			room_goto(SafePaperBurnt_room);
		}