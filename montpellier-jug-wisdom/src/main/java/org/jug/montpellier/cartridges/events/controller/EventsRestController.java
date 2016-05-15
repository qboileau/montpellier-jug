package org.jug.montpellier.cartridges.events.controller;

import org.apache.felix.ipojo.annotations.Requires;
import org.jug.montpellier.cartridges.events.services.EventsService;
import org.wisdom.api.DefaultController;
import org.wisdom.api.annotations.Controller;
import org.wisdom.api.annotations.Path;
import org.wisdom.api.annotations.Route;
import org.wisdom.api.annotations.scheduler.Async;
import org.wisdom.api.http.HttpMethod;
import org.wisdom.api.http.Result;

import java.io.IOException;

@Controller
@Path("/restEvents")
public class EventsRestController extends DefaultController {

    @Requires
    EventsService eventsService;

    @Route(uri = "/past", method = HttpMethod.GET)
    @Async
    public Result pastEvents() throws IOException {
        return ok(eventsService.getPastEvents()).json();
    }

    @Route(uri = "/upcoming", method = HttpMethod.GET)
    @Async
    public Result upcomingEvents() throws IOException {
        return ok(eventsService.getUpcomingEvents()).json();
    }

}
