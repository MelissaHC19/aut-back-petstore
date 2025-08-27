package KarateTests;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testUserDataDriven() {
        return Karate.run("classpath:features/api-petstore/user-data-driven.feature");
    }
}
