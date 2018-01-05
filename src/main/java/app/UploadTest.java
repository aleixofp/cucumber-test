package app;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/main/resources/features/upload.feature", tags="@UploadTest", glue= "steps", snippets=SnippetType.CAMELCASE)
public class UploadTest {
}
