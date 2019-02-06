package com.oauthd.jfinal.quick;

import com.jfinal.server.undertow.UndertowServer;

/**
 * @author weibh
 */
public class Main {

    public static void main(String[] args) {
        UndertowServer.start(GlobalConfig.class, 6099, true);
    }
}
