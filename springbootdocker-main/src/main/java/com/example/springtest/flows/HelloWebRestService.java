package com.example.springtest.flows;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Component;

@Component
@Path("/helloworld")
public class HelloWebRestService {

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String helloMessage() {
        return "Hello World - Jersey is here :)";
    }
}
