function GetSystemText(staff, score) {
textList = CreateSparseArray();

	for each SystemTextItem text in staff
	{
		check = False;
		if(textList.Length > 0)
		{

			for each el in textList
			{
				if (text.StyleAsText = el)
				{
					check = True;
				}
			}
		}
		
		if (check = False)
		{
			textList.Push(text.StyleAsText);
		}
	}

for each el in textList
	{
		Trace('Text style found: ' & el & ' ' & score.TextStyleId(el));
	}
} //$end

