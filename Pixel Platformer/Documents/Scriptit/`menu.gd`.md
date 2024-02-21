# `menu.gd` Skriptin Selostus

`menu.gd` on GDScript, joka laajentaa `Control`-luokkaa Godot-pelimoottorissa. Tämä skripti hallinnoi pelin päävalikon toimintoja, kuten pelin aloittamista ja lopettamista.

## Päävalikon Toiminnot

Skripti sisältää kaksi päätoimintoa, jotka liittyvät päävalikon painikkeisiin:

### Pelin Aloittaminen (`_on_play_pressed`-funktio)

- `get_tree().change_scene_to_file("res://world.tscn")`: Tämä rivi koodissa vaihtaa nykyisen näkymän pelimaailmaan, kun "Play" (Pelaa) -painiketta painetaan. `"res://world.tscn"` on polku pelin pääskenaarioon, joka ladataan, jotta pelaaja voi aloittaa pelaamisen.

### Pelin Lopettaminen (`_on_quit_pressed`-funktio)

- `get_tree().quit()`: Kun "Quit" (Lopeta) -painiketta painetaan, tämä komento sulkee pelin. Se on yksinkertainen ja suoraan Godotin toiminnallisuuteen perustuva tapa lopettaa peli.

---

`menu.gd` skripti on suunniteltu olemaan yksinkertainen ja tehokas, keskittyen pelkästään käyttäjän syötteiden hallintaan päävalikossa. Skriptin yksinkertaisuus varmistaa, että se on helppo ymmärtää ja ylläpitää, ja että se keskittyy vain tarvittaviin toimintoihin päävalikon kontekstissa.