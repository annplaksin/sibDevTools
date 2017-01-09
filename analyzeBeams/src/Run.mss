function Run() {
selection = Sibelius.ActiveScore.Selection;
for each NoteRest nobj in selection
{
	pos = nobj.Position;
	dur = nobj.Duration;
	grace = nobj.GraceNote;
	acc = nobj.IsAcciaccatura;
	app = nobj.IsAppoggiatura;
	beam = nobj.Beam;
	parent = nobj.ParentBar;
	notecount = nobj.NoteCount;

	Trace('NoteRest at pos ' & parent.BarNumber & ', ' & pos & ' with duration ' & dur & ' and NoteCount ' & notecount & ' has grace ' & grace & ' and beam ' & beam);
}
} //$end

