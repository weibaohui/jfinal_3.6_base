package com.oauthd.jfinal.quick;

import com.jfinal.config.*;
import com.jfinal.template.Engine;

/**
 * @author weibh
 */
public class GlobalConfig extends JFinalConfig {


    @Override
    public void configConstant(Constants me) {
        me.setDevMode(true);
    }

    @Override
    public void configRoute(Routes me) {
        me.add("/hello", HelloController.class);
    }

    @Override
    public void configEngine(Engine me) {

    }

    @Override
    public void configPlugin(Plugins me) {
    }

    @Override
    public void configInterceptor(Interceptors me) {
    }

    @Override
    public void configHandler(Handlers me) {
    }
}