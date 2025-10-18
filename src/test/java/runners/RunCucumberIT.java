package runners;

// import io.cucumber.junit.Cucumber;
// import io.cucumber.junit.CucumberOptions;
// import org.junit.runner.RunWith;
//
// @RunWith(Cucumber.class)
// @CucumberOptions(
//    // tags = "@envfile",
//    features = "src/test/resources/features",
//    plugin = {"com.aventstack.chaintest.plugins.ChainTestCucumberListener:", "summary"},
//    glue = {"bases"})
// public class RunCucumberIT {}

import io.cucumber.junit.platform.engine.Constants;
import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;

@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("bases")
@ConfigurationParameter(
    key = Constants.FEATURES_PROPERTY_NAME,
    value = "src/test/resources/features")
@ConfigurationParameter(key = Constants.GLUE_PROPERTY_NAME, value = "bases")
// @ConfigurationParameter(key = Constants.FILTER_TAGS_PROPERTY_NAME, value = "@googleSearch")
// @ConfigurationParameter(key = Constants.EXECUTION_DRY_RUN_PROPERTY_NAME, value = "false")
@ConfigurationParameter(
    key = Constants.PLUGIN_PROPERTY_NAME,
    value = "com.aventstack.chaintest.plugins.ChainTestCucumberListener:")
// @ConfigurationParameter(key = Constants.EXECUTION_DRY_RUN_PROPERTY_NAME, value = "false")
// @ConfigurationParameter(
//    key = Constants.PLUGIN_PROPERTY_NAME,
//    value = "pretty, html:target/cucumber-report/cucumber.html")
public class RunCucumberIT {}
