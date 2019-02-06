package com.oauthd.jfinal.quick;

import com.jfinal.core.Controller;

/**
 * @author weibh
 */
public class HelloController extends Controller {
    public void index() {
        renderText("Hello JFinal World.");
    }
}