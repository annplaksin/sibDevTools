function Run() {
score = Sibelius.ActiveScore;
systf = score.SystemStaff;

for each Bar bar in systf
{
	barnum = bar.BarNumber;
	timesig = systf.CurrentTimeSignature(barnum);


	Trace('Bar ' & barnum & ' time signature: ' & timesig.Numerator & '/' & timesig.Denominator & '. External bar number: ' & bar.ExternalBarNumberString);
}
} //$end

