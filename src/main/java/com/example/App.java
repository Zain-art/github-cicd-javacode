package com.example;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class App {

    public static void main(String[] args)
    {
        SpringApplication.run(App.class, args);
        print("hello");
    }

    private static void print(String hello) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @PostConstruct
    public void init()
    {
        Logger log = LoggerFactory.getLogger(App.class);
        log.info("Java app started");
    }

    public String getStatus() {
        return "OK";
    }
}
