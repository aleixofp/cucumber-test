package app;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/main/resources/features/criarformulario.feature", glue= "steps", tags="@CriarFormularioTest", snippets= SnippetType.CAMELCASE)
public class CriarFormularioTest {
}
