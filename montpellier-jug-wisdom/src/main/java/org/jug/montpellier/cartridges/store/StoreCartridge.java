package org.jug.montpellier.cartridges.store;

import org.jug.montpellier.core.api.Cartridge;

import org.apache.felix.ipojo.annotations.Component;
import org.apache.felix.ipojo.annotations.Instantiate;
import org.apache.felix.ipojo.annotations.Provides;

/**
 * Created by fteychene on 21/10/16.
 */
@Component
@Provides(specifications = Cartridge.class)
@Instantiate
public class StoreCartridge implements Cartridge {
    @Override
    public String label() {
        return "Boutique";
    }

    @Override
    public String routeUri() {
        return "https://shop.spreadshirt.fr/jugmontpellier/";
    }

    @Override
    public int position() {
        return 6;
    }
}
