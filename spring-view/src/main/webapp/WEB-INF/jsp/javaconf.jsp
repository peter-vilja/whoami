<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<p><spring:message code="javaconf.introduction"/></p>

<p><spring:message code="javaconf.first"/></p>

<pre class="prettyprint">
@Configuration
public class AppConfig extends WebMvcConfigurerAdapter {

}</pre>

<p><spring:message code="javaconf.annotations"/></p>

<pre class="prettyprint">
@Configuration
@EnableWebMvc
@EnableScheduling
@ComponentScan(basePackages = {"fi.peter.core.dao.impl"})
public class AppConfig extends WebMvcConfigurerAdapter {

}
</pre>
<p><spring:message code="javaconf.beans"/></p>
<pre class="prettyprint">
@Configuration
@EnableWebMvc
@EnableScheduling
@ComponentScan(basePackages = {"fi.peter.core.dao.impl"})
public class AppConfig extends WebMvcConfigurerAdapter {

  @Bean
  public MessageSource messageSource() {
   ResourceBundleMessageSource source = new ResourceBundleMessageSource();
   source.setBasename("fi/peter/view/messages");
    return source;
  }
  
  @Bean
  public InternalResourceViewResolver viewResolver() {
   InternalResourceViewResolver view = new InternalResourceViewResolver();
   view.setViewClass(JstlView.class);
   view.setPrefix("/WEB-INF/jsp/");
   view.setSuffix(".jsp");
   return view;
  }
}
</pre>
