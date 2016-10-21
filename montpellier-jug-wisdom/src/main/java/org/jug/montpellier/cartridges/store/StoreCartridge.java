package org.jug.montpellier.cartridges.store;

import org.jug.montpellier.core.api.Cartridge;

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
