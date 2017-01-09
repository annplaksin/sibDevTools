function GetSpecialBarlines(systf) {
specList = CreateSparseArray();

	for each SpecialBarline spec in systf
	{
		check = False;

		if(specList.Length > 0)
		{

			for each el in specList
			{
				if (spec.BarlineType = el)
				{
					check = True;
				}
			}
		}
		
		if (check = False)
		{
			specList.Push(spec.BarlineType);
		}
	}

	for each el in specList
	{
		Trace('Barline type found: ' & el);
	}}'
	GetSymbols '(staff, score) {
symbList = CreateSparseArray();

	for each SymbolItem symb in staff
	{
		check = False;
		if(symbList.Length > 0)
		{

			for each el in symbList
			{
				if (symb.Name = el)
				{
					check = True;
				}
			}
		}
		
		if (check = False)
		{
			symbList.Push(symb.Name);
		}
	}

for each el in symbList
	{
		Trace('Symbol found: ' & el & ' ' & score.SymbolIndex(el));
	}
} //$end

