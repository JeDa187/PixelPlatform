# `lock.gd` Skriptin Selostus

`lock.gd` on GDScript, joka laajentaa `Area2D`-luokkaa Godot-pelimoottorissa. Tämä skripti hallitsee pelin lukon toimintaa, mukaan lukien lukon avaamisen ja pelin loppumisen.

## Alustus (`_ready`-funktio)

Kun lukko-objekti luodaan peliin, `_ready`-funktio asettaa lukon alkutilan:

- `$LockedSprite`: Lukon "lukittu" sprite asetetaan näkyväksi.
- `$UnlockedSprite`: Lukon "avattu" sprite asetetaan piiloon.
- `$CollisionShape2D`: Lukon törmäysalue poistetaan käytöstä toistaiseksi asettamalla sen `disabled`-ominaisuus `true`, mikä estää pelaajan törmäämästä siihen.

## Lukon Avaaminen (`unlock`-funktio)

`unlock`-funktio kutsutaan, kun pelaaja on kerännyt avaimen ja saavuttaa lukon:

- `LockedSprite` asetetaan piiloon, merkiksi siitä, että lukko on avattu.
- `UnlockedSprite` asetetaan näkyväksi, osoittaen lukon olevan avattu.
- `CollisionShape2D`:n `disabled`-ominaisuus asetetaan `false`, jolloin pelaaja voi nyt törmätä lukkoon ja laukaista pelin loppumisen.

## Törmäyksen Havaitseminen (`_on_body_entered`-funktio)

Kun jokin fysiikkabody tulee lukon `Area2D`-alueelle, `_on_body_entered`-funktio aktivoituu:

- Tarkistetaan, onko kyseessä pelaajan hahmo, ja jos on, pelin loppumisen prosessi käynnistetään.

## Pelin Loppuminen (`end_game`-funktio)

`end_game`-funktio on vastuussa pelin loppumisprosessista:

- Pelin pääskenaario vaihdetaan käyttämällä `get_tree().change_scene_to_file("res://menu.tscn")`-metodia, joka lataa päävalikon  palauttaen pelaajan takaisin pelin päävalikkoon. Tämä on tavallinen tapa siirtyä eri pelinäkymiin- Godotissa.

---

Tämä skripti on suunniteltu integroitumaan suoraan pelin logiikkaan, tarjoten pelaajalle visuaalista palautetta lukon tilasta ja halliten pelin lopputilannetta. Sen selkeä rakenne ja kommentit koodissa tukevat ymmärrystä sen toiminnasta ja mahdollistavat helpon ylläpidon tai jatkokehityksen.