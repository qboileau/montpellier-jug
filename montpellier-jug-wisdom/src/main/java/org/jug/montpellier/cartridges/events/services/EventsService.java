package org.jug.montpellier.cartridges.events.services;

import org.jug.montpellier.core.controller.JugController;
import org.montpellierjug.store.jooq.tables.interfaces.IEvent;
import org.wisdom.api.http.Result;

import java.util.List;

/**
 * Created by manland on 26/04/15.
 */
public interface EventsService {

    public Result renderEvents(JugController.Templatable templatable);

    public Result renderEvents(JugController.Templatable templatable, Long id);

    List<org.jug.montpellier.models.Event> getPastEvents();
    List<org.jug.montpellier.models.Event> getUpcomingEvents();
    IEvent getEvent(Long id);

}
