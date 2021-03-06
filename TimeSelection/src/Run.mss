function Run() {
score = Sibelius.ActiveScore.Selection;
for each bobj in score
{
	type = bobj.Type;
	pos = bobj.Position;

	Trace(type & ' ' & pos);
	
	switch(type)
	{
		case('SymbolItem')
		{
			next = bobj.NextItem(1, 'NoteRest');
			prev = bobj.PreviousItem(1, 'NoteRest');		
	
			if(prev != null)
			{
				Trace('Symbol ' & bobj.Name & ' has prev note at position ' & prev.Position & ' with grace ' & prev.GraceNote);
			}

			if(next != null)
			{
				Trace('Symbol ' & bobj.Name & ' has next note at position ' & next.Position & ' with grace ' & next.GraceNote);
			}
		}

		case('Text')
		{
			Trace(bobj.StyleAsText);
		}

		case('NoteRest')
		{
			Trace(bobj.Duration & ' ' & bobj.GraceNote);

			for each note in bobj
			{
				pname = Substring(note.Name, 0, 1);  // captures first letter
    				accid = Substring(note.Name, 1);     // captures all other characters


				Trace(pname & ' Accidental: ' & accid);
			}
		}

		case('LyricItem')
		{
			Trace(bobj.SyllableType & ' ' & bobj.Duration & ' ' & bobj.NumNotes);
		}

		case('TimeSignature')
		{
			Trace('Time Signature ' & bobj.Numerator & '/' & bobj.Denominator);
		}
	}
}
} //$end

