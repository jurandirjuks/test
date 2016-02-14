
/**
 * Created by jurandir on 11/02/16.
 */

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


public class Init extends
        AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[] { Config.class };
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return null;
    }

}


