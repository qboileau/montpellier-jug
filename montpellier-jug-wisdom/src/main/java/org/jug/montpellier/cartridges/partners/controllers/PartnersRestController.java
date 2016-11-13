package org.jug.montpellier.cartridges.partners.controllers;

import org.apache.felix.ipojo.annotations.Requires;
import org.montpellierjug.store.jooq.tables.daos.YearpartnerDao;
import org.wisdom.api.DefaultController;
import org.wisdom.api.annotations.Controller;
import org.wisdom.api.annotations.Path;
import org.wisdom.api.annotations.Route;
import org.wisdom.api.annotations.scheduler.Async;
import org.wisdom.api.http.HttpMethod;
import org.wisdom.api.http.Result;

import java.io.IOException;

@Controller
@Path("/restPartners")
public class PartnersRestController extends DefaultController {

    @Requires
    YearpartnerDao yearpartnerDao;

    @Route(uri = "/", method = HttpMethod.GET)
    @Async
    public Result partners() throws IOException {
        return ok(yearpartnerDao.findAll())
                .json()
                .with(ACCESS_CONTROL_ALLOW_ORIGIN, "*");
    }

}
