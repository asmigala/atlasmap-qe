package io.atlasmap.qe.test.atlas.utils;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.ContextConfiguration;

import io.cucumber.spring.CucumberContextConfiguration;

@CucumberContextConfiguration
@ContextConfiguration(classes = CucumberSpring.class)
@ComponentScan(basePackages = {"io.atlasmap.qe"})
public class CucumberSpring {
}
