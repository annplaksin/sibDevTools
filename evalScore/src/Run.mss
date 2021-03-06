function Run() {
if (Sibelius.YesNoMessageBox('Start score analysis.') = True)
{
		score = Sibelius.ActiveScore;
		systf = score.SystemStaff;
		staff1 = score.NthStaff(1);
		staff2 = score.NthStaff(2);

		//Write file name
		Trace('Analyze ' & score.FileName);

		//Analyze Special Barlines
		Trace('Anazlyze special barlines in system staff:');
		GetSpecialBarlines(systf);

		//Analyze Symbols
		Trace('Analyze used symbols of staff 1:');
		GetSymbols(staff1, score);
		Trace('Analyze used symbols of staff 2:');
		GetSymbols(staff2, score);
		Trace('Analyze symbols of system staff:');
		GetSystemSymbols(systf, score);

		//Analyze staff texts
		Trace('Analyze text objects of staff 1:');
		GetStaffTexts(staff1, score);
		Trace('Analyze text objects of staff 2:');
		GetStaffTexts(staff2, score);

		//Analyze system texts
		Trace('Analyze text objects of system staff:');
		GetSystemText(systf, score);

		//Analyze lines
		Trace('Analyze used lines of staff 1:');
		GetLines(staff1, score);
		Trace('Analyze used lines of staff 2:');
		GetLines(staff2, score);
		
}
} //$end

