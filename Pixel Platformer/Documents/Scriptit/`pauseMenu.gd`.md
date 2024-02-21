# `pauseMenu.gd` Skriptin Selostus

`pauseMenu.gd` on GDScript, joka laajentaa `CanvasLayer`-luokkaa. Tämä skripti käsittelee pelin taukomenun toimintaa, joka antaa pelaajille mahdollisuuden jatkaa peliä tai lopettaa ja palata päävalikkoon.

## Taukomenun Toiminnot

Skriptissä on kaksi päämetodia, jotka liittyvät taukomenun painikkeiden toimintoihin:

### Pelin Jatkaminen (`_on_resume_button_pressed`-funktio)

- `world.pauseMenu()`: Tämä metodi kutsutaan, kun taukomenun "Resume" (Jatka) -painiketta painetaan. Oletusarvoisesti tämä metodi kutsuu maailma-instanssin (tässä tapauksessa `world`-muuttujan) `pauseMenu`-metodia, mikä todennäköisesti kytkee pelin taukotilan päälle tai pois. Huomaa, että tämä kutsu edellyttää, että `world`-muuttujassa on olemassa `pauseMenu`-niminen metodi.

### Pelin Lopettaminen (`_on_quit_button_pressed`-funktio)

- `Engine.time_scale = 1`: Tämä asettaa pelin ajanopeuden takaisin normaaliksi. Jos peli on taukotilassa ja ajanopeus on nollattu, tämä varmistaa, että aika jatkuu normaalisti, kun pelaaja palaa päävalikkoon.
- `get_tree().change_scene_to_file("res://menu.tscn")`: Kun taukomenun "Quit" (Lopeta) -painiketta painetaan, tämä metodi vaihtaa kohtauksen päävalikkoon, jolloin pelaaja voi lopettaa pelin tai valita eri toiminnon päävalikosta.

---

`pauseMenu.gd` skripti on tärkeä osa pelaajan kokemusta, sillä se tarjoaa välittömän pääsyn pelin hallintatoimintoihin, kuten pelin keskeyttämiseen ja lopettamiseen. Skriptin toteutus on yksinkertainen, mutta tehokas, ja se integroituu saumattomasti pelin muihin osiin, kuten maailmanhallintaan ja kohtausten vaihtoon.