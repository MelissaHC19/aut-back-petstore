package org.pragma.tests;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testUserDataDriven() {
        return Karate.run("classpath:features/api-petstore/user-data-driven.feature");
    }

    @Karate.Test
    Karate testUserLogin() {
        return Karate.run("classpath:features/api-petstore/user-login.feature");
    }

    @Karate.Test
    Karate testUserUpdate() {
        return Karate.run("classpath:features/api-petstore/user-update.feature");
    }

    @Karate.Test
    Karate testUserGet() {
        return Karate.run("classpath:features/api-petstore/user-get.feature");
    }
}
