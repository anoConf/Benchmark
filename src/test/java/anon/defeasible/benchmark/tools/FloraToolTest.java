package anon.defeasible.benchmark.tools;

import org.junit.Assert;
import org.junit.Test;

import fr.lirmm.graphik.defeasible.core.io.DlgpDefeasibleParser;
import fr.lirmm.graphik.defeasible.core.preference.Preference;
import fr.lirmm.graphik.defeasible.core.rules.DefeasibleRule;
import fr.lirmm.graphik.defeasible.core.rules.DefeaterRule;
import fr.lirmm.graphik.graal.api.core.Atom;
import fr.lirmm.graphik.graal.api.core.NegativeConstraint;
import fr.lirmm.graphik.graal.api.core.Rule;
import fr.lirmm.graphik.graal.api.io.ParseException;

public class FloraToolTest {
	public static FloraTool tool = new FloraTool();
	
	@Test
	public void shouldFormatGroundAtom() throws ParseException {
		Atom atom = DlgpDefeasibleParser.parseAtom("p(a).");
		Assert.assertTrue((tool.formatFact(atom).equals("p(a).")));
	}
	@Test
	public void shouldFormatGroundAtomWithArity() throws ParseException {
		Atom atom = DlgpDefeasibleParser.parseAtom("p(a,b).");
		Assert.assertTrue((tool.formatFact(atom).equals("p(a,b).")));
	}
	
	@Test
	public void shouldFormatStrictRuleWithLabel() throws ParseException {
		Rule rule = DlgpDefeasibleParser.parseRule("[r1] p(X) <- q(X).");
		Assert.assertTrue((tool.formatStrictRule(rule).equals("@{r1} @@{strict} p(?X) :- q(?X).\n")));
	}
	@Test
	public void shouldFormatStrictRuleWithoutLabel() throws ParseException {
		Rule rule = DlgpDefeasibleParser.parseRule("p(X) <- q(X).");
		Assert.assertTrue((tool.formatStrictRule(rule).equals("@@{strict} p(?X) :- q(?X).\n")));
	}
	@Test
	public void shouldFormatDefeasibleRuleWithLabel() throws ParseException {
		DefeasibleRule rule = DlgpDefeasibleParser.parseDefeasibleRule("[r1] p(X) <= q(X).");
		Assert.assertTrue((tool.formatDefeasibleRule(rule).equals("@{r1} @@{defeasible} p(?X) :- q(?X).\n")));
	}/*
	@Test
	public void shouldFormatDefeaterRuleWithLabel() throws ParseException {
		DefeaterRule rule = DlgpDefeasibleParser.parseDefeaterRule("[r1] p(X) <~ q(X).");
		Assert.assertTrue((tool.formatDefeaterRule(rule).equals("@{r1} @@{defeasible} p(?X) <~ q(?X).")));
	}*/
	
	@Test
	public void shouldFormatNegativeConstraint() throws ParseException {
		NegativeConstraint nc = DlgpDefeasibleParser.parseNegativeConstraint("! :- p(X), q(X).");
		Assert.assertTrue((tool.formatNegativeConstraint(nc).equals("\\opposes(p(?X), q(?X)).")));
	}
	
	@Test
	public void shouldFormatPreference() throws ParseException {
		Preference pref = DlgpDefeasibleParser.parsePreference("[r1] > [r2].");
		Assert.assertTrue((tool.formatPreference(pref).equals("\\overrides(r1, r2).")));
	}
}
